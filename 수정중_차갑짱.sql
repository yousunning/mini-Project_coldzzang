CREATE TABLE `회원` (
	`u_id`	VARCHAR2(50)	NOT NULL	COMMENT '회원의 정보를 식별하기 위한 기본키',
	`user_emil`	VARCHAR2(50)	NOT NULL	COMMENT '한글 불가 / 영문, 순자,  특수문자  조합',
	`user_pw`	VARCHAR2(255)	NOT NULL	COMMENT '한글 불가 /  영문, 순자 조합',
	`user_pnum`	NUMBER	NOT NULL	COMMENT '특수문자 기호 없이 숫자만 입력 ex) 01012345678',
	`user_add`	VARCHAR2(100)	NOT NULL	COMMENT '배달 기능 없으므로 상세주소 적지 않아도 됨 (단순 회원 정보수집 용도)',
	`user_birth`	DATE	NOT NULL	COMMENT '예 ) 19990729 - 8자리 값을 입력하세요',
	`user_name`	VARCHAR2(20)	NOT NULL	COMMENT '특수문자 불가',
	`user_id`	VARCHAR2(50)	NOT NULL	COMMENT '한글 불가 영문순자 조합'
);

CREATE TABLE `재료` (
	`f_id`	VARCHAR2(20)	NOT NULL	COMMENT '재료를 식별하기 위한 기본키',
	`food_date`	DATE	NULL	COMMENT '미정(바코드에 저장 되어있을 시에 사용)',
	`food_name`	VARCHAR2(50)	NOT NULL	COMMENT '재료 이름 ex ) 감자, 고구마',
	`food_img`	VARCHAR2(300)	NOT NULL	COMMENT '재료 NULL 일 시에 오류 / 아이콘 사용예정',
	`food_count`	NUMBER	NOT NULL	COMMENT '재료 재고관리 데이터'
);

CREATE TABLE `레시피` (
	`r_id`	VARCHAR2(20)	NOT NULL	COMMENT '레시피 정보를 식별하기 위한 기본키',
	`recipe_name`	VARCHAR2(50)	NULL	COMMENT '영문자, 숫자 , 특수문자 전부 가능',
	`recipe_inro`	VARCHAR2(300)	NULL	COMMENT '영문자, 숫자 , 특수문자 전부 가능',
	`recipe_like`	NUMBER	NULL	COMMENT '한 레시피마다 유저들이 즐겨찾기로 등록한 개수',
	`food_like`	VARCHAR2(255)	NULL	COMMENT '영문자, 숫자 , 특수문자 전부 가능',
	`recipe_id`	VARCHAR2(20)	NOT NULL	COMMENT '한글 불가 영문순자 조합',
	`recipe_img`	VARCHAR2(300)	NULL	COMMENT '재료 NULL 일 시에 오류 / 아이콘 사용예정'
);

CREATE TABLE `즐겨찾기` (
	`r_id`	VARCHAR2(20)	NOT NULL	COMMENT '레시피 정보를 식별하기 위한 기본키',
	`u_id`	VARCHAR2(50)	NOT NULL	COMMENT '회원의 정보를 식별하기 위한 기본키'
);

ALTER TABLE `회원` ADD CONSTRAINT `PK_회원` PRIMARY KEY (
	`u_id`
);

ALTER TABLE `재료` ADD CONSTRAINT `PK_재료` PRIMARY KEY (
	`f_id`
);

ALTER TABLE `레시피` ADD CONSTRAINT `PK_레시피` PRIMARY KEY (
	`r_id`
);

ALTER TABLE `즐겨찾기` ADD CONSTRAINT `PK_즐겨찾기` PRIMARY KEY (
	`r_id`
);

ALTER TABLE `즐겨찾기` ADD CONSTRAINT `FK_레시피_TO_즐겨찾기_1` FOREIGN KEY (
	`r_id`
)
REFERENCES `레시피` (
	`r_id`
);

