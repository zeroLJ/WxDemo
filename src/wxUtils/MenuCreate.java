package wxUtils;
import java.io.Reader;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.RowSetInternal;
import javax.sql.rowset.WebRowSet;
import javax.sql.rowset.spi.XmlReader;

import com.alibaba.fastjson.JSON;

import utils.HttpRequest;

/**
 * ΢�Ź��ںŴ����Զ���˵������ݽṹ�뿴https://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1421141013
 * @author ljl
 */
public class MenuCreate {
	
	public static void main(String[] args) {
		Map<String, List<Map<String, Object>>> map = new HashMap<>(); //������װ
	    List<Map<String, Object>> list = new ArrayList<>();//һ���˵��б�����ӦΪ1~3����   һ���˵����4������
	    List<Map<String, String>> childList = new ArrayList<>();//�����˵��б�����ӦΪ1~5���� �����˵����7������
	    
//        String access_token=HttpRequest.sendGet("https://api.weixin.qq.com/cgi-bin/token", "grant_type=client_credential&appid=wxf0c5a5db0211f99d&secret=9f793217bf3047e764000d79edc63121");
//	    System.out.println("access_token" + access_token);
//	    if (true) {
//			return;
//		}

	    String access_token = WxUtils.getAccess_token();
	    
//	    String access_token = "13_hzjkAdlI_UvhWX0O0T8LJbQaAZiNxYdoyOtdqdkzQzBtfsXW4c_C-e4OqvP43tqpWiHDfK8qZFPAmMFTsXVSw0YuuPOl1aIUB40tT1STaScS_YQqEOKTVDCETGvgUtmbNDiB0GsYQw_ut3_lNMOfAEAAZB";
	   
	    map.put("button", list);
	    //��һ���˵�
	    Map<String, Object> objMap = new HashMap<>();
	    objMap.put("type", "click");
	    objMap.put("name", "���ո���");
	    objMap.put("key", "V1001_TODAY_MUSIC");
	    list.add(objMap); 
	    
	    //�ڶ����˵�
	    objMap = new HashMap<>();//�˵�����
	    objMap.put("name", "�˵�");
	    //�ڶ����˵��Ķ����˵�
	    childList = new ArrayList<>();
	    Map<String, String> childMap = new HashMap<>();
	    childMap.put("type", "view");
	    childMap.put("name", "soso");
	    childMap.put("url", "http://www.soso.com/");
	    childList.add(childMap);
	    
	    //http://193.112.132.83/WxDemo/index��jsp
	    //https://www.csdn.net/
	    childMap = new HashMap<>();
	    childMap.put("type", "view");
	    childMap.put("name", "������ҳ");
	    childMap.put("url", "http://jhonliu.club/WxDemo/tab.jsp");
	    childList.add(childMap);
	    
	    childMap = new HashMap<>();
	    childMap.put("type", "view");
	    childMap.put("name", "base");
	    childMap.put("url", "https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxf0c5a5db0211f99d&redirect_uri=http://193.112.132.83/WxDemo/Show&response_type=code&scope=snsapi_base&state=123#wechat_redirect");
	    childList.add(childMap);
	    
	    childMap = new HashMap<>();
	    childMap.put("type", "view");
	    childMap.put("name", "userinfo");
	    childMap.put("url", "https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxf0c5a5db0211f99d&redirect_uri=http://193.112.132.83/WxDemo/Show&response_type=code&scope=snsapi_userinfo&state={123456}#wechat_redirect");
	    childList.add(childMap);
	    
	    
//	    childMap = new HashMap<>();
//	    childMap.put("type", "miniprogram");
//	    childMap.put("name", "wxaa");
//	    childMap.put("url", "http://mp.weixin.qq.com");
//	    childMap.put("appid", "wx286b93c14bbf93aa");
//	    childMap.put("pagepath", "pages/lunar/index");
//	    childList.add(childMap);
	    
	    childMap = new HashMap<>();
	    childMap.put("type", "view");
	    childMap.put("name", "�˵�");
	    childMap.put("url", "https://mp.weixin.qq.com/mp/homepage?__biz=MzU2NzY3OTM5Mg%3D%3D&hid=1&sn=7cea03cee8b433fb6c5d4becbd44025c");
	    childList.add(childMap);
	    
//	    childMap = new HashMap<>();
//	    childMap.put("type", "click");
//	    childMap.put("name", "������һ��");
//	    childMap.put("key", "V1001_GOOD");
//	    childList.add(childMap);
	    
	    objMap.put("sub_button", childList);//���õڶ����˵����Ӳ˵��б�
	    list.add(objMap); 
	    
	    //�������˵�
	    objMap = new HashMap<>();
	    objMap.put("type", "scancode_waitmsg");
	    objMap.put("name", "ɨ����ʾ");
	    objMap.put("key", "rselfmenu_0_0");
	    list.add(objMap); 
	    
	    String json = JSON.toJSONString(map);//ת����json
	    System.out.println("json:" + json);
	    String result = HttpRequest.sendPost("https://api.weixin.qq.com/cgi-bin/menu/create?access_token="+access_token, json);
	    System.out.println(result);
		
	}
}
