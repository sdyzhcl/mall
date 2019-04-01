package com.hwua.dao;

import java.util.List;
import java.util.Map;

public interface AreaDao {

    //pid = parentId
    public List<Map<String,Object>> queryAreaByPid(int pid);

}
