package org.compsat.pisces

import java.text.DecimalFormat
import java.text.NumberFormat
import java.text.SimpleDateFormat

class Enrollment {
	
	private String certificateNumber;
	private static SimpleDateFormat monthDateFormat = new SimpleDateFormat("MM");
	private static SimpleDateFormat yearDateFormat = new SimpleDateFormat("yy"); 
	private static NumberFormat format = new DecimalFormat("00000");
	public Enrollment(){
		Date date = new Date();
		
		certificateNumber = course.code 
		+ "-" + yearDateFormat.format(date) 
		+ "-" + monthDateFormat.format(date) 
		+  format.format(CertificateCounterSingleton.getCertificateCounterSingleton().getNext())
	}
	
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
