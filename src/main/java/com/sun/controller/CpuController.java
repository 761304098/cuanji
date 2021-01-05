package com.sun.controller;

import com.sun.service.CpuServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class CpuController {
    @Autowired
    private CpuServiceImpl cpuService;

}
