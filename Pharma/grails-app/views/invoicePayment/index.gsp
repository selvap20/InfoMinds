
<%@ page import="com.infominds.stock.InvoicePayment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'invoicePayment.label', default: 'InvoicePayment')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-invoicePayment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-invoicePayment" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="invoiceStatus" title="${message(code: 'invoicePayment.invoiceStatus.label', default: 'Invoice Status')}" />
					
						<g:sortableColumn property="modeOfPayment" title="${message(code: 'invoicePayment.modeOfPayment.label', default: 'Mode Of Payment')}" />
					
						<g:sortableColumn property="invoiceId" title="${message(code: 'invoicePayment.invoiceId.label', default: 'Invoice Id')}" />
					
						<g:sortableColumn property="paidAmount" title="${message(code: 'invoicePayment.paidAmount.label', default: 'Paid Amount')}" />
					
						<g:sortableColumn property="paymentDetails" title="${message(code: 'invoicePayment.paymentDetails.label', default: 'Payment Details')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${invoicePaymentInstanceList}" status="i" var="invoicePaymentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${invoicePaymentInstance.id}">${fieldValue(bean: invoicePaymentInstance, field: "invoiceStatus")}</g:link></td>
					
						<td>${fieldValue(bean: invoicePaymentInstance, field: "modeOfPayment")}</td>
					
						<td>${fieldValue(bean: invoicePaymentInstance, field: "invoiceId")}</td>
					
						<td>${fieldValue(bean: invoicePaymentInstance, field: "paidAmount")}</td>
					
						<td>${fieldValue(bean: invoicePaymentInstance, field: "paymentDetails")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${invoicePaymentInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
