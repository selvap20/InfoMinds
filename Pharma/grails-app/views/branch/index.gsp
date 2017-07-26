
<%@ page import="com.infominds.admin.Branch" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'branch.label', default: 'Branch')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-branch" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-branch" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="address" title="${message(code: 'branch.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="branchName" title="${message(code: 'branch.branchName.label', default: 'Branch Name')}" />
					
						<g:sortableColumn property="mobile" title="${message(code: 'branch.mobile.label', default: 'Mobile')}" />
					
						<g:sortableColumn property="phoneNo1" title="${message(code: 'branch.phoneNo1.label', default: 'Phone No1')}" />
					
						<g:sortableColumn property="phoneNo2" title="${message(code: 'branch.phoneNo2.label', default: 'Phone No2')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${branchInstanceList}" status="i" var="branchInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${branchInstance.id}">${fieldValue(bean: branchInstance, field: "address")}</g:link></td>
					
						<td>${fieldValue(bean: branchInstance, field: "branchName")}</td>
					
						<td>${fieldValue(bean: branchInstance, field: "mobile")}</td>
					
						<td>${fieldValue(bean: branchInstance, field: "phoneNo1")}</td>
					
						<td>${fieldValue(bean: branchInstance, field: "phoneNo2")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${branchInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
