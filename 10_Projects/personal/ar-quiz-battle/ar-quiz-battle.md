---
title: ARクイズアプリ「部長とクイズバトル」
type: project
subtype: extracurricular_activity
status: completed
role:
  - 企画
  - デザイン
  - アプリ開発
  - ARコンテンツ作成
orgs: org_high_school_geography_club
start_date: 2019-05-18
end_date: 2019-09-17
tags:
  - ar
  - ios
  - swift
  - arkit
  - premiere-pro
  - photoshop
  - illustrator
  - school-festival
  - uikit
  - burachiribu
  - application
  - quiz
  - making
summary: 2019年、高校1年時の学園祭で部長を務める地理部で開発したARクイズアプリ。地理部の新聞「ブラチリブNEWS」にiPadをかざすとARで筆者が現れてクイズを出す仕組み。1500人以上を集客し、学園祭の人気投票で1位を獲得、後にApp Storeでも公開した。
media_features:
  - activity_nhk_numa_20210518
links:
  - https://apps.apple.com/jp/app/id1479295376
---

<img src="linked_assets/projects/ar-quiz-battle/ar_quiz_battle_icon.jpg" alt="部長とクイズバトル アイコン" style="float: right; width: 100px; margin-left: 16px;">
## 概要

2019年の学園祭にて、私が部長を務めていた[[burachiribu_club_activity|地理部]]の企画として開発したARクイズアプリです。部で発行していた新聞「ブラチリブNEWS」の記事内容からクイズを出題。新聞にiPadをかざすとARで私自身が登場し、クイズを読み上げるという体験を提供しました。

学園祭の来場者人気投票では、1500人以上を集客し、例年同じ団体が受賞していた歴史を塗り替えて1位を獲得することができました。

![学園祭ポスター](linked_assets/activities/burachiribu-club-activity/gakuensai_poster_quizbattle.jpg)
<div style="display: flex; gap: 10px;">
    <img src="linked_assets/projects/ar-quiz-battle/award_group_photo_1.jpg" alt="人気投票1位の集合写真" width="49%">
    <img src="linked_assets/projects/ar-quiz-battle/award_group_photo_2_with_prize.jpg" alt="景品を受け取った際の集合写真" width="49%">
</div>

## 背景と課題

地理部では「ブラチリブNEWS」という新聞を毎月発行していましたが、なかなか部員以外に読んでもらえないという課題がありました。そこで、学園祭という多くの人が訪れる機会に、AR技術を使って新聞をインタラクティブで楽しいコンテンツに変え、多くの人に地理や部の活動に興味を持ってもらうことを目指しました。

## 開発プロセスとこだわり

当時、私はプログラミングスクールに通い始めたばかりで、AR開発は未経験でした。手探りの状態から開発を進めましたが、来場者に最高の体験を届けるために、様々な工夫を凝らしました。

### 1. AR技術の習得とプロトタイピング
ARKitを使い、特定の画像（マーカー）を認識して動画を再生するという簡単なデモから開発をスタートしました。試行錯誤を繰り返しながら徐々にARの技術を習得し、クイズアプリの形に仕上げていきました。

<div style="display: flex; gap: 10px;">
    <img src="linked_assets/projects/ar-quiz-battle/ar_marker_test.jpg" alt="ARマーカーのテスト" width="32%">
    <img src="linked_assets/projects/ar-quiz-battle/dev_snapshot_201906.jpg" alt="開発中の様子（2019年6月）" width="32%">
    <img src="linked_assets/projects/ar-quiz-battle/dev_snapshot_201909.jpg" alt="開発中の様子（2019年9月）" width="32%">
</div>

### 2. 自然なAR体験のためのクロマキー合成
新聞からクイズ出題者が「飛び出してくる」感覚をより自然にするため、クロマキー合成に挑戦しました。自室の壁に緑の布を貼り、撮影した映像を編集することで、背景が透明な動画素材を作成しました。これにより、新聞の紙面とARコンテンツの融合感を高めることができました。

<div style="display: flex; gap: 10px;">
    <img src="linked_assets/projects/ar-quiz-battle/chromakey_setup_1.jpg" alt="クロマキー合成のセットアップ" width="49%">
    <img src="linked_assets/projects/ar-quiz-battle/chromakey_setup_2.jpg" alt="クロマキー合成のセットアップ" width="49%">
</div>

### 3. 初心者でも楽しめるUXデザイン
ARに馴染みのない方でも直感的に遊べるよう、丁寧なチュートリアル画面を用意しました。最初にブラチリブのロゴを探してもらい、それをマーカーとしてARを起動させることで、遊び方を感覚的に理解できるよう工夫しました。

![チュートリアル画面](linked_assets/projects/ar-quiz-battle/tutorial_screenshot.jpeg)

### 4. 徹底した品質改善
AppleのTestFlightを活用し、多くの友人にiPadでテストプレイをしてもらいました。本番直前までバグ報告と修正を繰り返し、アプリの完成度を高めました。

![TestFlightでの配信](linked_assets/projects/ar-quiz-battle/testflight_screenshot.jpg)

![来場者がARクイズを体験する様子](linked_assets/activities/burachiribu-club-activity/quizbattle_customers.jpg)
![プレイ画面](linked_assets/activities/burachiribu-club-activity/quizbattle_play_scene.jpg)

## 成果と学び

- **学園祭人気投票1位獲得**: 1500人以上を集客し、圧倒的な支持を得て1位に輝きました。
- **チームの一体感醸成**: 当初は実現を疑っていた部員たちも、私が率先して行動し、プロトタイプを見せることで次第に協力的になりました。最終的には部員20人全員が主体的に関わり、企画を成功に導くことができました。
- **ARの可能性の発見**: 「ARは、人に知的楽しみや納得感を効果的に与えることができる」という強い気づきを得ました。この体験が、私の技術力と発想力を大きく成長させてくれました。

## App Storeリリース
学園祭での成功を受け、より多くの人に体験してもらうため、2020年2月8日にApp Storeでアプリを公開しました。

### App Store 説明文
> ■部長とクイズバトル！
> AR技術を使った新感覚のクイズアプリ！
> 「ブラチリブNEWS」にiPadをかざすと、そこから部長が現れる！
> 部長から出題するクイズに挑戦し、満点を目指せ！
> 
> ■ブラチリブNEWS
> 部長が出題するクイズは、ブラチリブNEWSの内容に基づいています。
> クイズの答えは、必ずブラチリブNEWSの中に書いてあります。
> ブラチリブNEWSをよく読めば、満点も夢じゃない！
> 
> ■豪快な部長の演出
> 部長は、クイズに正解すると褒めてくれますが、不正解だと煽ってきます。
> 煽りパターンは全部で10種類！コンプリートしよう！
> 
> ■バリエーション豊富な称号
> 正解した問題数に応じて、称号を獲得できます。
> 全部の称号をコンプリートしよう！

## メディア紹介
- [[nhk_numa_appearance|NHK Eテレ『沼にハマってきいてみた』]]（2021年5月18日放送）にて、本アプリが紹介されました。
