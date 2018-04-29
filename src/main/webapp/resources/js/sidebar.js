/**
 *  사이드바 전용 자바스크립트 파일
 */

$(document).ready(function() {
	$('#sidebarCollapse').on('click',function() {
		$('#sidebar').toggleClass('active');
	});
}); 