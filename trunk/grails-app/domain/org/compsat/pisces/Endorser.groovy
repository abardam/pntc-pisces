package org.compsat.pisces

class Endorser {
	String name
	
	static hasMany = [students: Student, fixedDiscounts: FixedDiscount, fixedRebate: FixedRebate]
	static belongsTo = [agency: Agency]
    static constraints = {
		name blank: false
		agency nullable: true
    }
	
	@Override
	String toString(){ name }
}
