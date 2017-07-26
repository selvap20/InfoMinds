
<%@ page import="com.infominds.stock.StockInput" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'stockInput.label', default: 'StockInput')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-stockInput" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-stockInput" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="taxPercentrage" title="${message(code: 'stockInput.taxPercentrage.label', default: 'Tax Percentrage')}" />
					
						<g:sortableColumn property="batchNo" title="${message(code: 'stockInput.batchNo.label', default: 'Batch No')}" />
					
						<g:sortableColumn property="billAmount" title="${message(code: 'stockInput.billAmount.label', default: 'Bill Amount')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'stockInput.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="dateUpdated" title="${message(code: 'stockInput.dateUpdated.label', default: 'Date Updated')}" />
					
						<g:sortableColumn property="expiryMonth" title="${message(code: 'stockInput.expiryMonth.label', default: 'Expiry Month')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${stockInputInstanceList}" status="i" var="stockInputInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${stockInputInstance.id}">${fieldValue(bean: stockInputInstance, field: "taxPercentrage")}</g:link></td>
					
						<td>${fieldValue(bean: stockInputInstance, field: "batchNo")}</td>
					
						<td>${fieldValue(bean: stockInputInstance, field: "billAmount")}</td>
					
						<td><g:formatDate date="${stockInputInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${stockInputInstance.dateUpdated}" /></td>
					
						<td>${fieldValue(bean: stockInputInstance, field: "expiryMonth")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${stockInputInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
