package wxUtils;


/**
 * ΢�Ź��ںŴ����������ݸ�ʽ
 * @author ljl
 */
public class WxMessage {
	/**
	 * ���ںŷ������ݵĸ�ʽhttps://mp.weixin.qq.com/wiki?t=resource/res_main&id=mp1421141016
	 * <xml>
	 *  <ToUserName><![CDATA[toUser]]></ToUserName>
	 *	<FromUserName><![CDATA[FromUser]]></FromUserName>
	 *	<CreateTime>123456789</CreateTime>
	 *	<MsgType><![CDATA[event]]></MsgType>
	 *	<Event><![CDATA[CLICK]]></Event>
	 *	<EventKey><![CDATA[EVENTKEY]]></EventKey>
	 * </xml>
	 */
	public String ToUserName; //������ ΢�ź�
	public String FromUserName;//���ͷ��ʺţ�һ��OpenID��
	public String CreateTime;//��Ϣ����ʱ�� �����ͣ�
	public String MsgType;//��Ϣ���ͣ�event
	public String Event;//�¼����ͣ�CLICK(���)/VIEW(��ת����)/scancode_push/scancode_waitmsg(ɨ�践��)/subscribe(����)/unsubscribe(ȡ������)
	public String EventKey;//�¼�KEYֵ�����Զ���˵��ӿ���KEYֵ��Ӧ �� ��ת��URL
	public String MenuId;//ָ�˵�ID������Ǹ��Ի��˵��������ͨ������ֶΣ�֪�����ĸ�����Ĳ˵�������ˡ�
	public boolean hasScanCodeInfo = false;//ɨ����Ϣ
	public String ScanType;//ɨ�����ͣ�һ����qrcode
	public String ScanResult;//ɨ����������ά���Ӧ���ַ�����Ϣ
	public String Content;//�ı���Ϣ����
	public long MsgId;//��Ϣid��64λ����
	public WxMessage(String xml) {
		int keyL,keyR;
		String key = "<ToUserName><![CDATA[";
		keyL = xml.indexOf(key);
		keyR = xml.indexOf("]]></ToUserName>");
		if (keyL!=-1 && keyR !=-1 && keyL < keyR) {
			ToUserName =xml.substring(keyL + key.length(), keyR);
		}
		
		key = "<FromUserName><![CDATA[";
		keyL = xml.indexOf(key);
		keyR = xml.indexOf("]]></FromUserName>");
		if (keyL!=-1 && keyR !=-1 && keyL < keyR) {
			FromUserName =xml.substring(keyL + key.length(), keyR);
		}
		
		key = "<CreateTime>";
		keyL = xml.indexOf(key);
		keyR = xml.indexOf("</CreateTime>");
		if (keyL!=-1 && keyR !=-1 && keyL < keyR) {
			CreateTime =xml.substring(keyL + key.length(), keyR);
		}
		
		key = "<MsgType><![CDATA[";
		keyL = xml.indexOf(key);
		keyR = xml.indexOf("]]></MsgType>");
		if (keyL!=-1 && keyR !=-1 && keyL < keyR) {
			MsgType =xml.substring(keyL + key.length(), keyR);
		}
		
		key = "<Event><![CDATA[";
		keyL = xml.indexOf(key);
		keyR = xml.indexOf("]]></Event>");
		if (keyL!=-1 && keyR !=-1 && keyL < keyR) {
			Event =xml.substring(keyL + key.length(), keyR);
		}
		
		key = "<EventKey><![CDATA[";
		keyL = xml.indexOf(key);
		keyR = xml.indexOf("]]></EventKey>");
		if (keyL!=-1 && keyR !=-1 && keyL < keyR) {
			EventKey =xml.substring(keyL + key.length(), keyR);
		}
		
		key = "<MenuId>";
		keyL = xml.indexOf(key);
		keyR = xml.indexOf("</MenuId>");
		if (keyL!=-1 && keyR !=-1 && keyL < keyR) {
			CreateTime =xml.substring(keyL + key.length(), keyR);
		}
		
		key = "<ScanCodeInfo>";
		keyL = xml.indexOf(key);
		keyR = xml.indexOf("</ScanCodeInfo>");
		if (keyL!=-1 && keyR !=-1 && keyL < keyR) {
			hasScanCodeInfo = true;
		}
		
		if (hasScanCodeInfo) {
			key = "<ScanType><![CDATA[";
			keyL = xml.indexOf(key);
			keyR = xml.indexOf("]]></ScanType>");
			if (keyL!=-1 && keyR !=-1 && keyL < keyR) {
				ScanType =xml.substring(keyL + key.length(), keyR);
			}
			
			key = "<ScanResult><![CDATA[";
			keyL = xml.indexOf(key);
			keyR = xml.indexOf("]]></ScanResult>");
			if (keyL!=-1 && keyR !=-1 && keyL < keyR) {
				ScanResult =xml.substring(keyL + key.length(), keyR);
			}
		}
		
		
		key = "<Content><![CDATA[";
		keyL = xml.indexOf(key);
		keyR = xml.indexOf("]]></Content>");
		if (keyL!=-1 && keyR !=-1 && keyL < keyR) {
			Content =xml.substring(keyL + key.length(), keyR);
		}
		
		key = "<MsgId>";
		keyL = xml.indexOf(key);
		keyR = xml.indexOf("</MsgId>");
		if (keyL!=-1 && keyR !=-1 && keyL < keyR) {
			MsgId = Long.valueOf(xml.substring(keyL + key.length(), keyR));
		}
	}
	
	public void print() {
		System.out.println("ToUserName:"+ToUserName);
		System.out.println("FromUserName:"+FromUserName);
		System.out.println("CreateTime:"+CreateTime);
		System.out.println("MsgType:"+MsgType);
		System.out.println("Event:"+Event);
		System.out.println("EventKey:"+EventKey);
		System.out.println("MenuId:"+MenuId);
		System.out.println("hasScanCodeInfo:"+hasScanCodeInfo);
		System.out.println("ScanType:"+ScanType);
		System.out.println("ScanResult:"+ScanResult);
		System.out.println("Content:"+Content);
		System.out.println("MsgId:"+MsgId);
	}
}
