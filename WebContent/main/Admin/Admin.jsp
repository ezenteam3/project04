<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, z01_vo.* "
    %>
<%  request.setCharacterEncoding("utf-8");
    String path = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<%
// Addr 임의 데이터 생성
/* (int)배송지번호,아이디, 배송지명, 수령인, 연락처, 추가연락처, 우편번호, 주소, 상세주소  */
ArrayList<Addr> addList = new ArrayList<Addr>();
for(int cnt=1;cnt<=16;cnt++){
	addList.add(new Addr(cnt, "홍길동"+cnt,"우리집","김길동","010-0001-"+(1000+cnt) ,
			"010-0002-"+(1000+cnt),"01525","서울시 종로구",""));
}
session.setAttribute("addList", addList);


// Course 임의 데이터 생성
/* (int)클래스번호, 호스트, 클래스등록일, 클래스명, 클래스종류(D:원데이클래스/M:정기클래스), 상세설명, (int)현인원
	(int)최대인원, (int)가격, 클래스이미지, 수강일 */
ArrayList<Course> couList = new ArrayList<Course>();
for(int cnt=1;cnt<=16;cnt++){
	couList.add(new Course(cnt, "홍길동"+cnt,"2020-03-02","비누만들기"+cnt,"D",
			"재밌는 비누만들기",0,10,30000,"","2020-03-10","마크라메"));
}
session.setAttribute("couList", couList);


// CReview 임의 데이터 생성
/* (int)신청번호, 회원아이디, 후기내용, 평점, 등록일  */
ArrayList<CReview> commList = new ArrayList<CReview>();
for(int cnt=1;cnt<=16;cnt++){
	int rPt = (int)(Math.random()*6);
	commList.add(new CReview(cnt,"재밌어요"+cnt,rPt, "2020-01-01"));
}
session.setAttribute("commList", commList);


// Inquiry 임의 데이터 생성
/* (int)문의번호, 아이디, 문의내용, 문의날짜, 답변내용 */
ArrayList<Inquiry> inqList = new ArrayList<Inquiry>();
for(int cnt=1; cnt < 17; cnt++){
	inqList.add(new Inquiry(cnt,"himan"+cnt,"문의 내용","2020-03-11","답변"+cnt));
}
inqList.add(new Inquiry(102,"himan3","환불 받고 싶어요","2020-03-11",""));
inqList.add(new Inquiry(103,"himan5","기간 연장 어떻게 하나요?","2020-03-11",""));
session.setAttribute("inqList", inqList);


//Member 임의 데이터 생성
/* 아이디, (int)회원번호, 비밀번호, 이름, 이메일, 닉네임, 생년월일, 휴대폰, 등급, (int)마일리지 */
ArrayList<Member> memList = new ArrayList<Member>();
Member m01 = new Member("himan1",1,"7777","홍길동","mail01@gmail.com","둘리1","2000-01-01","010-1234-1001","M");
Member m02 = new Member("himan2",2,"7777","김길동","mail02@gmail.com","둘리2","2000-01-01","010-1234-1002","H");
memList.add(m01);
memList.add(m02);
for(int cnt=3;cnt<=16;cnt++){
	memList.add(new Member("himan"+cnt,cnt,"7777","홍길동"+cnt,"mail"+cnt+"@gmail.com","둘리"+cnt,"2000-01-01","010-1234-"+(1000+cnt),"N"));
}
session.setAttribute("memList", memList);


//Mileage 임의 데이터 생성
/* 적립/사용날짜, 적립/사용내역, (int)마일리지 */
ArrayList<Mileage> ptList = new ArrayList<Mileage>();
for(int cnt=1; cnt < 5; cnt++){
	ptList.add(new Mileage(cnt,"himan"+cnt,"2020-03-11","적립",20+cnt));
}
for(int cnt=6; cnt < 10; cnt++){
	ptList.add(new Mileage(cnt,"himan"+cnt,"2020-03-11","사용",10+cnt));
}
session.setAttribute("ptList", ptList);


// Notice 임의 데이터 생성
/* (int)공지사항번호, 공지제목, 공지내용, 공지등록일, 중요여부 */
ArrayList<Notice> notiList = new ArrayList<Notice>();

