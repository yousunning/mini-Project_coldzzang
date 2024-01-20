CREATE TABLE "회원" (
	"u_id"	NUMBER		NOT NULL,
	"user_emil"	VARCHAR2(50)		NOT NULL,
	"user_pw"	VARCHAR2(255)		NOT NULL,
	"user_pnum"	NUMBER		NOT NULL,
	"user_add"	VARCHAR2(100)		NOT NULL,
	"user_birth"	DATE		NOT NULL,
	"user_name"	VARCHAR2(20)		NOT NULL,
	"user_id"	VARCHAR2(50)		NOT NULL,
	"f_id"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "회원"."u_id" IS '회원의 정보를 식별하기 위한 기본키';

COMMENT ON COLUMN "회원"."user_emil" IS '한글 불가 / 영문, 순자,  특수문자  조합';

COMMENT ON COLUMN "회원"."user_pw" IS '한글 불가 /  영문, 순자 조합';

COMMENT ON COLUMN "회원"."user_pnum" IS '특수문자 기호 없이 숫자만 입력 ex) 01012345678';

COMMENT ON COLUMN "회원"."user_add" IS '배달 기능 없으므로 상세주소 적지 않아도 됨 (단순 회원 정보수집 용도)';

COMMENT ON COLUMN "회원"."user_birth" IS '예 ) 19990729 - 8자리 값을 입력하세요';

COMMENT ON COLUMN "회원"."user_name" IS '특수문자 불가';

COMMENT ON COLUMN "회원"."user_id" IS '한글 불가 영문순자 조합';

COMMENT ON COLUMN "회원"."f_id" IS '재료를 식별하기 위한 기본키';

CREATE TABLE "재료" (
	"f_id"	NUMBER		NOT NULL,
	"food_date"	DATE		NULL,
	"food_name"	VARCHAR2(50)		NOT NULL,
	"food_img"	VARCHAR2(300)		NOT NULL,
	"food_count"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "재료"."f_id" IS '재료를 식별하기 위한 기본키';

COMMENT ON COLUMN "재료"."food_date" IS '미정(바코드에 저장 되어있을 시에 사용)';

COMMENT ON COLUMN "재료"."food_name" IS '재료 이름 ex ) 감자, 고구마';

COMMENT ON COLUMN "재료"."food_img" IS '재료 NULL 일 시에 오류 / 아이콘 사용예정';

COMMENT ON COLUMN "재료"."food_count" IS '재료 재고관리 데이터';

CREATE TABLE "레시피" (
	"r_id"	NUMBER		NOT NULL,
	"recipe_name"	VARCHAR2(100)		NULL,
	"recipe_inro"	VARCHAR2(300)		NULL,
	"recipe_like"	NUMBER		NULL,
	"food_like"	VARCHAR2(255)		NULL,
	"recipe_id"	VARCHAR2(20)		NOT NULL,
	"recipe_img"	VARCHAR2(300)		NULL
);

COMMENT ON COLUMN "레시피"."r_id" IS '레시피 정보를 식별하기 위한 기본키';

COMMENT ON COLUMN "레시피"."recipe_name" IS '영문자, 숫자 , 특수문자 전부 가능';

COMMENT ON COLUMN "레시피"."recipe_inro" IS '영문자, 숫자 , 특수문자 전부 가능';

COMMENT ON COLUMN "레시피"."recipe_like" IS '한 레시피마다 유저들이 즐겨찾기로 등록한 개수';

COMMENT ON COLUMN "레시피"."food_like" IS '영문자, 숫자 , 특수문자 전부 가능';

COMMENT ON COLUMN "레시피"."recipe_id" IS '한글 불가 영문순자 조합';

COMMENT ON COLUMN "레시피"."recipe_img" IS '재료 NULL 일 시에 오류 / 아이콘 사용예정';

CREATE TABLE "즐겨찾기" (
	"r_id"	NUMBER		NOT NULL,
	"u_id"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "즐겨찾기"."r_id" IS '레시피 정보를 식별하기 위한 기본키';

COMMENT ON COLUMN "즐겨찾기"."u_id" IS '회원의 정보를 식별하기 위한 기본키';

CREATE TABLE "냉장고" (
	"f_id"	NUMBER		NOT NULL,
	"r_id"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "냉장고"."f_id" IS '재료를 식별하기 위한 기본키';

COMMENT ON COLUMN "냉장고"."r_id" IS '레시피 정보를 식별하기 위한 기본키';

CREATE TABLE "통계" (
	"f_id"	NUMBER		NOT NULL,
	"u_id"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "통계"."f_id" IS '재료를 식별하기 위한 기본키';

COMMENT ON COLUMN "통계"."u_id" IS '회원의 정보를 식별하기 위한 기본키';

ALTER TABLE "회원" ADD CONSTRAINT "PK_회원" PRIMARY KEY (
	"u_id"
);

ALTER TABLE "재료" ADD CONSTRAINT "PK_재료" PRIMARY KEY (
	"f_id"
);

ALTER TABLE "레시피" ADD CONSTRAINT "PK_레시피" PRIMARY KEY (
	"r_id"
);

ALTER TABLE "즐겨찾기" ADD CONSTRAINT "PK_즐겨찾기" PRIMARY KEY (
	"r_id"
);

ALTER TABLE "냉장고" ADD CONSTRAINT "PK_냉장고" PRIMARY KEY (
	"f_id"
);

ALTER TABLE "통계" ADD CONSTRAINT "PK_통계" PRIMARY KEY (
	"f_id"
);

ALTER TABLE "즐겨찾기" ADD CONSTRAINT "FK_레시피_TO_즐겨찾기_1" FOREIGN KEY (
	"r_id"
)
REFERENCES "레시피" (
	"r_id"
);

ALTER TABLE "냉장고" ADD CONSTRAINT "FK_재료_TO_냉장고_1" FOREIGN KEY (
	"f_id"
)
REFERENCES "재료" (
	"f_id"
);

ALTER TABLE "통계" ADD CONSTRAINT "FK_냉장고_TO_통계_1" FOREIGN KEY (
	"f_id"
)
REFERENCES "냉장고" (
	"f_id"
);

