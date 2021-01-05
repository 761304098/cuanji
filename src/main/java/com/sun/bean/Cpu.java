package com.sun.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Cpu {
    private int id ;
    private String name;
    private String brand;
    private int price;
    private String cpuseries;
    private String slot;
    private String corenumber;
    private String thread;
    private String cpubasic;
    private String cpuhigh;
    private String threecache;
}
