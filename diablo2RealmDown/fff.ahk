#CommentFlag //

//F1::
//CoordMode, Pixel, Screen // 픽셀 관련 명령어의 기준 좌표를 절대 좌표로 설정
SetTimer, s1, 10000 // 서브루틴 s1을 600초 간격으로 실행하도록 설정
s1: // 서브루틴 s1 시작
Loop { // 루프 시작
//	ImageSearch, ax, by, 0, 0, 0, 0, *20 rd.bmp // rd.bmp 검색
	imagesearch,xx,yy,0,0,A_screenwidth,A_screenheight,rd1.bmp
	if (ErrorLevel = 0) { // 탐색에 성공했다면
		//Sleep, 300 // 300ms 지연
		soundplay, notify.wav
		SoundPlay *-1
		//Sleep, 500 // 1500ms 지연
		break // 루프 탈출
	}
}
return

F2::Pause
F12::ExitApp // 스크립트 종료