-- TYPE 데이터
INSERT INTO TYPE (field) VALUES ('공연');
INSERT INTO TYPE (field) VALUES ('체육');
INSERT INTO TYPE (field) VALUES ('취미');
INSERT INTO TYPE (field) VALUES ('종교');
INSERT INTO TYPE (field) VALUES ('봉사');
INSERT INTO TYPE (field) VALUES ('학회');

-- 동아리
INSERT INTO CLUB (club_name, type_id) VALUES ('총동연', 6);

INSERT INTO CLUB (club_name, type_id) VALUES ('루시우스', 1);
INSERT INTO CLUB (club_name, type_id) VALUES ('페르마타', 1);
INSERT INTO CLUB (club_name, type_id) VALUES ('프레이즈', 1);
INSERT INTO CLUB (club_name, type_id) VALUES ('OST', 1);
INSERT INTO CLUB (club_name, type_id) VALUES ('뉴를리', 1);

INSERT INTO CLUB (club_name, type_id) VALUES ('스핀', 2);
INSERT INTO CLUB (club_name, type_id) VALUES ('에이스', 2);
INSERT INTO CLUB (club_name, type_id) VALUES ('핀액션', 2);
INSERT INTO CLUB (club_name, type_id) VALUES ('홀인원', 2);
INSERT INTO CLUB (club_name, type_id) VALUES ('브레맨4기', 2);

INSERT INTO CLUB (club_name, type_id) VALUES ('해시태그', 3);
INSERT INTO CLUB (club_name, type_id) VALUES ('팔레트', 3);
INSERT INTO CLUB (club_name, type_id) VALUES ('보드홀릭', 3);
INSERT INTO CLUB (club_name, type_id) VALUES ('택더빌', 3);
INSERT INTO CLUB (club_name, type_id) VALUES ('GWG', 3);

INSERT INTO CLUB (club_name, type_id) VALUES ('CCC', 4);
INSERT INTO CLUB (club_name, type_id) VALUES ('JDM', 4);

INSERT INTO CLUB (club_name, type_id) VALUES ('RCY', 5);

