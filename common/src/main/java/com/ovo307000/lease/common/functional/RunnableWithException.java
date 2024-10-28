package com.ovo307000.lease.common.functional;

@FunctionalInterface
public interface RunnableWithException
{
    void run() throws Exception;
}
