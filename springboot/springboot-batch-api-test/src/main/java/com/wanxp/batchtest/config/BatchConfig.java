package com.wanxp.batchtest.config;

import com.wanxp.batchtest.component.file.handler.ChannelRuleProcessor;
import com.wanxp.batchtest.component.file.handler.ChannelRuleSetMapper;
import com.wanxp.batchtest.component.file.handler.NotificationListener;
import com.wanxp.batchtest.model.dto.ChannelFileDto;
import com.wanxp.batchtest.model.entity.primary.ChannelRule;
import org.springframework.batch.core.Job;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.configuration.annotation.JobBuilderFactory;
import org.springframework.batch.core.configuration.annotation.StepBuilderFactory;
import org.springframework.batch.core.launch.support.RunIdIncrementer;
import org.springframework.batch.item.ItemProcessor;
import org.springframework.batch.item.database.JpaItemWriter;
import org.springframework.batch.item.database.builder.JpaItemWriterBuilder;
import org.springframework.batch.item.file.FlatFileItemReader;
import org.springframework.batch.item.file.LineMapper;
import org.springframework.batch.item.file.builder.FlatFileItemReaderBuilder;
import org.springframework.batch.item.file.mapping.BeanWrapperFieldSetMapper;
import org.springframework.batch.item.file.mapping.DefaultLineMapper;
import org.springframework.batch.item.file.transform.DelimitedLineTokenizer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;

import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceContext;
import javax.sql.DataSource;

import static com.wanxp.batchtest.constant.Constant.*;

@Configuration
public class BatchConfig {


    @Autowired
    private JobBuilderFactory jobBuilderFactory;

    @Autowired
    private StepBuilderFactory stepBuilderFactory;

    @Autowired
    private ChannelRuleSetMapper channelRuleSetMapper;

    @Autowired
    private LineMapper channelFileDtoLineMapper;


//    @PersistenceContext(name = PRIMARY_ENTITY_MANAGER_FACTORY_NAME)
    @Autowired
    @Qualifier(PRIMARY_ENTITY_MANAGER_FACTORY_NAME)
    private EntityManagerFactory primaryEntityManagerFactory;

    @Autowired
    private ItemProcessor channelRuleProcessor;



    @Bean
    public FlatFileItemReader<ChannelFileDto> flatFileItemReader() {
        return new FlatFileItemReaderBuilder<ChannelFileDto>()
                .name(CHANNEL_FILE_ITEM_READER)
                .resource(new ClassPathResource("product.xlsx"))
                .delimited()
                .names()
                .lineMapper(channelFileDtoLineMapper)
                .fieldSetMapper(new BeanWrapperFieldSetMapper(){{
                    setTargetType(ChannelFileDto.class);
                }})
                .build();
    }

    @Bean
    public LineMapper<ChannelFileDto> channelFileDtoLineMapper () {
        final DefaultLineMapper<ChannelFileDto> defaultLineMapper = new DefaultLineMapper<>();
        final DelimitedLineTokenizer delimitedLineTokenizer = new DelimitedLineTokenizer();
        delimitedLineTokenizer.setDelimiter(CSV_COLUMN_SPILIT);
        delimitedLineTokenizer.setStrict(false);
        defaultLineMapper.setLineTokenizer(delimitedLineTokenizer);
        defaultLineMapper.setFieldSetMapper(channelRuleSetMapper);
        return defaultLineMapper;
    }

    @Bean
    public JpaItemWriter<ChannelRule> writer(final DataSource dataSource) {
        return new JpaItemWriterBuilder<ChannelRule>()
                .entityManagerFactory(primaryEntityManagerFactory)
                .build();
    }

    @Bean
    public Job importVoltageJob(NotificationListener listener, Step step1) {
        return jobBuilderFactory.get("importVoltageJob")
                .incrementer(new RunIdIncrementer())
                .listener(listener)
                .flow(step1)
                .end()
                .build();
    }

    @Bean
    public Step step1(JpaItemWriter<ChannelRule> writer) {
        return stepBuilderFactory.get("step1")
                .<ChannelFileDto, ChannelRule> chunk(10)
                .reader(flatFileItemReader())
                .processor(channelRuleProcessor)
                .writer(writer)
                .build();
    }
}
