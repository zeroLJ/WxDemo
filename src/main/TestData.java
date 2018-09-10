package main;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;

import utils.Logs;
import wxUtils.WxMessage;
import wxUtils.WxSolve;

/**
 * 表格测试数据请求
 */
@WebServlet("/TestData")
public class TestData extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static String connectionUrl = "jdbc:sqlserver://localhost:1433;"
			// "jdbc:sqlserver://192.168.0.188:1433;"
			+ "databaseName=Demo;" + "user=940034240;" + "password=pp123456;";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TestData() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Map<String, String> params = new HashMap<>();
		Map<String, String[]> map = request.getParameterMap();
		Logs.d(map.toString());
		for (String key : map.keySet()) {
			params.put(key, map.get(key)[0]);
		}
		Logs.d(params.toString());
		List<Map<String, Object>> list = new ArrayList<>();
		Map m = new HashMap<>();
		m.put("name", "张三");
		m.put("sex", "男");
		m.put("age", 17);
		list.add(m);
		
		m = new HashMap<>();
		m.put("name", "李四");
		m.put("sex", "男");
		m.put("age", 19);
		list.add(m);
		
		m = new HashMap<>();
		m.put("name", "小红");
		m.put("sex", "女");
		m.put("age", 20);
		list.add(m);
//		 String access_token=HttpRequest.sendGet("https://api.weixin.qq.com/cgi-bin/token", "grant_type=client_credential&appid=wx6f0a4417cb3850f4&secret=fab18c81b82699eb1fe288f8d68dc095");
//	     System.out.println("access_token" + access_token);
		
		String result = JSON.toJSONString(list);
		Logs.d("result:" + result);
		try {
			OutputStream os = response.getOutputStream();
			os.write(result.getBytes("UTF-8"));
			os.flush();
			os.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
