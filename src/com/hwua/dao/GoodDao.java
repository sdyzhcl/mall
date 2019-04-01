package com.hwua.dao;

import com.hwua.entity.Good;
import java.util.List;
import java.util.Map;

public interface GoodDao {

    public Map<String,Object> queryGoodById(int id);

    public List<Good> queryGoodPage(String keyword, int start, int pageSize);

}
