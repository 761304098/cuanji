package com.sun.service;

import com.sun.bean.Cpu;
import com.sun.dao.CpuMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class CpuServiceImpl implements CpuService{
    @Autowired
    private CpuMapper cpuMapper;

    public List<Cpu> queryForCpu(Map<String, Object> map) {
        return cpuMapper.queryForCpu(map);
    }
}
