package com.example.forum.controller.form;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class CommentForm {

    private int id;
    private String comment;
    private int contentId;

}
