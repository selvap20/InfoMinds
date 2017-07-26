
<%@ page import="com.infominds.stock.InvoicePayment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'invoicePayment.label', default: 'InvoicePayment')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-invoicePayment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-invoicePayment" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list invoicePayment">
			
				<g:if test="${invoicePaymentInstance?.invoiceStatus}">
				<li class="fieldcontain">
					<span id="invoiceStatus-label" class="property-label"><g:message code="invoicePayment.invoiceStatus.label" default="Invoice Status" /></span>
					
						<span class="property-value" aria-labelledby="invoiceStatus-label"><g:fieldValue bean="${invoicePaymentInstance}" field="invoiceStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${invoicePaymentInstance?.modeOfPayment}">
				<li class="fieldcontain">
					<span id="modeOfPayment-label" class="property-label"><g:message code="invoicePayment.modeOfPayment.label" default="Mode Of Payment" /></span>
					
						<span class="property-value" aria-labelledby="modeOfPayment-label"><g:fieldValue bean="${invoicePaymentInstance}" field="modeOfPayment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${invoicePaymentInstance?.invoiceId}">
				<li class="fieldcontain">
					<span id="invoiceId-label" class="property-label"><g:message code="invoicePayment.invoiceId.label" default="Invoice Id" /></span>
					
						<span class="property-value" aria-labelledby="invoiceId-label"><g:fieldValue bean="${invoicePaymentInstance}" field="invoiceId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${invoicePaymentInstance?.paidAmount}">
				<li class="fieldcontain">
					<span id="paidAmount-label" class="property-label"><g:message code="invoicePayment.paidAmount.label" default="Paid Amount" /></span>
					
						<span class="property-value" aria-labelledby="paidAmount-label"><g:fieldValue bean="${invoicePaymentInstance}" field="paidAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${invoicePaymentInstance?.paymentDetails}">
				<li class="fieldcontain">
					<span id="paymentDetails-label" class="property-label"><g:message code="invoicePayment.paymentDetails.label" default="Payment Details" /></span>
					
						<span class="property-value" aria-labelledby="paymentDetails-label"><g:fieldValue bean="${invoicePaymentInstance}" field="paymentDetails"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:invoicePaymentInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${invoicePaymentInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
