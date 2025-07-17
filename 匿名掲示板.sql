CREATE TABLE report (
    id SERIAL NOT NULL,
    content VARCHAR(200) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE comment (
    id SERIAL NOT NULL,
    content VARCHAR(200) NOT NULL,
    comment_id INTEGER NOT NULL,
    PRIMARY KEY(id)
);

★カラム名変更要sql
ALTER TABLE テーブル名 RENAME COLUMN もとのカラム名 TO 変えたいカラム名;
ALTER TABLE comment RENAME COLUMN comment_id TO content_id;
ALTER TABLE comment RENAME COLUMN content TO comment;

INSERT INTO report (created_date) VALUES (current_timestamp);

DROP TABLE report;

CREATE TABLE report (
    id SERIAL NOT NULL,
    content VARCHAR(200) NOT NULL,
    PRIMARY KEY(id),
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);

DROP TABLE comment;

CREATE TABLE comment (
    id SERIAL NOT NULL,
    comment VARCHAR(200) NOT NULL,
    content_id INTEGER NOT NULL,
    PRIMARY KEY(id),
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL
);