#!/usr/bin/env bash

# アセットディレクトリ同期スクリプト
# portfolio-baseのディレクトリ構造をlinked_assetsにミラーリングする

set -euo pipefail

# 定数定義
readonly SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
readonly ASSET_ROOT="${SCRIPT_DIR}/linked_assets"
readonly TARGET_DIRS=("10_Projects" "20_Activities" "30_Knowledge" "40_Organizations")

# カラーコード定義
readonly COLOR_RESET='\033[0m'
readonly COLOR_INFO='\033[0;36m'      # シアン
readonly COLOR_SUCCESS='\033[0;32m'   # 緑
readonly COLOR_WARNING='\033[0;33m'   # 黄色
readonly COLOR_ERROR='\033[0;31m'     # 赤
readonly COLOR_CREATE='\033[0;35m'    # マゼンタ
readonly COLOR_DELETE='\033[0;31m'    # 赤

# ログ関数
log_info() {
    echo -e "${COLOR_INFO}[INFO]${COLOR_RESET} $1"
}

log_success() {
    echo -e "${COLOR_SUCCESS}[SUCCESS]${COLOR_RESET} $1"
}

log_warning() {
    echo -e "${COLOR_WARNING}[WARNING]${COLOR_RESET} $1"
}

log_error() {
    echo -e "${COLOR_ERROR}[ERROR]${COLOR_RESET} $1"
}

log_create() {
    echo -e "${COLOR_CREATE}[CREATE]${COLOR_RESET} $1"
}

log_delete() {
    echo -e "${COLOR_DELETE}[DELETE]${COLOR_RESET} $1"
}

log_cleanup() {
    echo -e "${COLOR_INFO}[CLEANUP]${COLOR_RESET} $1"
}

# ディレクトリミラーリング関数
mirror_directories() {
    local created_count=0
    
    for target_dir in "${TARGET_DIRS[@]}"; do
        if [[ ! -d "${SCRIPT_DIR}/${target_dir}" ]]; then
            continue
        fi
        
        # ディレクトリのみを検索（.DS_Storeなどのファイルは無視）
        find "${SCRIPT_DIR}/${target_dir}" -type d | while read -r dir; do
            # スクリプトディレクトリからの相対パスを取得
            local relative_path="${dir#${SCRIPT_DIR}/}"
            local asset_dir="${ASSET_ROOT}/${relative_path}"
            
            # linked_assetsに対応するディレクトリが存在しない場合は作成
            if [[ ! -d "${asset_dir}" ]]; then
                mkdir -p "${asset_dir}"
                log_create "${asset_dir}"
                ((created_count++))
            fi
        done
    done
    
    return 0
}

# 不要ディレクトリのクリーンアップ関数
cleanup_orphan_directories() {
    local empty_orphans=()
    local non_empty_orphans=()
    
    log_cleanup "不要ディレクトリのチェックを開始します..."
    
    for target_dir in "${TARGET_DIRS[@]}"; do
        local asset_target_dir="${ASSET_ROOT}/${target_dir}"
        
        if [[ ! -d "${asset_target_dir}" ]]; then
            continue
        fi
        
        # linked_assets内のディレクトリをチェック
        find "${asset_target_dir}" -type d | while read -r asset_dir; do
            # linked_assetsからの相対パスを取得
            local relative_path="${asset_dir#${ASSET_ROOT}/}"
            local main_dir="${SCRIPT_DIR}/${relative_path}"
            
            # メインリポジトリに対応するディレクトリが存在しない場合（不要ディレクトリ）
            if [[ ! -d "${main_dir}" ]]; then
                # ディレクトリが空かどうかチェック
                if [[ -z "$(ls -A "${asset_dir}")" ]]; then
                    empty_orphans+=("${asset_dir}")
                else
                    non_empty_orphans+=("${asset_dir}")
                fi
            fi
        done
    done
    
    # ファイルを含む不要ディレクトリの警告
    if [[ ${#non_empty_orphans[@]} -gt 0 ]]; then
        log_warning "以下の不要ディレクトリにはファイルが存在するため、削除されませんでした。手動で確認してください:"
        for orphan in "${non_empty_orphans[@]}"; do
            echo "  - ${orphan}"
        done
        echo
    fi
    
    # 空の不要ディレクトリの削除確認
    if [[ ${#empty_orphans[@]} -gt 0 ]]; then
        echo "以下の空の不要ディレクトリが見つかりました:"
        for orphan in "${empty_orphans[@]}"; do
            echo "  - ${orphan}"
        done
        
        echo -n "これらを削除しますか？ [y/N]: "
        read -r response
        
        if [[ "${response}" =~ ^[yY]$ ]]; then
            for orphan in "${empty_orphans[@]}"; do
                rmdir "${orphan}"
                log_delete "${orphan} を削除しました。"
            done
        else
            log_info "削除をキャンセルしました。"
        fi
    fi
}

# メイン処理
main() {
    log_info "アセットディレクトリの同期を開始します..."
    
    # linked_assetsディレクトリの存在確認
    if [[ ! -d "${ASSET_ROOT}" ]]; then
        log_error "linked_assetsディレクトリが見つかりません: ${ASSET_ROOT}"
        exit 1
    fi
    
    # ディレクトリのミラーリング
    mirror_directories
    
    echo
    
    # 不要ディレクトリのクリーンアップ
    cleanup_orphan_directories
    
    echo
    log_success "同期が完了しました。"
}

# スクリプト実行
main "$@"
