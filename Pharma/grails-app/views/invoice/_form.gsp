<%@ page import="com.infominds.stock.Invoice" %>



<div class="fieldcontain ${hasErrors(bean: invoiceInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="invoice.dueDate.label" default="Due Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${invoiceInstance?.dueDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: invoiceInstance, field: 'invoiceDate', 'error')} required">
	<label for="invoiceDate">
		<g:message code="invoice.invoiceDate.label" default="Invoice Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="invoiceDate" precision="day"  value="${invoiceInstance?.invoiceDate}"  />

</div>

<%--<div class="fieldcontain ${hasErrors(bean: invoiceInstance, field: 'payment', 'error')} required">
	<label for="payment">
		<g:message code="invoice.payment.label" default="Payment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="payment" name="payment.id" from="${com.infominds.stock.InvoicePayment.list()}" optionKey="id" required="" value="${invoiceInstance?.payment?.id}" class="many-to-one"/>

</div>

--%><div class="fieldcontain ${hasErrors(bean: invoiceInstance, field: 'vendor', 'error')} required">
	<label for="vendor">
		<g:message code="invoice.vendor.label" default="Vendor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="vendor" name="vendor.id" from="${com.infominds.admin.Vendor.list()}" optionKey="id" optionValue="vendorName" required="" value="${invoiceInstance?.vendor?.id}" class="many-to-one"/>

</div>

