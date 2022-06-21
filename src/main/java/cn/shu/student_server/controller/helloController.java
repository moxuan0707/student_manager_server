package cn.shu.student_server.controller;

import cn.shu.student_server.entity.Course;
import cn.shu.student_server.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class helloController {

    @Autowired
    private CourseService courseService;

    @GetMapping("/hello")
    public String hello(){
        List<Course> bySearch = courseService.findBySearch(7);
        return "hello"+bySearch;
    }

}
