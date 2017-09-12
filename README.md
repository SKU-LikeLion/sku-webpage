# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
2.3.3
* System dependencies
rails 5.0.0


#설명
vender 를 제외하고 클론하시길 바랍니다!!!!!

main폴더에  인덱스가 기본 화면이라고 보시면되고 sidebar 파일은 사이드바 넣으시면됩니다

추가하실때는 render이용 요망

<%= paginate @notices %> 이용하면 페이지네이션 됩니다. 각각의 게시판에 추가안해놨습니다
(이것도 디자인요망 자세한건  kaminari젬 설명을 찾아보시길. )

현재

galleries, lectures,main ,notices, posts, lectures_notes 파일이있는데  각각

갤러리 , 강의,메인화면 , 공지게시판 , 자유게시판,강의 노트 게시판 이라고 보시면되고

->  게시판 안에(따로 연결만해주시면됩니다,컨트롤러이런거 없어도되영 대주제 느낌)
  ->자유 게시판 강의노트 게사판 정도 넣어주면될거같습니다
  
  따른식으로 연결하셔도 무방하실듯
  
  



09.12 front-end
- bootstrap Gem 설치(3.3.6),
  application.scss(boostrap templete, css파일 import),
  application.js(boostrap require)
- 레이아웃
  application.html.erb 안에 _sidebar 페이지 렌더.
  페이지들 상하에 header, footer 페이지 렌더.
- 공지사항, 게시판 완료
- 갤러리 수정중(구성어떻게할지좀더생각..업로드가능하나용..??)