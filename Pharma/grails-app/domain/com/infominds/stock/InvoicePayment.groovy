package com.infominds.stock

class InvoicePayment {
	
	Integer invoiceId
	String invoiceStatus
	String modeOfPayment
	String paymentDetails = ""
	BigDecimal paidAmount = 0.00

    static constraints = {
		invoiceStatus inList: ["Open", "Paid", "On Hold"]
		modeOfPayment inList: ["Cash", "Cheque", "Bank Transfer", "Open"]
    }
}
