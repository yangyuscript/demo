package com.lin.demo;

import com.lin.demo.domain.Paryer;
import com.lin.demo.domain.User;
import com.lin.demo.mapper.ParyerMapper;
import com.lin.demo.mapper.UserMapper;
import com.lin.demo.utils.TimeUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.UUID;

@RunWith(SpringRunner.class)
@SpringBootTest
@MapperScan("com.lin.demo.mapper")
public class UserMapperTest {
    @Autowired(required = false)
    private UserMapper userMapper;
    @Autowired(required = false)
    private ParyerMapper paryerMapper;
    @Test
    public void testSelectByName() {
        /*User user=userMapper.selectByName("林");
        System.out.println("hehe"+user.getAge());*/
        String uuid=UUID.randomUUID().toString();
        Paryer paryer=new Paryer();
        paryer.setUuid(uuid);
        paryer.setFromuser("hehe");
        paryer.setTouser("xixi");
        paryer.setIp("127.0.0.1");
        paryer.setCity("nanjing");
        paryer.setTime(TimeUtil.getTime());
        //paryerMapper.insert(paryer);
        //paryerMapper.insert(new Paryer(uuid,"1","2","3","4","5"));
        System.out.println(paryerMapper.getAllNum());
    }
}
