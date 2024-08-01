<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

        function toOneDimension(previousValue, currentValue) {
            return previousValue.concat(currentValue);

        }

        var sampleArrayA = [
            ['A1', 'A2', 'A3'],
            ['B1', 'B2', 'B3'],
            ['C1', 'C2', 'C3']];

        var sampleArrayB = sampleArrayA.reduce(toOneDimension);

        for (var counterVar = 0; counterVar <sampleArrayB.length; counterVar++) {

            document.write('sampleArrayB['+counterVar +']:');
            document.write(sampleArrayB[counterVar]);
            document.write('<br/>');

        }

        </script>
    </body>
</html>