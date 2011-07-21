package org.compsat.pisces

class FixedRebate {

    Integer amount	
	static belongsTo = [endorser: Endorser, course: Course]

    static constraints = {
		amount min: 0
    }
	
	@Override
	String toString(){ "Fixed Rebate: ${endorser.name} - ${course.description}" }
}
