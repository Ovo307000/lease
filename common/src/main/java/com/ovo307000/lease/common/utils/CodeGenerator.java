package com.ovo307000.lease.common.utils;

import java.util.stream.IntStream;

public class CodeGenerator
{
    public static String generateCode(final int length)
    {
        if (length <= 0)
        {
            throw new IllegalArgumentException("Code length must be greater than 0");
        }

        return IntStream.range(0, length)
                        .mapToObj(i -> String.valueOf((int) (Math.random() * 10)))
                        .reduce(String::concat)
                        .orElseThrow(IllegalStateException::new);
    }
}
