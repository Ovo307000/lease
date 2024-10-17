package com.ovo307000.lease.common.result;

import lombok.AllArgsConstructor;
import lombok.Getter;

/**
 * 统一返回结果状态信息类
 */

@Getter
@AllArgsConstructor
public enum ResultCodeEnum
{
    SUCCESS(200, "操作成功"),
    FAIL(201, "操作失败，请稍后重试"),
    PARAM_ERROR(202, "输入参数有误，请检查后重试"),
    SERVICE_ERROR(203, "服务暂时不可用，请稍后再试"),
    DATA_ERROR(204, "数据异常，请联系客服"),
    ILLEGAL_REQUEST(205, "非法请求，请检查您的操作"),
    REPEAT_SUBMIT(206, "请勿重复提交"),
    DELETE_FAILED(207, "删除失败，请检查后重试"),
    NO_FOUND(208, "未找到相关数据，请检查后重试"),
    SAVE_FAILED(209, "保存失败，请检查后重试"),
    REMOVE_FAILED(210, "删除失败，请检查后重试"),
    REMOVE_NOT_FOUND(211, "删除失败，未找到相关数据"),

    ADMIN_ACCOUNT_EXIST_ERROR(301, "该账号已被注册，请更换账号"),
    ADMIN_CAPTCHA_CODE_ERROR(302, "验证码不正确，请重新输入"),
    ADMIN_CAPTCHA_CODE_EXPIRED(303, "验证码已过期，请重新获取"),
    ADMIN_CAPTCHA_CODE_NOT_FOUND(304, "请输入验证码"),

    ADMIN_LOGIN_AUTH(305, "请先登录后再进行操作"),
    ADMIN_ACCOUNT_NOT_EXIST_ERROR(306, "账号不存在，请检查后重试"),
    ADMIN_ACCOUNT_ERROR(307, "用户名或密码错误，请重新输入"),
    ADMIN_ACCOUNT_DISABLED_ERROR(308, "账号已被禁用，请联系管理员"),
    ADMIN_ACCESS_FORBIDDEN(309, "您没有权限执行此操作"),

    APP_LOGIN_AUTH(501, "请先登录后再进行操作"),
    APP_LOGIN_PHONE_EMPTY(502, "请输入手机号码"),
    APP_LOGIN_CODE_EMPTY(503, "请输入验证码"),
    APP_SEND_SMS_TOO_OFTEN(504, "验证码发送过于频繁，请稍后再试"),
    APP_LOGIN_CODE_EXPIRED(505, "验证码已过期，请重新获取"),
    APP_LOGIN_CODE_ERROR(506, "验证码不正确，请重新输入"),
    APP_ACCOUNT_DISABLED_ERROR(507, "账号已被禁用，请联系客服"),

    TOKEN_EXPIRED(601, "登录已过期，请重新登录"),
    TOKEN_INVALID(602, "登录凭证无效，请重新登录"),

    FILE_UPLOAD_FAILED(702, "文件上传失败，请检查后重试"),

    APARTMENT_HAS_ROOM(801, "该公寓下有房间信息，无法删除"),
    UPDATE_FAILED(802, "更新失败，请检查后重试"),
    DATA_NOT_FOUND(803, "未找到相关数据，请检查后重试");

    private final Integer code;
    private final String  message;
}
