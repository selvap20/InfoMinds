<%@ page import="com.infominds.stock.StockInput" %>

<div class="fieldcontain ${hasErrors(bean: stockInputInstance, field: 'item', 'error')} required">
	<label for="item">
		<g:message code="stockInput.item.label" default="Item" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="item" name="item.id" from="${com.infominds.item.Item.list()}" optionKey="id" required="" value="${stockInputInstance?.item?.id}" class="many-to-one"/>

</div>


<div class="fieldcontain ${hasErrors(bean: stockInputInstance, field: 'batchNo', 'error')} required">
	<label for="batchNo">
		<g:message code="stockInput.batchNo.label" default="Batch No" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="batchNo" required="" value="${stockInputInstance?.batchNo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: stockInputInstance, field: 'expiryMonth', 'error')} required">
	<label for="expiryMonth">
		<g:message code="stockInput.expiryMonth.label" default="Expiry Month" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="expiryMonth" required="" value="${stockInputInstance?.expiryMonth}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: stockInputInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="stockInput.quantity.label" default="Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantity" type="number" value="${stockInputInstance.quantity}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: stockInputInstance, field: 'rate', 'error')} required">
	<label for="rate">
		<g:message code="stockInput.rate.label" default="Rate" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="rate" value="${fieldValue(bean: stockInputInstance, field: 'rate')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: stockInputInstance, field: 'billAmount', 'error')} required">
	<label for="billAmount">
		<g:message code="stockInput.billAmount.label" default="Bill Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="billAmount" value="${fieldValue(bean: stockInputInstance, field: 'billAmount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: stockInputInstance, field: 'taxApplicable', 'error')} ">
	<label for="taxApplicable">
		<g:message code="stockInput.taxApplicable.label" default="Tax Applicable" />
		
	</label>
	<g:checkBox name="taxApplicable" value="${stockInputInstance?.taxApplicable}" />

</div>


<div class="fieldcontain ${hasErrors(bean: stockInputInstance, field: 'taxPercentrage', 'error')} required">
	<label for="taxPercentrage">
		<g:message code="stockInput.taxPercentrage.label" default="Tax Percentrage" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="taxPercentrage" from="${stockInputInstance.constraints.taxPercentrage.inList}" required="" value="${fieldValue(bean: stockInputInstance, field: 'taxPercentrage')}" valueMessagePrefix="stockInput.taxPercentrage"/>

</div>






<div
					class="fieldcontain ${hasErrors(bean: stockInputInstance, field: 'totalBill', 'error')} required">
					<label for="totalBill"> <g:message
							code="stockInput.totalBill.label" default="Total Bill" /> <span
						class="required-indicator">*</span>
					</label>
					<g:field name="totalBill"
						value="${fieldValue(bean: stockInputInstance, field: 'totalBill')}"
						required="" />

				</div>

<%--<div class="fieldcontain ${hasErrors(bean: stockInputInstance, field: 'dateUpdated', 'error')} required">
	<label for="dateUpdated">
		<g:message code="stockInput.dateUpdated.label" default="Date Updated" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateUpdated" precision="day"  value="${stockInputInstance?.dateUpdated}"  />

</div>




--%>





<%--<div class="fieldcontain ${hasErrors(bean: stockInputInstance, field: 'userId', 'error')} required">
	<label for="userId">
		<g:message code="stockInput.userId.label" default="User Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userId" required="" value="${stockInputInstance?.userId}"/>

</div>

--%>