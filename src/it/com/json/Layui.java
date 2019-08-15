package it.com.json;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;

import com.alibaba.fastjson.JSON;

import com.alibaba.fastjson.serializer.SerializerFeature;

public class Layui  extends HashMap<String, Object> {

    public static Layui data(Integer count,List list){
        Layui r = new Layui();
        Map<String,Object> res = new HashMap<String, Object>();
        res.put("item",list);
        r.put("status", 0);
        r.put("total", count);
        r.put("message", "");
        r.put("rows", res);
        return r;
    }
    public static  Map<String,Object> data_ajax1(Integer count,List list){
        Layui r = new Layui();
        r.put("code", 0);
        r.put("data", list);
        r.put("msg", "");
        return r;
    }
    public static  Map<String,Object> data_ajax(Integer count,List list){
        Layui r = new Layui();
        r.put("status", 200);
        r.put("message", "");
        r.put("total", count);
        r.put("list", list);
        return r;
    }
    
    
}
