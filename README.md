# portfolio-base

杉山丈太郎の実績・活動・スキルの知識ベースです。
Obsidianで閲覧・編集しやすく、かつFrontmatter（YAMLメタデータ）で情報を構造化することで
APIや静的サイト等のデータソースとしても活用できる設計です。

## ディレクトリ概要

| フォルダ | 内容 |
|:--- |:---|
| `00_Core` | 運用ガイド・タグ規約など、リポジトリの憲法 |
| `10_Achievements` | 職務経験、受賞、メディア出演、登壇などの実績・評価 |
| `20_Projects` | アプリ開発・イベント・受託PJ等の具体的な制作物 |
| `30_Background` | 学歴、資格、研修、所属団体などの公式な経歴 |
| `40_Personal_Growth` | 旅行、自己探求、原体験などの個人的な学び・成長記録 |
| `50_Knowledge_Base` | スキルや技術、研究テーマなど体系化された知識 |
| `60_Organizations` | 会社・大学・団体・コミュニティなど、関わった組織の情報 |
| `99_Templates` | ノート作成用テンプレート |
| `linked_assets` | 画像・PDF等のアセットファイル (Git Submodule) |

## 運用ルール

運用における詳細なルールは **`00_Core/operational_rules.md`** を参照してください。
以下は主要なルールの要約です。

1.  **命名規則**: 全てのファイル名・ディレクトリ名は**スネークケース (`snake_case`)** に統一します。
2.  **構造化**: 全てのノートに共通のFrontmatter（YAML）を記述し、情報を構造化します。
3.  **リンク**: DataviewやAPIなどの自動抽出を考慮した命名・タグ設計を意識してください。

## アセット管理

- 全てのアセット（画像、PDF等）は `linked_assets` サブモジュールで一元管理します。
- `linked_assets` 内のディレクトリ構造は、このリポジトリの構造を完全にミラーリングします。
  - (`sync_assets.sh` スクリプトで同期可能です)
- Markdownからの参照は `linked_assets/20_Projects/...` のように、ルートからのパスで記述します。
- 10MBを超える大容量ファイルは、`linked_assets` 側でGit LFSを使用して管理します。

---
**リポジトリのセットアップ**

```bash
# サブモジュールを含めてクローンする場合
git clone --recurse-submodules https://github.com/sugijotaro/portfolio-base.git

# 既存のリポジトリでサブモジュールを初期化する場合
git submodule update --init --recursive
```
