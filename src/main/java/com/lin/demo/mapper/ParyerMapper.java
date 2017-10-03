package com.lin.demo.mapper;

import com.lin.demo.domain.Paryer;
import com.lin.demo.util.MyMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ParyerMapper extends MyMapper<Paryer>{
    @Select("select * from t_paryer order by time desc")
    List<Paryer> selectAll();
    @Select("select count(*) from t_paryer")
    int getAllNum();
}
