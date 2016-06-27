package com.eqshen.mapper;

import com.eqshen.model.Joke;

public interface JokeMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Joke record);

    int insertSelective(Joke record);

    Joke selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Joke record);

    int updateByPrimaryKeyWithBLOBs(Joke record);

    int updateByPrimaryKey(Joke record);
}