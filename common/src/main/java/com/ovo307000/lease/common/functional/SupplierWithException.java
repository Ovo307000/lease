package com.ovo307000.lease.common.functional;

import java.util.function.Supplier;

/**
 * 供应商函数接口，允许抛出异常
 * 此接口用于定义一个可以抛出异常的供应商函数，它提供了一种通用的方式来延迟生产类型为R的对象实例
 *
 * @param <R> 表示供应商函数返回的类型
 */
@FunctionalInterface
public interface SupplierWithException <R>
{
        /**
         * 获取对象实例的方法
         * 此方法声明它可以抛出异常，因此使用它的代码必须处理这些可能的异常
         *
         * @return 返回一个类型为R的对象实例
         */
        R get() throws Exception;
}
