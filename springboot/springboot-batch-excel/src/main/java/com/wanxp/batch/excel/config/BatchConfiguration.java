package com.wanxp.batch.excel.config;

import org.springframework.batch.core.configuration.annotation.EnableBatchProcessing;
import org.springframework.context.annotation.Configuration;

@Configuration
@EnableBatchProcessing
public class BatchConfiguration {
//
//    @Autowired
//    public JobBuilderFactory jobBuilderFactory;
//
//    @Autowired
//    public StepBuilderFactory stepBuilderFactory;
//
//    @Bean
//    public FlatFileItemReader<Voltage> reader() {
//        return new FlatFileItemReaderBuilder<Voltage>()
//                .name("voltItemReader")
//                .resource(new ClassPathResource("voltages.csv"))
//                .delimited()
//                .names(new String[]{"volt", "time"})
//                .lineMapper(lineMapper())
//                .fieldSetMapper(new BeanWrapperFieldSetMapper<Voltage>() {{
//                    setTargetType(Voltage.class);
//                }})
//                .build();
//    }
//
//    @Bean
//    public LineMapper<Voltage> lineMapper() {
//
//        final DefaultLineMapper<Voltage> defaultLineMapper = new DefaultLineMapper<>();
//        final DelimitedLineTokenizer lineTokenizer = new DelimitedLineTokenizer();
//        lineTokenizer.setDelimiter(";");
//        lineTokenizer.setStrict(false);
//        lineTokenizer.setNames(new String[] {"volt","time"});
//
//        final VoltageFieldSetMapper fieldSetMapper = new VoltageFieldSetMapper();
//        defaultLineMapper.setLineTokenizer(lineTokenizer);
//        defaultLineMapper.setFieldSetMapper(fieldSetMapper);
//
//        return defaultLineMapper;
//    }
//
//    @Bean
//    public VoltageProcessor processor() {
//        return new VoltageProcessor();
//    }
//
//    @Bean
//    public JdbcBatchItemWriter<Voltage> writer(final DataSource dataSource) {
//        return new JdbcBatchItemWriterBuilder<Voltage>()
//                .itemSqlParameterSourceProvider(new BeanPropertyItemSqlParameterSourceProvider<>())
//                .sql("INSERT INTO voltage (volt, time) VALUES (:volt, :time)")
//                .dataSource(dataSource)
//                .build();
//    }
//
//    @Bean
//    public Job importVoltageJob(NotificationListener listener, Step step1) {
//        return jobBuilderFactory.get("importVoltageJob")
//                .incrementer(new RunIdIncrementer())
//                .listener(listener)
//                .flow(step1)
//                .end()
//                .build();
//    }
//
//    @Bean
//    public Step step1(JdbcBatchItemWriter<Voltage> writer) {
//        return stepBuilderFactory.get("step1")
//                .<Voltage, Voltage> chunk(10)
//                .reader(reader())
//                .processor(processor())
//                .writer(writer)
//                .build();
//    }
}