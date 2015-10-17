package com.fox.sp.util;

import java.sql.ResultSet;

public interface Wrapper<T> {
	public T getObject(ResultSet rs);
}
