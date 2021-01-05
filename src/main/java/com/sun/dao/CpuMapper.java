package com.sun.dao;

import com.sun.bean.Cpu;

import java.util.List;
import java.util.Map;

public interface CpuMapper {
     public List<Cpu> queryForCpu(Map<String,Object> map);
}
