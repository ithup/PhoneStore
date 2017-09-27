package com.ithup.redis;

import javax.annotation.Resource;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration("classpath:applicationContext-redis.xml")
public class JedisSpringTest {
	//@Resource(name="jedisPool")
	private JedisPool jedisPool;//获取连接池
	public void setJedisPool(JedisPool jedisPool) {
		this.jedisPool = jedisPool;
	}


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
	
	
}
