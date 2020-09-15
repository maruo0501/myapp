# Opereminder

<img src="./public/images/img/CF1E0F1B-E2F1-458B-BEA1-A10D0CEC1B0D_1_105_c.jpeg" alt="手順一覧画面">

自身の転職活動用に作成した、ポートフォリオアプリです。
Ruby on Rails(ver. 5.2.4)を用いて、手術室ナースのためのリマインダーサービスを作成致しました。<br>
前職の手術室ナースとしての経験を生かし、手術室ナースにとって使いやすく、あったら便利なサービスとなるよう工夫致しました。<br>

<br>

## 制作の背景

前職の手術室ナースとして病院に務めていた際に、私の職場では全ての診療科目の手術手順が紙で管理されていました。
医師からの急な手順の変更時には口頭での周知や、手書きで手順に追記を行っており、
そのことによる伝達漏れが発生し不便に感じていました。<br>
そこで、手術手順の変更時にリマインドしてくれるようなサービスがあったらいいなと思い、作成することと致しました。

<br>

## 本番環境 URL

https://opereminder.com/<br>

閲覧の際は、通常のユーザー登録・ログイン機能によるご確認のほか、ログインページの「ゲストログイン」ボタンから、ゲストユーザーアカウントによるご確認もご利用いただけます。<br>
また、ゲストログインしていただくと、管理者権限の機能もご確認いただけます。
<br>
本ポートフォリオは、タブレット・スマートフォンからもご覧いただけます。

<br>

## 使用技術

- **バックエンド**
  - Ruby 2.6.5
  - Ruby on Rails 5.2.4
  - RSpec
  - PostgreSQL 12.2
- **フロントエンド**
  - HTML / CSS
  - JavaScript / jQuery
- **インフラストラクチャー**
  - ローカル開発環境
    - Docker 19.03.12
    - Docker Compose 1.26.2
    - Nginx
    - Puma

  - AWS
    - ELB
    - VPC
    - EC2
    - Route53
    - S3
    - ACM

## アプリケーション構成図

<img src="./public/images/img/24642F21-5CBF-4443-847B-C0ECE9E1BBFD.jpeg" alt="アプリケーション構成図">

## 機能一覧

- カード決済機能(外部API)
  - 定期課金(毎月27日に1000円の課金)することで、プレミアム会員登録できる。手順投稿・編集機能を使用できるようになる

- バッチ処理
  - 全ユーザーに対し定期的(毎週月曜日の8時)に未読の手順一覧の通知を行う
  <img src="./public/images/img/6240945A-EF5A-4054-8CC7-DA8B68643CDD.gif" alt="未読の手順通知動画">

- 管理者権限
  - 手順の削除は管理者のみ行える
  - ユーザー作成・編集・削除操作ができる

- コメント機能(Ajax)
  - 手術手順に対し、コメントをすることが可能

- 通知機能
  - 自分が投稿した手順に対してコメント・ストックされた際に、画面上に通知される

- メール機能
  - 手術手順作成・手術手順編集・コメント時に、ユーザー全員に対してメール通知される
  <img src="./public/images/img/F5AABE36-FC9E-43AC-A9E6-F8202BB5549B.gif" alt="コメント時の通知動画">

- 検索機能
  - 診療科目・手術名のキーワード(あいまい)検索・ステータスそれぞれの検索・または絞り込み検索が可能

- ログイン機能

- ユーザー登録機能
  - メールアドレス、名前、パスワードは必須

- ユーザー編集機能

- 手術手順一覧表示機能
  - コメント数を表示

- 手術手順作成機能
  - 手術名、診療科目、手順は必須
  - 手順をMarkdown形式で投稿できる

- 手術手順編集機能

- 手術手順削除機能
  - 手順の削除は管理者のみ実行可能

- 手順のストック機能
  - 手順のストックについては、1つの手順に対して一人一回しかできない

- コメント機能とストック機能については、ページ遷移なしで実行できる

- その他
  - SSL化
  - 単体テスト/結合テスト
  - レスポンシブ対応
  - ページネーション機能あり
  - オリジナルエラーページ(404,500)あり

## その他 使用技術・機能
- カンバンのタスク管理(GitHub Project)
- プルリクを活用したGitHubフロー
- SSL化

## 使用Gem
* CarrierWave
* MiniMagick
* Devise
* RailsAdmin
* CanCanCan
* Kaminari
* Faker
* Redcarpet
* CodeRay
* PAY.JP
* Fog::Aws
* ransack