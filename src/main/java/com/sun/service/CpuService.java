package com.sun.service;

import com.sun.bean.Cpu;

import java.util.List;
import java.util.Map;

public interface CpuService {
    public List<Cpu> queryForCpu(Map<String,Object> map);
}
