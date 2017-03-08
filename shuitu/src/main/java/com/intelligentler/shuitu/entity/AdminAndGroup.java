package com.intelligentler.shuitu.entity;

/**
 * 管理员和权限关联表
 * @author ming.zhou
 *
 */
public class AdminAndGroup {
	
    private Integer admin;

    private Integer gid;

    public AdminAndGroup(Integer admin, Integer gid) {
        this.admin = admin;
        this.gid = gid;
    }

    public AdminAndGroup() {
    }

    public Integer getAdmin() {
        return admin;
    }

    public void setAdmin(Integer admin) {
        this.admin = admin;
    }

    public Integer getGid() {
        return gid;
    }

    public void setGid(Integer gid) {
        this.gid = gid;
    }

    @Override
    public String toString() {
        return "AdminAndGroup{" +
                "admin=" + admin +
                ", gid=" + gid +
                '}';
    }
}