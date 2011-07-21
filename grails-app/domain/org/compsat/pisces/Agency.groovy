package org.compsat.pisces

class Agency {
	String name
	
	static hasMany = [students: Student]
	static hasOne = [endorser: Endorser]
    static constraints = {
		name blank: false
		endorser nullable: true
    }
	
	@Override
	String toString(){ name }
}
