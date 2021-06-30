package com.itstyle.bpmn.common.util;

import java.util.Random;

import com.itstyle.bpmn.common.constant.MsgConstant;
import com.itstyle.bpmn.common.constant.SystemConstant;
import com.itstyle.bpmn.common.entity.Result;

/**
 *  通用工具类 
 *  @Author	张志朋
 *  @Date	2019年1月25日
 *
 */
public class CommonUtils {

	/**
	 * 对象是否为空
	 * @param obj
	 * @return
	 */
	public static boolean isNullOrEmpty(Object obj) {
		if (obj == null) {
			return true;
		}
		return false;
	}

	/**
	 * 6位随机数
	 */
	public static int randomNum() {
		int num = (int) ((Math.random() * 9 + 1) * 100000);
		return num;
	}

	/**
	 * 在某个范围内获取随机数 生成的随机数不包含 max
	 */
	public static int randomNum(int min, int max) {
		Random random = new Random();
		int num = random.nextInt(max) % (max - min + 1) + min;
		return num;
	}


	/**
	 * 新增，修改提示
	 * @param count
	 * @return
	 */
	public static Result msg(int count) {
		if (isIntThanZero(count)) {
			return Result.ok(MsgConstant.MSG_OPERATION_SUCCESS);
		}
		return Result.error(MsgConstant.MSG_OPERATION_FAILED);
	}

	/**
	 * 查询详情提示
	 * @param data
	 * @return
	 */
	public static Result msg(Object data) {
		if (isNullOrEmpty(data)) {
			return Result.error(MsgConstant.MSG_INIT_FORM);
		}
		return Result.ok().put(SystemConstant.DATA_ROWS, data);
	}

	/**
	 * 返回数据
	 * @param data
	 * @return
	 */
	public static Result msgNotCheckNull(Object data) {
		return Result.ok().put(SystemConstant.DATA_ROWS, data);
	}

	/**
	 * 删除提示
	 * @param total
	 * @param count
	 * @return
	 */
	public static Result msg(Object[] total, int count) {
		if (total.length == count) {
			return Result.ok(MsgConstant.MSG_OPERATION_SUCCESS);
		} else {
			if (isIntThanZero(count)) {
				return Result.error(MsgConstant.removeFailed(total.length, count));
			} else {
				return Result.error(MsgConstant.MSG_OPERATION_FAILED);
			}
		}
	}
	/**
	 * 判断整数是否大于零
	 * @param number
	 * @return
	 */
	public static boolean isIntThanZero(int number) {
		if (number > 0) {
			return true;
		}
		return false;
	}
}
