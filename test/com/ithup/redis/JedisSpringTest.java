package com.ithup.redis;

import javax.annotation.Resource;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.google.gson.Gson;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext-redis.xml")
public class JedisSpringTest {
	@Resource(name="jedisPool")
	private JedisPool jedisPool;//获取连接池


	@Test
	public void run(){
		//获取连接
		Jedis jedis = jedisPool.getResource();
		//设值
		jedis.set("username1", "顾怀要");
		jedis.set("password1", "1234");
		//取值
		System.out.println("用户名："+jedis.get("username"));
		System.out.println("密码：" + jedis.get("password"));
		
	}
	
	@Test
	public void run1(){
		//获取连接
		Jedis jedis = jedisPool.getResource();
		String linkListJson = jedis.get("linkListJson");
		Gson gson = new Gson();
		/*[{"linkId":1,"linkName":"百度","linkAddress":"https://www.baidu.com"},
		 {"linkId":2,"linkName":"京东商城","linkAddress":"https://www.jd.com"},
		 {"linkId":3,"linkName":"苏宁易购","linkAddress":"http://www.suning.com"},
		 {"linkId":4,"linkName":"58同城","linkAddress":"http://nc.58.com"},
		 {"linkId":5,"linkName":"聚美优品","linkAddress":"http://gz.jumei.com"},
		 {"linkId":6,"linkName":"alibaba","linkAddress":"https://www.alibaba.com"},
		 {"linkId":7,"linkName":"淘宝网","linkAddress":"https://www.taobao.com/"},
		 {"linkId":8,"linkName":"国美在线","linkAddress":"http://www.gome.com.cn"},
		 {"linkId":9,"linkName":"亚马孙","linkAddress":"https://www.yamaxun.com"},
		 {"linkId":10,"linkName":"华为","linkAddress":"https://www.huawei.com"},
		 {"linkId":11,"linkName":"中兴","linkAddress":"https://www.zhongxing.com"},
		 {"linkId":75,"linkName":"alibaba","linkAddress":"https://www.alibaba.com"}
		 ]*/

	}
}
