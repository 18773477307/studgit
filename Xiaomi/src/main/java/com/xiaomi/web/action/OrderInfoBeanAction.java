package com.xiaomi.web.action;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;





import java.util.Properties;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.xiaomi.entity.JsonObject;
import com.xiaomi.entity.Orders;
import com.xiaomi.service.OrdersService;
import com.xiaomi.service.UsersInfoService;
import com.xiaomi.utils.PaymentUtil;
@Controller("orderInfoBeanAction")
public class OrderInfoBeanAction implements ModelDriven<Orders>,SessionAware,ServletRequestAware,ServletResponseAware {
	@Autowired
	private OrdersService ordersService;
	@Autowired
	private UsersInfoService usersInfoService;
	private HttpServletRequest request;
	private HttpServletResponse response;
	//private OrderInfoBean orderInfoBean;
	private Orders ordersInfo;
	private Map<String, Object> session;
	private String orders;
	private JsonObject<Orders> jsonObject;
	private String needVal;
	
	public String getNeedVal() {
		return needVal;
	}

	public void setNeedVal(String needVal) {
		this.needVal = needVal;
	}

	public void setOrders(String orders) {
		this.orders = orders;
	}
	
	public JsonObject<Orders> getJsonObject() {
		return jsonObject;
	}

	// 提交一个订单
	public String addOrderInfo(){
		//订单时间'yyyy-mm-dd hh24:mi:ss'  yyyy-MM-dd HH24:mi:ss
		SimpleDateFormat ordDate1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//设置日期格式
		String ordDate=ordDate1.format(new Date());
		ordersInfo.setOrdDate(ordDate);
		
		int ordId = ordersService.addToOrders(ordersInfo,orders);
		System.out.println(ordId);
		session.put("ordId", ordId);
		jsonObject = new JsonObject<Orders>();
		if(ordId != 0){
			jsonObject.setTotal(ordId);
			int sum = 0;
			sum = usersInfoService.findCountOfUser(ordersInfo.getUsersId());//从购物车表里面查
			session.put("ordId", ordId);
			//把这个人购物车所有商品数量存入session
			session.put("sums", sum);
		}else {
			jsonObject.setTotal(1);
		}
		return "success";
	}
	
