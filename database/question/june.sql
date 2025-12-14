INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(37, '<b>Questions 1-5</b><br>Circle the correct letter A-C.<br>Example:<br>Andrea is feeling happy because ...<br>A. she’s seen Harry.<br>B. she’s finished her exams.<br>C. she can sleep in.', 'static', 1, NULL, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(37, 'What is Harry’s problem?', 'mcq', 2, 1, NULL, NOW(), NOW()),
(37, 'Which of the items below does Harry want to sell?', 'mcq', 3, 2, '{"image":"images/mockTestImage/listening5-1.png"}', NOW(), NOW()),
(37, 'Where is Harry going to advertise his books for sale?', 'mcq', 4, 3, NULL, NOW(), NOW()),
(37, 'Andrea thinks it is unlikely students will buy the furniture because ...', 'mcq', 5, 4, NULL, NOW(), NOW()),
(37, 'Andrea thinks that a second-hand shop ...', 'mcq', 6, 5, NULL, NOW(), NOW());

INSERT INTO question_options(question_id, text, created_at, updated_at)
VALUES
(519, ' A.  He doesn’t want to sell his things.', NOW(), NOW()),
(519, ' B.  He needs to decide what to do with his possessions.', NOW(), NOW()),
(519, ' C.  He wants to take everything to England.', NOW(), NOW()),
(520, ' A.  A', NOW(), NOW()),
(520, ' B.  B', NOW(), NOW()),
(520, ' C.  C', NOW(), NOW()),
(521, ' A.  In the university bookshop.', NOW(), NOW()),
(521, ' B.  In the student newspaper.', NOW(), NOW()),
(521, ' C.  In the economics department.', NOW(), NOW()),
(522, ' A.  they’re all doing the same thing.', NOW(), NOW()),
(522, ' B.  they live at home.', NOW(), NOW()),
(522, ' C.  it’s the summer vacation.', NOW(), NOW()),
(523, ' A.  may not pay well.', NOW(), NOW()),
(523, ' B.  may not take your goods.', NOW(), NOW()),
(523, ' C.  may only take free goods.', NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(37, '<b>Questions 6-10 </b><br>Complete Harry’s notes using NO MORE THAN TWO WORDS.<h3>THINGS TO DO:</h3>', 'static', 7, NULL, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(37, ' ___ furniture etc. in Trading Post.', 'fill_blank', 8, 6, NULL, NOW(), NOW()),
(37, ' ___ or sell kitchen things.', 'fill_blank', 9, 7, NULL, NOW(), NOW()),
(37, ' Get ___ first from second-hand shop.', 'fill_blank', 10, 8, NULL, NOW(), NOW()),
(37, 'Give clothes to ___ shop.', 'fill_blank', 11, 9, NULL, NOW(), NOW()),
(37, ' ___ fridge and microwave to Andrea.', 'fill_blank', 12, 10, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(38, '<b>Questions 11-20 </b><br>Complete the Fitness Centre brochure using NO MORE THAN TWO WORDS.<h3>Semnoaks - HEALTH & FITNESS CENTRE</h3>', 'static', 1, NULL, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(38, 'Located conveniently at the ___ of Marion Street and Giles Street.', 'fill_blank', 2, 11, NULL, NOW(), NOW()),
(38, '<h4>WE ARE OPEN FOR YOU</h4> Monday - Friday ___am to 9:30 pm.', 'fill_blank', 3, 12, NULL, NOW(), NOW()),
(38, '<p>Saturday 9:00 am to 4:00 pm </p>Sunday 9:00 am to  ___ pm', 'fill_blank', 4, 13, NULL, NOW(), NOW()),
(38, '<h4>WET AREA</h4>Aqua aerobic ___ for all ages and levels.', 'fill_blank', 5, 14, NULL, NOW(), NOW()),
(38, ' ___ lessons on weekday afternoons and weekend mornings.', 'fill_blank', 6, 15, NULL, NOW(), NOW()),
(38, '<h4>SUPER-CIRCUIT CLASSES</h4>A cardio-workout class that is easy to ___', 'fill_blank', 7, 16, NULL, NOW(), NOW()),
(38, '<h4>AEROBIC & STEP CLASSES</h4>Aerobics room holds over 55 participants.<h4>LARGE WELL-EQUIPPED GYM</h4>Have a personal fitness assessment & individual ___ to suit you.', 'fill_blank', 8, 17, NULL, NOW(), NOW()),
(38, '<h4>CARDIO-VASCULAR ROOM</h4>Use the treadmills, bikes and steppers to burn fat, increase fitness, warm up.<br>Watch your favourite ___ while you exercise.', 'fill_blank', 9, 18, NULL, NOW(), NOW()),
(38, '<h4>TWO FOR ONE SPECIAL MEMBERSHIP PLUS ___ TRIAL OFFER</h4>', 'fill_blank', 10, 19, NULL, NOW(), NOW()),
(38, 'ONLY $110 each for a whole ___ months! Get ready for summer.<h3>HURRY, OFFER ENDS SOON!</h3>', 'fill_blank', 11, 20, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(39, '<b>Questions 21-25</b><br>Complete the notes below using ONE WORD ONLY.<h3>THE CANADIAN FOOD MARKET</h3>', 'static', 1, NULL, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(39, 'Understanding subtle  ___ between the Canadian and United States food sectors is important for successful food marketing.', 'fill_blank', 2, 21, NULL, NOW(), NOW()),
(39, 'Canada has many different ethnic groups: e.g. Toronto has large ___ and Asian populations.', 'fill_blank', 3, 22, NULL, NOW(), NOW()),
(39, 'Growth of ethnic specialities of Mediterranean, Caribbean, South East Asian and ___ foods', 'fill_blank', 4, 23, NULL, NOW(), NOW()),
(39, 'Therefore demand is increasing for new ___  to prepare these foods plus condiments and sauces', 'fill_blank', 5, 24, NULL, NOW(), NOW()),
(39, '80% of Canadian market controlled by 8 major national chains <p> Seminar to compare Canadian food trends with ___ and UK.</p>', 'fill_blank', 6, 25, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(39, '<b>Questions 21-25</b><br>Complete the notes below using ONE WORD ONLY.<h3>RETAIL FOOD SECTOR</h3>', 'static', 7, NULL, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(39, 'TREND', 'static', 8, NULL, '{"table_no":1,"row":1,"col":1}', NOW(), NOW()),
(39, 'COMMENTS', 'static', 9, NULL, '{"table_no":1,"row":1,"col":2}', NOW(), NOW()),

(39, 'INTEREST IN HEALTHY FOOD', 'static', 10, NULL, '{"table_no":1,"row":2,"col":1}', NOW(), NOW()),
(39, 'Salads are the third most commonly eaten food in Canadian ___', 'fill_blank', 11, 26, '{"table_no":1,"row":2,"col":2}', NOW(), NOW()),

(39, '', 'static', 12, NULL, '{"table_no":1,"row":3,"col":1}', NOW(), NOW()),
(39, 'Most shoppers check ___ and nutritional information', 'fill_blank', 13, 27, '{"table_no":1,"row":3,"col":2}', NOW(), NOW()),

(39, 'NEW WAY OF LABELLING MEAT', 'static', 14, NULL, '{"table_no":1,"row":4,"col":1}', NOW(), NOW()),
(39, 'Labelled according to ___ technique e.g. simmering steak', 'fill_blank', 15, 28, '{"table_no":1,"row":4,"col":2}', NOW(), NOW()),

(39, 'MOBILE MEALS', 'static', 16, NULL, '{"table_no":1,"row":5,"col":1}', NOW(), NOW()),
(39, 'More meals eaten away from home. ___ increase in sales of snacks projected over next 3 years', 'fill_blank', 17, 29, '{"table_no":1,"row":5,"col":2}', NOW(), NOW()),

(39, '', 'static', 18, NULL, '{"table_no":1,"row":6,"col":1}', NOW(), NOW()),
(39, 'Growth in ___ snacks such as muesli bars', 'fill_blank', 19, 30, '{"table_no":1,"row":6,"col":2}', NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(40, '<b>Questions 31-40 </b><br>Complete the sentences below <b> USING NO MORE THAN TWO WORDS OR A NUMBER </b>', 'static', 1, NULL, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(40, '<p>PUBLIC SPEAKING</p>Public speaking means speaking to ___ people.', 'fill_blank', 2, 31, NULL, NOW(), NOW()),
(40, 'There are two types of cover, but the best cover is offered with the ___ Star policy.', 'fill_blank', 3, 32, NULL, NOW(), NOW()),

(40, '<p>A. PLANNING</p>First part of public speaking is ___ .', 'fill_blank', 4, 33, NULL, NOW(), NOW()),
(40, 'This includes ___ and length of talk', 'fill_blank', 5, 34, NULL, NOW(), NOW()),
(40, 'Make speech notes on small cards to talk from. ___ with the audience (very important)', 'fill_blank', 6, 35, NULL, NOW(), NOW()),

(40, '<p>B. VOICE</p>Speak slowly - this gives time for pronunciation and is easier for audience.bigger audience requires ___ speech', 'fill_blank', 7, 36, NULL, NOW(), NOW()),
(40, 'Project your voice - rehearse and ___', 'fill_blank', 8, 37, NULL, NOW(), NOW()),
(40, 'Check intonation: varied tone and rhythm give ___', 'fill_blank', 20, 38, NULL, NOW(), NOW()),

(40, '<p>C. BODY LANGUAGE</p>Lastly, think about your ___ and gestures.Show confidence by: head up, chin out, shoulders back', 'fill_blank', 9, 39, NULL, NOW(), NOW()),
(40, 'Avoid scratching and fiddling because this ___ and irritates your audience', 'fill_blank', 10, 40, NULL, NOW(), NOW());



INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(41, '<b>Questions 1-3</b><br>Answer the following questions using NO MORE THAN THREE WORDS from the passage.', 'static', 1, NULL, NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(41, 'How old was Juliane at the time of the crash? ___ ', 'fill_blank', 2, 1, NULL, NOW(), NOW()),
(41, 'What is her occupation now? ___ ', 'fill_blank', 3, 2, NULL, NOW(), NOW()),
(41, 'What was the cause of the plane crash? ___ ', 'fill_blank', 4, 3, NULL, NOW(), NOW());


INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(41, '<b>Questions 4-10</b><br>Choose the correct letter A-D.', 'static', 5, NULL, NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(41, 'What happened to the plane?', 'mcq', 5, 4, NULL, NOW(), NOW()),
(41, 'Which of the following did NOT help to slow her fall?', 'mcq', 6, 5, NULL, NOW(), NOW()),
(41, 'Which of the following injuries did she sustain?', 'mcq', 7, 6, NULL, NOW(), NOW()),
(41, 'What, helped her to survive', 'mcq', 8, 7, NULL, NOW(), NOW()),
(41, 'What was the biggest threat to her survival?', 'mcq', 9, 8, NULL, NOW(), NOW()),
(41, 'How long was she lost in the jungle?', 'mcq', 10, 9, NULL, NOW(), NOW()),
(41, 'How was she finally rescued?', 'mcq', 11, 10, NULL, NOW(), NOW());



INSERT INTO question_options(question_id, text, created_at, updated_at)
VALUES
(576, 'A. It broke apart in the air.', NOW(), NOW()),
(576, 'B. It hit trees and exploded..', NOW(), NOW()),
(576, 'C. It crashed into a mountainside..', NOW(), NOW()),
(576, 'D. It hit the ground and burst into flames.', NOW(), NOW()),
(577, 'A. an updraft caused by storm clouds.', NOW(), NOW()),
(577, 'B. hitting vines.', NOW(), NOW()),
(577, 'C. the section of seats to which she was attached.', NOW(), NOW()),
(577, 'D. a parachute.', NOW(), NOW()),
(578, 'A. a broken foot.', NOW(), NOW()),
(578, 'B. a broken arm.', NOW(), NOW()),
(578, 'C. concussion.', NOW(), NOW()),
(578, 'D. cuts on her head.', NOW(), NOW()),
(579, 'A. Knowledge of the jungle.', NOW(), NOW()),
(579, 'B. a map showing the location of the river.', NOW(), NOW()),
(579, 'C. appropriate clothing and shoes.', NOW(), NOW()),
(579, 'D. food supplies from the plane.', NOW(), NOW()),
(580, 'A. infected wounds.', NOW(), NOW()),
(580, 'B. sting rays.', NOW(), NOW()),
(580, 'C. starvation.', NOW(), NOW()),
(580, 'D. crocodiles.', NOW(), NOW()),
(581, 'A. 3 days.', NOW(), NOW()),
(581, 'B. 5 days.', NOW(), NOW()),
(581, 'C. 10 days.', NOW(), NOW()),
(581, 'D. 15 days.', NOW(), NOW()),
(582, 'A. A search party found her in the jungle..', NOW(), NOW()),
(582, 'B. Native hunters found her..', NOW(), NOW()),
(582, 'C. She signaled to a plane from the river..', NOW(), NOW()),
(582, 'D. She reached a campsite along the river.', NOW(), NOW());


INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(41, '<b>Questions 11-14</b><br><b>TRUE.</b>	if the statement agrees with the information<br><b>FALSE.</b>	if the statement contradicts the information<br><b>NOT GIVEN.</b>	If there is no information on this', 'static', 12, NULL, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(41, 'Other survivors of the crash were found in the jungle.', 'select', 13, 11, '{"options":["TRUE","FALSE","NOT GIVEN"]}', NOW(), NOW()),
(41, 'Juliane was upset when she re-visited the crash site.', 'select', 14, 12, '{"options":["TRUE","FALSE","NOT GIVEN"]}', NOW(), NOW()),
(41, 'Wings of Hope is the name given to a memorial statue.', 'select', 15, 13, '{"options":["TRUE","FALSE","NOT GIVEN"]}', NOW(), NOW()),
(41, 'Juliane suffered nightmares for many years as a result of her experience.', 'select', 16, 14, '{"options":["TRUE","FALSE","NOT GIVEN"]}', NOW(), NOW());


INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(42, '<b>Questions 15-19</b><br>Classify the following as relating to:<br> A. the silk of bombyx mori <br> B.	dragline silk of nephila clavipes<br>C.	capture silk of nephila clavipes', 'static', 1, NULL, NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(42, 'EXAMPLE', 'static', 2, NULL, '{"table_no":1,"row":1,"col":1}', NOW(), NOW()),
(42, 'ANSWER', 'static', 3, NULL, '{"table_no":1,"row":1,"col":2}', NOW(), NOW()),
(42, 'forms the cocoon', 'static', 4, NULL, '{"table_no":1,"row":2,"col":1}', NOW(), NOW()),
(42, 'A', 'static', 5, NULL, '{"table_no":1,"row":2,"col":2}', NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(42, 'forms the framework of a web', 'select', 6, 15, '{"options":["A","B","C"]}', NOW(), NOW()),
(42, 'most elastic silk', 'select', 7, 16, '{"options":["A","B","C"]}', NOW(), NOW()),
(42, 'allows predator to drop quickly', 'select', 8, 17, '{"options":["A","B","C"]}', NOW(), NOW()),
(42, 'single strand can be up to 900 metres long', 'select', 9, 18, '{"options":["A","B","C"]}', NOW(), NOW()),
(42, 'strongest silk', 'select', 10, 19, '{"options":["A","B","C"]}', NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(42, '<b>Questions 20-24</b><br><b>TRUE.</b>	if the statement agrees with the information<br><b>FALSE.</b>	if the statement contradicts the information<br><b>NOT GIVEN.</b>	If there is no information on this', 'static', 11, NULL, NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(42, 'All spiders secrete silk.', 'select', 12, 20, '{"options":["TRUE","FALSE","NOT GIVEN"]}', NOW(), NOW()),
(42, 'Artificial genes for spider silk have been produced.', 'select', 13, 21, '{"options":["TRUE","FALSE","NOT GIVEN"]}', NOW(), NOW()),
(42, 'Spider silk protein occurs naturally in goats’ milk.', 'select', 14, 22, '{"options":["TRUE","FALSE","NOT GIVEN"]}', NOW(), NOW()),
(42, 'China is leading research efforts in the area of spider silk.', 'select', 15, 23, '{"options":["TRUE","FALSE","NOT GIVEN"]}', NOW(), NOW()),
(42, 'Spider silk is now being produced commercially.', 'select', 16, 24, '{"options":["TRUE","FALSE","NOT GIVEN"]}', NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(42, '<b>Questions 25-27</b><br>Using NO MORE THAN THREE WORDS from the passage for each answer, complete the following.', 'static', 17, NULL, NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(42, '<3>Comparison of Synthetic and Natural Fibres</h3>Main problem in the production of synthetic fibres: ___ ', 'fill_blank', 18, 25, NULL, NOW(), NOW()),
(42, '3 disadvantages of natural fibres: ___ ', 'fill_blank', 19, 26, NULL, NOW(), NOW()),
(42, 'Proportion of clothing made from natural fibre: ___ ', 'fill_blank', 20, 27, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(43, '<b>Questions 28-31</b><br>Complete the summary..<br>Choose your answers from the box below the summary.<h3>List of Words</h3>', 'static', 1, NULL, NULL, NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(43, 'axis', 'static', 2, NULL, '{"table_no":2,"row":1,"col":1}', NOW(), NOW()),
(43, 'estimate', 'static', 3, NULL, '{"table_no":2,"row":1,"col":2}', NOW(), NOW()),
(43, 'perspective', 'static', 4, NULL, '{"table_no":2,"row":1,"col":3}', NOW(), NOW()),

(43, 'map', 'static', 5, NULL, '{"table_no":2,"row":2,"col":1}', NOW(), NOW()),
(43, 'direction', 'static', 6, NULL, '{"table_no":2,"row":2,"col":2}', NOW(), NOW()),
(43, 'compare', 'static', 7, NULL, '{"table_no":2,"row":2,"col":3}', NOW(), NOW()),

(43, 'size', 'static', 8, NULL, '{"table_no":2,"row":3,"col":1}', NOW(), NOW()),
(43, 'judge', 'static', 9, NULL, '{"table_no":2,"row":3,"col":2}', NOW(), NOW()),
(43, 'accurately', 'static', 10, NULL, '{"table_no":2,"row":3,"col":3}', NOW(), NOW()),

(43, 'angle', 'static', 11, NULL, '{"table_no":2,"row":4,"col":1}', NOW(), NOW()),
(43, 'distances', 'static', 12, NULL, '{"table_no":2,"row":4,"col":2}', NOW(), NOW()),
(43, 'models', 'static', 13, NULL, '{"table_no":2,"row":4,"col":3}', NOW(), NOW()),

(43, 'projection', 'static', 14, NULL, '{"table_no":2,"row":5,"col":1}', NOW(), NOW()),
(43, 'change', 'static', 15, NULL, '{"table_no":2,"row":5,"col":2}', NOW(), NOW()),
(43, '', 'static', 16, NULL, '{"table_no":2,"row":5,"col":3}', NOW(), NOW());

INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(43, 'There are more words than you will need to fill the gaps.', 'static', 17, NULL, NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(43, 'For four centuries, map makers have been trying to convert three-dimensional information as accurately (example) as possible onto a two-dimensional plane. However, each method of ___ involves a compromise.', 'fill_blank', 18, 28, NULL, NOW(), NOW()),
(43, 'Thus Mercator’s projection indicates true north and south, known as fidelity of ___ ,but misrepresents the relative size of countries.', 'fill_blank', 19, 29, NULL, NOW(), NOW()),
(43, 'To avoid this distortion, other cartographers rounded the lines of latitude and longitude. Dr. Peters felt that such maps presented a first-world ___ ', 'fill_blank', 20, 30, NULL, NOW(), NOW()),
(43, 'His map, with equal area projection, enables us to  ___ the size of one country with another.', 'fill_blank', 21, 31, NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(43, '<b>Questions 32-36</b><br>Use the information in the text to match the map projections [M A P] with the characteristics listed below.<br>M.	Mercator projection	<br> A.	Aitoff projection<br>P.	Peters projection<br>Example<br>designed for the needs of early navigators M', 'static', 22, NULL, NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(43, 'makes Europe seem larger than it is', 'select', 23, 32, '{"options":["M","A","P"]}', NOW(), NOW()),
(43, 'maximum distortions at the poles', 'select', 24, 33, '{"options":["M","A","P"]}', NOW(), NOW()),
(43, 'maintains greatest accuracy at 45 degrees latitude', 'select', 25, 34, '{"options":["M","A","P"]}', NOW(), NOW()),
(43, 'most distorts the position of the equator', 'select', 26, 35, '{"options":["M","A","P"]}', NOW(), NOW()),
(43, 'more accurately represents country shapes and sizes', 'select', 27, 36, '{"options":["M","A","P"]}', NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(43, '<b>Questions 37-39</b><br>Choose one drawing (A-D) to match each of the three projection types (37-39).', 'static', 28, NULL, NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(43, '', 'static', 29, NULL, '{"image":"images/mockTestImage/reading5-3-1.png"}', NOW(), NOW()),
(43, '', 'static', 30, NULL, '{"image":"images/mockTestImage/reading5-3-2.png"}', NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(43, 'There are more drawings than names so you will not use all of them.', 'static', 31, NULL, NULL, NOW(), NOW());
INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(43, 'Mercator projection', 'select', 32, 37, '{"options":["A","B","C","D"]}', NOW(), NOW()),
(43, 'Aitoff projection', 'select', 33, 38, '{"options":["A","B","C","D"]}', NOW(), NOW()),
(43, 'Peters projection', 'select', 34, 39, '{"options":["A","B","C","D"]}', NOW(), NOW());


INSERT INTO questions (question_group_id, text, type, order_no, question_no, meta_data, created_at, updated_at)
VALUES
(43, 'The main point made by the writer of this article is that we need to ...', 'mcq', 35, 40, NULL, NOW(), NOW());


INSERT INTO question_options(question_id, text, created_at, updated_at)
VALUES
(642, ' A.  understand maps.', NOW(), NOW()),
(642, ' B.  understand map-making', NOW(), NOW()),
(642, ' C.  understand that maps are not objective.', NOW(), NOW()),
(642, ' D.  understand the importance of latitude and longitude.', NOW(), NOW());
