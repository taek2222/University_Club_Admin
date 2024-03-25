-- TYPE 데이터
INSERT INTO type (field) VALUES ('공연');
INSERT INTO type (field) VALUES ('체육');
INSERT INTO type (field) VALUES ('취미');
INSERT INTO type (field) VALUES ('종교');
INSERT INTO type (field) VALUES ('봉사');
INSERT INTO type (field) VALUES ('기타');

-- 동아리
INSERT INTO club (club_id, club_name, type_id) VALUES (1, '총동연', 6);

INSERT INTO club (club_id, club_name, type_id) VALUES (2, '루시우스', 1);
INSERT INTO club (club_id, club_name, type_id) VALUES (3, '페르마타', 1);
INSERT INTO club (club_id, club_name, type_id) VALUES (4, '프레이즈', 1);
INSERT INTO club (club_id, club_name, type_id) VALUES (5, 'OST', 1);
INSERT INTO club (club_id, club_name, type_id) VALUES (6, '뉴를리', 1);

INSERT INTO club (club_id, club_name, type_id) VALUES (7, '스핀', 2);
INSERT INTO club (club_id, club_name, type_id) VALUES (9,'핀액션', 2);

INSERT INTO club (club_id, club_name, type_id) VALUES (12, '해시태그', 3);
INSERT INTO club (club_id, club_name, type_id) VALUES (14, '보드홀릭', 3);

INSERT INTO club (club_id, club_name, type_id) VALUES (17, 'CCC', 4);
INSERT INTO club (club_id, club_name, type_id) VALUES (18, 'JDM', 4);

INSERT INTO club (club_id, club_name, type_id) VALUES (19, 'GHOST', 5);
INSERT INTO club (club_id, club_name, type_id) VALUES (20, 'ROTC', 5);

-- 동아리 속성
INSERT INTO property (club_id, image_url, icon_url) VALUES (1, '1_2.JPG', '1_1.png');
INSERT INTO property (club_id, image_url, icon_url) VALUES (2, '2_2.jpeg', '2_1.jpeg');
INSERT INTO property (club_id, image_url, icon_url) VALUES (3, 'feed_test.png', 'feed_test.png');
INSERT INTO property (club_id, image_url, icon_url) VALUES (4, 'feed_test.png', 'feed_test.png');
INSERT INTO property (club_id, image_url, icon_url) VALUES (5, 'feed_test.png', 'feed_test.png');
INSERT INTO property (club_id, image_url, icon_url) VALUES (6, 'feed_test.png', 'feed_test.png');
INSERT INTO property (club_id, image_url, icon_url) VALUES (7, 'feed_test.png', 'feed_test.png');
INSERT INTO property (club_id, image_url, icon_url) VALUES (9, 'feed_test.png', 'feed_test.png');
INSERT INTO property (club_id, image_url, icon_url) VALUES (12, '12_2.jpg', '12_1.png');
INSERT INTO property (club_id, image_url, icon_url) VALUES (14, '14_2.jpg', '14_1.png');
INSERT INTO property (club_id, image_url, icon_url) VALUES (17, 'feed_test.png', 'feed_test.png');
INSERT INTO property (club_id, image_url, icon_url) VALUES (18, 'feed_test.png', 'feed_test.png');
INSERT INTO property (club_id, image_url, icon_url) VALUES (19, 'feed_test.png', 'feed_test.png');
INSERT INTO property (club_id, image_url, icon_url) VALUES (20, 'feed_test.png', 'feed_test.png');

-- 동아리 태그
INSERT INTO tags (club_id, tag) VALUES (1, '축제 협회'), (1, '안내 부스');
INSERT INTO tags (club_id, tag) VALUES (2, '대학응원단'), (2, '루시우스');
INSERT INTO tags (club_id, tag) VALUES (3, '테스트2'), (3, '테스트2');
INSERT INTO tags (club_id, tag) VALUES (4, '테스트1'), (4, '테스트2');
INSERT INTO tags (club_id, tag) VALUES (5, '테스트2'), (5, '테스트2');
INSERT INTO tags (club_id, tag) VALUES (6, '테스트1'), (6, '테스트2');
INSERT INTO tags (club_id, tag) VALUES (7, '테스트2'), (7, '테스트2');
INSERT INTO tags (club_id, tag) VALUES (9, '테스트2'), (9, '테스트2');
INSERT INTO tags (club_id, tag) VALUES (12, '사진'), (12, '출사');
INSERT INTO tags (club_id, tag) VALUES (14, '보드게임'), (14, '모두 모여라!');
INSERT INTO tags (club_id, tag) VALUES (17, '테스트2'), (17, '테스트2');
INSERT INTO tags (club_id, tag) VALUES (18, '테스트1'), (18, '테스트2');
INSERT INTO tags (club_id, tag) VALUES (19, '테스트2'), (19, '테스트2');
INSERT INTO tags (club_id, tag) VALUES (20, '테스트2'), (20, '테스트2');

