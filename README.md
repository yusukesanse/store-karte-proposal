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

## 公開（Cloudflare Pages ＋ Access）

GitHub Pages は private リポでは使えない（Free プラン）ため、**Cloudflare Pages の Direct Upload** で公開する。
`./deploy.sh` が `dist/` を作って `wrangler pages deploy` する。閲覧制限は Cloudflare Access（メールのワンタイムコード）で掛ける。

- 公開URL: https://store-karte-proposal.pages.dev/
- Cloudflare アカウント: Sanse@eightdesign.jp's Account
- 閲覧を許可するメールアドレスは Zero Trust → Access → Applications で管理
