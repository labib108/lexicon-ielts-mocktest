INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(28, '<b>Questions 1-6</b> <br>Complete the form using <b> NO MORE THAN THREE WORDS </b> for each answer.<br><p>Buying a Used Car: Contact Details</p>', 'static', 1, NULL, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(28, 'Model:', 'static', 2, NULL, '{"table_no":1,"row":1,"col":1}', NOW(), NOW()),
(28, 'Celica', 'static', 3, NULL, '{"table_no":1,"row":1,"col":2}', NOW(), NOW()),
(28, 'Year:', 'static', 4, NULL, '{"table_no":1,"row":2,"col":1}', NOW(), NOW()),
(28, '1985 (EXAMPLE)', 'static', 5, NULL, '{"table_no":1,"row":2,"col":2}', NOW(), NOW()),
(28, 'Number of owners:', 'static', 6, NULL, '{"table_no":1,"row":3,"col":1}', NOW(), NOW()),
(28, ' ___', 'fill_blank', 7, 1, '{"table_no":1,"row":3,"col":2}', NOW(), NOW()),
(28, 'Condition:', 'static', 8, NULL, '{"table_no":1,"row":4,"col":1}', NOW(), NOW()),
(28, 'overall good ___ done last year.', 'fill_blank', 9, 2, '{"table_no":1,"row":4,"col":2}', NOW(), NOW()),
(28, 'Reason for selling:', 'static', 10, NULL, '{"table_no":1,"row":5,"col":1}', NOW(), NOW()),
(28, '___ ', 'fill_blank', 11, 3, '{"table_no":1,"row":5,"col":2}', NOW(), NOW()),
(28, 'Asking price:', 'static', 12, NULL, '{"table_no":1,"row":6,"col":1}', NOW(), NOW()),
(28, '___', 'fill_blank', 13, 4, '{"table_no":1,"row":6,"col":2}', NOW(), NOW()),
(28, 'Appointment time:', 'static', 14, NULL, '{"table_no":1,"row":7,"col":1}', NOW(), NOW()),
(28, '___', 'fill_blank', 15, 5, '{"table_no":1,"row":7,"col":2}', NOW(), NOW()),
(28, 'Address:', 'static', 16, NULL, '{"table_no":1,"row":8,"col":1}', NOW(), NOW()),
(28, '___ Parkwood.', 'fill_blank', 17, 6, '{"table_no":1,"row":8,"col":2}', NOW(), NOW()),
(28, 'Contact name:', 'static', 18, NULL, '{"table_no":1,"row":9,"col":1}', NOW(), NOW()),
(28, 'Elena', 'static', 19, NULL, '{"table_no":1,"row":9,"col":2}', NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(28, '<b>Questions 7-10</b> <br> Circle the correct letter A-C.', 'static', 20, NULL, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(28, 'What happened to Sam’s car?', 'mcq', 21, 7, NULL, NOW(), NOW()),
(28, 'Why does Jan need a car now?', 'mcq', 22, 8, NULL, NOW(), NOW()),
(28, 'What does Sam recommend?', 'mcq', 23, 9, NULL, NOW(), NOW()),
(28, 'How are they travelling to Elena’s?', 'mcq', 24, 10, NULL, NOW(), NOW());
INSERT INTO question_options(question_id, text, created_at, updated_at)
VALUES
(377, 'A. It was replaced by another one.', NOW(), NOW()),
(377, 'B. It broke down.', NOW(), NOW()),
(377, 'C. It was stolen.', NOW(), NOW()),

(378, 'A. She lives too far from the university.', NOW(), NOW()),
(378, 'B. She spends too much time on the bus.', NOW(), NOW()),
(378, 'C. She would feel safer at night with a car.', NOW(), NOW()),

(379, 'A. check the service records', NOW(), NOW()),
(379, 'B. avoid buying an old car', NOW(), NOW()),
(379, 'C. get a mechanical inspection', NOW(), NOW()),

(380, 'A. by motorcycle', NOW(), NOW()),
(380, 'B. on foot', NOW(), NOW()),
(380, 'C. by bus', NOW(), NOW());




-- there are 3 missing question



INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(29, '<b>Questions 14-16</b><br>Fill in the chart using NO MORE THAN THREE WORDS.<p>Whale Identification Chart</p>', 'static', 6, NULL, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(29, 'Animal', 'static', 7, NULL, '{"table_no":2,"row":1,"col":1}', NOW(), NOW()),
(29, 'Colour', 'static', 8, NULL, '{"table_no":2,"row":1,"col":2}', NOW(), NOW()),
(29, 'Size', 'static', 9, NULL, '{"table_no":2,"row":1,"col":3}', NOW(), NOW()),
(29, 'General Characteristics', 'static', 10, NULL, '{"table_no":2,"row":1,"col":4}', NOW(), NOW()),

(29, 'Dolphins', 'static', 11, NULL, '{"table_no":2,"row":2,"col":1}', NOW(), NOW()),
(29, 'grey', 'static', 12, NULL, '{"table_no":2,"row":2,"col":2}', NOW(), NOW()),
(29, '1-2 metres', 'static', 13, NULL, '{"table_no":2,"row":2,"col":3}', NOW(), NOW()),
(29, '___', 'fill_blank', 14, 14, '{"table_no":2,"row":2,"col":4}', NOW(), NOW()),

(29, 'Orcas/ Killer Whales', 'static', 15, NULL, '{"table_no":2,"row":3,"col":1}', NOW(), NOW()),
(29, '___', 'fill_blank', 16, 15, '{"table_no":2,"row":3,"col":2}', NOW(), NOW()),
(29, '7 - 8 metres', 'static', 17, NULL, '{"table_no":2,"row":3,"col":3}', NOW(), NOW()),
(29, 'fierce hunters,eat fish, seals, other whales', 'static', 18, NULL, '{"table_no":2,"row":3,"col":4}', NOW(), NOW()),

(29, 'Grey Whales', 'static', 19, NULL, '{"table_no":2,"row":4,"col":1}', NOW(), NOW()),
(29, 'Grey', 'static', 20, NULL, '{"table_no":2,"row":4,"col":2}', NOW(), NOW()),
(29, '___', 'fill_blank', 21, 16, '{"table_no":2,"row":4,"col":3}', NOW(), NOW()),
(29, 'migratory,solitary,filter feeders, eat shrimp', 'static', 22, NULL, '{"table_no":2,"row":4,"col":4}', NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(29, '<b>Questions 17-20</b><br>Complete the following using NO MORE THAN THREE WORDS.<br><p>Advice for Participants on Whale Watching Excursions</p>', 'static', 23, NULL, NULL, NOW(), NOW());


INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(30, '<b>Questions 21-23</b>.<br>Fill in the summary below with <b>NO MORE THAN TWO WORDS OR A NUMBER</b> for each space.<p><b>Selection Process for ‘Travel Documentary’ </b></p>', 'static', 1, NULL, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(30, '34 interviewed from ___ applicants nationally', 'fill_blank', 2, 21, NULL, NOW(), NOW()),
(30, '13 chosen for a ___  training course in film-making.', 'fill_blank', 3, 22, NULL, NOW(), NOW()),
(30, ' ___ finalists selected as competitors.', 'fill_blank', 4, 23, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(30, '<b>Questions 24-26</b><br>Complete the summary.<br>Write NO MORE THAN THREE WORDS for each space.<p><b>Requirements of competitors:</b></p>', 'static', 5, NULL,NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(30, '', 'static', 6, NULL, '{"image":"images/mockTestImage/listening4-3.png"}', NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(30, 'produce a ___ every two weeks.', 'fill_blank', 7, 24, NULL, NOW(), NOW()),
(30, 'no previous professional ___ experience allowed', 'fill_blank', 8, 25, NULL, NOW(), NOW()),
(30, 'make their own ___ and obtain approval.', 'fill_blank', 9, 26, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at) 
VALUES (20, '<b>Questions 27-28</b><br>Circle the correct letter A-C.', 'static', 10, NULL, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(30, 'What was Sarah Price’s worst experience during the trip?', 'mcq', 11, 27, NULL, NOW(), NOW()),
(30, 'In which of the following areas does Ray expect to have most difficulty?', 'mcq', 12, 28, NULL, NOW(), NOW());
INSERT INTO question_options(question_id, text, created_at, updated_at)
VALUES
(423, 'A. She got lost in Mongolia.', NOW(), NOW()),
(423, 'B. She was homesick.', NOW(), NOW()),
(423, 'C. She got sick in a remote place.', NOW(), NOW()),
(424, 'A. loneliness', NOW(), NOW()),
(424, 'B. time pressure', NOW(), NOW()),
(424, 'C. organisation skills', NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(30, '<b>Questions 29-30</b><br>Write NO MORE THAN TWO WORDS for each answer.', 'static', 13, NULL, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(30, 'In what month does the journey begin? ___ ', 'fill_blank', 14, 29, NULL, NOW(), NOW()),
(30, 'Name 2 things that are provided free of charge to the competitors. ___ and travel, camera, accommodation.', 'fill_blank', 15, 30, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(31, '<b>Questions 31-33</b><br>Circle the correct answer A-C.', 'static', 1, NULL, NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(31, 'What does QWERTY stand for?', 'mcq', 2, 31, NULL, NOW(), NOW()),
(31, 'The first commercial typewriter was developed in ...', 'mcq', 3, 32, NULL, NOW(), NOW()),
(31, 'The purpose of the QWERTY keyboard layout was ...', 'mcq', 4, 33, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(31, '<b>Questions 34-39</b>.<br>Fill in the summary below with <b>NO MORE THAN TWO WORDS OR A NUMBER</b> for each space.', 'static', 5, NULL, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(31, 'In 1932 August Dvorak solved the inefficiency problem by re-designing the ___ of the typewriter. He put the most commonly used letters on the home row.', 'fill_blank', 6, 34, NULL, NOW(), NOW()),
(31, 'Using the Dvorak keyboard, over 3,000 words or ___  of all work can be done from the home row.', 'fill_blank', 7, 35, NULL, NOW(), NOW()),
(31, 'In contrast, only ___ can be typed from the home row on the QWERTY keyboard.', 'fill_blank', 8, 36, NULL, NOW(), NOW()),
(31, 'Other advantages of the Dvorak keyboard include a 50% improvement in ___', 'fill_blank', 9, 37, NULL, NOW(), NOW()),
(31, 'and a 15 - 20% increase in ___ . But the most important difference is in finger movement.', 'fill_blank', 10, 38, NULL, NOW(), NOW()),
(31, 'Typists using the QWERTY keyboard moved their fingers ___ miles per day compared to one mile a day for Dvorak typists.', 'fill_blank', 11, 39, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(31, '<b>Questions 40</b><br>Circle the correct answer A-C.', 'static', 12, NULL, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(31, 'Which of these was the main reason why the Dvorak keyboard was never adopted?', 'mcq', 13, 40, NULL, NOW(), NOW());

INSERT INTO question_options(question_id, text, created_at, updated_at)
VALUES
(429, 'A. letters on the top row of the keyboard.', NOW(), NOW()),
(429, 'B. the company that made the first typewriter', NOW(), NOW()),
(429, 'C. letters on the home row of the keyboard', NOW(), NOW()),
(430, 'A. Germany.', NOW(), NOW()),
(430, 'B. Great Britain.', NOW(), NOW()),
(430, 'C. United States.', NOW(), NOW()),
(431, 'A. to slow down typing speed.', NOW(), NOW()),
(431, 'B. to prevent keys from sticking.', NOW(), NOW()),
(431, 'C. to reduce typing inefficiency.', NOW(), NOW());
INSERT INTO question_options(question_id, text, created_at, updated_at)
VALUES
(440, 'A. the Depression of 1929', NOW(), NOW()),
(440, 'B. bad timing', NOW(), NOW()),
(440, 'C. resistance to change', NOW(), NOW());



INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(32, '<b>Questions 40</b><br>Circle the correct answer A-D.', 'static', 1, NULL, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(32, 'According to the passage, which of the following statements is supported by recent research?', 'mcq', 2, 1, NULL, NOW(), NOW());
INSERT INTO question_options(question_id, text, created_at, updated_at)
VALUES
(442, 'A. Napping is an indicator of laziness.', NOW(), NOW()),
(442, 'B. Two thirds of Americans sleep too much.', NOW(), NOW()),
(442, 'C. Napping in the workplace is a current trend.', NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(32, '<b>Questions 2-6</b><br>Do the following statements reflect the claims of the writer in Passage 1?<br>Write:<br><b>YES - </b>	if the statement agrees with the views of the writer<br><b>No - </b>if the statement contradicts the views of the write <br><b>NOT GIVEN - </b>	if it is impossible to say what the writer thinks about this', 'static', 3, NULL, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(32, 'The number one cause of car accidents is fatigue.', 'select', 4, 2, '{"options":["YES","NO","NOT GIVEN"]}', NOW(), NOW()),
(32, 'People who nap in the afternoon are lazy.', 'select', 5, 3, '{"options":["YES","NO","NOT GIVEN"]}', NOW(), NOW()),
(32, 'A nap in the middle of the day can improve your mood.', 'select', 6, 4, '{"options":["YES","NO","NOT GIVEN"]}', NOW(), NOW()),
(32, 'People who nap regularly live longer.', 'select', 7, 5, '{"options":["YES","NO","NOT GIVEN"]}', NOW(), NOW()),
(32, 'The majority of Americans sleep at least eight hours a night.', 'select', 8, 6, '{"options":["YES","NO","NOT GIVEN"]}', NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(32, '<b>Questions 7-9</b><br>Choose one phrase from the list in the box (A-F) to complete each of the following sentences.', 'static', 9, NULL, NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(32, 'A. drink coffee to stay awake during the afternoon<br> B. have a nap during breaks<br>C. fall asleep when they are bored<br>D. sneak naps without permission <br> E. resist the trend toward napping <br> F. fall asleep in the afternoon', 'static', 10, NULL, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(32, 'Humans are biologically programmed to ...', 'select', 11, 7, '{"options":["A","B","C","D","E","F"]}', NOW(), NOW()),
(32, 'Employees of some progressive companies are encouraged to ...', 'select', 12, 8, '{"options":["A","B","C","D","E","F"]}', NOW(), NOW()),
(32, 'Traditional employers are likely to ...', 'select', 13, 9, '{"options":["A","B","C","D","E","F"]}', NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(32, '<b>Questions 10-11</b><br>Complete the following sentences using NO MORE THAN THREE WORDS for the passage.', 'static', 14, NULL, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(32, 'In the transportation, industry napping is a matter of ___ ', 'fill_blank', 15, 10, NULL, NOW(), NOW()),
(32, 'On some airlines, pilots can sleep in the cockpit if ___ ', 'fill_blank', 16, 11, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(32, '<b>Questions 12-13</b><br>Circle the correct answer A-D.', 'static', 17, NULL, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(32, 'According to the writer, in America the workplace is becoming ...', 'mcq', 18, 12, NULL, NOW(), NOW()),
(32, 'According to the writer, what is the main reason why employers support the idea of naps at work?', 'mcq', 19, 13, NULL, NOW(), NOW());

INSERT INTO question_options(question_id, text, created_at, updated_at)
VALUES
(458, 'A. less flexible.', NOW(), NOW()),
(458, 'B. more exciting.', NOW(), NOW()),
(458, 'C. less demanding.', NOW(), NOW()),
(458, 'D. more stressful.', NOW(), NOW()),
(459, 'A. for health reasons', NOW(), NOW()),
(459, 'B. to promote safety', NOW(), NOW()),
(459, 'C. to increase productivity', NOW(), NOW()),
(459, 'D. to encourage creativity', NOW(), NOW());


INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(33, '<b>Questions 14-19</b><br>The reading passage has 7 sections A-G.Choose the most suitable headings for sections B-G from the list of headings (i-x).There are more headings than sections so you will not use all of them.<br>List of Headings', 'static', 1, NULL, NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(33, 'i. The future of homeopathy <br>ii. Concerns about homeopathy<br>	iii. Comparison with traditional western medicine<br>iv. Dr. S. Hahnemann<br>v. Theoretical and experimental basis<br> vi. Revival of homeopathy<br>vii. Preparation of medicines<br>viii. Debate over effectiveness<br>ix. Advantages and limitations of homeopathy<br>x. Aspects of treatment<br>Example Answer <br> Section A vi', 'static', 2, NULL, NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(33, 'Section B', 'select', 3, 14, '{"options":["i","ii","iii","iv","v","vi","vii","viii","ix","x"]}', NOW(), NOW()),
(33, 'Section C', 'select', 4, 15, '{"options":["i","ii","iii","iv","v","vi","vii","viii","ix","x"]}', NOW(), NOW()),
(33, 'Section D', 'select', 5, 16, '{"options":["i","ii","iii","iv","v","vi","vii","viii","ix","x"]}', NOW(), NOW()),
(33, 'Section E', 'select', 6, 17, '{"options":["i","ii","iii","iv","v","vi","vii","viii","ix","x"]}', NOW(), NOW()),
(33, 'Section F', 'select', 7, 18, '{"options":["i","ii","iii","iv","v","vi","vii","viii","ix","x"]}', NOW(), NOW()),
(33, 'Section G', 'select', 8, 19, '{"options":["i","ii","iii","iv","v","vi","vii","viii","ix","x"]}', NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(33, '<b>Questions 20-22</b><br>Complete the following sentences using NO MORE THAN THREE WORDS for the passage.<p><b>Making a homeopathic remedy</b></p>', 'static', 9, NULL, NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(33, 'The remedies come from plant, animal and mineral sources.A single product is mixed with ___ and left to stand for 2-4 weeks.', 'fill_blank', 10, 20, NULL, NOW(), NOW()),
(33, 'This mixture is strained to produce a tincture which can be diluted. 1 drop of this tincture is added to 99 drops of alcohol/water. The mixture is then ___ vigorously.', 'fill_blank', 11, 21, NULL, NOW(), NOW()),
(33, 'This produces a remedy with a potency of 1c.As the remedy becomes more diluted,it gets ___ ', 'fill_blank', 12, 22, NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(33, '<b>Questions 23-26</b><br>Complete the summary.Choose your answers from the box below.', 'static', 13, NULL, NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(33, 'Homeopathy differs from conventional medicine in a number of ways. Conventional medicine views symptoms as an indication of something wrong in the body whereas homeopathy sees them as signs that the body is attempting to ___ ', 'fill_blank', 14, 23, NULL, NOW(), NOW()),
(33, 'The uses of medication differ also. Many types of conventional medication  ___ ', 'fill_blank', 15, 24, NULL, NOW(), NOW()),
(33, 'but if the medicine is taken away, the illness returns. The intention of homeopathy is to bring about a complete cure. Homeopathic remedies are ___ ', 'fill_blank', 16, 25, NULL, NOW(), NOW()),
(33, 'than conventional medicine and have fewer  ___ ', 'fill_blank', 17, 26, NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(33, '<p>List of Words/Phrases</p>', 'static', 18, NULL, NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(33, 'cheaper', 'static', 19, NULL, '{"table_no":1,"row":1,"col":1}', NOW(), NOW()),
(33, 'cure', 'static', 20, NULL, '{"table_no":1,"row":1,"col":2}', NOW(), NOW()),
(33, 'heal itself', 'static', 21, NULL, '{"table_no":1,"row":1,"col":3}', NOW(), NOW()),
(33, 'illness', 'static', 22, NULL, '{"table_no":1,"row":2,"col":1}', NOW(), NOW()),
(33, 'treatments', 'static', 23, NULL, '{"table_no":1,"row":2,"col":2}', NOW(), NOW()),
(33, 'getting better', 'static', 24, NULL, '{"table_no":1,"row":2,"col":3}', NOW(), NOW()),
(33, 'control symptoms', 'static', 25, NULL, '{"table_no":1,"row":3,"col":1}', NOW(), NOW()),
(33, 'more expensive', 'static', 26, NULL, '{"table_no":1,"row":3,"col":2}', NOW(), NOW()),
(33, 'side effects', 'static', 27, NULL, '{"table_no":1,"row":3,"col":3}', NOW(), NOW()),
(33, 'stronger', 'static', 28, NULL, '{"table_no":1,"row":4,"col":1}', NOW(), NOW()),
(33, 'healthy', 'static', 29, NULL, '{"table_no":1,"row":4,"col":2}', NOW(), NOW()),
(33, 'patients', 'static', 30, NULL, '{"table_no":1,"row":4,"col":3}', NOW(), NOW());


INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(34, '<b>Questions 27-31</b><br>Re-order the following letters (A-F) to show the sequence of events according to the passage.', 'static', 1, NULL, NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(34, 'A. Timber and petro-chemical industries threatened <br> B. Articles praise hemp as a potential billion dollar crop <br>C. Widespread cultivation of hemp (Example) <br>D. Prohibition of marijuana <br> E. Newspaper articles link hemp to violent crime <br> F. Development of stripping machines', 'static', 2, NULL, NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(34, 'The first one has been done for you as an example.', 'static', 3, '{"image":"images/mockTestImage/reading4-3.png"}', NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(34, '', 'select', 4, 27, '{"options":["A","B","C","D","E","F"]}', NOW(), NOW()),
(34, '', 'select', 5, 28, '{"options":["A","B","C","D","E","F"]}', NOW(), NOW()),
(34, '', 'select', 6, 29, '{"options":["A","B","C","D","E","F"]}', NOW(), NOW()),
(34, '', 'select', 7, 30, '{"options":["A","B","C","D","E","F"]}', NOW(), NOW()),
(34, '', 'select', 8, 31, '{"options":["A","B","C","D","E","F"]}', NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(34, '<b>Questions 32-33</b><br>Complete the following using NO MORE THAN THREE WORDS from the passage.', 'static', 9, NULL, NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(34, '', 'static', 10, NULL, '{"table_no":2,"row":1,"col":1}', NOW(), NOW()),
(34, 'Hemp', 'static', 11, NULL, '{"table_no":2,"row":1,"col":2}', NOW(), NOW()),
(34, 'Marijuana', 'static', 12, NULL, '{"table_no":2,"row":1,"col":3}', NOW(), NOW()),
(34, 'Fibre', 'static', 13, NULL, '{"table_no":2,"row":2,"col":1}', NOW(), NOW()),
(34, 'strong and durable', 'static', 14, NULL, '{"table_no":2,"row":2,"col":2}', NOW(), NOW()),
(34, '___', 'fill_blank', 15, 32, '{"table_no":2,"row":2,"col":3}', NOW(), NOW()),
(34, 'Drug Content', 'static', 16, NULL, '{"table_no":2,"row":3,"col":1}', NOW(), NOW()),
(34, '___', 'fill_blank', 17, 33, '{"table_no":2,"row":3,"col":2}', NOW(), NOW()),
(34, 'up to 10% THC', 'static', 18, NULL, '{"table_no":2,"row":3,"col":3}', NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(34, '<b>Questions 34-39</b><br>From the information given in the passage, classify the following (34-39) as characteristic of:', 'static', 19, NULL, NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(34, 'A. Hemp <br> B. Wood <br> C. Cotton', 'static', 20, NULL, NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(34, 'mildew-resistant', 'select', 21, 34, '{"options":["A","B","C"]}', NOW(), NOW()),
(34, 'dioxin is a by-product of processing', 'select', 22, 35, '{"options":["A","B","C"]}', NOW(), NOW()),
(34, 'can be harvested more than once a year', 'select', 23, 36, '{"options":["A","B","C"]}', NOW(), NOW()),
(34, 'large amounts of fertiliser needed', 'select', 24, 37, '{"options":["A","B","C"]}', NOW(), NOW()),
(34, 'fire-retardant properties', 'select', 25, 38, '{"options":["A","B","C"]}', NOW(), NOW()),
(34, 'requires mild temperature', 'select', 26, 39, '{"options":["A","B","C"]}', NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(34, '<b>Questions 12-13</b><br>Circle the correct answer A-D.', 'static', 27, NULL, NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(34, 'The main purpose of this article is ...', 'mcq', 28, 40, NULL, NOW(), NOW());
INSERT INTO question_options(question_id, text, created_at, updated_at)
VALUES
(517, 'A. to criticise government policy on hemp..', NOW(), NOW()),
(517, 'B. to show the economic benefits of hemp.', NOW(), NOW()),
(517, 'C. to compare hemp and .marijuana.', NOW(), NOW()),
(517, 'D. to promote research into new uses of hemp', NOW(), NOW());