-- 동아리 모달
INSERT INTO modal (club_id, contents, title, location_url) values (1, '안녕하세요, 강릉원주대학교 동아리 연합회입니다! 우리 캠퍼스의 다양한 동아리들을 한눈에 볼 수 있는 특별한 기회, 동아리 부스 행사가 곧 열립니다! 새학기를 맞이하여, 새로운 사람들을 만나고, 다양한 동아리를 경험하고 싶은 분들을 위한 완벽한 기회입니다. 🎈\n \n *📅 행사 일시:* \n2024년 3월 15일 (금) 10:00 ~ 16:00\n \n *📍장소:* 대학교 중앙 광장\n \n *🎪 행사 내용:* \n동아리 소개 부스: 각 동아리의 활동 내용, 연간 계획, 가입 방법 등을 소개합니다.\n라이브 공연: 음악, 댄스, 극단 동아리들의 생동감 넘치는 라이브 공연을 즐길 수 있습니다.\n체험 활동: 다양한 동아리가 준비한 체험 활동을 통해 새로운 취미와 재능을 발견해 보세요.\nQ&A 세션: 동아리 회원들과 직접 대화하며 궁금한 점을 해소할 수 있습니다.\n \n*👥 참가 방법:*\n사전 등록: 행사 참여를 원하시는 분들은 사전에 대학교 동아리 연합회 홈페이지를 통해 등록해 주세요. 사전 등록자에게는 소정의 기념품을 드립니다!\n현장 참여: 사전 등록 없이 행사 당일 현장을 방문하여 참여할 수도 있습니다.\n \n*🎁 특별 이벤트:* \n인스타그램 이벤트: 행사 당일 #대학교동아리연합회 해시태그와 함께 인스타그램에 사진을 올리면 추첨을 통해 소정의 상품을 드립니다.\n스탬프 랠리: 행사 참여 동아리 부스를 방문하고 스탬프를 모으세요! 모든 스탬프를 모은 참가자에게는 특별한 선물이 기다립니다.\n \n*🔔 주의 사항:*\n모든 참가자는 행사장 내에서 마스크 착용을 비롯한 코로나19 방역 수칙을 준수해 주시기 바랍니다.\n행사장 내에서는 음식물 섭취가 제한됩니다.\n \n이번 동아리 부스 행사는 여러분이 새로운 사람들을 만나고, 관심 있는 분야를 탐색할 수 있는 절호의 기회입니다. 다양한 동아리와 그 멤버들과의 만남을 통해 대학 생활을 더욱 풍부하게 만들어 보세요! 우리 모두 그날 광장에서 만나요! 🎊', '⭐️총동연⭐️', '1_map.png');
INSERT INTO modal (club_id, contents, title) values (2, '안녕하세요! 👋 \n 치어리딩 동아리 *''루시우스''* 입니다! \n \n 이번에 신입단원과 함께 한 페이지가 될 수 있게 곡을 치어리딩으로 변화시켜 준비했습니다! \n \n 부족한 점이 있을 수도 있겠지만 24년도 첫 무대인 만큼 많은 호응과 격려, 관심 부탁드립니다 ✨ \n \n  공연 일정은 아래 *🗓️행사 일정*을 참고해주세요! \n \n  감사합니다 👋 ', '🎈 치어리딩 루시우스 공연 많관부 🤍');
INSERT INTO modal (club_id, contents, title) values (3, '테스트_제목', '테스트_내용');
INSERT INTO modal (club_id, contents, title, location_url) values (4, '테스트_제목', '테스트_내용', '4_map.png');
INSERT INTO modal (club_id, contents, title, location_url) values (5, '테스트_제목', '테스트_내용', '5_map.png');
INSERT INTO modal (club_id, contents, title) values (6, '테스트_제목', '테스트_내용');
INSERT INTO modal (club_id, contents, title, location_url) values (7, '테스트_제목', '테스트_내용', '7_map.png');
INSERT INTO modal (club_id, contents, title, location_url) values (9, '테스트_제목', '테스트_내용', '9_map.png');
INSERT INTO modal (club_id, contents, title, location_url) values (12, '안녕하세요! 사진 동아리 *''해시태그''*입니다! \n \n *🎈행사 내용* \n 해시태그가 찍은 학교 속 사진과 같은 장소를 찾아 사진을 찍어오기! \n \n 학교 예시 사진은 부스에서 보실 수 있습니다! \n \n 찍어오신 사진 & 사진첩의 원하는 사진을 인화해 드립니다!', '📸 순간포착 학교에 이런곳이?!', '12_map.png');
INSERT INTO modal (club_id, contents, title, location_url) values (14, '안녕하세요! \n 강릉원주대학교 동아리 *''보드홀릭''*입니다! \n \n 저희 동아리 부스 행사에 참여하셔서 준비한 게임 \n *🕹️복불복 꼬치의 달인* \n *🕹악어 룰렛* \n *🕹카지노 블랙잭* \n 체험하고 가세요! \n \n *🍯 꿀잼* 보장합니다! \n 감사합니다. 👋', '🎲 보드홀릭 🧩', '14_map.png');
INSERT INTO modal (club_id, contents, title, location_url) values (17, '테스트_제목', '테스트_내용', '17_map.png');
INSERT INTO modal (club_id, contents, title, location_url) values (18, '테스트_제목', '테스트_내용', '18_map.png');
INSERT INTO modal (club_id, contents, title, location_url) values (19, '테스트_제목', '테스트_내용', '19_map.png');
INSERT INTO modal (club_id, contents, title, location_url) values (20, '테스트_제목', '테스트_내용', '20_map.png');

