
<%@ page import="com.infominds.admin.Vendor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vendor.label', default: 'Vendor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-vendor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-vendor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="cstNo" title="${message(code: 'vendor.cstNo.label', default: 'Cst No')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'vendor.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="fax" title="${message(code: 'vendor.fax.label', default: 'Fax')}" />
					
						<g:sortableColumn property="phoneNo1" title="${message(code: 'vendor.phoneNo1.label', default: 'Phone No1')}" />
					
						<g:sortableColumn property="phoneNo2" title="${message(code: 'vendor.phoneNo2.label', default: 'Phone No2')}" />
					
						<g:sortableColumn property="tinNo" title="${message(code: 'vendor.tinNo.label', default: 'Tin No')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${vendorInstanceList}" status="i" var="vendorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${vendorInstance.id}">${fieldValue(bean: vendorInstance, field: "cstNo")}</g:link></td>
					
						<td>${fieldValue(bean: vendorInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: vendorInstance, field: "fax")}</td>
					
						<td>${fieldValue(bean: vendorInstance, field: "phoneNo1")}</td>
					
						<td>${fieldValue(bean: vendorInstance, field: "phoneNo2")}</td>
					
						<td>${fieldValue(bean: vendorInstance, field: "tinNo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${vendorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
