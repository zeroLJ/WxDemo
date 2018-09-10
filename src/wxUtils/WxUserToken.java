package wxUtils;

import java.util.Map;

import com.alibaba.fastjson.JSON;

import utils.ObjUtils;

/**
 * ���ں��û���Ȩ�ɹ����ȡ�ĸ��û�����Ϣ �� �����п��ܻ�ȡʧ�ܣ�ʹ�õ�ʱ��Ҫ���ж�expires_in�Ƿ����0;��Ϊ0��Ϊ��ȡʧ��
 * @author ljl
 */
public class WxUserToken {
	public String access_token;//��ҳ��Ȩ�ӿڵ���ƾ֤,ע�⣺��access_token�����֧�ֵ�access_token��ͬ
	public int expires_in;//access_token�ӿڵ���ƾ֤��ʱʱ�䣬��λ���룩
	public String refresh_token;//�û�ˢ��access_token
	public String openid;//�û�Ψһ��ʶ����ע�⣬��δ��ע���ں�ʱ���û����ʹ��ںŵ���ҳ��Ҳ�����һ���û��͹��ں�Ψһ��OpenID
	public String scope;//�û���Ȩ��������ʹ�ö��ţ�,���ָ�        snsapi_base/snsapi_userinfo
	
	public WxUserToken(String json) {
		Map<String, Object> map = JSON.parseObject(json, Map.class);
		access_token = ObjUtils.objToStr(map.get("access_token"));
		expires_in = ObjUtils.objToInt(map.get("expires_in"));
		refresh_token = ObjUtils.objToStr(map.get("refresh_token"));
		openid = ObjUtils.objToStr(map.get("openid"));
		scope = ObjUtils.objToStr(map.get("scope"));
	}
	
//	public WxUserToken(Map<String, Object> map) {
//		access_token = ObjUtils.objToStr(map.get("access_token"));
//		expires_in = ObjUtils.objToInt(map.get("expires_in"));
//		refresh_token = ObjUtils.objToStr(map.get("refresh_token"));
//		openid = ObjUtils.objToStr(map.get("openid"));
//		scope = ObjUtils.objToStr(map.get("scope"));
//	}
}
