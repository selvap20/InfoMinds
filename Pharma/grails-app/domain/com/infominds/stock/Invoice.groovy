package com.infominds.stock

import java.math.BigDecimal;

import com.infominds.admin.Vendor

class Invoice {
	
	Vendor vendor
	Date invoiceDate
	Date dueDate
	BigDecimal invoiceAmount = 0.00
	

    static constraints = {
    }
}
