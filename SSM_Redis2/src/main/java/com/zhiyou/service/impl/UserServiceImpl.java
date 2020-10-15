package com.zhiyou.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import com.zhiyou.dao.UserDao;
import com.zhiyou.model.User;
import com.zhiyou.service.UserService;
@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	public void add(User user) {
		userDao.add(user);
		
	}
	public void update(User user) {
		userDao.update(user);
		
	}
	//用来标记需要清除缓存的方法，以及清除指定的缓存	allEntries:代表清除缓存中的所有元素
	@CacheEvict(value="userSelect",allEntries=true)
	public void delete(int id) {
		userDao.delete(id);
		
	}
	//指定下面这个方法需要使用缓存，使用缓存的名字叫userSelect
	@Cacheable(value="userSelect")
	public List<User> select() {
		return userDao.select();
		
	}
	@Cacheable(value="userSelect")
	public User selectById(int id) {
		return userDao.selectById(id);
	}
	

}
