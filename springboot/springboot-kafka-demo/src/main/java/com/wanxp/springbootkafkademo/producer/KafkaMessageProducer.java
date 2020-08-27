package com.wanxp.springbootkafkademo.producer;

import com.wanxp.springbootkafkademo.Constant;
import com.wanxp.springbootkafkademo.model.ChatMessage;
import lombok.extern.slf4j.Slf4j;
import org.apache.kafka.clients.CommonClientConfigs;
import org.apache.kafka.clients.admin.AdminClient;
import org.apache.kafka.clients.admin.ListConsumerGroupOffsetsResult;
import org.apache.kafka.clients.consumer.OffsetAndMetadata;
import org.apache.kafka.clients.producer.ProducerRecord;
import org.apache.kafka.common.TopicPartition;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.kafka.KafkaProperties;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * @author wanxp
 */
@Component
@Slf4j
@Controller
public class KafkaMessageProducer {

	private static final AtomicInteger count = new AtomicInteger();
	@Autowired
	private KafkaTemplate kafkaTemplate;
	@Autowired
	private KafkaProperties kafkaProperties;
	@Autowired
	private SimpMessagingTemplate simpMessageSendingOperations;//消息发送模板

	@Scheduled(fixedRate = 500)
	public void produce() {
		String value = String.valueOf(count.incrementAndGet());
		kafkaTemplate.send(new ProducerRecord<String, String>(Constant.MESSAGE_TOPIC, null, null, value));
	}

	@Scheduled(fixedRate = 5000)
	public void log() {
//		log.info("log start");
		Map<TopicPartition, OffsetAndMetadata> offset1 = lagOf(kafkaProperties.getConsumer().getGroupId(), kafkaProperties.getBootstrapServers());
		offset1.entrySet().forEach(x -> {
					String message = String.format("topic:%s,partition:%s,offset:%s", x.getKey().topic(), x.getKey().partition(), x.getValue().offset());
//					log.info(message);
					simpMessageSendingOperations.convertAndSend("/topic/public", buildMessage(message));
				}
		);
	}

	private Map<TopicPartition, OffsetAndMetadata> lagOf(String groupId, List<String> bootstrapServers) {
		Properties properties = new Properties();
		properties.put(CommonClientConfigs.BOOTSTRAP_SERVERS_CONFIG, bootstrapServers);
		try (AdminClient adminClient = AdminClient.create(properties)) {
			ListConsumerGroupOffsetsResult result = adminClient.listConsumerGroupOffsets(groupId);
			Map<TopicPartition, OffsetAndMetadata> consumerOffsets = result.partitionsToOffsetAndMetadata().get(10, TimeUnit.SECONDS);
			return consumerOffsets;
		} catch (Exception e) {
			return Collections.emptyMap();
		}
	}

	public ChatMessage buildMessage(String message) {
		ChatMessage chatMessage = new ChatMessage();
		chatMessage.setSender("producer-log");
		chatMessage.setContent(message);
		return chatMessage;
	}
}