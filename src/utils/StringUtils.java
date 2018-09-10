package utils;


public class StringUtils {
	/**
     * �ж�String�Ƿ�Ϊ��
     *
     * @param str
     * @return
     */
    public static boolean isEmpty(String str) {
        if (str == null || str.trim().equals("")) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * �ж�String��Ϊ��
     *
     * @param str
     * @return
     */
    public static boolean isNotEmpty(String str) {
        if (str != null && !str.trim().equals("")) {
            return true;
        } else {
            return false;
        }
    }

   

    /**
     * �ж��Ƿ�Ϊ�������ͺ����š�-������С����
     * @param str
     * @return
     */
    public static boolean isNumber(String str){
        String reg = "^[0-9]+(.[0-9]+)?$";
        return str.matches(reg);
    }

    public static String trimEnd(String str,String end){
        if(str.length()>0){
            if(str.lastIndexOf(end)==(str.length()-end.length())){
                str = str.substring(0,str.length()-end.length());
            }
        }
        return str;
    }
    public static String trimEnd(String str){
        if(str.length()>0){
            str = str.substring(0, str.length()-1);
        }
        return str;
    }

    public static String trimStart(String str){
        if(str.length()>0){
            str = str.substring(1);
        }
        return str;
    }

    public static String trimStart(String str,String start) {
        if (str.length() > 0) {
            if(str.indexOf(start)==0){
                str = str.substring(start.length(),str.length());
            }
        }
        return str;
    }
     
}
