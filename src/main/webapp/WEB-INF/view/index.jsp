<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Untitled Document</title>
<style>
	body {
	background:yellow;
	font-family: Tahoma;
}

.container {
	display: flex;
	align-items: center;
	justify-content: center;
	height: 100vh;
	width: 100vw;
}

#container {
	width: 200px;
	padding: 8px 8px 20px 8px;
	margin: 20px auto;
	background-color: #ABABAB;
	border-radius: 4px;
	border-top: 2px solid #FFF;
	border-right: 2px solid #FFF;
	border-bottom: 2px solid #C1C1C1;
	border-left: 2px solid #C1C1C1;
	box-shadow: -3px 3px 7px rgba(0, 0, 0, .6), inset -100px 0px 100px rgba(255, 255, 255, .5);
}

#display {
	display: block;
	margin: 15px auto;
	height: 42px;
	width: 174px;
	padding: 0 10px;
	border-radius: 4px;
	border-top: 2px solid #C1C1C1;
	border-right: 2px solid #C1C1C1;
	border-bottom: 2px solid #FFF;
	border-left: 2px solid #FFF;
	background-color: #FFF;
	box-shadow: inset 0px 0px 10px #030303, inset 0px -20px 1px rgba(150, 150, 150, .2);
	font-size: 28px;
	color: #666;
	text-align: right;
	font-weight: 400;
}

.button {
	display: inline-block;
	margin: 2px;
	width: 42px;
	height: 42px;
	font-size: 16px;
	font-weight: bold;
	border-radius: 4px;
}

.mathButtons {
	margin: 2px 2px 6px 2px;
	color: #FFF;
	text-shadow: -1px -1px 0px #44006F;
	background-color: #434343;
	border-top: 2px solid #C1C1C1;
	border-right: 2px solid #C1C1C1;
	border-bottom: 2px solid #181818;
	border-left: 2px solid #181818;
	box-shadow: 0px 0px 2px #030303, inset 0px -20px 1px #2E2E2E;
}

.digits {
	color: #181818;
	text-shadow: 1px 1px 0px #FFF;
	background-color: #EBEBEB;
	border-top: 2px solid #FFF;
	border-right: 2px solid #FFF;
	border-bottom: 2px solid #C1C1C1;
	border-left: 2px solid #C1C1C1;
	border-radius: 4px;
	box-shadow: 0px 0px 2px #030303, inset 0px -20px 1px #DCDCDC;
}

.digits:hover,
.mathButtons:hover,
#clearButton:hover {
	background-color: #FFBA75;
	box-shadow: 0px 0px 2px #FFBA75, inset 0px -20px 1px #FF8000;
	border-top: 2px solid #FFF;
	border-right: 2px solid #FFF;
	border-bottom: 2px solid #AE5700;
	border-left: 2px solid #AE5700;
}

#clearButton {
	color: #FFF;
	text-shadow: -1px -1px 0px #44006F;
	background-color: #D20000;
	border-top: 2px solid #FF8484;
	border-right: 2px solid #FF8484;
	border-bottom: 2px solid #800000;
	border-left: 2px solid #800000;
	box-shadow: 0px 0px 2px #030303, inset 0px -20px 1px #B00000;
}
	
	</style>
</head>

<body>
<div class="container">
	<fieldset id="container">
		<form name="calculator">

			<input id="display" type="text" name="display">

			<input class="button digits" type="button" value="7" onclick="calculator.display.value += '7'">
			<input class="button digits" type="button" value="8" onclick="calculator.display.value += '8'">
			<input class="button digits" type="button" value="9" onclick="calculator.display.value += '9'">
			<input class="button mathButtons" type="button" value="+" onclick="updateOperator('+'); calculator.display.value += ' + '">
			<br>
			<input class="button digits" type="button" value="4" onclick="calculator.display.value += '4'">
			<input class="button digits" type="button" value="5" onclick="calculator.display.value += '5'">
			<input class="button digits" type="button" value="6" onclick="calculator.display.value += '6'">
			<input class="button mathButtons" type="button" value="-" onclick="updateOperator('-');calculator.display.value += ' - '">
			<br>
			<input class="button digits" type="button" value="1" onclick="calculator.display.value += '1'">
			<input class="button digits" type="button" value="2" onclick="calculator.display.value += '2'">
			<input class="button digits" type="button" value="3" onclick="calculator.display.value += '3'">
			<input class="button mathButtons" type="button" value="x" onclick="updateOperator('x'); calculator.display.value += ' * '">
			<br>
			<input id="clearButton" class="button" type="button" value="C" onclick="calculator.display.value = ''">
			<input class="button digits" type="button" value="0" onclick="calculator.display.value += '0'">
			<!-- <input class="button mathButtons" type="button" value="=" onclick="calculator.display.value = eval(calculator.display.value)"> -->
			<input class="button mathButtons" type="button" value="=" onclick="sendInfo()">
			<input class="button mathButtons" type="button" value="/" onclick="updateOperator('/'); calculator.display.value += ' / '">
			
			<input type="hidden" id="operator">
		</form>
	</fieldset>
</div>
</body>

<script type="text/javascript">
	function updateOperator(operatorVal){
		if(operatorVal == '+')
			document.getElementById('operator').value = "add";
		else if(operatorVal == '-')
			document.getElementById('operator').value = "sub";
		else if(operatorVal == '/')
			document.getElementById('operator').value = "div";
		else if(operatorVal == 'x')
			document.getElementById('operator').value = "multiply";
		//alert(document.getElementById('operator').value);
	}
	
	function sendInfo()  
	{  
		var operatorVal = document.getElementById('operator').value;
		var arr = document.getElementById('display').value.split(/[-,+,/,*]+/);
		//alert(arr);
		var operand1 = arr[0].trim();
		var operand2 = arr[1].trim();
		//alert("operand1:"+operand1+"operand2:"+operand2+ "operator:"+document.getElementById('operator').value);
		var url="calculator?operand1="+operand1+"&operand2="+operand2+"&operator="+operatorVal;
		
		if(window.XMLHttpRequest){  
			request=new XMLHttpRequest();  
		}else if(window.ActiveXObject){  
			request=new ActiveXObject("Microsoft.XMLHTTP");  
		}  
	  
		try  
		{  
			request.onreadystatechange=getInfo;  
			request.open("GET",url,true);  
			request.send();  
		}  
		catch(e)  
		{  
			alert("Unable to connect to server");  
		}  
	}  
	  
	function getInfo(){  
		if(request.readyState==4){  
			var val=request.responseText;
			document.getElementById('display').value=val;  
		} 
	}
</script>
</html>
