package com.kgc.tcmp077.service;

import com.kgc.tcmp077.pojo.Person;

import java.util.List;

/**
 * @author shkstart
 * @create 2020-09-30 12:51
 */
public interface PersonService {
    List<Person> perList();
    void addPer(Person person);
    void delPer(Integer id);
}
