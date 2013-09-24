package com.amatic.ch.rss;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.view.feed.AbstractRssFeedView;

import com.amatic.ch.dto.SampleContent;
import com.sun.syndication.feed.rss.Channel;
import com.sun.syndication.feed.rss.Content;
import com.sun.syndication.feed.rss.Description;
import com.sun.syndication.feed.rss.Item;

public class CustomRssViewer extends AbstractRssFeedView {

    @Override
    protected void buildFeedMetadata(Map<String, Object> model, Channel feed,
	    HttpServletRequest request) {

	feed.setTitle("Comprar Cafetera Express");
	feed.setDescription("Toda la información para que puedas comprar una cafetera express, cafetera nespresso, dolce gusto, senseo, tassimo, capsuloas ó italiana");
	feed.setLink("http://www.comprarcafeteraexpress.com");

	super.buildFeedMetadata(model, feed, request);
    }

    @Override
    protected List<Item> buildFeedItems(Map<String, Object> model,
	    HttpServletRequest request, HttpServletResponse response)
	    throws Exception {

	@SuppressWarnings("unchecked")
	List<SampleContent> listContent = (List<SampleContent>) model
		.get("feedContent");
	List<Item> items = new ArrayList<Item>(listContent.size());

	for (SampleContent tempContent : listContent) {

	    Item item = new Item();

	    Content content = new Content();
	    content.setValue(tempContent.getSummary());
	    item.setContent(content);

	    item.setTitle(tempContent.getTitle());
	    item.setLink(tempContent.getUrl());
	    item.setAuthor(tempContent.getAuthor());
	    item.setComments(tempContent.getComments());
	    item.setCategories(tempContent.getCategories());
	    Description desc = new Description();
	    desc.setValue(tempContent.getDescription());
	    item.setDescription(desc);
	    item.setPubDate(tempContent.getCreatedDate());

	    items.add(item);
	}

	return items;
    }
}