notiList.add(new Notice(1,"텀블벅 후원자님, 이용권은 이렇게 사용해주세요!","안녕하세요! 하비풀입니다. 텀블벅 프로젝트가 끝나고,\n\n\n지금까지 기다려주신 후원자님께 정말 감사드립니다. :)\n\n\n\n하비풀 사이트 오픈과 함께, 오늘 (29일) 부터 ‘클래스 선택’  기간이 되어 보내드린 이용권의 사용법을 안내드립니다.\n\n\n\n\n\n 기간 안내\n \n \n \n \n \n- 이용권 쿠폰 발송: 5/29(월) - 클래스 1개월 (30,000원) 을 구독할 수 있는 30,000마일리지 쿠폰 발송 완료\n\n\n\n- 클래스 선택 기간: 5/29(월) -  6/2(금) 오전 9시 (5일간)\n\n\n\n- 결제 확정: 6/2일(금) 오전 10시에 문자 발송 예정\n\n\n\n- 배송일: 6/7(수)\n\n\n\n(선택 기간 안에 선택이 완료되어야  6/7일에 배송이 완료될 수 있으니 참고부탁드립니다. 혹시 기간 안에 신청을 못하신 분들은 17일에 다시 한번 발송 예정입니다)\n\n\n\n\n- 신청 방법은 아래 가이드를 잘 따라해주세요 :)\n\n\n \n 신청 방법\n \n \n \n1. 준비물: 문자로 발송한 개인별 ‘이용권 쿠폰번호’ (총 16자리 영문)\n\n\n\n2. https://hobbyful.co.kr/ 에 접속합니다.\n \n \n \n3. 홈페이지 상단을 통해 회원가입 후, 로그인 해주세요!\n\n\n\n4. 마이페이지> 나의 활동 내역> 쿠폰 현황에서 ‘쿠폰등록’ 에 문자 혹은 메일로 받은 번호 16자리를 입력해 쿠폰을 등록한 후, 바로 아래 쿠폰 내역에 ‘충전’ 을 눌러주세요!\n\n\n\n'마일리지 등록을 끝냈으니, 이제 클래스를 고를 시간 ! '\n\n\n\n\n\n5. 상단메뉴 중 ‘취미 정기구독’ 을 클릭 후, 여섯가지 클래스를 자세히 살펴본 후 원하는 클래스를 골라\n\n‘정기구독박스에 담기’ > ‘정기구독 신청하기’를 클릭합니다.\n\n(하나의 이용권으로 하나의 클래스를 선택할 수 있고, 추가 정기구독을 원할 시 다른 클래스를 추가로 담은 후 차액을 결제할 수 있습니다.)\n\n\n\n6. 할인정보에 마일리지 금액 입력 후 적용을 클릭합니다.\n\n\n\n(추가 신청 시 결제수단을 등록해 추가 결제를 진행해주셔야 합니다)\n\n\n\n7. 나머지 정보 입력 후 구독신청하기를 누른 후, 완료페이지가 뜨면 신청 완료!\n\n\n\n\n>>>\n\n클래스 선택 기간(5/29-6/2 오전 9시) 내에 신청을 마쳐주시면, 배송은 6월 7일에 시작됩니다!\n\n\n\n여러분은 첫번째 구독으로 어떤 클래스를 신청하셨나요?\n\n\n\n기다려주시고 응원 보내주신 후원자분들께 감사인사 드리면서,\n\n\n\n설레는 마음으로 후원자님들의 선택을 기다리고 있겠습니다 :D\n\n\n\n\n\n우리, 어서 만나요!\n\n\n\n\n\n\n\n하비팩토리 드림.\n","2017-05-04","N"));
notiList.add(new Notice(2,"하비풀 사이트 오픈","하비풀 사이트 오픈했습니다. 하비풀 드림.","2017-05-14","N"));
notiList.add(new Notice(3,"개인정보취급방침 변경 공지","안녕하세요 하비풀입니다.\n\n\n하비풀 서비스(https://hobbyful.co.kr)를 이용해주시는 고객님들께 감사드리며, 새로운 개인정보 취급방침 적용에 관한 안내 말씀 드립니다. 하비풀은 이용자 여러분의 개인정보를 무엇보다 소중하게 취급하고 있으며, 어떤 사안보다 우선하여 안전하게 관리하고 있습니다.\n\n\n[개정 사항]\n\n1. 수집하는 개인정보 항목 및 수집 방법\n\n- 제 3자인증 수단을 통한 회원 가입/로그인 시 수집하는 개인정보 및 수집방법에 대한 내용이 추가되었습니다.\n\n\n\n2. 개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항\n\n- 구글 애널리틱스를 이용한 웹로그 분석에 대한 내용이 추가되었습니다.\n\n\n\n3. 기타\n\n- 서비스 내에 링크되어있는 타 서비스의 개인정보 수집 행위에 대한 하비풀의 방침 안내가 추가되었습니다.\n\n\n\n4. 고지의 의무\n\n- 개인정보취급방침 변경 시 고지 의무에 대한 안내가 추가되었습니다.\n\n\n\n변경된 개인정보취급방침에 대한 상세한 내용은 하비풀 홈페이지 하단의 '개인정보취급방침'에서 확인하실 수 있습니다.\n\n\n\n감사합니다.\n","2017-07-14","N"));
notiList.add(new Notice(4,"서비스 접속 장애 발생 안내 말씀드립니다.","안녕하세요 하비풀입니다.\n\n \n\n어제(8월 5일) 밤 부터 홈페이지 접속 오류가 발생하고 있습니다.\n\n현재 서비스 복구 작업 진행 중에 있으며 최대한 빠른 시간 내에 정상적인 서비스를 제공할 수 있도록 하겠습니다.\n\n \n\n서비스 장애와 관련하여 진심으로 사과의 말씀 전하며,\n\n이용에 불편을 드린 점 죄송합니다.\n\n\n\n감사합니다.\n\n하비풀 드림\n","2017-08-06","N"));
notiList.add(new Notice(5,"긴~연휴를 맞아 추석 배송 일정을 안내드립니다."," 추석 배송 안내 \n\n\n\n안녕하세요 하비풀입니다!\n\n \n\n추석 연휴로 인해 변경된 배송일정을 안내드립니다. \n\n\n\n*추석 전 마지막 배송 : 9/24일 까지 \n9월24일 23시 59분까지 결제 완료된 주문에 한 해 27일에 발송됩니다. \n\n\n\n\n\n*연휴 기간 주문건 배송: 10/10일 발송 \n9월 25일~10월 4월 23시 59분 주문건은 7일이 아닌 10일에 발송됩니다. \n\n\n\n*CS 일정 안내\n\n연휴기간 동안에는 부득이하게 전화, 메일 등의 답변이 불가능함을 알려드립니다. 연휴가 끝난 후 복귀해 모두 답변드리도록 할게요! \n\n\n\n*놓치면 아까운 하비풀의 추석 선물!\n\n9월 24일(D-3) 까지 주문건에 대해서는 추석선물로 포송이 페이퍼아트 키트를 선물로 함께 드리고 있으니, \n\n\n\n놓지지 말고 연휴 전에 꼭 받아서 더 취미로운 연휴가 되시길 바랄게요 :) \n\n\n\n그럼, 하비풀은 더 좋은 소식을 들고 찾아오도록 하겠습니다.\n\n\n\n감사합니다!\n","2017-09-21","N"));
notiList.add(new Notice(6,"4월 7일 배송 출발 지연 안내","안녕하세요 취미로운 일상을 전하는 하비팩토리입니다.\n\n\n\n이번 4월 7일이 주말인 관계로 택배사 휴무에 의해 배송 출발이 지연됨을 알려드립니다.\n\n\n\n주말이 지나고 월요일인 4월 9일에 출고되는 점 참고 부탁드립니다.\n\n\n\n\n\n[4월 9일 배송 출발 대상 주문]\n\n\n\n- 기존 정기배송일이 7일인 주문\n\n \n\n- 4월 4일까지 신청한 신규 구독 주문\n\n \n\n \n\n※ 4월 5일부터 신청해주신 구독은 4월 17일에 배송 출발합니다.\n\n\n\n \n\n항상 취미와 함께하는 즐거운 일상 보내세요.\n\n \n\n감사합니다.\n","2018-04-03","N"));
notiList.add(new Notice(7,"워크샵으로 인한 고객센터 휴무 안내","안녕하세요. 취미 클래스 하비팩토리입니다.\n\n\n\n\n\n전사 워크샵으로 인해 아래 기간 동안 고객센터 휴무를 알려드립니다.\n\n\n\n \n\n[고객센터 휴무 일정]\n\n \n\n2018년 5월 31일(목) ~ 6월 1일(금)\n\n \n\n \n\n전화, 이메일 및 1:1 문의 답변이 어려우니 참고 부탁드립니다.\n\n \n\n \n\n \n\n \n\n더 나은 하비풀이 되기 위해 충분히 고민하는 시간 가지고 돌아올게요 <3\n\n \n\n \n\n감사합니다.\n","2018-05-28","N"));
notiList.add(new Notice(8,"택배사 파업으로 인한 배송 지연 안내","안녕하세요.\n\n \n\nCJ대한통운 택배사 파업 이슈로 인해 영남권 지역의 배송 지연 안내드립니다.\n\n \n\n▶ 배송 지연 지역 : 울산, 창원, 김해, 경주, 의성\n\n \n\n1일 정도 배송 지연이 이루어지고 있으며, 배송조회 오류가 발생할 수 있습니다.\n\n \n\n또한, 빠른 배송을 위해 CJ대한통운이 아닌 다른 택배사에서 상품을 배송해드릴 수도 있는 점 안내드립니다.\n\n \n\n이용에 불편드린 점 양해 부탁 드리며, 빠른 시간 내에 배송될 수 있도록 노력하겠습니다.\n\n \n\n감사합니다.\n","2018-07-13","N"));
notiList.add(new Notice(9,"추석 연휴기간 배송 및 고객센터 휴무 안내","안녕하세요.\n\n \n\n추석 연휴에 따른 배송 및 고객센터 휴무 안내드립니다.\n\n \n\n \n\n[9월 27일 정기배송]\n\n \n\n9월 27일 정기 배송 건은 정상 출고합니다. 택배사 사정에 따라 1~2일 정도 배송이 지연될 수 있습니다.\n\n \n\n \n\n[고객센터 운영]\n\n \n\n1:1 문의, 이메일, 전화 등 고객 상담은 9월 21일 정오(오후 12시)까지 운영 후, 26일까지 휴무이오니 참고 부탁드립니다.\n\n \n\n \n\n즐거운 한가위 보내세요 <3\n\n \n\n감사합니다.\n","2018-09-19","N"));
notiList.add(new Notice(10,"10/05(금) 고객센터 휴무 안내","안녕하세요. 취미 클래스 하비팩토리입니다.\n\n \n\n \n\n전사 워크샵으로 인해 고객센터 휴무 일정 알려드립니다.\n\n \n\n \n\n[고객센터 휴무 일정]\n\n \n\n2018년 10월 05일 금요일\n\n \n\n \n\n전화 문의 답변이 어려우며, 이메일 및 1:1 문의 남겨주시면 최대한 빠르게 답변드리겠습니다.\n\n \n\n \n\n더 나은 하비팩토리가 되기 위해 충분히 고민하는 시간 가지고 돌아올게요 <3\n\n \n\n \n\n감사합니다.\n","2018-10-04","N"));
notiList.add(new Notice(11,"CJ대한통운 파업으로 인한 일부지역 배송지연 안내","안녕하세요.\n\n \n\n취미 클래스 하비팩토리 입니다.\n\n \n\nCJ대한통운 택배기사 파업 이슈로 인해 일부 지역의 배송 지연 안내드립니다.\n\n \n\n▶ 배송 지연 지역 : 여주, 수원, 성남, 안산, 이천, 평택,  거제, 김해, 창원, 경주, 김천, 광주, 대구, 울산, 청주의 일부 지역\n\n \n\n1~2일 정도 배송 지연이 이루어지고 있으며, 배송조회 오류가 발생할 수 있습니다.\n\n \n\n또한, 빠른 배송을 위해 CJ대한통운이 아닌 우체국 택배에서 상품을 배송해드릴 수도 있는 점 안내드립니다.\n\n \n\n이용에 불편드린 점 양해 부탁 드리며, 빠른 시간 내에 배송될 수 있도록 노력하겠습니다.\n\n \n\n감사합니다.\n","2018-11-22","N"));
notiList.add(new Notice(12,"개인정보처리방침 변경 안내","안녕하세요 하비팩토리입니다.\n\n \n\n하비팩토리 개인정보처리방침이 아래와 같이 변경됩니다.\n\n서비스 이용에 불편이 없도록 참고 부탁드립니다.\n\n \n\n \n\n○ 변경 사유\n\n- 한국인터넷진흥원 개인정보 보호조치 모니터링 결과에 따른 개선권고\n\n \n\n \n\n○ 변경 내용\n\n7.이용자 및 법정대리인의 권리와 그 행사방법\n\n \n\n \n\n○ 적용 일시 : 2019년 6월 10일\n\n \n\n○ 상세 내용\n\n \n\n[개정 전]\n\n7. 이용자 및 법정대리인의 권리와 그 행사방법\n\n① 이용자는 언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정할 수 있으며 가입해지를 요청할 수도 있습니다.\n② 이용자들의 개인정보 조회,수정을 위해서는 \"개인정보변경\"(또는 \"회원정보수정\" 등)을 가입해지(동의철회)를 위해서는 \"회원탈퇴\"를 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다.\n③ 혹은 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면 지체 없이 조치하겠습니다.\n④ 귀하가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정이 이루어지도록 하겠습니다.\n⑤ 회사는 이용자의 요청에 의해 해지 또는 삭제된 개인정보는 \"회사가 수집하는 개인정보의 보유 및 이용기간\"에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.\n\n \n\n \n\n[개정 후]\n\n7. 이용자 및 법정대리인의 권리와 그 행사방법\n\n회사는 이용자(만 14세 미만자인 경우에는 법정대리인)의 권리를 다음과 같이 보호하고 있습니다.\n\n① 이용자는 언제든지 등록되어 있는 자신의 개인정보 또는 법정대리인의 경우 만 14세 미만자의 개인정보를 조회하거나 수정할 수 있으며 가입해지를 요청할 수도 있습니다.\n\n② 이용자들의 개인정보 조회,수정을 위해서는 \"개인정보변경\"(또는 \"회원정보수정\" 등)을 가입해지(동의철회)를 위해서는 \"회원탈퇴\"를 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다.\n③ 혹은 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면 지체 없이 조치하겠습니다.\n④ 귀하가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정이 이루어지도록 하겠습니다.\n⑤ 회사는 이용자의 요청에 의해 해지 또는 삭제된 개인정보는 \"회사가 수집하는 개인정보의 보유 및 이용기간\"에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.\n","2019-05-31","Y"));
notiList.add(new Notice(13,"홈페이지 서버 점검 안내","안녕하세요.\n\n \n\n서비스 개편을 위해 아래와 같이 서버 점검을 진행할 예정입니다.\n\n \n\n서버 점검 시간 동안에는 클래스 영상 수강을 포함하여, 홈페이지 접속이 제한되오니 이용에 참고 부탁드립니다.\n\n \n\n \n\n서버 점검 일정 : 2019년 7월 17일 수요일 00시 ~ 07시(완료시까지)\n\n \n\n \n\n감사합니다.\n","2019-07-16","Y"));
notiList.add(new Notice(14,"2019년 추석 연휴 배송 및 고객센터 휴무 일정 안내","안녕하세요 하비팩토리입니다.\n\n \n\n \n\n추석 연휴에 따른 배송 및 고객센터 휴무 일정 안내드립니다.\n\n \n\n \n\n- 추석 연휴 전 배송 마감일 : 9월 9일 오후 2시\n\n \n\n- 고객센터 휴무일 : 9월 11일 오후 3시 ~ 9월 15일까지\n\n \n\n \n\n9월 9일 오후 2시 주문까지 추석 연휴 전 배송 가능하며, 이후 주문은 9월 16일부터 순차적으로 발송됩니다.\n\n \n\n채팅, 1:1 문의, 이메일, 전화 등 고객 상담은 9월 11일 오후 3시 부터 15일까지 휴무이오니 참고 부탁드립니다.\n\n \n\n \n\n하트 여러분 모두 즐거운 한가위 보내세요 <3\n\n \n\n감사합니다.\n","2019-09-05","N"));
notiList.add(new Notice(15,"NH농협카드, KB국민카드 전산시스템 작업 안내","안녕하세요 하비팩토리입니다.\n\n \n\nNH농협카드, KB국민카드 전산 시스템 개편 작업으로 인하여 결제 서비스 이용이 제한 될 예정입니다.\n \n\n카드사별 중단 일정을 확인하시고, 연휴 기간 내 카드 이용에 불편 없으시길 바랍니다.\n\n \n\n\n \n즐거운 한가위 연휴 보내시길 바랄게요 :)\n\n \n\n감사합니다.\n","2019-09-09","N"));
notiList.add(new Notice(16,"서비스 이용약관 개정 안내","안녕하세요 하비팩토리입니다.\n\n\n\n2019년 11월 2일부터 하비풀 서비스 이용약관이 아래와 같이 개정되어 안내드립니다.\n\n\n\n1. 주요 변경 내용\n\n- 취소/교환/반품 정책 개정(제 4장 17조)\n\n- 서비스 부정 이용 금지 및 규제 항목 추가(제 5장 23조)\n\n- 이용자 게시물 저작권 이용에 관한 항목 추가 및 개정(제 6장 24조)\n\n\n\n2. 이용약관 개정 시행일\n\n- 이용약관(개정본 포함) 전체보기 : ttps://hobbyful.co.kr/term-provision.html\n\n\n\n개정 시행일 전까지 별도의 거부 의사를 표시하지 않은 회원은 변경된 약관에 동의한 것으로 간주됩니다. \n\n궁금하신 사항은 고객센터를 통해 문의주시기 바랍니다.\n\n\n\n감사합니다.\n\n하비팩토리 드림","2019-10-02","N"));
notiList.add(new Notice(17,"설 연휴 배송 일정 및 고객센터 휴무 안내","안녕하세요, 하비팩토리입니다.\n\n \n\n설 연휴에 따른 배송 일정 및 고객센터 휴무 안내드립니다.\n\n\n\n[배송 일정]\n\n\n\n1월 22일(수) 오후 2시까지의 주문은 당일 발송되며,\n\n1월 23일(목)~1월 27일(월) 주문건에 대해서는 1월 28일(화)부터 순차 발송됩니다.\n\n\n\n\n\n[고객센터 휴무]\n\n \n\n기간: 1월 24일(금)~1월 27일(월)\n\n내용: 1:1 문의/유선/실시간 채팅 등 고객센터 휴무\n\n*해당 기간동안 접수된 문의는 01/28(화)부터 순차 답변드릴 예정입니다.\n\n\n\n새해 복 많이 받으세요 :)\n\n\n\n감사합니다.\n","2020-01-20","Y"));
notiList.add(new Notice(18,"고객센터 전화상담 운영 임시중단 안내","안녕하세요. 하비팩토리입니다.\n\n하비팩토리는 고객과 임직원의 코로나19 감염 예방을 위해, 전직원 재택 근무를 결정하였습니다.\n\n\n\n이에 따라 고객센터 전화상담 운영을 임시 중단하오니, 1:1 문의 및 채팅 상담을 이용해주시기 바랍니다.\n\n※ 전화상담 중단 기간 : 2월 25일 ~ 추후 공지\n\n\n\n전화상담 외에 모든 업무는 정상 진행됨을 알려드리며, 이용에 불편을 드리게 된 점 죄송한 말씀드립니다.\n\n하루 빨리 사태가 마무리되고, 고객 여러분 모두 건강지키시길 기원하겠습니다.\n\n\n\n감사합니다.\n\n하비팩토리 드림\n","2020-02-25","Y"));

