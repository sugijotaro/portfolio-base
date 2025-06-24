---
title: 休日みくじ
type: project
subtype: personal
status: completed
role:
  - 企画
  - デザイン
  - 開発
  - リリース
orgs:
  - nhk_hamatta
end_date: 2021-05-18
tags:
  - iOS
  - Swift
  - Firebase
  - Xcode
  - Illustrator
  - Photoshop
  - AppStore
links:
  - https://apps.apple.com/jp/app/id1563617004
summary: |
  「休日を無駄に過ごしてしまう」という悩みを解決するため、休日の過ごし方を提案するおみくじアプリ。企画からリリースまでがNHK Eテレ『沼にハマってきいてみた』で密着取材された。
---

<img src="assets/holiday_omikuji_icon.jpg" alt="休日みくじ アイコン" style="float: right; width: 100px; margin-left: 16px;">
## 概要
休日にやることが見つからず、時間を無駄にしてしまうという課題を解決するために開発したiOSアプリです。iPhoneを振ることでおみくじが引かれ、様々な休日の過ごし方が提案されます。

NHK Eテレ『沼にハマってきいてみた』の番組内企画で、ゼロからアプリを企画し開発する様子が密着取材されました。（詳細は [[nhk_numa_appearance]] を参照）

## 主な機能
- **おみくじ**: iPhoneを振ると、休日の過ごし方が提案されます。
- **お気に入り**: 気に入った提案を保存し、後から見返すことができます。
- **カスタマイズ**: タグを使って提案内容を絞り込み、自分好みに設定できます。
- **投稿機能**: ユーザーが考えた休日の過ごし方を投稿し、他のユーザーと共有できます。

## 開発のポイント
- **スケーラビリティ**: NHKで放送されることから多くのユーザーアクセスを予測し、大量のトラフィックにも耐えられるようFirebaseのデータ構造を工夫しました。
- **UXデザイン**: 「おみくじを引く」という体験を直感的にするため、実際にiPhoneを振るという操作を採用しました。これにより、ユーザーがアプリに対して直接影響を与えている感覚（アフォーダンス）を高め、楽しさを演出しました。

## スクリーンショット
<div style="display: flex; flex-wrap: wrap; gap: 10px;">
    <img src="assets/holiday_omikuji_ss_1.jpg" alt="休日みくじスクリーンショット1" width="32%">
    <img src="assets/holiday_omikuji_ss_2.jpg" alt="休日みくじスクリーンショット2" width="32%">
    <img src="assets/holiday_omikuji_ss_3.jpg" alt="休日みくじスクリーンショット3" width="32%">
    <img src="assets/holiday_omikuji_ss_4.jpg" alt="休日みくじスクリーンショット4" width="32%">
    <img src="assets/holiday_omikuji_ss_5.jpg" alt="休日みくじスクリーンショット5" width="32%">
</div>

## メディア紹介
番組内では、MCのサバンナ高橋さんに実際にアプリを体験していただきました。
<div style="display: flex; gap: 10px;">
    <img src="assets/takahashi_san_1.jpg" alt="サバンナ高橋さんが休日みくじをプレイする様子1" width="49%">
    <img src="assets/takahashi_san_2.jpg" alt="サバンナ高橋さんが休日みくじをプレイする様子2" width="49%">
</div>
