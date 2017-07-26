
<%@ page import="com.infominds.stock.StockInput" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'stockInput.label', default: 'StockInput')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-stockInput" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-stockInput" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list stockInput">
			
				<g:if test="${stockInputInstance?.taxPercentrage}">
				<li class="fieldcontain">
					<span id="taxPercentrage-label" class="property-label"><g:message code="stockInput.taxPercentrage.label" default="Tax Percentrage" /></span>
					
						<span class="property-value" aria-labelledby="taxPercentrage-label"><g:fieldValue bean="${stockInputInstance}" field="taxPercentrage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockInputInstance?.batchNo}">
				<li class="fieldcontain">
					<span id="batchNo-label" class="property-label"><g:message code="stockInput.batchNo.label" default="Batch No" /></span>
					
						<span class="property-value" aria-labelledby="batchNo-label"><g:fieldValue bean="${stockInputInstance}" field="batchNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockInputInstance?.billAmount}">
				<li class="fieldcontain">
					<span id="billAmount-label" class="property-label"><g:message code="stockInput.billAmount.label" default="Bill Amount" /></span>
					
						<span class="property-value" aria-labelledby="billAmount-label"><g:fieldValue bean="${stockInputInstance}" field="billAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockInputInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="stockInput.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${stockInputInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockInputInstance?.dateUpdated}">
				<li class="fieldcontain">
					<span id="dateUpdated-label" class="property-label"><g:message code="stockInput.dateUpdated.label" default="Date Updated" /></span>
					
						<span class="property-value" aria-labelledby="dateUpdated-label"><g:formatDate date="${stockInputInstance?.dateUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockInputInstance?.expiryMonth}">
				<li class="fieldcontain">
					<span id="expiryMonth-label" class="property-label"><g:message code="stockInput.expiryMonth.label" default="Expiry Month" /></span>
					
						<span class="property-value" aria-labelledby="expiryMonth-label"><g:fieldValue bean="${stockInputInstance}" field="expiryMonth"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockInputInstance?.item}">
				<li class="fieldcontain">
					<span id="item-label" class="property-label"><g:message code="stockInput.item.label" default="Item" /></span>
					
						<span class="property-value" aria-labelledby="item-label"><g:link controller="item" action="show" id="${stockInputInstance?.item?.id}">${stockInputInstance?.item?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockInputInstance?.offerApplicable}">
				<li class="fieldcontain">
					<span id="offerApplicable-label" class="property-label"><g:message code="stockInput.offerApplicable.label" default="Offer Applicable" /></span>
					
						<span class="property-value" aria-labelledby="offerApplicable-label"><g:formatBoolean boolean="${stockInputInstance?.offerApplicable}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockInputInstance?.quantity}">
				<li class="fieldcontain">
					<span id="quantity-label" class="property-label"><g:message code="stockInput.quantity.label" default="Quantity" /></span>
					
						<span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${stockInputInstance}" field="quantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockInputInstance?.rate}">
				<li class="fieldcontain">
					<span id="rate-label" class="property-label"><g:message code="stockInput.rate.label" default="Rate" /></span>
					
						<span class="property-value" aria-labelledby="rate-label"><g:fieldValue bean="${stockInputInstance}" field="rate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockInputInstance?.taxApplicable}">
				<li class="fieldcontain">
					<span id="taxApplicable-label" class="property-label"><g:message code="stockInput.taxApplicable.label" default="Tax Applicable" /></span>
					
						<span class="property-value" aria-labelledby="taxApplicable-label"><g:formatBoolean boolean="${stockInputInstance?.taxApplicable}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockInputInstance?.taxOnOffer}">
				<li class="fieldcontain">
					<span id="taxOnOffer-label" class="property-label"><g:message code="stockInput.taxOnOffer.label" default="Tax On Offer" /></span>
					
						<span class="property-value" aria-labelledby="taxOnOffer-label"><g:formatBoolean boolean="${stockInputInstance?.taxOnOffer}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockInputInstance?.totalBill}">
				<li class="fieldcontain">
					<span id="totalBill-label" class="property-label"><g:message code="stockInput.totalBill.label" default="Total Bill" /></span>
					
						<span class="property-value" aria-labelledby="totalBill-label"><g:fieldValue bean="${stockInputInstance}" field="totalBill"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${stockInputInstance?.userId}">
				<li class="fieldcontain">
					<span id="userId-label" class="property-label"><g:message code="stockInput.userId.label" default="User Id" /></span>
					
						<span class="property-value" aria-labelledby="userId-label"><g:fieldValue bean="${stockInputInstance}" field="userId"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:stockInputInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${stockInputInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
