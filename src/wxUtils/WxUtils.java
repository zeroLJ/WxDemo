package wxUtils;

import java.util.HashMap;
import java.util.Map;

import org.apache.catalina.core.ApplicationJspConfigDescriptor;

import com.alibaba.fastjson.JSON;

import utils.HttpRequest;
import utils.Logs;
import utils.ObjUtils;

public class WxUtils {
	private static String appID = "wxf0c5a5db0211f99d";
	private static String appsecret = "9f793217bf3047e764000d79edc63121";
	
	
	/**
	 * ��ȡ���ں�Access_token
	 * @return
	 */
	public static String getAccess_token() {
		Map<String, String> params = new HashMap<>();
		params.put("grant_type", "client_credential");
		params.put("appid", appID);
		params.put("secret", appsecret);
	    String access_token_json=HttpRequest.sendGet("https://api.weixin.qq.com/cgi-bin/token", params);
	    System.out.println("access_token_json:" + access_token_json);
	    Map<String, Object> access_token_map = JSON.parseObject(access_token_json, Map.class);
	    String access_token = String.valueOf(access_token_map.get("access_token"));
	    return access_token;
	}
	
	/**
	 * ��ȡ�û�Access_token
	 * @param code  �û�ͬ����Ȩ�󴫻�����code
	 * @return
	 */
	public static WxUserToken getUserAccess_token(String code) {
		Map<String, String> params = new HashMap<>();
		params.put("appid", appID);
		params.put("secret", appsecret);
		params.put("code", code);
		params.put("grant_type", "authorization_code");
	    String json=HttpRequest.sendGet("https://api.weixin.qq.com/sns/oauth2/access_token", params);
	    Logs.d("user_json:" + json);
	    WxUserToken token = new WxUserToken(json);
	    return token;
	}
	
	/**
	 * ˢ���û�Access_token
	 * @param oldToken  ͨ��getUserAccess_token��ȡ��token
	 * @return
	 */
	public static WxUserToken refreshUserAccess_token(WxUserToken oldToken) {
		Map<String, String> params = new HashMap<>();
		params.put("appid", appID);
		params.put("grant_type", "refresh_token");
		params.put("refresh_token", oldToken.refresh_token);
	    String json=HttpRequest.sendGet("https://api.weixin.qq.com/sns/oauth2/refresh_token", params);
	    Logs.d("refresh_json:" + json);
	    WxUserToken token = new WxUserToken(json);
	    return token;
	}
	
	/**
	 * �����û���Ȩƾ֤��access_token���Ƿ���Ч
	 * @param wxUserToken
	 * @return
	 */
	public static boolean checkUserAccess_token(WxUserToken wxUserToken) {
		Map<String, String> params = new HashMap<>();
		params.put("access_token", wxUserToken.access_token);
		params.put("openid", wxUserToken.openid);
	    String json=HttpRequest.sendGet("https://api.weixin.qq.com/sns/auth", params);
	    Logs.d("check_json:" + json);
	    Map<String, Object> resultMap = JSON.parseObject(json, Map.class);
	    if (ObjUtils.objToInt(resultMap.get("errcode"))==0) {
			return true;
		}else {
			return false;
		}
	}
	
	/**
	 * ��ȡ�û���Ϣ��(��scopeΪ snsapi_userinfo)
	 * @param token
	 * @return
	 */
	public static WxUserInfo getWxUserInfo(WxUserToken token) {
		Map<String, String> params = new HashMap<>();
		params.put("access_token", token.access_token);
		params.put("openid", token.openid);
		params.put("lang", "zh_CN"); //	���ع��ҵ������԰汾��zh_CN ���壬zh_TW ���壬en Ӣ��
	    String json=HttpRequest.sendGet("https://api.weixin.qq.com/sns/userinfo", params);
	    Logs.d("userinfo_json:" + json);
	    WxUserInfo info = new WxUserInfo(json);
	    return info;
	}
	
	/**
	 * �ӿڵ��ô�����0 ��ÿ���ʺ�ÿ�¹�10������������ᣬ������Чһ�μ��õ�һ�λ��ᣨ10�ΰ�����ƽ̨�ϵ�����͵��ýӿ�API�����㣩��
	 * @return
	 */
	public static boolean clear_quota() {
		Map<String, String> map = new HashMap<>();
		map.put("appid", appID);
	    String result = HttpRequest.sendPost("https://api.weixin.qq.com/cgi-bin/clear_quota?access_token=" + getAccess_token(), JSON.toJSONString(map));
	    Logs.d("result:" + result);
	    Map<String, Object> resultMap = JSON.parseObject(result, Map.class);
	    if (ObjUtils.objToInt(resultMap.get("errcode"))==0) {
			return true;
		}else {
			return false;
		}
	}
}
