package semi.enjoy.controller;


import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.Scanner;
import java.util.StringTokenizer;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import semi.enjoy.model.service.EnjoyService;


public class EnjoyCraler {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// 음식점2(eat), 명소, 쇼핑에 대한 크롤링
		
		
		int su1 = 0;
		String SearchURLTotal ="";
		try {
//			BufferedReader br = new BufferedReader(new FileReader("c:/EnjoySearchURLShopping.txt"));
			BufferedReader br = new BufferedReader(new FileReader("c:/EnjoySearchURLAttraction.txt"));
			//BufferedReader br = new BufferedReader(new FileReader("c:/EnjoySearchURLRedeat.txt")); // < 요거안됨
//			BufferedReader br = new BufferedReader(new FileReader("c:/EnjoySearchURLEat.txt"));
			String line ="";
			while((line= br.readLine()) !=null)
			{
				su1++;
				SearchURLTotal += "##"+line;
			}
			System.out.println("url 주소를 읽어온 갯수 : "+su1);
			System.out.println(SearchURLTotal);
			br.close();
			
		} catch (FileNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		// DOM 형식 문서를 담을 documnet 클래스의 객체 doc
		// address = < 정보를 doc형태로 가져올 url 주소,
		
//		String address = "";	
		
		Scanner sc = new Scanner(System.in);
		
		
		
		
		
		
		
		try {
			
			StringTokenizer SearchURL = new StringTokenizer(SearchURLTotal, "##");
			while(SearchURL.hasMoreTokens()) {
				
				
			String address =SearchURL.nextToken();
			System.out.println(address);

			/*address =
					"http://korean.visitseoul.net/attractions/%EC%84%B8%EB%B8%90%EB%9F%AD%EC%B9%B4%EC%A7%80%EB%85%B8_/358?curPage=38";*/
					/*"http://korean.visitseoul.net/attractions/gallerly-3ann-kr_/25060?curPage=1";*/
			
			Document doc = Jsoup.connect(address).header("User-Agent","Chrome/66.0.3359.117").get();
			
			System.out.println("DOC");

		/*	Elements IMAGES = doc.select("img[^src]");
			
			for(Element element : IMAGES) {
				System.out.println(element);
			}
			
			eq 로 하는방법이 있으나 이부분은 우선 생략, 만약 사진이 더많거나,적거나 할경우는 제대로 서치가안될듯.
			*/ 
			
		
			// 현재 위치 긁어오기 -> 타이틀 긁어오기, DB에 넣어줄떄 작업을해야함
			
			Elements CurrentState = doc.select("title");
			String CurrentType ="";
		
			String CurrentTypeElement = "";// 분류지어줄녀석 예를들면, 명소, 추천코스, top10등
			for(Element CS : CurrentState)
			{
				
				CurrentType = CS.text(); 
				
			}
			
			StringTokenizer CTST = new StringTokenizer(CurrentType," ");
			
			while(CTST.hasMoreTokens())
			{
				String CurrentToken = CTST.nextToken();
				if(CurrentToken.equals("추천코스"))
				{
					CurrentTypeElement = "type1";
				}
				else if(CurrentToken.equals("명소")) {
					CurrentTypeElement = "type2";
				}
				else if(CurrentToken.equals("쇼핑")) {
					CurrentTypeElement = "type3";
				}
				else if(CurrentToken.equals("숙박")) {
					CurrentTypeElement = "type4";
				}
				else if(CurrentToken.equals("음식점.")) {
					CurrentTypeElement = "type5";
				}
				else if(CurrentToken.equals("음식점")) {
					CurrentTypeElement = "type5";
				}
				else if(CurrentToken.equals("캘린더")) {
					CurrentTypeElement = "type6";
				}
								
			}
			System.out.println(CurrentTypeElement);
			
			
			// 게시물 제목 가져오기
			
			String TitleName ="";
			
			
			Elements CurrentTitle = doc.select("h3");
			for(Element currentTitle : CurrentTitle)
			{
				TitleName = currentTitle.text();
			}
			System.out.println(TitleName);
			
			// 메인이미지 
			
			
			Elements MainImageURL = doc.select("div #main-img img");
			
			String Mainsrc ="";
			for(Element ME : MainImageURL) {
				
				Mainsrc = ME.attr("abs:src");
				//System.out.println("메인이미지");
				//System.out.println(Mainsrc);
			}

			
			
			// 서브이미지 + 메인이미지
			
			Elements SubImageURL = doc.select("ul li a>img");
//			System.out.println("서브이미지");
			String SubImage ="";
			String Subsrc ="";
			for(Element SE : SubImageURL ) {
				
				Subsrc = SE.attr("abs:src");
				if(Subsrc.startsWith("http://korean.visitseoul.net/comm"))
				{
					SubImage += "##"+Subsrc; 
				}
				/*// 정상적으로 안될경우 // 서브이미지가없는 단일형태의 이미지들을 처리해야함.
				
				
				else if(!Subsrc.startsWith("http://korean.visitseoul.net/comm"))
				{
				
					SubImageURL = doc.select("section div img");
					for(Element SA : SubImageURL)
					{
						Subsrc = SA.attr("abs:src");
						
						if(Subsrc.startsWith("http://korean.visitseoul.net/comm"))
						{
							SubImage += "##"+Subsrc;
						}
						// 단일이미지중에서 comm 의 폴더에서불러오는애들인지?
						else if(!Subsrc.startsWith("http://korean.visitseoul.net/comm"))
						{
							SubImageURL = doc.select("section #content img");
							for(Element Sa : SubImageURL)
							{
								Subsrc = Sa.attr("abs:src");
								//media에서불러오는애들인지?
								if(Subsrc.startsWith("http://korean.visitseoul.net/media"))
								{
									SubImage += "##"+Subsrc;
								}
							}
						}
					}
					
				}*/

			}
			System.out.println("이미지 : "+SubImage);
			
			/*
			if(SubImageURL.toString()==null)
			{
				SubImageURL = doc.select("section #content");
				for(Element Sa : SubImageURL)
				{
					String Subsrc = Sa.attr("abs:src");
					SubImage += "##"+Subsrc;
				}
			}
			System.out.println("서브이미지 :"+ SubImage);*/
				
			
				// 기본정보 - 기본내용  클래스로 접근
			
			Elements basicInfoData = doc.select("div .fc-black");
			//System.out.println("기본내용");
			String bid ="";
			for(Element bidData : basicInfoData)
			{
				
				bid += bidData.text();
			}
			
				
				System.out.println(bid);
				
			// 기본정보 - 작성일 
			Elements BasicInforDate = doc.select("div #content p").eq(0);
			for(Element BIFD : BasicInforDate)
			{
				if(!BIFD.text().startsWith("[20"))
				{
					BasicInforDate = doc.select("div #content p").eq(1);
					for(Element bdf : BasicInforDate)
					{
						if(!bdf.text().startsWith("[20"))
						{
							BasicInforDate = doc.select("div #content p").eq(2);
							for(Element bf : BasicInforDate)
							{
								if(!bf.text().startsWith("[20"))
								{
									BasicInforDate = doc.select("div #content p").eq(3);	
								}
								
							}
						}
						
					}
					
				}
			}
			StringTokenizer ST = new StringTokenizer(BasicInforDate.text(), "/");
			String WriteDate = ST.nextToken().substring(1,11);
			System.out.println("작성일 : "+ WriteDate);
			
			
				
				// 기본정보 - 태그, 클래스접근				wrp-tagcloud
			
			Elements basicInfoTags = doc.select("div .wrp-tagcloud");
			String TagsTotal = "";
			
			for(Element tag : basicInfoTags)
			{
				TagsTotal += tag.text(); 
			}
			StringTokenizer tagST = new StringTokenizer(TagsTotal, "#");
			String Tag = "";
			tagST.nextToken(); // 태그 라는 글자버리고
			while(tagST.hasMoreTokens())
			{
				Tag += "#"+tagST.nextToken();
			}
					
			System.out.println("태그 : "+ Tag);
			
			

//			System.out.println(WriteDate);
			
			
/*
			
			
			Elements basicInfoTags = doc.select("div .wrp-tagcloud a");
			
			String Tags = "";
			for(Element bidTags : basicInfoTags)
			{
				Tags += bidTags.text();
				
				
			}*/
//			System.out.println("태그들");
//			System.out.print(Tags);
			
			
			/////////////////////////////////////////////
			/////////////////////////////////////////////

			
			/*// 상세정보 - 컬럼가져오기 ★이건쓰지말고 , 한번에 다들고오는걸로써보고 안될경우이걸쓰자
			
			
			Elements DetailInforColum = doc.select("div .content dl dt");
			
			String DIFColum ="";			
			String CurrentColume ="";
			
			String addr = "";
			String phone = "";
			String weburl ="";
			String ontime ="";
			String offday ="";
			String onday ="";
			String notice ="";
			String payment ="";
			String disabled ="";
			String utilly ="";
			
			
			for(Element dif : DetailInforColum)
			{
				DIFColum = dif.text().substring(2); //  컬럼들 앞에 붙은 수식어들 지우기 // ● 이런모양들
				
				switch(DIFColum)
				{
				case "주소" :  addr = DIFColum; break;
				case "전화번호" : phone = DIFColum; break;
				case "웹사이트" : weburl = DIFColum; break;
				case "이용시간" : ontime = DIFColum; break;
				case "휴무일" :  offday = DIFColum; break;
				case "운영 요일" : onday = DIFColum; break;
					
				case "규모" :	 notice = DIFColum; break;
				case "이것만은 꼭!" :  notice += DIFColum; break;
				case "대표메뉴" : notice = DIFColum; break;
					
				case "이용요금" :  payment = DIFColum; break;
				case "가격대" : payment += DIFColum; break;
					
				case "장애인 편의시설" : disabled = DIFColum; break;
					
				case "이용시설안내" : utilly = DIFColum; break;
				}
			}
			//System.out.println(DIFColum2); 
			
			
			// 상세정보 - 컬럼에대한 로우, 정보가져오기 ★이건쓰지말고 , 한번에 다들고오는걸로써보고 안될경우이걸쓰자
			
			
			Elements DetailInforColumRow = doc.select("div .content dl dd");
			
			
			for(Element dif : DetailInforColumRow)
			{
				System.out.println("내용 : "+dif.text());
			}
				
				*/
				
		
			
			
			
			// 상세정보 한번에 다들고오기.

			Elements DetailInfor = doc.select("div .content dl");
//			System.out.println("상세정보");
			
			System.out.println("상세정보까지 성공");
			
			
			String difdata = "";
			
			
			String addr = null;
			String phone = null;
			String weburl =null;
			String ontime =null;
			String offday =null;
			String onday =null;
			String notice =null;
			String payment =null;
			String disabled =null;
			String utilly =null;
			
			System.out.println("웹페이지 성공");
			for(Element difdataInfor : DetailInfor)
			{
				
				difdata += "##"+difdataInfor.text().substring(2);
				
			}
//			System.out.println(difdata);
			StringTokenizer difST = new StringTokenizer(difdata, "##");
			while(difST.hasMoreTokens()) {
			String CurrentToken = difST.nextToken();
			if(CurrentToken.startsWith("주소")) {addr = CurrentToken.replace("주소 ", "");}
			else if(CurrentToken.startsWith("전화번호")) {phone = CurrentToken.replace("전화번호 ", "");}
			else if(CurrentToken.startsWith("웹사이트")) {weburl = CurrentToken.replace("웹사이트 ", "");}
			else if(CurrentToken.startsWith("이용시간")) {ontime = CurrentToken.replace("이용시간 ", "");}
			else if(CurrentToken.startsWith("휴무일")) {offday = CurrentToken.replace("휴무일 ", "");}
			else if(CurrentToken.startsWith("운영 요일")) {onday = CurrentToken.replace("운영 요일 ", "");}
			else if(CurrentToken.startsWith("대표메뉴")) {notice = CurrentToken.replace("대표메뉴 ", "");}
			else if(CurrentToken.startsWith("이것만은 꼭!")) {notice = CurrentToken.replace("이것만은 꼭! ", "");}
			else if(CurrentToken.startsWith("가격대")) {payment = CurrentToken.replace("가격대 ", "");}
			else if(CurrentToken.startsWith("이용요금")) {payment = CurrentToken.replace("이용요금 ", "");;}
			else if(CurrentToken.startsWith("장애인 편의시설")) {disabled = CurrentToken.replace("장애인 편의시설 ", "");}
			else if(CurrentToken.startsWith("이용시설안내")) {utilly = CurrentToken.replace("이용시설안내 ", "");}
			}
			
			
			// 웹페이지 주소가져오기
			if(weburl!=null) {
						Elements WebURL = doc.select("div .content dd a");
						weburl = WebURL.attr("abs:href");
						System.out.println("웹페이지 찾아가기 : " +weburl);
						
			}
			
			
			
			

			 
					// 지도&교통

			Elements Trafic = doc.select("div .content tbody tr");
			// tr th 컬럼
			// tr td 로우
//			System.out.println("지도교통");
			
			String TraficInfoData ="";
			for(Element Traficinfo : Trafic)
			{
				
				TraficInfoData += "##"+(Traficinfo.text());
			}
			 
			
			
			// 값들을 서비스쪽으로 넘겨줘야하는데 결국 DAO에 이정보들을 그대로넘겨줄순없습니다.
			// DAO에서는 특정값들이 입력되야하니까..음... 
			// 저는 한개의 게시물을 구성하려면 3개의 테이블이 필요한데
			// 기본정보, 상세정보, 댓글 이렇게 구성되어있으니.. 
			// 우선 기본정보만 넘겨보는걸 해봅시다
			
			// 기본정보를 구성하는 요소(게시물의 분류, 게시물시퀀스넘버(건드릴필요x), 제목, 내용, 작성일, 태그, 이미지) 이렇게 총7개가 필요하지만
			// 시퀀스는 건드릴필요가없으니 6개만 가져와봅시다
			
			
			/*int result = new EnjoyService().insertCrawlerBasicInfor(CurrentTypeElement, TitleName, bid,WriteDate,Tags,Mainsrc);
			// ★ 문제 // 이미지는 사실 하나가아니라 4장이 들어가야함 
			if(result>0)
			{
				System.out.println("기본내용 저장 성공");
			}
			else {
				System.out.println("기본내용 저장 실패");
			}
			*/
			
			//세부내용 저장하기
			// 그럼이제 세부내용을 저장하는걸로
			// 세부내용을 구성하는 테이블의 요소를 확인합시다
			// (시퀀스, 게시물분류, 위치, 전화번호, 웹페이지주소, 운영시간, 휴일, 운영일, 안내사항, 금액, 장애인편의시설, 이용시설안내)
			
/*			System.out.println(CurrentTypeElement);
			System.out.println(addr);
			System.out.println(phone);
			System.out.println(weburl);
			System.out.println(ontime);
			System.out.println(offday);
			System.out.println(onday);
			System.out.println(notice);
			System.out.println(payment);
			System.out.println(disabled);
			System.out.println(utilly);*/
			
			
			
		/*	
			int result =new EnjoyService().insertCrawlerDefailInfor(CurrentTypeElement,addr, phone, weburl, ontime,offday,onday,notice,payment,disabled,utilly);
			
			if(result>0)
			{
				System.out.println("세부내용 저장 성공");
			}
			else {
				System.out.println("세부내용 저장 실패");
			}
			*/
			
			// Currentval 가 한 세션에서만 유지되므로, 다른 변수를 사용하거나, DAO 에서 한번에 처리하는방법을 해야한다고생각함
			// 따라서 한번에 처리할수있게 값들을 같이넘기는걸 만들겠습니다
			
			
			
			int result =new EnjoyService().insertCrawlerTotal(CurrentTypeElement,addr, phone, weburl, ontime,offday,onday,notice,payment,disabled,utilly,TitleName,bid,WriteDate,Tag,SubImage);			
			if(result>0)
			{
				System.out.println("세부내용 저장 성공");
			}
			else {
				System.out.println("세부내용 저장 실패");
			}
			
		}
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		System.out.println("총 저장한 게시물 수 : "+su1);
	}

}
