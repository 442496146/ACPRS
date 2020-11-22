package com.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.PersonDao;
import com.vo.Person;

public class UserService {
	static public Person getPerson(String email, String name)
	{	
		PersonDao personDao = new PersonDao();
        Person person = personDao.searchUser(email, name);
		return person;
	}
	static public Person getMemberPerson(int person_id)
	{	
		PersonDao personDao = new PersonDao();
        Person person = personDao.searchMember(person_id);
		return person;
	}
//	static public void addPerson(Person person)
//	{	
//		PersonDao personDao = new PersonDao();
//		personDao.insertUser(person);
//	}
	static public void addPerson(Person person,HttpServletRequest request, HttpServletResponse response)
	{	
		PersonDao personDao = new PersonDao();
		personDao.insertUser(person,request,response);
	}
	static public Person getPerson(String email)
	{	
		PersonDao personDao = new PersonDao();
        Person person = personDao.searchUser(email);
		return person;
	}
}
