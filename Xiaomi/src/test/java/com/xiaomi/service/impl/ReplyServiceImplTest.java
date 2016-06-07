package com.xiaomi.service.impl;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.xiaomi.entity.Reply;
import com.xiaomi.service.ReplyService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class ReplyServiceImplTest {
	@Autowired
	private ReplyService replyService;

	@Test
	public void testGetAllReplyInfo() {
		List<Reply> replys = replyService.getAllReplyInfo(1, 10);
		System.out.println(replys);
		assertNotNull("获取数据失败！！",replys);
	}
	
	@Test
	public void testFindReplyInfoByReplyId() {
		Reply reply = replyService.findReplyInfoByReplyId(2);
		System.out.println(reply);
		assertNotNull("获取数据失败！！",reply);
	}

}
