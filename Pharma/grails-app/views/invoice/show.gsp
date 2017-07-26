
<%@ page import="com.infominds.stock.Invoice" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'invoice.label', default: 'Invoice')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-invoice" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-invoice" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list invoice">
			
				<g:if test="${invoiceInstance?.dueDate}">
				<li class="fieldcontain">
					<span id="dueDate-label" class="property-label"><g:message code="invoice.dueDate.label" default="Due Date" /></span>
					
						<span class="property-value" aria-labelledby="dueDate-label"><g:formatDate date="${invoiceInstance?.dueDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${invoiceInstance?.invoiceDate}">
				<li class="fieldcontain">
					<span id="invoiceDate-label" class="property-label"><g:message code="invoice.invoiceDate.label" default="Invoice Date" /></span>
					
						<span class="property-value" aria-labelledby="invoiceDate-label"><g:formatDate date="${invoiceInstance?.invoiceDate}" /></span>
					
				</li>
				</g:if>
			
				<%--<g:if test="${invoiceInstance?.payment}">
				<li class="fieldcontain">
					<span id="payment-label" class="property-label"><g:message code="invoice.payment.label" default="Payment" /></span>
					
						<span class="property-value" aria-labelledby="payment-label"><g:link controller="invoicePayment" action="show" id="${invoiceInstance?.payment?.id}">${invoiceInstance?.payment?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				--%><g:if test="${invoiceInstance?.vendor}">
				<li class="fieldcontain">
					<span id="vendor-label" class="property-label"><g:message code="invoice.vendor.label" default="Vendor" /></span>
					
						<span class="property-value" aria-labelledby="vendor-label"><g:link controller="vendor" action="show" id="${invoiceInstance?.vendor?.id}">${invoiceInstance?.vendor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:invoiceInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${invoiceInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
