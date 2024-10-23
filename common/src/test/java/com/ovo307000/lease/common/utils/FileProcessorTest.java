package com.ovo307000.lease.common.utils;

import org.junit.jupiter.api.Test;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

class FileProcessorTest
{
    private final FileProcessor fileProcessor = new FileProcessor();

    @Test
    void getFileNameWithoutFilePath_shouldThrowExceptionForEmptyFileName()
    {
        final IllegalArgumentException exception = assertThrows(IllegalArgumentException.class, () ->
        {
            this.fileProcessor.getFileNameWithoutFilePath("/path/to/");
        });
        assertEquals("文件名为空", exception.getMessage());
    }

    @Test
    void generateRandomName_shouldReturnRandomName()
    {
        final String randomName = this.fileProcessor.generateRandomName("example.txt");
        assertTrue(randomName.matches("\\d{14}/[\\w-]+-example\\.txt"));
    }

    @Test
    void generateRandomName_shouldThrowExceptionForEmptyOriginalName()
    {
        final IllegalArgumentException exception = assertThrows(IllegalArgumentException.class, () ->
        {
            this.fileProcessor.generateRandomName("");
        });
        assertEquals("原始文件名为空", exception.getMessage());
    }

    @Test
    void generateRandomNameFromMultipartFile_shouldReturnRandomName()
    {
        final MultipartFile file = mock(MultipartFile.class);
        when(file.getOriginalFilename()).thenReturn("example.txt");

        final String randomName = this.fileProcessor.generateRandomNameFromMultipartFile(file);
        assertTrue(randomName.matches("\\d{14}/[\\w-]+-example\\.txt"));
    }

    @Test
    void getFileFromMultiPart_shouldReturnFile() throws IOException
    {
        final MultipartFile file     = mock(MultipartFile.class);
        final File          mockFile = new File("example.txt");
        when(file.getResource()
                 .getFile()).thenReturn(mockFile);

        final File result = this.fileProcessor.getFileFromMultiPart(file);
        assertEquals(mockFile, result);
    }

    @Test
    void getFileFromMultiPart_shouldReturnNullOnIOException() throws IOException
    {
        final MultipartFile file = mock(MultipartFile.class);
        when(file.getResource()
                 .getFile()).thenThrow(new IOException("IO error"));

        final File result = this.fileProcessor.getFileFromMultiPart(file);
        assertNull(result);
    }

}