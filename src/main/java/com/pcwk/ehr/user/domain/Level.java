package com.pcwk.ehr.user.domain;

/**
 * 사용자 등급: BASIC , SILVER , GOLD
 * 
 * @author acorn
 *
 */
public enum Level {
	GOLD(3,null), SILVER(2,GOLD), BASIC(1,SILVER);

	private final int value;
	private final Level next; //다음 Level

	Level(int value,Level next) {
		this.value = value;
		this.next = next;
	}

	public int intValue() {
		return value;
	}
	
	public Level nextLevel() {
		return this.next;
	}

	// 값으로 부터 level 오브젝트 Return
	public static Level valueOf(int value) {
		switch (value) {
		case 1:
			return BASIC;
		case 2:
			return SILVER;
		case 3:
			return GOLD;
		default:
			throw new AssertionError("Unknown value: " + value);
		}
	}

}
