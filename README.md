# portfolio-base

杉山丈太郎の実績・活動・スキルの知識ベースです。  
Obsidianで閲覧・編集しやすく、かつFrontmatter（YAMLメタデータ）で情報を構造化することで  
APIや静的サイト等のデータソースとしても活用できる設計です。

## ディレクトリ概要

| フォルダ | 内容 |
|----------|------|
| 00_Core | 運用ガイド・テンプレート・タグ規約 |
| 10_Projects | アプリ開発・イベント・受託PJ等の実績 |
| 20_Activities | 講演・取材・旅行・日記などの出来事 |
| 30_Knowledge | スキル・研究・技術メモ |
| 40_Organizations | 会社・大学・団体・コミュニティ情報 |
| 90_Assets | 画像・PDF等の大容量ファイル |
| 99_Templates | ノート作成用テンプレート |

## 運用ルール

1. 全ノートに**共通Frontmatter**（YAML）を記述してください。
2. 画像やPDFは各ノート直下の`assets/`または`90_Assets/`に格納してください。
3. DataviewやAPIなどの自動抽出を考慮した命名・タグ設計を意識してください。

## アセット管理ルール

- 画像（.jpg, .jpeg, .png, .gif）は、原則として直接コミット・プッシュしてよい。
- 動画（.mp4, .mov等）やPDF等の大容量ファイルは、**10MB以上の場合は必ずGit LFSで管理**すること。
- すべてのバイナリアセットは portfolio-base-assets リポジトリ（サブモジュール名: linked_assets）で一元管理する。
- 新規アセット追加時は、linked_assetsリポジトリに追加・コミット・プッシュし、その後portfolio-base側でサブモジュールを更新・コミットすること。
- サブモジュールを含むリポジトリのクローンは`git clone --recurse-submodules`を推奨。既存リポジトリは`git submodule update --init --recursive`でサブモジュール取得。
