package com.ovo307000.lease.common.enumeration;


import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum OperationType
{
    SAVE_OBJECT("保存对象"),
    GET_OBJECT("获取对象"),
    DELETE_OBJECT("删除对象"),
    LIST_OBJECTS("列出对象"),
    CREATE_BUCKET("创建存储桶"),
    DELETE_BUCKET("删除存储桶"),
    LIST_BUCKETS("列出存储桶"),
    CHECK_BUCKET_EXISTENCE("检查存储桶是否存在"),
    UPLOAD_OBJECT("上传对象");

    private final String description;
}
