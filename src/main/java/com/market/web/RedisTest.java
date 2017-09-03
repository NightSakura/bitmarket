package com.market.web;

import java.net.URL;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.ListOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@ResponseBody
public class RedisTest {
	// inject the actual template
    @Autowired
    private RedisTemplate<String, String> template;

    // inject the template as ListOperations
    // can also inject as Value, Set, ZSet, and HashOperations
    @Resource(name="redisTemplate")
    private ListOperations<String, String> listOps;
    
    @RequestMapping(value = "/redis", method = RequestMethod.GET)
    public String getJson(){
    	 listOps.leftPush("zhengyukun","http://www.baidu.com");
    	 listOps.leftPush("lvkun", "sb");
    	 listOps.leftPush("zhengyukun", "what a fuck");
    	return listOps.leftPop("zhengyukun");
    }
}
