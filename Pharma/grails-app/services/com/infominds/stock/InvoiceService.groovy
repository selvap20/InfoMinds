package com.infominds.stock

import grails.transaction.Transactional

@Transactional
class InvoiceService {

    def saveInvoice(def invoiceInstance) {
		
		invoiceInstance.save flush:true
		InvoicePayment payment  = new InvoicePayment()
		payment?.with {
			invoiceId = invoiceInstance?.id
			invoiceStatus = "Open"
			modeOfPayment = "Open"
		}
		
		println "////"+payment.properties
		payment.save flush:true
		
	}
}
