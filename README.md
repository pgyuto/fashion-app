# アプリケーション名
Fashion

# アプリケーション概要
自分が持っている服の管理（色、種類、ブランド）をすることができ、さらに毎月使用金額を入力することで、月の使用金額を管理することができます。

# URL
https://fashion-app-37606.herokuapp.com/

# テスト用用アカウント
- Basic認証パスワード：2222
- Basic認証ID：admin
- メールアドレス：test@test
- パスワード：111qqq

# 利用方法
## 服登録
1. ユーザー確認ページからユーザーの新規登録を行う
2. 服一覧ページの登録ボタンから、服の内容（画像、服の詳細、カテゴリー、カラー、ブランド（任意））を入力し登録する
## 使用残高登録（計算）
1. 服一覧ページの残高ボタンをクリックする
2. ￥ ---をクリックし、月に使用できる金額を入力し設定する
3. 電卓ボタンを押し使用金額編集ページが表示されたら再度電卓ボタンを押し、表示されたフォームに使用したい金額を入力する。
4. 電卓ボタンを押しフォームを閉じる。
5. 設定ボタンを押すと使用金額が反映される。

# アプリケーションを作成した背景
私は少し前からファッションに興味を持ち始め、「服に使うお金が多い」という課題を抱えていました。課題を分析した結果、似ている服を買っている時があり、「服、使用できる金額の管理ができていない」」ということが真因であると仮説を立てた。同様の課題を抱えている方も多いと推測し、真因を解決するために、使用できる金額、服の管理ができるアプリケーションを開発することにした。

# 洗い出した要件
[要件を定義したシート](https://docs.google.com/spreadsheets/d/11EWU86XMDdoUGda-W4FcTnv8U5g9f5-MSIQPOCNDWGQ/edit#gid=1170044076)

# 実装した機能機能についての画像やGIFおよびその説明
1. ログイン機能
[![Image from Gyazo](https://i.gyazo.com/6ac6dcc6dd5cf421c0975f370d86a60c.gif)](https://gyazo.com/6ac6dcc6dd5cf421c0975f370d86a60c)

2. 服登録機能
[![Image from Gyazo](https://i.gyazo.com/6a8f7c0ab31091eb7c200733fe6219b0.gif)](https://gyazo.com/6a8f7c0ab31091eb7c200733fe6219b0)

3. 服詳細機能
[![Image from Gyazo](https://i.gyazo.com/6dc164831ea12a48e6a3c9a856dc883f.gif)](https://gyazo.com/6dc164831ea12a48e6a3c9a856dc883f)

4. 服編集機能
[![Image from Gyazo](https://i.gyazo.com/96ed3dd09aa9269ee166e24804ffdf8d.gif)](https://gyazo.com/96ed3dd09aa9269ee166e24804ffdf8d)

5. 服削除機能
[![Image from Gyazo](https://i.gyazo.com/d6ff8910110efb00d4b4245619ad7643.gif)](https://gyazo.com/d6ff8910110efb00d4b4245619ad7643)

6. 服絞り込み検索機能
[![Image from Gyazo](https://i.gyazo.com/58083dcc8513c6e5b94ea7becb31197b.gif)](https://gyazo.com/58083dcc8513c6e5b94ea7becb31197b)

7. 使用金額登録機能
[![Image from Gyazo](https://i.gyazo.com/2ec35c0d1b837373f6d19b6e99b33d04.gif)](https://gyazo.com/2ec35c0d1b837373f6d19b6e99b33d04)

8. 使用金額編集機能
[![Image from Gyazo](https://i.gyazo.com/d79677b502c5a42541f684e8df29bf1a.gif)](https://gyazo.com/d79677b502c5a42541f684e8df29bf1a)

9. 使用金額削除機能
[![Image from Gyazo](https://i.gyazo.com/846d3a9fa483822f17ad7e8db4bca403.gif)](https://gyazo.com/846d3a9fa483822f17ad7e8db4bca403)

10. 使用金額残高計算機能
[![Image from Gyazo](https://i.gyazo.com/4468ece56a06dcbb82c76b412cd750f8.gif)](https://gyazo.com/4468ece56a06dcbb82c76b412cd750f8)

# 実装予定の機能
現在服のお気に入り機能を実装中。  
今後は、月に使用した金額を可視化できるようにグラフ表示機能などを実装予定。

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/c60b5cc3d52beecb5950b350afeffbcd.png)](https://gyazo.com/c60b5cc3d52beecb5950b350afeffbcd)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/6ee7c086d45075730e30404bd15e6fb9.png)](https://gyazo.com/6ee7c086d45075730e30404bd15e6fb9)
# 開発環境
- Ruby/Ruby on rails/javascript/jQuery/MySQL/Github/AWS/Visual Studio Code
- フロントエンド
- バックエンド
- インフラ
- テスト
- テキストエディタ
- タスク管理
# ローカルでの動作方法
以下のコマンドを順に入力  
% git clone https://github.com/pgyuto/fashion-app  
% cd fashion-app  
% bundle install  
% yarn install
# 工夫したポイント
## 1.服の絞り込み検索
複数の条件での絞り込みが可能になるような細い検索機能を実装しました。理由としては、複数の服の登録が考えられるため、目的である「服の管理」をするためには必須の機能だと考えました。そこで使用したことのないransackというgemを使用することで実装をすることができました。
## 2.自動計算機能
使用する金額を入力するだけで登録残高から自動で計算をする機能の実装をしました。そのため、使用金額の設定を自分で計算して、編集し直す手間が省かれ、金額管理の部分が使いやすくなりました。また、入力フォーム以外の部分の背景を暗くすることで、入力をする部分をわかりやすくしました。
## 3.アイコンボタンによる機能のわかりやすさ
絞り込み検索をするボタンや、登録、残高ボタン、計算ボタンなどを文字を使用したボタンではなく、アイコンボタンにすることで、使用する際に直感的にどのような機能なのかをわかり易いようにしました。
## 4.シンプルな色使いのＣＳＳ
服の管理をするアプリということで、アプリケーションの背景色などで服の色の邪魔をしないように考えながらレイアウトやCSSのデザインにしました。
## 5.N+1問題の可視化
複数のアソシエーションを使う上で気づかないところでN+1問題が発生していることがありました。そのため開発環境でのみ「bullet」というgemを使うことで開発中にN+1問題が発生した際アラートで知らせてくれるように設定しました。そのため発生に気づかないことを回避することができました。
