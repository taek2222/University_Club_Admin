-- TYPE 데이터
INSERT INTO TYPE (field) VALUES ('공연');
INSERT INTO TYPE (field) VALUES ('체육');
INSERT INTO TYPE (field) VALUES ('취미');
INSERT INTO TYPE (field) VALUES ('종교');
INSERT INTO TYPE (field) VALUES ('봉사');
INSERT INTO TYPE (field) VALUES ('기타');

-- 동아리
INSERT INTO CLUB (club_id, club_name, type_id) VALUES (1, '총동연', 6);

INSERT INTO CLUB (club_id, club_name, type_id) VALUES (2, '루시우스', 1);
INSERT INTO CLUB (club_id, club_name, type_id) VALUES (3, '페르마타', 1);
INSERT INTO CLUB (club_id, club_name, type_id) VALUES (4, '프레이즈', 1);
INSERT INTO CLUB (club_id, club_name, type_id) VALUES (5, 'OST', 1);
INSERT INTO CLUB (club_id, club_name, type_id) VALUES (6, '뉴를리', 1);

INSERT INTO CLUB (club_id, club_name, type_id) VALUES (7, '스핀', 2);
-- INSERT INTO CLUB (club_id, club_name, type_id) VALUES (8, '에이스', 2);
INSERT INTO CLUB (club_id, club_name, type_id) VALUES (9,'핀액션', 2);
-- INSERT INTO CLUB (club_id, club_name, type_id) VALUES (10, '홀인원', 2);
-- INSERT INTO CLUB (club_id, club_name, type_id) VALUES (11, '브레맨4기', 2);

INSERT INTO CLUB (club_id, club_name, type_id) VALUES (12, '해시태그', 3);
-- INSERT INTO CLUB (club_id, club_name, type_id) VALUES (13, '팔레트', 3);
INSERT INTO CLUB (club_id, club_name, type_id) VALUES (14, '보드홀릭', 3);
-- INSERT INTO CLUB (club_id, club_name, type_id) VALUES (15, '택더빌', 3);
-- INSERT INTO CLUB (club_id, club_name, type_id) VALUES (16, 'GWG', 3);

INSERT INTO CLUB (club_id, club_name, type_id) VALUES (17, 'CCC', 4);
INSERT INTO CLUB (club_id, club_name, type_id) VALUES (18, 'JDM', 4);

INSERT INTO CLUB (club_id, club_name, type_id) VALUES (19, 'Ghost', 5);
INSERT INTO CLUB (club_id, club_name, type_id) VALUES (20, '학군단', 5);