-- 동아리 모달 이미지
INSERT INTO modal_image (club_id, url) values (1, '1_1.JPG'), (1, '1_2.JPG'), (1, '1_3.JPG');
INSERT INTO modal_image (club_id, url) values (2, '2_1.jpeg'), (2, '2_2.jpeg'), (2, '2_3.jpeg');
INSERT INTO modal_image (club_id, url) values (3, '0_1.png');
INSERT INTO modal_image (club_id, url) values (4, '0_1.png');
INSERT INTO modal_image (club_id, url) values (5, '0_1.png');
INSERT INTO modal_image (club_id, url) values (6, '0_1.png');
INSERT INTO modal_image (club_id, url) values (7, '0_1.png');
INSERT INTO modal_image (club_id, url) values (9, '0_1.png');
INSERT INTO modal_image (club_id, url) values (12, '12_1.jpg');
INSERT INTO modal_image (club_id, url) values (14, '14_1.jpg');
INSERT INTO modal_image (club_id, url) values (17, '0_1.png');
INSERT INTO modal_image (club_id, url) values (18, '0_1.png');
INSERT INTO modal_image (club_id, url) values (19, '0_1.png');
INSERT INTO modal_image (club_id, url) values (20, '0_1.png');

-- 동아리 좋아요 수
INSERT INTO initial_likes(club_id, initial_likes) values (1, 0);
INSERT INTO initial_likes(club_id, initial_likes) values (2, 0);
INSERT INTO initial_likes(club_id, initial_likes) values (3, 0);
INSERT INTO initial_likes(club_id, initial_likes) values (4, 0);
INSERT INTO initial_likes(club_id, initial_likes) values (5, 0);
INSERT INTO initial_likes(club_id, initial_likes) values (6, 0);
INSERT INTO initial_likes(club_id, initial_likes) values (7, 0);
INSERT INTO initial_likes(club_id, initial_likes) values (9, 0);
INSERT INTO initial_likes(club_id, initial_likes) values (12, 0);
INSERT INTO initial_likes(club_id, initial_likes) values (14, 0);
INSERT INTO initial_likes(club_id, initial_likes) values (17, 0);
INSERT INTO initial_likes(club_id, initial_likes) values (18, 0);
INSERT INTO initial_likes(club_id, initial_likes) values (19, 0);
INSERT INTO initial_likes(club_id, initial_likes) values (20, 0);

