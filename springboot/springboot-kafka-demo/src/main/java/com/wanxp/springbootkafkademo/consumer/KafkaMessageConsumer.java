package com.wanxp.springbootkafkademo.consumer;

import lombok.extern.slf4j.Slf4j;
import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Component;

/**
 * @author wanxp
 */
@Component
@Slf4j
public class KafkaMessageConsumer {

	@KafkaListener(topics = "message")
	public void fromKafka(ConsumerRecord<String, String> record) throws InterruptedException {
		log.info("consumer :{}", record.toString());
		Thread.sleep(1000);
	}

}