	public String payOnline() throws  IOException {
				
		Properties props = new Properties();
		props.load(this.getClass().getClassLoader().getResourceAsStream("payment.properties"));
		// 1.准备13个参数
		String p0_Cmd = "Buy"; // 业务类型，固定值Buy
		String p1_MerId = props.getProperty("p1_MerId");// 商号编码，在易宝的唯一标识
		String p2_Order = ""; // 商品订单号
		String p3_Amt = "0.01"; // 支付金额
		String p4_Cur = "CNY"; // 交易币种，固定值
		String p5_Pid = ""; // 商品名称
		String p6_Pcat = ""; // 商品种类
		String p7_Pdesc = ""; // 商品描述
		String p8_Url = props.getProperty("p8_Url"); // 商户接收支付成功数据的地址
		String p9_SAF = ""; // 送货地址
		String pa_MP = ""; // 商户扩展信息
		String pd_FrpId = request.getParameter("yh"); // 支付通道
		String pr_NeedResponse = "1"; // 应答机制,固定值1

		/**
		 * 2.计算hmac 需要13个参数，keyValue,加密算法
		 */
		String keyValue = props.getProperty("keyValue");
		String hmac = PaymentUtil.buildHmac(p0_Cmd, p1_MerId, p2_Order, p3_Amt, p4_Cur, p5_Pid, p6_Pcat, p7_Pdesc, p8_Url, p9_SAF, pa_MP, pd_FrpId, pr_NeedResponse, keyValue);

		/**
		 *3. 重定向到易宝的支付网关
		 */
		StringBuilder sb=new StringBuilder("https://www.yeepay.com/app-merchant-proxy/node");
		sb.append("?").append("p0_Cmd=").append(p0_Cmd);
		sb.append("&").append("p1_MerId=").append(p1_MerId);
		sb.append("&").append("p2_Order=").append(p2_Order);
		sb.append("&").append("p3_Amt=").append(p3_Amt);
		sb.append("&").append("p4_Cur=").append(p4_Cur);
		sb.append("&").append("p5_Pid=").append(p5_Pid);
		sb.append("&").append("p6_Pcat=").append(p6_Pcat);
		sb.append("&").append("p7_Pdesc=").append(p7_Pdesc);
		sb.append("&").append("p8_Url=").append(p8_Url);
		sb.append("&").append("p9_SAF=").append(p9_SAF);
		sb.append("&").append("pa_MP=").append(pa_MP);
		sb.append("&").append("pd_FrpId=").append(pd_FrpId);
		sb.append("&").append("pr_NeedResponse=").append(pr_NeedResponse);
		sb.append("&").append("hmac=").append(hmac);
		
		setNeedVal(sb.toString());
		return "paysuccess";
	}
	// 付款后返回状态
	public String back() throws IOException {
		/**
		 * 获取到12个参数
		 */
		String p1_MerId = request.getParameter("p1_MerId");
		String r0_Cmd = request.getParameter("r0_Cmd");
		String r1_Code = request.getParameter("r1_Code");
		String r2_TrxId = request.getParameter("r2_TrxId");
		String r3_Amt = request.getParameter("r3_Amt");
		String r4_Cur = request.getParameter("r4_Cur");
		String r5_Pid = request.getParameter("r5_Pid");
		String r6_Order = request.getParameter("r6_Order");
		String r7_Uid = request.getParameter("r7_Uid");
		String r8_MP = request.getParameter("r8_MP");
		String r9_BType = request.getParameter("r9_BType");
		String hmac = request.getParameter("hmac");

		/**
		 * 获取keyValue
		 */
		Properties props = new Properties();
		props.load(this.getClass().getClassLoader()
				.getResourceAsStream("payment.properties"));
		String keyValue = props.getProperty("keyValue");

		// 校验身份
		boolean bool = PaymentUtil.verifyCallback(hmac, p1_MerId, r0_Cmd,
				r1_Code, r2_TrxId, r3_Amt, r4_Cur, r5_Pid, r6_Order, r7_Uid,
				r8_MP, r9_BType, keyValue);
		if (!bool) {
			request.setAttribute("code", "error");
			request.setAttribute("msg", "无效的签名");
			System.out.println("身份校验失败！！");
			return "msg";
		}
		if (r1_Code.equals("1")) {
			// 订单表的状态改变
			int ordIds = (int) request.getSession().getAttribute("ordId");
			//改变订单状态，已经支付
			ordersService.updateOrdSta(ordIds);
			// 订单详情表的状态改变
			ordersService.updateDetaSta(ordIds);
			//System.out.println("获取到的ID+====" + ordIds);
			if (r9_BType.equals("1")) { // r9_BType:交易结果返回类型，1.服务器重定向 2.服务器点对点通讯
				request.setAttribute("code", "success");
				request.setAttribute("msg", "恭喜您，支付成功！");
				System.out.println("支付成功！！");
				return "msg";
			} else if (r9_BType.equals("2")) {
				response.getWriter().print("success");
			}
		}
		return "msg";
	}
	
	
	public String payOrderes(){
		double balance = ordersService.getBanlance(ordersInfo.getUsersId());
		if(balance < ordersInfo.getOrdTatol()){  //用户余额少于订单总价
			session.put("code", "error");
			session.put("msg", "账户余额不足，支付失败...!");
			jsonObject = new JsonObject<Orders>();
			jsonObject.setTotal(2);
			return "success";
		}else {
			int result = ordersService.payByBanlance(ordersInfo);
			//System.out.println(result+"result");
			// 订单表的状态改变
			int ordIds = (int) request.getSession().getAttribute("ordId");
			//System.out.println(ordIds+"订单编号");
			//改变订单状态，已经支付
			ordersService.updateOrdSta(ordIds);
			// 订单详情表的状态改变
			ordersService.updateDetaSta(ordIds);
			if(result == 1){
				session.put("code", "success");
				session.put("msg", "恭喜您，支付成功！");
				jsonObject = new JsonObject<Orders>();
				jsonObject.setTotal(result);
				return "success";
			}
		}
		return "success";
	}
	

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	@Override
	public Orders getModel() {
		ordersInfo = new Orders();
		return ordersInfo;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response=response;
		
	}

}
