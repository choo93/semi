
import java.io.IOException;
import java.net.URLEncoder;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class EnjoyCrwalerList {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int su1 =1;
		int max =297; // 지정해줘야함.
		String URLtext = "http://korean.visitseoul.net/redeat?curPage="; // 기준이되는 list의 url을 지정.\
		
		String texturl ="";
		String text1 ="";
		String text2 ="";
		
		String textHead ="";
		String textBody ="";
		String textFoot ="";
		String FinallyText ="";
		
		// ★ 삭제하지마세요  
		// enjoy - 명소 데이터
		// max=59;  URLtext = "http://korean.visitseoul.net/attractions?curPage="; 
		// text1 =  texturl.substring(29,33); // text1.equals("attr")
		//  textHead = texturl.substring(0,41); textBody = texturl.substring(41,z); textFoot = texturl.substring(z);
		 
		// enjoy - 쇼핑 데이터
		// max = 12; String URLtext = "http://korean.visitseoul.net/shopping?curPage="; 
		// text1 = texturl.substring(29, 33); // text1.equals("shop");
		// textHead = texturl.substring(0,38); textBody = texturl.substring(38,z); textFoot = texturl.substring(z);
		
		// enjoy - 음식점 데이터 (redeat)
		// max=297; String URLtext = "http://korean.visitseoul.net/redeat?curPage=";
		// text1 = texturl.subSTring(29,33); // text1.equals("rede")
		
		// enjoy - 음식점 데이터 (eat)
		// max=297; String URLtext = "http://korean.visitseoul.net/redeat?curPage=";
		// text1 = texturl.subSTring(29,32); // text1.equals("eat")
		// textHead = texturl.substring(0,33); textBody = texturl.substring(33,z); textFoot = texturl.substring(z);
		
		
		
		
		for(int i=su1;i<max;i++ )
		{
			try {
				String SearchURLTotal = URLtext+su1;
				Document doc = Jsoup.connect(SearchURLTotal).header("User-Agent","Chrome/66.0.3359.117").get();
				
				Elements ListAll = doc.select("div #tab-cont-list div article p > a"); // p태그를 모두들고온뒤에 calss가 tag인녀석들을 제외한것들중에 뽑아내면됨
				
				
				for(Element el : ListAll)
				{
				 texturl = el.attr("abs:href");
				 
				 text1 = texturl.substring(29, 32);
				 if(text1.equals("eat"))
				 {
					 int a = texturl.length();
					 int z = texturl.lastIndexOf("/");
					 
					 textHead = texturl.substring(0,33);
					 textBody = texturl.substring(33,z);
					 textFoot = texturl.substring(z);
					 
					 text2 = URLEncoder.encode(textBody, "UTF-8");
					 
					 FinallyText = textHead + text2 + textFoot;
					 System.out.println(FinallyText);
				 }
				}
				
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
			su1++;
			
			
		}
		System.out.println("종료되었습니다");
	}

}