-- 동아리 속성
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (1, 'main.JPG', 'icon.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (2, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (3, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (4, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (5, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (6, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (7, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (9, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (12, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (14, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (17, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (18, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (19, 'feed_test.png', 'feed_test.png');
INSERT INTO PROPERTY (club_id, image_url, icon_url) VALUES (20, 'feed_test.png', 'feed_test.png');

-- 동아리 태그
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (1, '축제 협회'), (1, '안내 부스');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (2, '테스트1'), (2, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (3, '테스트2'), (3, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (4, '테스트1'), (4, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (5, '테스트2'), (5, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (6, '테스트1'), (6, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (7, '테스트2'), (7, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (9, '테스트2'), (9, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (12, '테스트1'), (12, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (14, '테스트1'), (14, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (17, '테스트2'), (17, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (18, '테스트1'), (18, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (19, '테스트2'), (19, '테스트2');
INSERT INTO PROPERTY_TAGS (property_club_id, tags) VALUES (20, '테스트2'), (20, '테스트2');

-- 동아리 모달
INSERT INTO MODAL (club_id, contents, title, location_url) values (1, '안녕하세요, 강릉원주대학교 동아리 연합회입니다! 우리 캠퍼스의 다양한 동아리들을 한눈에 볼 수 있는 특별한 기회, 동아리 부스 행사가 곧 열립니다! 새학기를 맞이하여, 새로운 사람들을 만나고, 다양한 동아리를 경험하고 싶은 분들을 위한 완벽한 기회입니다. 🎈\n \n *📅 행사 일시:* \n2024년 3월 15일 (금) 10:00 ~ 16:00\n \n *📍장소:* 대학교 중앙 광장\n \n *🎪 행사 내용:* \n동아리 소개 부스: 각 동아리의 활동 내용, 연간 계획, 가입 방법 등을 소개합니다.\n라이브 공연: 음악, 댄스, 극단 동아리들의 생동감 넘치는 라이브 공연을 즐길 수 있습니다.\n체험 활동: 다양한 동아리가 준비한 체험 활동을 통해 새로운 취미와 재능을 발견해 보세요.\nQ&A 세션: 동아리 회원들과 직접 대화하며 궁금한 점을 해소할 수 있습니다.\n \n*👥 참가 방법:*\n사전 등록: 행사 참여를 원하시는 분들은 사전에 대학교 동아리 연합회 홈페이지를 통해 등록해 주세요. 사전 등록자에게는 소정의 기념품을 드립니다!\n현장 참여: 사전 등록 없이 행사 당일 현장을 방문하여 참여할 수도 있습니다.\n \n*🎁 특별 이벤트:* \n인스타그램 이벤트: 행사 당일 #대학교동아리연합회 해시태그와 함께 인스타그램에 사진을 올리면 추첨을 통해 소정의 상품을 드립니다.\n스탬프 랠리: 행사 참여 동아리 부스를 방문하고 스탬프를 모으세요! 모든 스탬프를 모은 참가자에게는 특별한 선물이 기다립니다.\n \n*🔔 주의 사항:*\n모든 참가자는 행사장 내에서 마스크 착용을 비롯한 코로나19 방역 수칙을 준수해 주시기 바랍니다.\n행사장 내에서는 음식물 섭취가 제한됩니다.\n \n이번 동아리 부스 행사는 여러분이 새로운 사람들을 만나고, 관심 있는 분야를 탐색할 수 있는 절호의 기회입니다. 다양한 동아리와 그 멤버들과의 만남을 통해 대학 생활을 더욱 풍부하게 만들어 보세요! 우리 모두 그날 광장에서 만나요! 🎊', '⭐️총동연⭐️', '0_map.png');
INSERT INTO MODAL (club_id, contents, title) values (2, '테스트_제목', '테스트_내용');
INSERT INTO MODAL (club_id, contents, title, location_url) values (3, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (4, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (5, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (6, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (7, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (9, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (12, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (14, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (17, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (18, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (19, '테스트_제목', '테스트_내용', '0_map.png');
INSERT INTO MODAL (club_id, contents, title, location_url) values (20, '테스트_제목', '테스트_내용', '0_map.png');

-- 동아리 모달 이미지
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (1, '1_1.JPG'), (1, '1_2.JPG'), (1, '1_3.JPG');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (2, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (3, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (4, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (5, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (6, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (7, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (9, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (12, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (14, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (17, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (18, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (19, '0_1.png');
INSERT INTO MODAL_MODAL_IMAGE (modal_club_id, url) values (20, '0_1.png');

-- 동아리 좋아요 수
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (1, 0);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (2, 0);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (3, 0);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (4, 0);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (5, 0);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (6, 0);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (7, 0);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (9, 0);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (12, 0);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (14, 0);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (17, 0);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (18, 0);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (19, 0);
INSERT INTO INITIAL_LIKES(club_id, initial_likes) values (20, 0);

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
INSERT INTO JOIN_TABLE(club_id, icon_image, title) values (1, '1_1.png', '2024년도 총동아리연합회 \n 🎉신입생 모집 안내🎉');

-- 가입 경로 ( 네이버, 구글, 카카오, 인스타 )
INSERT INTO JOIN_PATHS(join_club_id, paths) values (1, true), (1, false), (1, false), (1, true);

-- 가입 기간
INSERT INTO TERM(club_id, start_date, end_date) values (1, '2024-03-08', '2024-04-12');

-- 가입 모달 내용
INSERT INTO JOIN_MODAL(club_id, contents) values (1, '안녕하십니까, 제39대 총동아리연합회 ''EUM''입니다. \n \n 총동아리연합회 2024학년도 부원을 모집합니다.\n \n *📋모집 대상* \n-2024년 강릉원주대학교 원주캠퍼스 신입생 \n \n *📆모집 기간* \n -1차 서류 접수 기간 : 3월 11일(월) ~ 3월 15일(금) \n -2차 대면 면접 : 추후 개별 연락 \n \n 1차 서류 지원서는 모집 공고에 첨부된 QR 및 URL을 통해 네이버 폼으로 작성 부탁드립니다!');

-- 가입 모달 이미지
INSERT INTO JOIN_MODAL_MODAL_IMAGE(join_modal_club_id, image) values (1, '1_1.JPG'), (1, '1_2.JPG');

-- 가입 모달 Url
INSERT INTO JOIN_MODAL_JOIN_URL(join_modal_club_id, url) values (1, 'https://form.naver.com/response/JEMUf_nDTieSnZ3QUEJr8w'), (1, 'false'), (1, 'false'), (1, 'https://www.instagram.com/gwnu_eum_wonju?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==');

-- 부스 동아리 day1
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (1, 1, '0_1.png', '', 1, '중앙부스', 'booth', '2024-04-01 10:00', '2024-04-01 18:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (2, 4, '0_1.png', '', 1, '중앙부스', 'booth', '2024-04-01 10:00', '2024-04-01 18:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (3, 5, '0_1.png', '', 1, '중앙부스', 'booth', '2024-04-01 10:00', '2024-04-01 18:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (4, 7, '0_1.png', '', 1, '체육관', 'booth', '2024-04-01 10:00', '2024-04-01 18:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (5, 9, '0_1.png', '', 1, '중앙부스', 'booth', '2024-04-01 10:00', '2024-04-01 18:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (6, 12, '0_1.png', '', 1, '중앙부스', 'booth', '2024-04-01 10:00', '2024-04-01 18:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (7, 14, '0_1.png', '', 1, '중앙부스', 'booth', '2024-04-01 10:00', '2024-04-01 18:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (8, 17, '0_1.png', '', 1, '중앙부스', 'booth', '2024-04-01 10:00', '2024-04-01 18:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (9, 18, '0_1.png', '', 1, '중앙부스', 'booth', '2024-04-01 10:00', '2024-04-01 18:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (10, 19, '0_1.png', '', 1, '중앙부스', 'booth', '2024-04-01 10:00', '2024-04-01 18:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (11, 20, '0_1.png', '', 1, '중앙부스', 'booth', '2024-04-01 10:00', '2024-04-01 18:00');

-- -- 부스 동아리 day2
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (12, 1, '0_1.png', '', 1, '중앙부스', 'booth', '2024-04-02 10:00', '2024-04-02 18:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (13, 4, '0_1.png', '', 1, '중앙부스', 'booth', '2024-04-02 10:00', '2024-04-02 18:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (14, 5, '0_1.png', '', 1, '중앙부스', 'booth', '2024-04-02 10:00', '2024-04-02 18:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (15, 7, '0_1.png', '', 1, '체육관', 'booth', '2024-04-02 10:00', '2024-04-02 18:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (16, 9, '0_1.png', '', 1, '중앙부스', 'booth', '2024-04-02 10:00', '2024-04-02 18:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (17, 12, '0_1.png', '', 1, '중앙부스', 'booth', '2024-04-02 10:00', '2024-04-02 18:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (18, 14, '0_1.png', '', 1, '중앙부스', 'booth', '2024-04-02 10:00', '2024-04-02 18:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (19, 17, '0_1.png', '', 1, '중앙부스', 'booth', '2024-04-02 10:00', '2024-04-02 18:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (20, 18, '0_1.png', '', 1, '중앙부스', 'booth', '2024-04-02 10:00', '2024-04-02 18:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (21, 19, '0_1.png', '', 1, '중앙부스', 'booth', '2024-04-02 10:00', '2024-04-02 18:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (22, 20, '0_1.png', '', 1, '중앙부스', 'booth', '2024-04-02 10:00', '2024-04-02 18:00');
--
-- -- 부스 동아리 day3
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (23, 2, '0_1.png', '', 1, '연화홀', 'performance', '2024-04-03 18:00', '2024-04-03 21:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (24, 3, '0_1.png', 'fermata.jpg', 1, '연화홀', 'performance', '2024-04-03 18:00', '2024-04-03 21:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (25, 4, '0_1.png', 'phrase.jpg', 2, '연화홀', 'performance', '2024-04-03 18:00', '2024-04-03 21:00');
INSERT INTO schedule(schedule_id, club_id, icon_url, image_url, part, location, category, event_time, event_end_time) values (26, 6, '0_1.png', '', 2, '연화홀', 'performance', '2024-04-03 18:00', '2024-04-03 21:00');