package com.pcwk.ehr.markdown.service;

import org.springframework.stereotype.Service;

import com.pcwk.ehr.cmn.PLog;
import org.commonmark.node.*;
import org.commonmark.parser.Parser;
import org.commonmark.renderer.html.HtmlRenderer;

@Service
public class MarkdownService implements PLog {

	public MarkdownService() {
		log.debug("┌──────────────────────────────────────────┐");
		log.debug("│ Markdown()                               │");
		log.debug("└──────────────────────────────────────────┘");
	}
	
	public static String convertMarkdownToHtml(String markdown) {
		Parser  parser = Parser.builder().build();
		Node document = parser.parse(markdown);
		
		HtmlRenderer renderer = HtmlRenderer.builder().build();
		
		String html = renderer.render(document);
		log.debug("┌──────────────────────────────────────────┐");
		log.debug("│ html                                     │\n"+html);
		log.debug("└──────────────────────────────────────────┘");		
		
		return html;
	}
	
}
