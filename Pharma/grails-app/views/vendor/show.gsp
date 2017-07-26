
<%@ page import="com.infominds.admin.Vendor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vendor.label', default: 'Vendor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-vendor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-vendor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list vendor">
			
				<g:if test="${vendorInstance?.cstNo}">
				<li class="fieldcontain">
					<span id="cstNo-label" class="property-label"><g:message code="vendor.cstNo.label" default="Cst No" /></span>
					
						<span class="property-value" aria-labelledby="cstNo-label"><g:fieldValue bean="${vendorInstance}" field="cstNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendorInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="vendor.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${vendorInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendorInstance?.fax}">
				<li class="fieldcontain">
					<span id="fax-label" class="property-label"><g:message code="vendor.fax.label" default="Fax" /></span>
					
						<span class="property-value" aria-labelledby="fax-label"><g:fieldValue bean="${vendorInstance}" field="fax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendorInstance?.phoneNo1}">
				<li class="fieldcontain">
					<span id="phoneNo1-label" class="property-label"><g:message code="vendor.phoneNo1.label" default="Phone No1" /></span>
					
						<span class="property-value" aria-labelledby="phoneNo1-label"><g:fieldValue bean="${vendorInstance}" field="phoneNo1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendorInstance?.phoneNo2}">
				<li class="fieldcontain">
					<span id="phoneNo2-label" class="property-label"><g:message code="vendor.phoneNo2.label" default="Phone No2" /></span>
					
						<span class="property-value" aria-labelledby="phoneNo2-label"><g:fieldValue bean="${vendorInstance}" field="phoneNo2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendorInstance?.tinNo}">
				<li class="fieldcontain">
					<span id="tinNo-label" class="property-label"><g:message code="vendor.tinNo.label" default="Tin No" /></span>
					
						<span class="property-value" aria-labelledby="tinNo-label"><g:fieldValue bean="${vendorInstance}" field="tinNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendorInstance?.vendorAddress}">
				<li class="fieldcontain">
					<span id="vendorAddress-label" class="property-label"><g:message code="vendor.vendorAddress.label" default="Vendor Address" /></span>
					
						<span class="property-value" aria-labelledby="vendorAddress-label"><g:fieldValue bean="${vendorInstance}" field="vendorAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vendorInstance?.vendorName}">
				<li class="fieldcontain">
					<span id="vendorName-label" class="property-label"><g:message code="vendor.vendorName.label" default="Vendor Name" /></span>
					
						<span class="property-value" aria-labelledby="vendorName-label"><g:fieldValue bean="${vendorInstance}" field="vendorName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:vendorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${vendorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
