package com.cash.controller;

import com.cash.pojo.Record;
import com.cash.service.RecordService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @data 2019/8/1  10:55
 */
@Controller
public class RecordController {
    @Autowired
    private RecordService recordService;

    @RequestMapping("/record")
    public  String  torecord(Integer id,@RequestParam(value = "pn",defaultValue = "1") Integer pn, Model model){

        //System.out.println(id);
        PageHelper.startPage(pn,5);
        List<Record> records = recordService.queryallRecord(id);

        PageInfo pageInfo = new PageInfo(records,5);
        model.addAttribute("pageInfo",pageInfo);

        return "account-record";
    }


}
