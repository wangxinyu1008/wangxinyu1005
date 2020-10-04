package com.kgc.tcmp077.service.impl;

import com.kgc.tcmp077.mapper.PersonMapper;
import com.kgc.tcmp077.pojo.Person;
import com.kgc.tcmp077.service.PersonService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-09-30 12:51
 */
@Service("personService")
public class PersonServiceImpl implements PersonService {
    @Resource
    PersonMapper personMapper;
    @Override
    public List<Person> perList() {

        return personMapper.selectByExample(null);
    }

    @Override
    public void addPer(Person person) {
        personMapper.insertSelective(person);
    }

    @Override
    public void delPer(Integer id) {
        personMapper.deleteByPrimaryKey(id);
    }
}