session.setAttribute("notiList", notiList);


// Order 임의 데이터 생성
/* (int)주문번호, 아이디, (int)상품번호, 구매날짜, 주문상태, (int)구매갯수, 택배회사, 운송장번호 */
ArrayList<Order> oList = new ArrayList<Order>();
for(int cnt=1; cnt < 22; cnt++){
	oList.add(new Order(cnt,"himan"+cnt,cnt,"2020-03-11","배송완료",2,"한진","111000"+(100+cnt)));
}
session.setAttribute("oList", oList);


// PReview 임의 데이터 생성
/* (int)주문번호, 아이디, 후기내용, (int)평점, 등록일 */
ArrayList<PReview> prevList = new ArrayList<PReview>();
for(int cnt=1; cnt < 22; cnt++){
	prevList.add(new PReview(cnt,"좋아요"+cnt,cnt%5,"2020-03-11"));
}
session.setAttribute("prevList", prevList);


//Request 임의 데이터 생성
/* (int)신청번호, (int)클래스번호, 아이디, 신청날짜, 신청상태 */
ArrayList<Request> reqList = new ArrayList<Request>();
for(int cnt=1; cnt < 22; cnt++){
	reqList.add(new Request(cnt,10+cnt,"himan"+(cnt+1),"2020-03-11","신청완료"));
}
session.setAttribute("reqList", reqList);


// Store 임의 데이터 생성
/* (int)상품번호, 호스트, 상품명, 승인상태, (int)가격, (int)총갯수, 상품설명, 신청일, 상품이미지 */
ArrayList<Store> sList = new ArrayList<Store>();
sList.add(new Store(1,"김씨","가죽공방","Y",25000,20,"재밌음","2020-03-25","ads01_wide.jpg","마크라메"));
for(int cnt=2; cnt < 22; cnt++){
	sList.add(new Store(cnt,"himan"+cnt,"수제 비누 "+cnt+"호","Y",5000,20+cnt,"순하고 부르러워요"+cnt,"2020-03-11","ads01_wide.jpg","마크라메"));

}
session.setAttribute("sList", sList);






response.sendRedirect("Admin_mem.jsp");
%>

</body>
</html>