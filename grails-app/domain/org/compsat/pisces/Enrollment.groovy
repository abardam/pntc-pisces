package org.compsat.pisces

class Enrollment {
	Date dateEnrolled
	
	static belongsTo = [student: Student, course: Course]
	static hasOne = [payment: Payment]

	def checkPrereqs = { Student student, Course course -> student.getPastCourses().containsAll(course.getPrerequisites()) }
	
    static constraints = {
		payment nullable: true
		course validator: { val, obj -> obj.student.getPastCourses().containsAll(val.getPrerequisites())}
    }
	
	@Override
	String toString(){ "${course.description} - ${student.name}" }
}
