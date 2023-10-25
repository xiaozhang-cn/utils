package com.xiaozhang.lf.db.clear;

import java.util.*;

import com.xiaozhang.common.CollectionUtils;

import lombok.*;
import lombok.extern.slf4j.Slf4j;

/**
 * @author : xiaozhang
 * @since : 2023/10/20 12:03
 */

@Slf4j
@Getter
public class MySqlClearContext {
    // mysql相关配置
    private String mysqlHost = "jdbc:mysql://10.1.2.23:3306/lf";
    private String userName = "root";
    private String password = "admin123";

    // 服务器id
    private int serverId;
    // 指定不清理的表 优先级最高
    private Set<String> skipTableList = new HashSet<>(Arrays.asList("server_info"));
    // 指定清理的表 其他表不清
    private Set<String> requiredTableList = new HashSet<>();

    public static MySqlClearContext of(int serverId, Collection<String> skipTableList,
        Collection<String> requiredTableList) {
        MySqlClearContext clearContext = new MySqlClearContext();
        clearContext.serverId = serverId;
        if (CollectionUtils.isNotEmpty(skipTableList)) {
            clearContext.skipTableList.addAll(skipTableList);
        }

        if (CollectionUtils.isNotEmpty(requiredTableList)) {
            clearContext.requiredTableList.addAll(requiredTableList);
        }

        return clearContext;
    }

    public String getUrl() {
        return this.mysqlHost + serverId;
    }
}
