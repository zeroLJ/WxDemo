package wxUtils;

import java.util.Map;

import com.alibaba.fastjson.JSON;

import utils.Logs;
import utils.ObjUtils;
import utils.StringUtils;

/**
 * ��ȡ�û�������Ϣ �� �����п��ܻ�ȡʧ�ܣ�ʹ�õ�ʱ��Ҫ����isSuccess()�����ж��Ƿ��ȡ�ɹ�
 * @author ljl
 */
public class WxUserInfo {
	public String openid;//�û���Ψһ��ʶ
	public String nickname;//�û��ǳ�
	public String sex;//�û����Ա�ֵΪ1ʱ�����ԣ�ֵΪ2ʱ��Ů�ԣ�ֵΪ0ʱ��δ֪
	public String province;//�û�����������д��ʡ��
	public String city;//��ͨ�û�����������д�ĳ���
	public String country;//���ң����й�ΪCN
	public String headimgurl;//�û�ͷ�����һ����ֵ����������ͷ���С����0��46��64��96��132��ֵ��ѡ��0����640*640������ͷ�񣩣��û�û��ͷ��ʱ����Ϊ�ա����û�����ͷ��ԭ��ͷ��URL��ʧЧ��
	public String privilege;//�û���Ȩ��Ϣ��json ���飬��΢���ֿ��û�Ϊ��chinaunicom��
	public String unionid;//ֻ�����û������ںŰ󶨵�΢�ſ���ƽ̨�ʺź󣬲Ż���ָ��ֶΡ�
	public String errcode;//��ȡ�ɹ���ʱ���ֵΪ��
	public WxUserInfo(String json) {
		Map<String, Object> map = JSON.parseObject(json, Map.class);
		Logs.d("userinfo_map:" + map);
		openid = ObjUtils.objToStr(map.get("openid"));
		nickname = ObjUtils.objToStr(map.get("nickname"));
		sex = ObjUtils.objToStr(map.get("sex"));
		province = ObjUtils.objToStr(map.get("province"));
		city = ObjUtils.objToStr(map.get("city"));
		country = ObjUtils.objToStr(map.get("country"));
		headimgurl = ObjUtils.objToStr(map.get("headimgurl"));
		privilege = ObjUtils.objToStr(map.get("privilege"));
		unionid = ObjUtils.objToStr(map.get("unionid"));
		errcode = ObjUtils.objToStr(map.get("errcode"));
	}
	
	
	/**
	 * �����û������Ƿ�ɹ�
	 * @return
	 */
	public boolean isSuccess() {
		if (StringUtils.isEmpty(errcode)) {
			return true;
		}
		return false;
	}
	
}
