# 店舗カルテシステム システム案（公開ページ）

GitHub Pages で公開するシステム案（v0.1 ドラフト）。`index.html` が本文、`tokens.css` がデザイントークン、`prototype/` は店舗カルテのブラウザ内プロトタイプ v0.1（1店舗分・サーバー保存なし）。

- このリポジトリには **顧客名・個人名・金額・社内議事録の内容を含めない**こと（公開リポジトリ）
- 見積・体制・契約条件は別紙。ここは「何を作るか」だけ
- ビルド工程なし。ファイルを直接編集して push すれば反映される

## ファイル

| ファイル | 内容 |
|---|---|
| `index.html` | システム案本文（00〜12 章＋付録） |
| `tokens.css` | 色・書体・余白のトークン |
| `prototype/index.html` | 店舗カルテ プロトタイプ v0.1 |
| `.hallmark/log.json` | デザイン方針の記録（Hallmark） |

## 公開

**GitHub Pages（public リポジトリ・`master` / root）** で公開中: https://yusukesanse.github.io/store-karte-proposal/
push すれば数分で反映される。`<meta name="robots" content="noindex,nofollow">` を付けてあるが、URL を知れば誰でも見られる。

`deploy.sh` は Cloudflare Pages（Direct Upload）＋ Access（メール認証で閲覧制限）へ切り替えるときの手順。
Cloudflare 側にプロジェクト `store-karte-proposal`（Sanse@eightdesign.jp's Account）だけ作成済み・未デプロイ。
使う場合は Zero Trust の初回セットアップ後に `./deploy.sh`。
