<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DebugJavaScript</title>

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
    </head>
    <body>

    </body>
</html>