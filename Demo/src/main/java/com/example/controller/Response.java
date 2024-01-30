//package com.example.controller;
//
//import java.text.Annotation;
//import java.util.Properties;
//
//import edu.stanford.nlp.pipeline.StanfordCoreNLP;
//
//public class Response {
//	Properties props = new Properties();
//	props.setProperty("annotators", "tokenize, ssplit, pos, lemma, ner, parse, sentiment");
//	StanfordCoreNLP pipeline = new StanfordCoreNLP(props);
//
//	public String getResponse(String message) {
//	  Annotation annotation = pipeline.process(message);
//	  // TODO: extract information from the annotation and generate a response
//	  return response;
//	}
//
//	
//}
