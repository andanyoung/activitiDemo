package com.itstyle.bpmn.common.constant;
/**
 * 系统级静态变量
 * 创建者 张志朋
 * 创建时间	2017年11月20日
 */
public class SystemConstant {
	
	/**
	 * 超级管理员ID
	 */
	public static final String SUPER_ADMIN = "admin";
	
	
	/**
	 * 部门经理
	 */
	public static final String DEPTLEADER = "deptleader";
	
	/**
	 * 人事
	 */
	public static final String HR = "hr";
	
	/**
	 * 数据标识
	 */
	public static final String DATA_ROWS = "rows";
	
	/**
	 * 未授权错误代码
	 */
	public static final int UNAUTHORIZATION_CODE = 401;
	
	/**
	 * token失效时间
	 */
	public static final long EXP_TIMES = 10;
	
	
	/**
	 * 机构
	 */
	public static final Short ORG_TYPE_ORG = 0;
	/**
	 * 代理商
	 */
	public static final Short ORG_TYPE_AGENT = 1;
	
	/**
	 * 真
	 */
	public static final String TRUE = "true";
	/**
	 * 假
	 */
	public static final String FALSE = "false";
	
	/**
	 * 菜单类型
	 */
    public enum MenuType {
        /**
         * 目录
         */
    	CATALOG(0),
        /**
         * 菜单
         */
        MENU(1),
        /**
         * 按钮
         */
        BUTTON(2);

        private final int value;

        private MenuType(int value) {
            this.value = value;
        }

        public int getValue() {
            return value;
        }
    }
    
    /**
     * 通用字典
     */
    public enum MacroType {
    	
    	/**
    	 * 类型
    	 */
    	TYPE(0),
    	
    	/**
    	 * 参数
    	 */
    	PARAM(1);
    	
    	private final int value;
    	
    	private MacroType(int value) {
            this.value = value;
        }
        
        public int getValue() {
            return value;
        }
    	
    }
    
    /**
     * 通用变量，表示可用、禁用、显示、隐藏、是、否
     */
    public enum StatusType {
    	
    	/**
    	 * 禁用，隐藏
    	 */
    	DISABLE(0),
    	
    	/**
    	 * 可用，显示
    	 */
    	ENABLE(1),
    	
    	/**
    	 * 显示
    	 */
    	SHOW(1),
    	
    	/**
    	 * 隐藏
    	 */
    	HIDDEN(0),
    	
    	/**
    	 * 是
    	 */
    	YES(1),
    	
    	/**
    	 * 否
    	 */
    	NO(0);
    	
    	private final int value;
    	
    	private StatusType(int value) {
            this.value = value;
        }
        
        public int getValue() {
            return value;
        }
    	
    }
    
    /**
     * Enum contact for the type of used device
     */
    public enum DeviceType {
    	/**
    	 * Standard desktop or laptop computer
    	 */
    	COMPUTER(Short.valueOf("0")),
    	/**
    	 * Mobile phone or similar small mobile device
    	 */
    	MOBILE(Short.valueOf("1")),
    	/**
    	 * Other or unknow type of device.
    	 */	
    	UNKNOWN(Short.valueOf("2"));
    	
    	private final Short value;
    	
    	private DeviceType(Short value) {
            this.value = value;
        }
        
        public Short getValue() {
            return value;
        }
    }
    /**
     * 日志类型
     */
    public enum LogType {
    	INFO((short)0),
    	ERROR((short)1);
    	
    	private final Short value;
    	
    	private LogType(Short value) {
            this.value = value;
        }
        
        public Short getValue() {
            return value;
        }
    }
}
