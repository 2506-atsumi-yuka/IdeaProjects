package com.example.forum.controller.form;

import lombok.Getter;
import lombok.Setter;

import java.sql.Timestamp;

@Setter
@Getter
public class CommentForm {

    private int id;
    private String comment;
    private int contentId;
    private Timestamp createdDate;
    private Timestamp updatedDate;

}
