package org.compsat.pisces

class Student {
	String name
	String address
	String contactNumber
	String rank
	Date birthDate
	byte[] picture
	
	static hasOne = [agency: Agency, endorser: Endorser]
	static hasMany = [enrollments: Enrollment, pastCourses: Course]
	
    static constraints = {
    	name blank: false
    	address blank: false
    	contactNumber blank: false
    	rank blank: false
		picture nullable: true, maxSize: 1000000
		pastCourses nullable: true
    }
	
	@Override
	String toString(){ name }
}
