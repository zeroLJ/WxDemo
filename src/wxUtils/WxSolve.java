package wxUtils;

import utils.ObjUtils;

/**
 * ���ںŻظ�������
 * @author ljl
 */
public class WxSolve {
	public static String getResult(WxMessage message) {
		switch (ObjUtils.objToStr(message.MsgType)) {
			case "event":
				return getEventResult(message);
			default:
				return getOtherResult(message);
		}
	}
	
	/**
	 * ��ȡevent�¼�Ҫ���ص��ַ���
	 * @param message
	 * @return
	 */
	private static String getEventResult(WxMessage message) {
		if (message.Event!=null) {
			switch (message.Event) {
				case "subscribe"://��ע
					return getSubscribeResult(message);
				case "unsubscribe"://ȡ����ע
					
					break;
				case "CLICK":
					return getClickResult(message);
				default:
					break;
			}
		}
		return "";
	}
	
	
	/**
	 * ��ȡ��event�¼���Ҫ���ص��ַ���
	 * @param message
	 * @return
	 */
	private static String getOtherResult(WxMessage message) {
		StringBuilder s = new StringBuilder();
		if (message.Content!=null) {
			String result = "��Ҳ"+message.Content;
			s.append("<xml>");
			s.append(" <ToUserName><![CDATA[").append(message.FromUserName).append("]]></ToUserName>");
			s.append(" <FromUserName><![CDATA[").append(message.ToUserName).append("]]></FromUserName>");
			s.append(" <CreateTime>").append(System.currentTimeMillis()).append("</CreateTime>");
			s.append(" <MsgType><![CDATA[").append("text").append("]]></MsgType>");
			s.append(" <Content><![CDATA[").append(result).append("]]></Content>");
			s.append("</xml>");
		}

		return s.toString();
	}
	
	/**
	 * ��ȡ��ע�¼���Ҫ���ص��ַ���
	 * @param message
	 * @return
	 */
	private static String getSubscribeResult(WxMessage message) {
		StringBuilder s = new StringBuilder();
		s.append("<xml>");
		s.append(" <ToUserName><![CDATA[").append(message.FromUserName).append("]]></ToUserName>");
		s.append(" <FromUserName><![CDATA[").append(message.ToUserName).append("]]></FromUserName>");
		s.append(" <CreateTime>").append(System.currentTimeMillis()).append("</CreateTime>");
		s.append(" <MsgType><![CDATA[").append("text").append("]]></MsgType>");
		s.append(" <Content><![CDATA[").append("��л��ע").append("]]></Content>");
		s.append("</xml>");
		return s.toString();
	}
	
	
	/**
	 * ��ȡ����¼���Ҫ���ص��ַ���
	 * @param message
	 * @return
	 */
	private static String getClickResult(WxMessage message) {
		String msg = "";
		switch (ObjUtils.objToStr(message.EventKey)) {
			case "":
				
				break;
			default:
				msg = message.EventKey;
				break;
		}
		
		StringBuilder s = new StringBuilder();
		s.append("<xml>");
		s.append(" <ToUserName><![CDATA[").append(message.FromUserName).append("]]></ToUserName>");
		s.append(" <FromUserName><![CDATA[").append(message.ToUserName).append("]]></FromUserName>");
		s.append(" <CreateTime>").append(System.currentTimeMillis()).append("</CreateTime>");
		s.append(" <MsgType><![CDATA[").append("text").append("]]></MsgType>");
		s.append(" <Content><![CDATA[").append(msg).append("]]></Content>");
		s.append("</xml>");
		return s.toString();
	}
}
