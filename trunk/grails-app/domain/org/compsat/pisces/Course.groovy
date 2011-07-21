package org.compsat.pisces

class Course {
	String description
	Integer price
	//String prerequisites
	int durationInDays
	List<Student> students
	
	static hasMany = [prerequisites: Course, enrollments: Enrollment, fixedDiscounts: FixedDiscount, fixedRebates: FixedRebate]
	
    static constraints = {
    	description blank: false
    	price min: 0
    	durationInDays min: 0
		prerequisites editable: true
    }
	
	@Override
	String toString(){ description }
}
