package com.infominds.stock



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class InvoiceController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
	def invoiceService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Invoice.list(params), model:[invoiceInstanceCount: Invoice.count()]
    }

    def show(Invoice invoiceInstance) {
        respond invoiceInstance
    }

    def create() {
        respond new Invoice(params)
    }

    @Transactional
    def save(Invoice invoiceInstance) {
        if (invoiceInstance == null) {
            notFound()
            return
        }

        /*if (invoiceInstance.hasErrors()) {
            respond invoiceInstance.errors, view:'create'
            return
        }*/

        //invoiceInstance.save flush:true
		
		invoiceService.saveInvoice(invoiceInstance)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'invoice.label', default: 'Invoice'), invoiceInstance.id])
                redirect invoiceInstance
            }
            '*' { respond invoiceInstance, [status: CREATED] }
        }
    }

    def edit(Invoice invoiceInstance) {
        respond invoiceInstance
    }

    @Transactional
    def update(Invoice invoiceInstance) {
        if (invoiceInstance == null) {
            notFound()
            return
        }

        if (invoiceInstance.hasErrors()) {
            respond invoiceInstance.errors, view:'edit'
            return
        }

        invoiceInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Invoice.label', default: 'Invoice'), invoiceInstance.id])
                redirect invoiceInstance
            }
            '*'{ respond invoiceInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Invoice invoiceInstance) {

        if (invoiceInstance == null) {
            notFound()
            return
        }

        invoiceInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Invoice.label', default: 'Invoice'), invoiceInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'invoice.label', default: 'Invoice'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
	
	def addStock() {
		println "params"+params
		render (view : "/stockInput/create", model : [invoiceDetails : params.id,stockInputInstance: new StockInput() ])
	}
	
	def makePayment() {
		println "params"+params
		render (view : "/invoicePayment/edit", model : [invoiceDetails : params.id,invoicePaymentInstance: InvoicePayment.findByInvoiceId(params.id)])
	}
}
