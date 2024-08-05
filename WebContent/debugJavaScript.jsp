<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>DebugJavaScript</title>
    </head>
    <body>
        <h3>＜要望＞</h3>
        <br>
        ・配列sampleArrayA に値が追加されても、プログラムに手を加えなくて済むよう改修してほしい。<br>
        ・現行のJavaScript（次ページ参照）を改修したい。<br>
        ・下記処理は修正しないこと。<br>
        「配列sampleArrayA の初期化」<br>
        「for文の処理の内容」<br>
        「テキストの赤文字部分」<br>
        <br>
        <h1>＜ブラウザに表示したい内容＞</h1>
        <!--
        sampleArrayB[0]: C1
        sampleArrayB[1]: C2
        sampleArrayB[2]: C3
        sampleArrayB[3]: B1
        sampleArrayB[4]: B2
        sampleArrayB[5]: B3
        sampleArrayB[6]: A1
        sampleArrayB[7]: A2
        sampleArrayB[8]: A3
        -->
        <br>
        <script type = "text/javascript">

        //修正していいところ
        //function 関数名(引数) { 処理 }
        //複数の処理をひとまとまりにしたものでメソッドと呼ばれる＝関数名toOneDimension
        //「引数」とは関数に渡して処理の中でその値を使うことができるもの
        //previousValue=初回実行時は、第二引数のinitialValueの値。initialValueが指定されていなければ、配列の0番目の値が該当
        //currentValue=現在の配列の値。初回実行時は、initialValueが指定されている場合、配列の0番目の値。そうでなければ、配列の1番目の値
        function toOneDimension(previousValue, currentValue) {

        	//戻り値、値や文字列などを関数の外に返却（出力）する処理
            //concatメソッドは2以上の配列を結合して新しい配列を作るときに使う、文字列を結合することもできる
        	//previousValueとcurrentValueをconcatで結合する
        	//対象の配列.concat(結合する配列);
        	//return currentValue.concat(previousValue); //←これが正解！
        	return previousValue.concat(currentValue);
        }

         //修正だめ
         //「①配列コンストラクタ」を使う場合は、「new」を使ってArray()の引数へ格納したい文字列を設定する
         //「②配列リテラル」を使う場合は、[ ]を使ってそのまま文字列を設定すればOK！今回はこっち！
        var sampleArrayA = [
            ['A1', 'A2', 'A3'],
            ['B1', 'B2', 'B3'],
            ['C1', 'C2', 'C3']];

        //修正していいところ
        //関数の呼び出し、sampleArrayA.reduceのtoOneDimensionをsampleArrayBに代入
        //reduce()は配列に対して適用され、結果を蓄積していくメソッド
        //対象の配列.reduce(コールバック関数);
        var sampleArrayB = sampleArrayA.reduce(toOneDimension);

        //以下最後まで修正だめ
        //for (初期化式; 条件式; 変化式)
        //①初期化式で変数counterVarに0が代入される、counterVarがsampleArrayB.lengthより小さい場合、
        //length=配列に格納されている要素数
        for (var counterVar = 0; counterVar < sampleArrayB.length; counterVar++) {

        	//②下記が実行される
        	//結果を出力
        	//③変化式 counterVar++ が実行されて変数 counterVar の値が 1 となり、for文の2周目の処理に入る
            document.write('sampleArrayB['+ counterVar +']:');
            document.write(sampleArrayB[counterVar]);
            document.write('<br/>');

        }

        </script>
    </body>
</html>