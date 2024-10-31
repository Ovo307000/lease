package com.ovo307000.lease.common.utils;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class CodeGeneratorTest
{
    @Test
    void generateCodeWithValidLength()
    {
        final String code = CodeGenerator.generateCode(5);
        assertNotNull(code);
        assertEquals(5, code.length());
    }

    @Test
    void generateCodeWithZeroLengthThrowsException()
    {
        assertThrows(IllegalArgumentException.class, () -> CodeGenerator.generateCode(0));
    }

    @Test
    void generateCodeWithNegativeLengthThrowsException()
    {
        assertThrows(IllegalArgumentException.class, () -> CodeGenerator.generateCode(-1));
    }

    @Test
    void generateCodeWithLargeLength()
    {
        final String code = CodeGenerator.generateCode(1000);
        assertNotNull(code);
        assertEquals(1000, code.length());
    }
}
