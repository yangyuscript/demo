package com.lin.demo.controller;

import com.lin.demo.domain.Paryer;
import com.lin.demo.domain.User;
import com.lin.demo.mapper.ParyerMapper;
import com.lin.demo.mapper.UserMapper;
import com.lin.demo.utils.TimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Controller
public class IndexController {
    @Autowired(required = false)
    private UserMapper userMapper;
    @Autowired(required = false)
    private ParyerMapper paryerMapper;
    @RequestMapping(value="/",method=RequestMethod.GET)
    public String welcome(ModelMap map,@RequestParam(value="from",required = false)String from,@RequestParam(value="to",required = false)String to){
        if(("").equals(from)||("").equals(to)||from==null||to==null||from.length()>8||to.length()>8){
            map.addAttribute("from","某某某");
            map.addAttribute("to","某某某");
        }else{
            map.addAttribute("from",from);
            map.addAttribute("to",to);
        }
        map.addAttribute("allParyerNum",paryerMapper.getAllNum());

        return "welcome";
    }
    @RequestMapping("/test")
    public String test(){
        return "test";
    }
    @RequestMapping("/fuck")
    public String fuck(){
        return "fuck";
    }
    @RequestMapping("index")
    @ResponseBody
    public String index(){
        User user=userMapper.selectByName("林");
        return "hello world!"+user.getId()+" "+" "+user.getName()+" "+user.getAge();
    }
    @RequestMapping(value="/getInfo",method= RequestMethod.POST)
    @ResponseBody
    public ModelAndView getInfo(@RequestParam("from")String from, @RequestParam("to")String to, @RequestParam("ip")String ip, @RequestParam("city")String city){
        System.out.println(from+" "+" "+to+" "+ip+" "+city);
        paryerMapper.insert(new Paryer(UUID.randomUUID().toString(),from,to,ip,city, TimeUtil.getTime()));
        Map map=new HashMap();
        map.put("result","success");
        return new ModelAndView(new MappingJackson2JsonView(),map);
    }
}
