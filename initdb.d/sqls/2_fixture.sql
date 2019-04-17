INSERT INTO questionnaire (name) VALUES ('勉強会のアンケート');
INSERT INTO questionnaire (name) VALUES ('勉強会のアンケートだよ');

INSERT INTO question (question_type,question_content,sort_no,questionnaire_id) VALUES ('0002','はじめに、あなたはどのような知識レベルであるか教えてください',1,1);
INSERT INTO question (question_type,question_content,sort_no,questionnaire_id) VALUES ('0002','今回扱った内容のレベルは?',2,1);
INSERT INTO question (question_type,question_content,sort_no,questionnaire_id) VALUES ('0001','その他、感想や要望など、言いたいことなんでも',3,1);

INSERT INTO question_detail (question_detail_content,sort_no,question_id) VALUES ('プログラム言語の入門書レベルの文法やクラスやメソッドなどの概念が難しく感じる',1,1);
INSERT INTO question_detail (question_detail_content,sort_no,question_id) VALUES ('プログラム言語の入門書レベルの文法やクラスやメソッドなどの概念は理解し、実務に使える',2,1);
INSERT INTO question_detail (question_detail_content,sort_no,question_id) VALUES ('プログラム言語のイディオムや深い理解がある (書籍でいう「Effective ○○」のレベル)',3,1);
INSERT INTO question_detail (question_detail_content,sort_no,question_id) VALUES ('デザインパターンやDDDなどの設計に関する方法論を知っている',4,1);
INSERT INTO question_detail (question_detail_content,sort_no,question_id) VALUES ('設計のための方法論を複雑化したコードに適用し、立ち向かうことができる',5,1);

INSERT INTO question_detail (question_detail_content,sort_no,question_id) VALUES ('既に知っていることだった (簡単だった)',1,2);
INSERT INTO question_detail (question_detail_content,sort_no,question_id) VALUES ('ちょうどよかった',2,2);
INSERT INTO question_detail (question_detail_content,sort_no,question_id) VALUES ('ついていくのがやっと',3,2);
INSERT INTO question_detail (question_detail_content,sort_no,question_id) VALUES ('難しくて理解できなかった',4,2);
