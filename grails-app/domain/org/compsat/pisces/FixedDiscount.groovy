package org.compsat.pisces

class FixedDiscount {
	Integer amount	
	static belongsTo = [endorser: Endorser, course: Course]

    static constraints = {
		amount min: 0
    }
	
	@Override
	String toString(){ "Fixed Discount: ${endorser.name} - ${course.description}" }
}
