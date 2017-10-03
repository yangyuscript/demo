package com.lin.demo.mapper;

import com.lin.demo.domain.User;
import com.lin.demo.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface UserMapper extends MyMapper<User>{
    @Select("select * from t_user where name=#{name}")
    User selectByName(String name);
}
