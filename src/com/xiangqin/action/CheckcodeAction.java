package com.xiangqin.action;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.RandomStringUtils;
import org.apache.struts2.ServletActionContext;

public class CheckcodeAction {
	private HttpServletResponse response = ServletActionContext.getResponse();
	private HttpServletRequest request = ServletActionContext.getRequest();

	public String execute() {
		try {
			int width = 50;
			int height = 18;
			// 取得一个4位随机字母数字字符串
			String s = RandomStringUtils.random(4, true, true);

			// 保存入session,用于与用户的输入进行比较。
			// 注意比较完后清除session
			HttpSession session = request.getSession(true);
			session.setAttribute("checkCode", s);

			response.setContentType("images/jpeg");

			ServletOutputStream out = response.getOutputStream();
			BufferedImage image = new BufferedImage(width, height,
					BufferedImage.TYPE_INT_RGB);
			Graphics g = image.getGraphics();
			// 设定背景色
			g.setColor(getRandColor(200, 250));
			g.fillRect(0, 0, width, height);

			// 设定字体
			Font mFont = new Font("Times New Roman", Font.BOLD, 14);
			g.setFont(mFont);

			g.setColor(getRandColor(160, 200));

			Random random = new Random();
			for (int i = 0; i < 155; i++) {
				int x2 = random.nextInt(width);
				int y2 = random.nextInt(height);
				int x3 = random.nextInt(12);
				int y3 = random.nextInt(12);
				g.drawLine(x2, y2, x2 + x3, y2 + y3);
			}

			// 将认证码显示到图像中
			g.setColor(new Color(20 + random.nextInt(110), 20 + random
					.nextInt(110), 20 + random.nextInt(110)));
			g.drawString(s, 2, 16);

			// 图像生效
			g.dispose();
			// 输出到页面
			ImageIO.write((BufferedImage) image, "JPEG", out);
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	private Color getRandColor(int i, int j) {
		Random random = new Random();
		if (i > 255)
			i = 255;
		if (j > 255)
			j = 255;
		int r = i + random.nextInt(j - i);
		int g = i + random.nextInt(j - i);
		int b = i + random.nextInt(j - i);
		return new Color(r, g, b);
	}
}
