package com.teamx.respets.userClass;

import java.util.HashMap;

import com.teamx.respets.bean.AdminBoard;

public class Paging {

	private int maxNum; // 전체 글의 개수
	private int pageNum; // 현재 페이지 번호
	private int listCount; // 10 // 페이지당 나타낼 글의 갯수
	private int pageCount; // 5 // 페이지그룹당 페이지 갯수
	private String boardName; // 게시판의 종류

	public Paging(int maxNum, int pageNum, int listCount, int pageCount, String boardName) {
		this.maxNum = maxNum;
		this.pageNum = pageNum;
		this.listCount = listCount;
		this.pageCount = pageCount;
		this.boardName = boardName;
	}

	@SuppressWarnings("unused")
	public String makeHtmlPaging() {
		// 전체 페이지 갯수
		int totalPage = (maxNum % listCount > 0) ? maxNum / listCount + 1 : maxNum / listCount;
		// 전체 페이지 그룹 갯수
		int totalGroup = (totalPage % pageCount > 0) ? totalPage / pageCount + 1 : totalPage / pageCount;
		// 현재 페이지가 속해 있는 그룹 번호
		int currentGroup = (pageNum % pageCount > 0) ? pageNum / pageCount + 1 : pageNum / pageCount;
		return makeHtml(currentGroup, totalPage, boardName);
	} // method End

	private String makeHtml(int currentGroup, int totalPage, String boardName) {
		StringBuffer sb = new StringBuffer();
		// 현재 그룹의 시작 페이지 번호
		int start = (currentGroup * pageCount) - (pageCount - 1);
		// 현재 그룹의 끝 페이지 번호
		int end = (currentGroup * pageCount >= totalPage) ? totalPage : currentGroup * pageCount;
		
		if (start != 1) {
			sb.append("<li><a href='" + boardName + "?pageNum=" + (start - 1) + "'>");
			sb.append("이전</a></li>");
		} // method End

		for (int i = start; i <= end; i++) {
			if (pageNum != i) { // 현재 페이지가 아닌 경우 링크 처리
				sb.append("<li><a href='" + boardName + "?pageNum=" + i + "'>");
				sb.append("  "+ i +"</a></li>");
			} else { // 현재 페이지인 경우 링크 해제
				sb.append("<font style='color: red;'> "  + i + "  </font>");
			} // else End
		} // for End
		
		if (end != totalPage) {
			sb.append("<li><a href='" + boardName + "?pageNum=" + (end + 1) + "'>");
			sb.append("다음</a></li>");
		} // if End
		return sb.toString();
	} // method End
	
	@SuppressWarnings("unused")
	public String makeHtmlSearchPaging(HashMap<String, Object> hmap) {
		System.out.println("paging makeHtmlSearchPaging hmap=" + hmap);
		// 전체 페이지 갯수
		int totalPage = (maxNum % listCount > 0) ? maxNum / listCount + 1 : maxNum / listCount;
		// 전체 페이지 그룹 갯수
		int totalGroup = (totalPage % pageCount > 0) ? totalPage / pageCount + 1 : totalPage / pageCount;
		// 현재 페이지가 속해 있는 그룹 번호
		int currentGroup = (pageNum % pageCount > 0) ? pageNum / pageCount + 1 : pageNum / pageCount;
		return makeHtmlSearch(currentGroup, totalPage, boardName, hmap);
	} // method End
	
	private String makeHtmlSearch(int currentGroup, int totalPage, String boardName, HashMap<String, Object> hmap) {
		StringBuffer sb = new StringBuffer();
		System.out.println("paging makeHtmlSearch hmap=" + hmap);
		String select = hmap.get("select").toString();
		String search = hmap.get("search").toString();
		System.out.println("꺼내오니 select? " + select);
		System.out.println("꺼내오니 search? " + search);
		// 현재 그룹의 시작 페이지 번호
		int start = (currentGroup * pageCount) - (pageCount - 1);
		// 현재 그룹의 끝 페이지 번호
		int end = (currentGroup * pageCount >= totalPage) ? totalPage : currentGroup * pageCount;
		
		if (start != 1) {
			sb.append("<li><a href='" + boardName + "?pageNum=" + (start - 1) + "&select="+ select + "$search=" + search +"'>");
			sb.append("이전</a></li>");
		} // method End

		for (int i = start; i <= end; i++) {
			if (pageNum != i) { // 현재 페이지가 아닌 경우 링크 처리
				sb.append("<li><a href='" + boardName + "?pageNum=" + i + "&select="+ select + "&search="+ search +"'>");
				sb.append("  "+ i +"</a><li>");
			} else { // 현재 페이지인 경우 링크 해제
				sb.append("<font style='color: red;'> "  + i + "  </font>");
			} // else End
		} // for End
		
		if (end != totalPage) {
			sb.append("<li><a href='" + boardName + "?pageNum=" + (end + 1) + "&select="+ select + "&search="+ search + "'>");
			sb.append("다음</a></li>");
		} // if End
		return sb.toString();
	} // method End

	public String makeHtmlSearchPaging(AdminBoard abo) {
		System.out.println("paging makeHtmlSearchPaging hmap=" + abo);
		// 전체 페이지 갯수
		int totalPage = (maxNum % listCount > 0) ? maxNum / listCount + 1 : maxNum / listCount;
		// 전체 페이지 그룹 갯수
		int totalGroup = (totalPage % pageCount > 0) ? totalPage / pageCount + 1 : totalPage / pageCount;
		// 현재 페이지가 속해 있는 그룹 번호
		int currentGroup = (pageNum % pageCount > 0) ? pageNum / pageCount + 1 : pageNum / pageCount;
		return makeHtmlSearch(currentGroup, totalPage, boardName, abo);
	}

	private String makeHtmlSearch(int currentGroup, int totalPage, String boardName, AdminBoard abo) {
		StringBuffer sb = new StringBuffer();
		System.out.println("paging makeHtmlSearch hmap=" + abo);
		String abc_name = abo.getAbc_name();
		String search = abo.getSearch();
		System.out.println("꺼내오니 select? " + abc_name);
		System.out.println("꺼내오니 search? " + search);
		// 현재 그룹의 시작 페이지 번호
		int start = (currentGroup * pageCount) - (pageCount - 1);
		// 현재 그룹의 끝 페이지 번호
		int end = (currentGroup * pageCount >= totalPage) ? totalPage : currentGroup * pageCount;
		
		if (start != 1) {
			sb.append("<a href='" + boardName + "?pageNum=" + (start - 1) + "&select="+ abc_name + "$search=" + search +"'>");
			sb.append("이전</a>");
		} // method End

		for (int i = start; i <= end; i++) {
			if (pageNum != i) { // 현재 페이지가 아닌 경우 링크 처리
				sb.append("<a href='" + boardName + "?pageNum=" + i + "&select="+ abc_name + "&search="+ search +"'>");
				sb.append("  "+ i +"</a>");
			} else { // 현재 페이지인 경우 링크 해제
				sb.append("<font style='color: red;'> "  + i + "  </font>");
			} // else End
		} // for End
		
		if (end != totalPage) {
			sb.append("<a href='" + boardName + "?pageNum=" + (end + 1) + "&select="+ abc_name + "&search="+ search + "'>");
			sb.append("다음</a>");
		} // if End
		return sb.toString();
	}

} // class End
