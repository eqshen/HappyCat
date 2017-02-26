package com.eqshen.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eqshen.bean.UserJoke;
import com.eqshen.mapper.JokeMapper;
import com.eqshen.model.Joke;
import com.eqshen.service.IJokeService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

@Service
public class JokeServiceImpl implements IJokeService {
	@Autowired
	private JokeMapper jokeMapper; 
	
	public List<UserJoke> selectAllUserJoke() {
		return jokeMapper.selectUserJoke();
	}
	
	public List<UserJoke> selectPageUserJoke(int page,int size){
		PageHelper.startPage(page, size);
		return jokeMapper.selectUserJoke();
	}
	
	public Joke selectJokeById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	public void updateByIdIgoreNull() {
		// TODO Auto-generated method stub
		
	}

	public void insert(Joke joke) {
		this.jokeMapper.insertSelective(joke);
	}

	public void deleteById(Long id) {
		// TODO Auto-generated method stub
		
	}

	public List<UserJoke> selectRandomUserJoke(int limit) {
		return jokeMapper.selectRandomUserJoke(limit);
	}

	public List<UserJoke> selectHotUserJoke(int page,int size) {
		PageHelper.startPage(page, size);
		return jokeMapper.selectHotUserJoke();
	}

	public List<UserJoke> selectLastestUserJoke(int page, int size) {
		PageHelper.startPage(page, size);
		return jokeMapper.selectLatestUserJoke();
	}
	
}
