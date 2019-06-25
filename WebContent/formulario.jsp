<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.Computador"%>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<title>Compre um Computador Pessoal</title>
	</head>
	<body>
		<% Computador comp  = (Computador) request.getAttribute("comp"); %>
		
		<h2>Compre um Computador Pessoal</h2>
		<p><img src="img/pc.jpg" width="200" height="200"/></p>
		
		<%if(comp == null){
				comp = new Computador(0,0,0,0,0,0,0);
			} %>
		
		<form method="post" action="CalcularPreco" >
			
			<p>Valor inicial R$ 1000 </p>
			
			<fieldset>
				<legend>Memória ram</legend>
				<p>
					<input type="radio" name="memoria" value="0" checked> 4GB DDR4(R$ 0,00)<br />
					<input type="radio" name="memoria" value="128.21"> 8GB DDR3(R$ 128,21)<br />
					<input type="radio" name="memoria" value="228.90"> 8GB DDR4(R$ 228,90)<br />
				</p>
			</fieldset>
			
			<fieldset>
				<legend>HD</legend>
				<p>
					<input type="radio" name="hd" value="0" checked> 500GB(R$ 0,00)<br />
					<input type="radio" name="hd" value="219.00"> 1TB(R$ 219,00)<br />
					<input type="radio" name="hd" value="353.50"> 2TB(R$ 353,50)<br />
				</p>
			</fieldset>
			
			<fieldset>
				<legend>SSD</legend>
				<p>
					<input type="radio" name="ssd" value="0" checked> Nenhum<br />
					<input type="radio" name="ssd" value="170.00"> 240GB(R$ 170,00)<br />
					<input type="radio" name="ssd" value="315.99"> 480GB(R$ 315,99)<br />
				</p>
			</fieldset>
			
			<fieldset>
				<legend>Placa de Vídeo</legend>
				<p>
					<input type="radio" name="placaVideo" value="0" checked> Intel Graphics HD 4000 (R$ 0,00)<br />
					<input type="radio" name="placaVideo" value="749.90">  AMD Radeon RX 570 8 GB(R$ 749,90)<br />
					<input type="radio" name="placaVideo" value="719.90"> Geforce gtx 1050 TI 8 GB(R$ 719,90)<br />
				</p>
			</fieldset>
			
			<fieldset>
				<legend>Monitor</legend>
				<p>
					<input type="radio" name="monitor" value="0" checked> LG HD 25" (R$ 0,00)<br />
					<input type="radio" name="monitor" value="700.90">  Sony Full HD 30" (R$ 700,90)<br />
					<input type="radio" name="monitor" value="1200.50"> Samsung Ultra HD 30" (R$ 1200,50)<br />
				</p>
			</fieldset>
			
			<p><input type="submit" value="Calcular Preço Final" align="center" /></p>
			
			<p>Valor Total = <%=comp.getValorFinal() %></p>
			
		</form>
	</body>
</html>