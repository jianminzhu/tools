Zen Coding for EmEditor Professional
v0.7
May 2, 2011
based on Zen Coding for textarea v0.6
http://code.google.com/p/zen-coding/

Code license:
GNU General Public License v3
http://www.gnu.org/licenses/gpl.html

Ported for EmEditor by Yutaka Emura (Emurasoft, Inc.)
http://www.emeditor.com/


EmEditor Professional は、JavaScript によるマクロをサポートしているため、実は、Zen Coding のサポートを行いやすいと言えます。EmEditor が、Zen Coding のサポートを行うためには、Zen Coding のインターフェイスの部分を書き換えるだけで済み、コアの部分はほとんど変更せずに済みます。

Zen Coding for EmEditor Professional を使用するには 2 種類の方法があります。最初の方法は、スニペット プラグインを利用する方法です。この方法だと、すべてのコマンドに対してキーボード ショートカットを簡単に割り当てることができ、ポップアップ メニューを表示しないですぐに実行することができます。

スニペット プラグインに Zen Coding をインストールするには
=========================================================

1. "zen_emeditor.jsee" を My Macros フォルダにコピーします。My Macros は、通常、「マイ ドキュメント」フォルダの中にありますが、一度もマクロを利用したことがない場合は、このフォルダができていないことがあります。その場合は、「マイ ドキュメント」フォルダの中に My Macros フォルダを作成してから、このファイルをコピーします。

2. スニペット カスタム バーが表示されていない場合は、[ツール] メニューの [プラグイン] - [スニペット] を選択します (または、プラグイン ツール バーで [スニペット] ボタンをクリックします)。

3. スニペット カスタム バー上で右クリックを行い、メニューを表示します。

4. [インポート/エクスポート] - [ルートにインポート...] を選択します。

5. ファイル "zen-coding-jp.eesnip" を選択します。

6. スニペット カスタム バーが表示されていない場合にも Zen Coding を動作させたい場合は、プラグイン ツール バーの [スニペット] ボタンを右クリックして表示されるメニューから [プロパティ] を選択 (または、スニペット カスタム バーから [表示] - [プラグイン プロパティ] を選択) し、[バックグラウンドでも実行] をチェックします。

スニペット カスタム バーに、"Zen Coding" フォルダが表示され、このフォルダに、以下の 17 個のマクロ アイテムが表示されるはずです。これらのマクロすべてにショートカット キーが割り当てられています。

 - コメントの挿入/削除 (Alt+/)
 - タグを分割/結合 (Ctrl+:)
 - タグの削除 (Ctrl+Shift+^)
 - タグ範囲選択 (Ctrl+Shift+D)
 - 前の編集位置 (Ctrl+Shift+\)
 - 増加 0.1 (Ctrl+Shift+Num +)
 - 増加 1 (Ctrl+Num +)
 - 増加 10 (Shift+Num +)
 - 対応するタグ (Ctrl+[)
 - 数式の計算 (Ctrl+=)
 - 次の編集位置 (Ctrl+\)
 - 減少 0.1 (Ctrl+Shift+Num -)
 - 減少 1 (Ctrl+Num -)
 - 減少 10 (Shift+Num -)
 - 省略形で囲む (Ctrl+Shift+A)
 - 省略形の展開 (F12)
 - 行の結合 (Ctrl+Shift+M)

ただし、上記のショートカット キーは、日本語キーボードの場合です。米国キーボードの場合は、2 個のショートカット キーが次のようになります。

 - タグの削除 (Ctrl+Shift+')
 - タグを分割/結合 (Ctrl+;)

ショートカット キーは、各スニペットのプロパティから変更することができます。


Zen Coding を直接マクロとしてインストールするには
=================================================

1. "zen_emeditor.jsee" と "zen_popup_menu.jsee" の両方のファイルを My Macros フォルダ (通常 My Documents\My Macros) にコピーします。

2. マクロ メニューから [選択...] をクリックし、"zen_popup_menu.jsee" を選択します。

3. このマクロにキーボード ショートカットを割り当てたい場合、[ツール] メニューから [すべての設定のプロパティ] を選択します。[キーボード] タブをクリックし、[カテゴリ] ドロップ ダウン リストから "マイ マクロ" を選択し、"zen_popup_menu.jsee" を選択します。[追加するショートカット キー] テキスト ボックスに、割り当てたいキーボード ショートカットを入力し、[割り当て] ボタンをクリックします。

Zen Coding を使用するには
=========================

もっとも頻繁に使用するアクションは、"Expand Abbreviation" になります。

たとえば、"div#name" とタイプして、F12 を押すと (スニペットとしてインストールした場合)、または"zen_popup_menu.jsee" マクロを選択して "Expand Abbreviation" を選択すると、この省略形が以下のように展開されます。

<div id="name"></div>

Zen Coding の構文や、さらに役に立つアクションについての詳細情報については、以下のページを参照してください。

Zen Coding:
http://code.google.com/p/zen-coding/

Zen Coding 構文:
http://code.google.com/p/zen-coding/wiki/ZenHTMLSelectorsEn

HTML エレメント:
http://code.google.com/p/zen-coding/wiki/ZenHTMLElementsEn

CSS プロパティ:
http://code.google.com/p/zen-coding/wiki/ZenCSSPropertiesEn

Zen Coding チートシート:
http://code.google.com/p/zen-coding/wiki/CheatSheets

「Zen Coding の使い方」記事:
http://jp.emeditor.com/modules/feature1/rewrite/tc_13.html

Sergey Chikuyonok 氏と Zen Coding の開発者に感謝します。

------------
May 13, 2010  最初のリリース
May 17, 2010  スニペット ファイル (zen-coding.eesnip) が、すべての設定で動作するようにしました。
May 18, 2010  スニペットの表示を日本語にして、日本語用スニペット ファイル (zen-coding-jp.eesnip) を追加しました。
May 2, 2011   Zen Coding v0.7 のサポート。 "数式の計算"、"減少 0.1/1/10"、"増加 0.1/1/10" コマンドを追加しました。詳しくは、リリース ノート (https://github.com/sergeche/zen-coding/wiki/Release-Notes) をお読みください。
