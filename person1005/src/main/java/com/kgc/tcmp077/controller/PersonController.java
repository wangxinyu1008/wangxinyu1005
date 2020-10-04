package com.kgc.tcmp077.controller;

import com.github.pagehelper.PageHelper;
import com.kgc.tcmp077.pojo.Person;
import com.kgc.tcmp077.service.PersonService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-09-30 12:54
 */
@Controller
public class PersonController {
    @Resource
    PersonService personService;
    @RequestMapping("/")
    public String index(Model model){
        PageHelper.orderBy("id desc");
        List<Person> persons = personService.perList();
        model.addAttribute("persons",persons);
        return "index";
    }
    @RequestMapping("/add")
    public String toadd(){
        return "add";
    }
    @RequestMapping("/doadd")
    public String doadd(Person person){
        personService.addPer(person);
        return "redirect:/";
    }
    @RequestMapping("/del")
    public String del(Integer id){
        personService.delPer(id);
        return "redirect:/";
    }
}
