package com.eqshen.mapper;

import java.util.List;

import com.eqshen.bean.UserJoke;
import com.eqshen.model.Joke;

public interface JokeMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Joke record);

    int insertSelective(Joke record);

    Joke selectByPrimaryKey(Long id);
    
    List<UserJoke>selectUserJoke();
    
    List<UserJoke>selectHotUserJoke();
    
    List<UserJoke>selectLatestUserJoke();
    
    List<UserJoke>selectRandomUserJoke(int limit);

    int updateByPrimaryKeySelective(Joke record);

    int updateByPrimaryKeyWithBLOBs(Joke record);

    int updateByPrimaryKey(Joke record);
}