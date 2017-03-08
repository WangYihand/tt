package com.intelligentler.shuitu.entity;

/**
 * 角色和权限关联表
 * @author ming.zhou
 *
 */
public class GroupPower {
    private Integer gid;

    private Integer power;

    public GroupPower(Integer gid, Integer power) {
        this.gid = gid;
        this.power = power;
    }

    public GroupPower() {
    }

    public Integer getGid() {
        return gid;
    }

    public void setGid(Integer gid) {
        this.gid = gid;
    }

    public Integer getPower() {
        return power;
    }

    public void setPower(Integer power) {
        this.power = power;
    }

    @Override
    public String toString() {
        return "GroupPower{" +
                "gid=" + gid +
                ", power=" + power +
                '}';
    }
}