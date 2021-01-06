package com.sun.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sun.bean.Cpu;
import com.sun.service.CpuServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class CpuController {
    @Autowired
    private CpuServiceImpl cpuService;

    @RequestMapping("/getCpuAll")
    public String getCpu (@RequestParam(value="pn",defaultValue = "1") Integer pn ,HttpServletRequest request, String name, String brand){
        Map<String ,Object> map=new HashMap<String, Object>();
        map.put("name",name);
        map.put("brand",brand);
        PageHelper.startPage(pn,3);
        List<Cpu> cpus = cpuService.queryForCpu(map);
        PageInfo page=new PageInfo(cpus,4);
        HttpSession session = request.getSession();
        session.setAttribute("pageInfo",page);
        return "/list/cpuList.jsp";
    }
}
