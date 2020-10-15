package com.zhiyou.model;

import java.io.Serializable;
import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User implements Serializable{

	private Integer id;
	private String name;
	private String password;
	private String money;
	private Date date;
}
