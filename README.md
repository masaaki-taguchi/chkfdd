# CHKFDD.R
X680x0でFDDの存在チェックを行います。

## 使用方法
以下の形式で起動できます。
```
CHKFDD -[switch]
```
-Iスイッチで、内蔵FDDの存在チェックを、-Eスイッチで拡張FDDの存在チェックを行います。
-0、-1、-2、-3でそれぞれのドライブ番号ごとの存在チェックも可能です。
実行後は戻り値として、0であれば該当のFDDが存在、1であれば該当のFDDは存在なしとなります。

バッチファイルでの利用例は以下となります。(CHKFDD.BATと同等の内容となります)
```
ECHO OFF
CHKFDD -I -S
IF EXITCODE 0 GOTO exist
GOTO not_exist

:exist
ECHO 内蔵FDDは存在します
GOTO exit

:not_exist
ECHO 内蔵FDDは存在しません

:exit
```

本プログラムでは以下のスイッチが指定可能です。
| &nbsp;&nbsp;&nbsp;&nbsp;switch&nbsp;&nbsp;&nbsp;&nbsp; | 説明 |
| ---- | ---- |
|  -I   |  内蔵FDD(ドライブ0、ドライブ1)の存在チェック  |
|  -E   |  拡張FDD(ドライブ2、ドライブ3)の存在チェック  |
|  -0  |   ドライブ0の存在チェック  |
|  -1  |   ドライブ1の存在チェック  |
|  -2  |   ドライブ2の存在チェック  |
|  -3  |   ドライブ3の存在チェック  |
|  -S  |   テキスト出力無し  |

## ビルド方法
ビルドはyosshinさんの[xdev68k](https://github.com/yosshin4004/xdev68k)を使用させていただいています。

xdev68kの環境構築後に、bashコンソールで以下を実行してください。
```
cd src
make
```

## ライセンス
CHKFDDはMITライセンスを適用しています。
