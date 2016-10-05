<%@page import="model.NutrientBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype HTML>

<html>
<head>
  <link rel="stylesheet" href="css/nutritional_info_style.css"/>
  <title>Nutritional Info</title>
</head>
<body>
<% NutrientBean foodObject = new NutrientBean(); %>
<%-- Dummy setup of bean --%>
<% foodObject.setServingSize(0.75); %>
<% foodObject.setServingUnit("cup"); %>
<% foodObject.setServingWeight(175); %>
<% foodObject.setCalories(160); %>
<% foodObject.setFat(2.5); %>
<% foodObject.setSaturatedFat(1.5); %>
<% foodObject.setTransFat(0); %>
<% foodObject.setCholesterol(10); %>
<% foodObject.setSodium(75); %>
<% foodObject.setCarbohydrates(25); %>
<% foodObject.setFiber(0); %>
<% foodObject.setSugars(24); %>
<% foodObject.setProtien(8); %>
<%-- End dummy setup --%>

<table class="nutritional_label">
	<tr>
		<th class="TabTitle" colspan="4">Nutrition Facts</th>
	</tr>
	<tr class="big_underline">
		<th class="left_align" colspan="4"> Per <%= foodObject.getServingSize() %> <%= foodObject.getServingUnit() %> (<%= foodObject.getServingWeight() %> g)</th>
	</tr>
	<tr class="underline">
		<th class="left_align" colspan="2">Amount</th>
		<th class="right_align" colspan="2">% Daily Value</th>
	</tr>
	<tr class="underline">
		<td colspan="4"><b>Calories</b> <%= foodObject.getCalories() %></td>
	</tr>
	<tr class="underline">
		<td colspan="2"><b>Fat</b> <%= foodObject.getFat() %> g</td>
		<td class="right_align" colspan="2"><b><%= foodObject.calculateDvFat() %></b> %</td>
	</tr>
	<tr class="underline">
		<td colspan="2">&nbsp;&nbsp;Saturated <%= foodObject.getSaturatedFat() %> g</td>
		<td class="right_align" colspan="2"><b><%= foodObject.calculateDvSatFat() %></b> %</td>
	</tr>
	<tr class="underline">
		<td colspan="2">&nbsp;&nbsp;+ Trans <%= foodObject.getTransFat() %> g</td>
		<td class="right_align" colspan="2"><b></b></td>
	</tr>
	<tr class="underline">
		<td colspan="2"><b>Cholesterol</b> <%= foodObject.getCholesterol() %> mg</td>
		<td class="right_align" colspan="2"><b><%= foodObject.calculateDvCholesterol() %></b> %</td>
	</tr>
	<tr class="underline">
		<td colspan="2"><b>Sodium</b> <%= foodObject.getSodium() %> mg</td>
		<td class="right_align" colspan="2"><b><%= foodObject.calculateDvSodium() %></b> %</td>
	</tr>
	<tr class="underline">
		<td colspan="2"><b>Carbohydrate</b> <%= foodObject.getCarbohydrates() %> g</td>
		<td class="right_align" colspan="2"><b><%= foodObject.calculateDvCarbs() %></b> %</td>
	</tr>
	<tr class="underline">
		<td colspan="2">&nbsp;&nbsp;Fiber <%= foodObject.getFiber() %> g</td>
		<td class="right_align" colspan="2"><b><%= foodObject.calculateDvFiber() %></b> %</td>
	</tr>
	<tr class="underline">
		<td colspan="2">&nbsp;&nbsp;Sugars <%= foodObject.getSugars() %> g</td>
		<td class="right_align" colspan="2"><b></b></td>
	</tr>
	<tr class="big_underline">
		<td colspan="2"><b>Protein</b> <%= foodObject.getProtien() %> g</td>
		<td class="right_align" colspan="2"><b></b></td>
	</tr>
	<tr class="underline">
		<td class="left_align">Vitamin A</td>
		<td class="right_align">2 %&nbsp;&nbsp;</td>
		<td class="left_align">Vitamin C</td>
		<td class="right_align">0 %</td>
	</tr>
	<tr>
		<td class="left_align">Calcium</td>
		<td class="right_align">20 %&nbsp;&nbsp;</td>
		<td class="left_align">Iron</td>
		<td class="right_align">0 %</td>
	</tr>

</table>

</body>
</html>
