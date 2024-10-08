package com.fengshuisystem.demo.exception;

import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;

import lombok.Getter;

@Getter
public enum ErrorCode {
    UNCATEGORIZED_EXCEPTION(9999, "Uncategorized error", HttpStatus.INTERNAL_SERVER_ERROR),
    INVALID_KEY(1001, "Uncategorized error", HttpStatus.BAD_REQUEST),
    USER_EXISTED(1002, "User existed", HttpStatus.BAD_REQUEST),
    USERNAME_INVALID(1003, "Username must be at least {min} characters", HttpStatus.BAD_REQUEST),
    INVALID_PASSWORD(1004, "Password must be at least {min} characters", HttpStatus.BAD_REQUEST),
    USER_NOT_EXISTED(1005, "User not existed", HttpStatus.NOT_FOUND),
    UNAUTHENTICATED(1006, "Unauthenticated", HttpStatus.UNAUTHORIZED),
    INVALID_DOB(1008, "Your age must be at least {min}", HttpStatus.BAD_REQUEST),
    INVALID_CREDENTIALS(1009, "Invalid credentials, please try again.", HttpStatus.BAD_REQUEST),
    PASSWORD_EXISTED(1010, "Password existed", HttpStatus.BAD_REQUEST),
    POST_NOT_EXISTED(1011, "Post not exist", HttpStatus.NOT_FOUND),
    POST_COMMENT_NOT_EXISTED(1012, "Post comment not exist", HttpStatus.NOT_FOUND),
    POST_IMAGE_NOT_EXISTED(1013, "Post image not exist", HttpStatus.NOT_FOUND),
    POST_CATEGORY_NOT_EXISTED(1014, "Post category not exist", HttpStatus.NOT_FOUND),
    PAYMENT_NOT_EXISTED(1015, "Payment not exist", HttpStatus.NOT_FOUND),
    PACKAGE_NOT_EXISTED(1016, "Package not exist", HttpStatus.NOT_FOUND),
    BILL_NOT_EXISTED(1016, "Bill not exist", HttpStatus.NOT_FOUND),



    ;

    ErrorCode(int code, String message, HttpStatusCode statusCode) {
        this.code = code;
        this.message = message;
        this.statusCode = statusCode;
    }

    private final int code;
    private final String message;
    private final HttpStatusCode statusCode;
}
