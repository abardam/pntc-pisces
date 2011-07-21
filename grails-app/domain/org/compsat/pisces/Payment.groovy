package org.compsat.pisces

class Payment {
	static belongsTo = [enrollment: Enrollment]
	String name
	Integer amount
	Integer fixedDiscount
	Integer fixedRebate
	Integer total
	private FixedDiscount discountFixed
	private FixedRebate rebateFixed

    static constraints = {
		name nullable: true, blank: true
		enrollment nullable: false
		amount nullable: true, blank: true
		fixedDiscount nullable: true, blank: true
		fixedRebate nullable: true, blank: true
		total nullable: true, blank:true
    }
    
    def beforeInsert = {
    	name = enrollment.student.name
    	amount = enrollment.course.price
		discountFixed = FixedDiscount.findByEndorserAndCourse(enrollment.student.endorser, enrollment.course)
		rebateFixed = FixedRebate.findByEndorserAndCourse(enrollment.student.endorser, enrollment.course)
		fixedDiscount = discountFixed?.amount ?: 0
		fixedRebate = rebateFixed?.amount ?: 0
		total = amount - fixedDiscount
    }
}