-- 메모 실험용 데이터
INSERT INTO memo (memo_id, major, class_of, anonymous, student_name, content, color, confirm) values (101, '컴퓨터공학과', '20191758', false, '유재현', '해시태그 화이팅!', 'bg-red-200', true);
INSERT INTO memo (memo_id, major, class_of, anonymous, student_name, content, color, confirm) values (102, '유아교육과', '10000000', false, '카리나', '응원문구 테스트1', 'bg-yellow-100', true);
INSERT INTO memo (memo_id, major, class_of, anonymous, student_name, content, color, confirm) values (103, '간호학과', '20000000', false, '윈터', '응원문구 테스트2', 'bg-orange-200', true);
INSERT INTO memo (memo_id, major, class_of, anonymous, student_name, content, color, confirm) values (104, '산업경영공학과', '30000000', false, '지젤', '응원문구 테스트3', 'bg-green-100', false);
INSERT INTO memo (memo_id, major, class_of, anonymous, student_name, content, color, confirm) values (105, '자동차공학과', '40000000', false, '닝닝', '응원문구 테스트4', 'bg-teal-100', false);
INSERT INTO memo (memo_id, major, class_of, anonymous, student_name, content, color, confirm) values (106, '기계공학과', '50000000', false, '김채원', '응원문구 테스트5', 'bg-cyan-100', true);
INSERT INTO memo (memo_id, major, class_of, anonymous, student_name, content, color, confirm) values (107, '사회복지학과', '60000000', false, '카즈하', '응원문구 테스트6', 'bg-indigo-200', true);
INSERT INTO memo (memo_id, major, class_of, anonymous, student_name, content, color, confirm) values (108, '전기공학과', '70000000', false, '홍은채', '응원문구 테스트7', 'bg-violet-200', false);
INSERT INTO memo (memo_id, major, class_of, anonymous, student_name, content, color, confirm) values (109, '다문화학과', '80000000', false, '장원영', '응원문구 테스트8', 'bg-purple-200', false);
INSERT INTO memo (memo_id, major, class_of, anonymous, student_name, content, color, confirm) values (1010, '멀티미디어학과', '90000000', false, '안유진', '응원문구 테스트9', 'bg-fuchsia-200', true);

-- 가입 신청 동아리
INSERT INTO join_table(club_id, icon_image, title) values (1, '1.png', '2024년도 총동아리연합회 \n 🎉신입생 모집 안내🎉');
INSERT INTO join_table(club_id, icon_image, title) values (2, '2.jpeg', '17기 치어리딩 동아리 \n 📣루시우스📣 단원모집'); -- 추가

-- 가입 경로 ( 네이버, 구글, 카카오, 인스타 )
INSERT INTO join_paths(club_id, path) values (1, true), (1, false), (1, false), (1, true);
INSERT INTO join_paths(club_id, path) values (2, false), (2, false), (2, true), (2, true); -- 추가

-- 가입 기간
INSERT INTO term(club_id, start_date, end_date) values (1, '2024-03-08', '2024-04-12');
INSERT INTO term(club_id, start_date, end_date) values (2, '2023-03-08', '2024-04-12'); -- 추가
-- 가입 모달 내용
INSERT INTO join_modal(club_id, contents) values (1, '안녕하십니까, 제39대 총동아리연합회 ''EUM''입니다. \n \n 총동아리연합회 2024학년도 부원을 모집합니다.\n \n *📋모집 대상* \n-2024년 강릉원주대학교 원주캠퍼스 신입생 \n \n *📆모집 기간* \n -1차 서류 접수 기간 : 3월 11일(월) ~ 3월 15일(금) \n -2차 대면 면접 : 추후 개별 연락 \n \n 1차 서류 지원서는 모집 공고에 첨부된 QR 및 URL을 통해 네이버 폼으로 작성 부탁드립니다!');
INSERT INTO join_modal(club_id, contents) values (2, '안녕하세요. \n *강릉원주대학교 원주캠퍼스 치어리딩 동아리 루시우스*입니다! \n 새학기를 맞이하여 24년도 17기 루시우스 신입단원을 모집합니다. \n 무대 경험이 없어도, 춤을 잘 추지 못해도 한번 쯤 치어리딩 해보고 싶으셨다면 모두 환영입니다 🤗 \n \n 저희 루시우스는 \n *1️⃣ 액션 치어리딩 연습합니다!* \n *2️⃣ 기본 동작 알려드립니다!* \n *3️⃣ 안무는 같이 연습합니다!* \n \n - 지원 방법은 포스터에 기재된 방법대로 지원하시면 됩니다. \n *🙅🏻‍♀️면접 & 오디션은 따로 없습니다🙅🏻‍♀️* \n \n 루시우스에서 같이 좋은 추억 만들어 가셨으면 좋겠습니다. 🫶🏻 \n 많은 지원 부탁드립니다. \n 인스타: gwnu.lucius \n \n *17기 루시우스 🌙*'); -- 추가

-- 가입 모달 이미지
INSERT INTO join_modal_image(club_id, url) values (1, '1_1.JPG'), (1, '1_2.JPG');
INSERT INTO join_modal_image(club_id, url) values (2, '2_1.jpeg'), (2, '2_2.jpeg'), (2, '2_3.jpeg'), (2, '2_4.jpeg'); -- 추가