-- 동아리 속성
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (1, 'main.JPG', 'icon.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (2, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (3, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (4, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (5, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (6, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (7, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (8, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (9, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (10, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (11, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (12, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (13, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (14, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (15, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (16, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (17, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (18, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (19, 'feed_test.png', 'feed_test.png');

-- 동아리 태그
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (1, '축제 협회'), (1, '안내 부스');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (2, '테스트1'), (2, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (3, '테스트2'), (3, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (4, '테스트1'), (4, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (5, '테스트2'), (5, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (6, '테스트1'), (6, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (7, '테스트2'), (7, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (8, '테스트1'), (8, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (9, '테스트2'), (9, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (10, '테스트1'), (10, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (11, '테스트2'), (11, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (12, '테스트1'), (12, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (13, '테스트2'), (13, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (14, '테스트1'), (14, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (15, '테스트2'), (15, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (16, '테스트1'), (16, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (17, '테스트2'), (17, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (18, '테스트1'), (18, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (19, '테스트2'), (19, '테스트2');

-- 동아리 모달
INSERT INTO MODAL (club_id, contents, title, location_url) values (1, '안녕하세요, 강릉원주대학교 동아리 연합회입니다! 우리 캠퍼스의 다양한 동아리들을 한눈에 볼 수 있는 특별한 기회, 동아리 부스 행사가 곧 열립니다! 새학기를 맞이하여, 새로운 사람들을 만나고, 다양한 동아리를 경험하고 싶은 분들을 위한 완벽한 기회입니다. 🎈\n \n *📅 행사 일시:* \n2024년 3월 15일 (금) 10:00 ~ 16:00\n \n *📍장소:* 대학교 중앙 광장\n \n *🎪 행사 내용:* \n동아리 소개 부스: 각 동아리의 활동 내용, 연간 계획, 가입 방법 등을 소개합니다.\n라이브 공연: 음악, 댄스, 극단 동아리들의 생동감 넘치는 라이브 공연을 즐길 수 있습니다.\n체험 활동: 다양한 동아리가 준비한 체험 활동을 통해 새로운 취미와 재능을 발견해 보세요.\nQ&A 세션: 동아리 회원들과 직접 대화하며 궁금한 점을 해소할 수 있습니다.\n \n*👥 참가 방법:*\n사전 등록: 행사 참여를 원하시는 분들은 사전에 대학교 동아리 연합회 홈페이지를 통해 등록해 주세요. 사전 등록자에게는 소정의 기념품을 드립니다!\n현장 참여: 사전 등록 없이 행사 당일 현장을 방문하여 참여할 수도 있습니다.\n \n*🎁 특별 이벤트:* \n인스타그램 이벤트: 행사 당일 #대학교동아리연합회 해시태그와 함께 인스타그램에 사진을 올리면 추첨을 통해 소정의 상품을 드립니다.\n스탬프 랠리: 행사 참여 동아리 부스를 방문하고 스탬프를 모으세요! 모든 스탬프를 모은 참가자에게는 특별한 선물이 기다립니다.\n \n*🔔 주의 사항:*\n모든 참가자는 행사장 내에서 마스크 착용을 비롯한 코로나19 방역 수칙을 준수해 주시기 바랍니다.\n행사장 내에서는 음식물 섭취가 제한됩니다.\n \n이번 동아리 부스 행사는 여러분이 새로운 사람들을 만나고, 관심 있는 분야를 탐색할 수 있는 절호의 기회입니다. 다양한 동아리와 그 멤버들과의 만남을 통해 대학 생활을 더욱 풍부하게 만들어 보세요! 우리 모두 그날 광장에서 만나요! 🎊', '⭐️총동연⭐️', '0_map.png');
INSERT INTO MODAL (club_id, contents, title) values (2, '테스트_제목', '테스트_내용');
INSERT INTO MODAL (club_id, contents, title, location_url) values (3, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (4, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (5, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (6, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (7, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (8, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (9, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (10, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (11, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (12, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (13, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (14, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (15, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (16, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (17, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (18, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (19, '테스트_제목', '테스트_내용', '0_map.png');

-- 동아리 모달 이미지
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (1, '1_1.JPG'), (1, '1_2.JPG'), (1, '1_3.JPG');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (2, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (3, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (4, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (5, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (6, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (7, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (8, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (9, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (10, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (11, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (12, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (13, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (14, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (15, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (16, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (17, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (18, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (19, '0_1.png');

-- 동아리 좋아요 수
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (1, 82);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (2, 82);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (3, 82);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (4, 82);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (5, 82);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (6, 82);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (7, 82);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (8, 82);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (9, 82);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (10, 82);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (11, 82);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (12, 82);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (13, 82);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (14, 82);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (15, 82);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (16, 82);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (17, 82);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (18, 82);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (19, 82);

-- 메모 실험용 데이터
INSERT INTO memo (memo_id, major, class_of, anonymous, student_name, content, color) values (101, '컴퓨터공학과', '20191758', false, '유재현', '해시태그 화이팅!', 'bg-red-200');
INSERT INTO memo (memo_id, major, class_of, anonymous, student_name, content, color) values (102, '유아교육과', '10000000', false, '카리나', '응원문구 테스트1', 'bg-yellow-100');
INSERT INTO memo (memo_id, major, class_of, anonymous, student_name, content, color) values (103, '간호학과', '20000000', false, '윈터', '응원문구 테스트2', 'bg-orange-200');
INSERT INTO memo (memo_id, major, class_of, anonymous, student_name, content, color) values (104, '산업경영공학과', '30000000', false, '지젤', '응원문구 테스트3', 'bg-green-100');
INSERT INTO memo (memo_id, major, class_of, anonymous, student_name, content, color) values (105, '자동차공학과', '40000000', false, '닝닝', '응원문구 테스트4', 'bg-teal-100');
INSERT INTO memo (memo_id, major, class_of, anonymous, student_name, content, color) values (106, '기계공학과', '50000000', false, '김채원', '응원문구 테스트5', 'bg-cyan-100');
INSERT INTO memo (memo_id, major, class_of, anonymous, student_name, content, color) values (107, '사회복지학과', '60000000', false, '카즈하', '응원문구 테스트6', 'bg-indigo-200');
INSERT INTO memo (memo_id, major, class_of, anonymous, student_name, content, color) values (108, '전기공학과', '70000000', false, '홍은채', '응원문구 테스트7', 'bg-violet-200');
INSERT INTO memo (memo_id, major, class_of, anonymous, student_name, content, color) values (109, '다문화학과', '80000000', false, '장원영', '응원문구 테스트8', 'bg-purple-200');
INSERT INTO memo (memo_id, major, class_of, anonymous, student_name, content, color) values (1010, '멀티미디어학과', '90000000', false, '안유진', '응원문구 테스트9', 'bg-fuchsia-200');

-- 가입 신청 동아리
INSERT INTO JOIN_TABLE(club_id, icon_image, title) values (1, '1_1.png', '2024년도 총동아리연합회 \n 🎉신입생 모집 안내🎉');
INSERT INTO JOIN_TABLE(club_id, icon_image, title) values (2, '1_1.png', '테스트 임원진 모집');

-- 가입 경로 ( 네이버, 구글, 카카오, 인스타 )
INSERT INTO JOIN_PATHS(join_club_id, paths) values (1, true), (1, true), (1, true), (1, true);
INSERT INTO JOIN_PATHS(join_club_id, paths) values (2, true), (2, true), (2, true), (2, false);

-- 가입 기간
INSERT INTO TERM(club_id, start_date, end_date) values (1, '2024-03-08', '2024-04-12');
INSERT INTO TERM(club_id, start_date, end_date) values (2, '2024-03-17', '2024-04-12');

-- 가입 모달 내용
INSERT INTO JOIN_MODAL(club_id, contents) values (1, '안녕하십니까, 제39대 총동아리연합회 ''EUM''입니다. \n \n 총동아리연합회 2024학년도 부원을 모집합니다.\n \n *📋모집 대상* \n-2024년 강릉원주대학교 원주캠퍼스 신입생 \n \n *📆모집 기간* \n -1차 서류 접수 기간 : 3월 11일(월) ~ 3월 15일(금) \n -2차 대면 면접 : 추후 개별 연락 \n \n 1차 서류 지원서는 모집 공고에 첨부된 QR 및 URL을 통해 네이버 폼으로 작성 부탁드립니다!');

-- 가입 모달 이미지
INSERT INTO JOIN_MODAL_MODAL_IMAGE(join_modal_club_id, image) values (1, '1_1.JPG'), (1, '1_2.JPG');

-- 가입 모달 Url
INSERT INTO JOIN_MODAL_JOIN_URL(join_modal_club_id, url) values (1, 'https://form.naver.com/response/JEMUf_nDTieSnZ3QUEJr8w'), (1, 'false'), (1, 'false'), (1, 'https://www.instagram.com/gwnu_eum_wonju?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==');

-- 공연 동아리 day1
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (1, 12, '0_1.png', '', 1, '체육관', 'booth', '2024-03-20 20:00', '2024-03-20 23:59');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (2, 8, '0_1.png', 'fermata.jpg', 1, '중앙부스', 'booth', '2024-03-20 20:00', '2024-03-20 23:59');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (3, 13, '0_1.png', 'phrase.jpg', 2, '체육관', 'booth', '2024-03-20 20:00', '2024-03-20 23:59');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (4, 17, '0_1.png', '', 2, '중앙부스', 'booth', '2024-03-20 20:00', '2024-03-20 23:59');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (5, 19, '0_1.png', '', 3, '체육관', 'booth', '2024-03-20 12:00', '2024-03-20 15:00');
-- 공연 동아리 day2
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (6, 12, '0_1.png', 'fermata.jpg', 1, '중앙부스', 'booth', '2024-04-02 13:00', '2024-04-02 15:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (7, 8, '0_1.png', '', 1, '체육관', 'booth', '2024-04-02 13:30', '2024-04-02 16:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (8, 18, '0_1.png', '', 2, '중앙부스', 'booth', '2024-04-02 15:00', '2024-04-02 18:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (9, 19, '0_1.png', '', 2, '중앙부스', 'booth', '2024-04-02 15:30', '2024-04-02 17:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (10, 7, '0_1.png', 'fermata.jpg', 3, '체육관', 'booth', '2024-04-02 10:00', '2024-04-02 16:00');
-- 공연 동아리 day3
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (11, 4, '0_1.png', 'phrase.jpg', 1, '', 'performance', '2024-04-03 10:00', '2024-04-03 10:30');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (12, 2, '0_1.png', '', 1, '', 'performance', '2024-04-03 10:30', '2024-04-03 11:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (13, 3, '0_1.png', 'fermata.jpg', 2, '', 'performance', '2024-04-03 15:00', '2024-04-03 15:30');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (14, 6, '0_1.png', '', 2, '', 'performance', '2024-04-03 15:30', '2024-04-03 16:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (15, 3, '0_1.png', '', 3, '', 'performance', '2024-04-03 18:00', '2024-04-03 19:00');