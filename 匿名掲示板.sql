CREATE TABLE report (
    id SERIAL NOT NULL,
    content VARCHAR(200) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE comment (
    id SERIAL NOT NULL,
    content VARCHAR(200) NOT NULL,
    commentId SERIAL NOT NULL,
    PRIMARY KEY(id)
);

DROP TABLE comment;

CREATE TABLE comment (
    id SERIAL NOT NULL,
    content VARCHAR(200) NOT NULL,
    commentId INTEGER NOT NULL,
    PRIMARY KEY(id)
);