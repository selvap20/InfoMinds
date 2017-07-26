<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'stockInput.label', default: 'StockInput')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>
<body>
	<a href="#create-stockInput" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="list" action="index">
					<g:message code="default.list.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="create-stockInput" class="content scaffold-create" role="main">
		<h1>
			<g:message code="default.create.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<g:hasErrors bean="${stockInputInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${stockInputInstance}" var="error">
					<li
						<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
							error="${error}" /></li>
				</g:eachError>
			</ul>
		</g:hasErrors>
		<g:form url="[resource:stockInputInstance, action:'save']">
			<fieldset class="form">
				<g:render template="/stockInput/form" />

        <h1>
			Offer Zone
		</h1>

				

				<div
					class="fieldcontain ${hasErrors(bean: stockInputInstance, field: 'offerApplicable', 'error')} ">
					<label for="offerApplicable"> <g:message
							code="stockInput.offerApplicable.label"
							default="Offer Applicable" />

					</label>
					<g:checkBox name="offerApplicable"
						value="${stockInputInstance?.offerApplicable}" />

				</div>


				<div
					class="fieldcontain ${hasErrors(bean: stockInputInstance, field: 'taxOnOffer', 'error')} ">
					<label for="taxOnOffer"> <g:message
							code="stockInput.taxOnOffer.label" default="Tax On Offer" />

					</label>
					<g:checkBox name="taxOnOffer"
						value="${stockInputInstance?.taxOnOffer}" />

				</div>


			</fieldset>
			<fieldset class="buttons">
				<g:submitButton name="create" class="save"
					value="${message(code: 'default.button.create.label', default: 'Create')}" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>
