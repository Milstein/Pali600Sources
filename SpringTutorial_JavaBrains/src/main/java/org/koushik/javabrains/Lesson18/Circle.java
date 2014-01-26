package org.koushik.javabrains.Lesson18;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Component;

@Component
public class Circle implements Shape {

	private Point center;
	@Autowired
	private MessageSource messageSource;

	@Override
	public void draw() {
		System.out.println(this.messageSource.getMessage("drawing.circle",
				null, "Default Drawing Message", null));
		System.out.println(this.messageSource.getMessage("drawing.point",
				new Object[] { center.getX(), center.getY() },
				"Default Point Message", null));
		System.out.println(this.messageSource.getMessage("greeting", null,
				"Default Greeting", null));
	}

	public Point getCenter() {
		return center;
	}

	@Resource
	public void setCenter(Point center) {
		this.center = center;
	}

	public MessageSource getMessageSource() {
		return messageSource;
	}

	public void setMessageSource(MessageSource messageSource) {
		this.messageSource = messageSource;
	}

	@PostConstruct
	public void initializeCircle() {
		System.out.println("Init of circle");
	}

	@PreDestroy
	public void destroyCircle() {
		System.out.println("Destroy of circle");
	}

}
