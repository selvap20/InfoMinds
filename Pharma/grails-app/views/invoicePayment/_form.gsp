<%@ page import="com.infominds.stock.InvoicePayment" %>



<div class="fieldcontain ${hasErrors(bean: invoicePaymentInstance, field: 'invoiceStatus', 'error')} required">
	<label for="invoiceStatus">
		<g:message code="invoicePayment.invoiceStatus.label" default="Invoice Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="invoiceStatus" from="${invoicePaymentInstance.constraints.invoiceStatus.inList}" required="" value="${invoicePaymentInstance?.invoiceStatus}" valueMessagePrefix="invoicePayment.invoiceStatus"/>

</div>

<div class="fieldcontain ${hasErrors(bean: invoicePaymentInstance, field: 'modeOfPayment', 'error')} required">
	<label for="modeOfPayment">
		<g:message code="invoicePayment.modeOfPayment.label" default="Mode Of Payment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="modeOfPayment" from="${invoicePaymentInstance.constraints.modeOfPayment.inList}" required="" value="${invoicePaymentInstance?.modeOfPayment}" valueMessagePrefix="invoicePayment.modeOfPayment"/>

</div>

<div class="fieldcontain ${hasErrors(bean: invoicePaymentInstance, field: 'invoiceId', 'error')} required">
	<label for="invoiceId">
		<g:message code="invoicePayment.invoiceId.label" default="Invoice Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="invoiceId" type="number" value="${invoicePaymentInstance.invoiceId}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: invoicePaymentInstance, field: 'paidAmount', 'error')} required">
	<label for="paidAmount">
		<g:message code="invoicePayment.paidAmount.label" default="Paid Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="paidAmount" value="${fieldValue(bean: invoicePaymentInstance, field: 'paidAmount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: invoicePaymentInstance, field: 'paymentDetails', 'error')} required">
	<label for="paymentDetails">
		<g:message code="invoicePayment.paymentDetails.label" default="Payment Details" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="paymentDetails" required="" value="${invoicePaymentInstance?.paymentDetails}"/>

</div>

