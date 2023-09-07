# Nays2DH

iRICに登載されている平面二次元河床変動ソルバーNays2DHのリポジトリです．

## 動作環境

iRICに同封されているものは，Intel Open APIを使ってコンパイルをしています．

同環境で使用したい場合は例えば下記のページなどで環境構築をお願いします．

https://qiita.com/Kazutake/items/a069f86d21ca43b6c153

## 改良版をiRICで動かす

srcフォルダにあるmake.batでコンパイルできます．もちろん，そのほかの方法でコンパイルいただいても大丈夫だと思います．

installフォルダにNays2DH.exeが生成されますので，iRICのインストールフォルダにある，solvers/iRICsolvers_v4_Nays2DHにコピーすると更新ソルバーが使えます．

条件設定ファイルdefinition.xmlを変更した際も同様です．

もし改良版をオリジナルと分けたい場合は，別途フォルダを作成し，そこにNays2DH.exe，definition.xmlなどをコピーしてください．その際，definition.xml内にあるcaptionなどを変更しておくと，区別がつきやすいです．
