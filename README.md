# GCPUG Shonan Terraform ハンズオン

## 事前準備

1. GCPプロジェクトを作成しましょう
2. Billing Accountを設定しましょう（要クレジットカード）
3. 環境
    - ローカルPC
        - Chromeをインストールしておいてください
        - Developer Consoleにログインしてアクセスできるようにしておいてください
        - 今回はCloud Shellを使います

## お品書き

1. [] Terraformの説明、インストール
1. [] ハンズオンのリポジトリをクローンする
2. [] サービスアカウントの作成
3. [] GCSバケットの作成
4. [] ディスクの作成
5. [] startup-scriptの用意
6. [] 静的IPアドレスの取得
7. [] Firewall Ruleの作成
8. [] インスタンスの作成
    - [] ディスクのアタッチ
    - [] 静的IPアドレスの割り当て

## Cloud Shell

1. ブラウザからCloud Shellにログインしてください
2. GitHubから今日の必要なリソースをクローンしてください
3. `cloudshell-setup.sh`を実行するとTerraformをインストールします

##