-- 가입 모달 Url
INSERT INTO join_paths_url(club_id, url) values (1, 'https://form.naver.com/response/JEMUf_nDTieSnZ3QUEJr8w'), (1, 'false'), (1, 'false'), (1, 'https://www.instagram.com/gwnu_eum_wonju?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==');
INSERT INTO join_paths_url(club_id, url) values (2, 'false'), (2, 'false'), (2, 'https://open.kakao.com/o/suF9FQ6f'), (2, 'https://www.instagram.com/gwnu.lucius?igsh=YXJkemI4MGR6YzBx'); -- 추가

-- 부스 동아리 day1
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (1, 1, '1_1.png', '', 1, '중앙부스', 'booth', '2024-04-01 10:00', '2024-04-01 18:00', '운영중');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (2, 4, '1_1.png', '', 1, '중앙부스', 'booth', '2024-04-01 10:00', '2024-04-01 18:00', '종료');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (3, 5, '1_1.png', '', 1, '중앙부스', 'booth', '2024-04-01 10:00', '2024-04-01 18:00', '혼잡');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (4, 7, '1_1.png', '', 1, '체육관', 'booth', '2024-04-01 10:00', '2024-04-01 18:00', '운영중');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (5, 9, '1_1.png', '', 1, '중앙부스', 'booth', '2024-04-01 10:00', '2024-04-01 18:00', '조기마감');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (6, 12, '1_1.png', '12.jpg', 1, '중앙부스', 'booth', '2024-04-01 10:00', '2024-04-01 18:00', '일시중지');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (7, 14, '1_1.png', '', 1, '중앙부스', 'booth', '2024-04-01 10:00', '2024-04-01 18:00', '조기마감');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (8, 17, '1_1.png', '', 1, '중앙부스', 'booth', '2024-04-01 10:00', '2024-04-01 18:00', '운영중');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (9, 18, '1_1.png', '', 1, '중앙부스', 'booth', '2024-04-01 10:00', '2024-04-01 18:00', '운영중');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (10, 19, '1_1.png', '', 1, '중앙부스', 'booth', '2024-04-01 10:00', '2024-04-01 18:00', '조기마감');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (11, 20, '1_1.png', '', 1, '중앙부스', 'booth', '2024-04-01 10:00', '2024-04-01 18:00', '일시중지');

-- -- 부스 동아리 day2
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (12, 1, '1_1.png', '', 1, '중앙부스', 'booth', '2024-04-02 10:00', '2024-04-02 18:00', '운영중');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (13, 4, '1_1.png', '', 1, '중앙부스', 'booth', '2024-04-02 10:00', '2024-04-02 18:00', '운영중');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (14, 5, '1_1.png', '', 1, '중앙부스', 'booth', '2024-04-02 10:00', '2024-04-02 18:00', '운영중');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (15, 7, '1_1.png', '', 1, '체육관', 'booth', '2024-04-02 10:00', '2024-04-02 18:00', '운영중');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (16, 9, '1_1.png', '', 1, '중앙부스', 'booth', '2024-04-02 10:00', '2024-04-02 18:00', '운영중');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (17, 12, '1_1.png', '12.jpg', 1, '중앙부스', 'booth', '2024-04-02 10:00', '2024-04-02 18:00', '운영중');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (18, 14, '1_1.png', '', 1, '중앙부스', 'booth', '2024-04-02 10:00', '2024-04-02 18:00', '운영중');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (19, 17, '1_1.png', '', 1, '중앙부스', 'booth', '2024-04-02 10:00', '2024-04-02 18:00', '운영중');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (20, 18, '1_1.png', '', 1, '중앙부스', 'booth', '2024-04-02 10:00', '2024-04-02 18:00', '운영중');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (21, 19, '1_1.png', '', 1, '중앙부스', 'booth', '2024-04-02 10:00', '2024-04-02 18:00', '운영중');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (22, 20, '1_1.png', '', 1, '중앙부스', 'booth', '2024-04-02 10:00', '2024-04-02 18:00', '운영중');
--
-- -- 부스 동아리 day3
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (23, 2, '1_1.png', '', 1, '연화홀', 'performance', '2024-04-03 18:00', '2024-04-03 21:00', '');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (24, 3, '1_1.png', 'fermata.jpg', 1, '연화홀', 'performance', '2024-04-03 18:00', '2024-04-03 21:00', '');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (25, 4, '1_1.png', 'phrase.jpg', 2, '연화홀', 'performance', '2024-04-03 18:00', '2024-04-03 21:00', '');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time, status) values (26, 6, '1_1.png', '', 2, '연화홀', 'performance', '2024-04-03 18:00', '2024-04-03 21:00', '');