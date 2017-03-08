package com.intelligentler.shuitu.entity;

/**
 * 权限表
 * @author ming.zhou
 *
 */
public class Power {
    private Integer id;

    private String name;

    private Integer code;

    public Power(String name, Integer code) {
        this.name = name;
        this.code = code;
    }

    public Power() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    @Override
    public String toString() {
        return "Power{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", code=" + code +
                '}';
    }
}