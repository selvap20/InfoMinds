
<%@ page import="com.infominds.admin.Branch" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'branch.label', default: 'Branch')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-branch" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-branch" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list branch">
			
				<g:if test="${branchInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="branch.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${branchInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${branchInstance?.branchName}">
				<li class="fieldcontain">
					<span id="branchName-label" class="property-label"><g:message code="branch.branchName.label" default="Branch Name" /></span>
					
						<span class="property-value" aria-labelledby="branchName-label"><g:fieldValue bean="${branchInstance}" field="branchName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${branchInstance?.mobile}">
				<li class="fieldcontain">
					<span id="mobile-label" class="property-label"><g:message code="branch.mobile.label" default="Mobile" /></span>
					
						<span class="property-value" aria-labelledby="mobile-label"><g:fieldValue bean="${branchInstance}" field="mobile"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${branchInstance?.phoneNo1}">
				<li class="fieldcontain">
					<span id="phoneNo1-label" class="property-label"><g:message code="branch.phoneNo1.label" default="Phone No1" /></span>
					
						<span class="property-value" aria-labelledby="phoneNo1-label"><g:fieldValue bean="${branchInstance}" field="phoneNo1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${branchInstance?.phoneNo2}">
				<li class="fieldcontain">
					<span id="phoneNo2-label" class="property-label"><g:message code="branch.phoneNo2.label" default="Phone No2" /></span>
					
						<span class="property-value" aria-labelledby="phoneNo2-label"><g:fieldValue bean="${branchInstance}" field="phoneNo2"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:branchInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${branchInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
