package com.wanxp.batch.excel.config;

import com.wanxp.batch.excel.component.NotificationListener;
import com.wanxp.batch.excel.component.bean.handler.BeanPropertyLineAggregator;
import com.wanxp.batch.excel.component.bean.handler.BeanPropertyProcessor;
import com.wanxp.batch.excel.component.bean.handler.BeanPropertySetMapper;
import com.wanxp.batch.excel.entity.BeanProperty;
import com.wanxp.batch.excel.model.dto.BeanPropertyDto;
import org.springframework.batch.core.Job;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.configuration.annotation.EnableBatchProcessing;
import org.springframework.batch.core.configuration.annotation.JobBuilderFactory;
import org.springframework.batch.core.configuration.annotation.StepBuilderFactory;
import org.springframework.batch.core.launch.support.RunIdIncrementer;
import org.springframework.batch.item.file.FlatFileItemReader;
import org.springframework.batch.item.file.FlatFileItemWriter;
import org.springframework.batch.item.file.LineMapper;
import org.springframework.batch.item.file.builder.FlatFileItemReaderBuilder;
import org.springframework.batch.item.file.builder.FlatFileItemWriterBuilder;
import org.springframework.batch.item.file.mapping.BeanWrapperFieldSetMapper;
import org.springframework.batch.item.file.mapping.DefaultLineMapper;
import org.springframework.batch.item.file.transform.DelimitedLineTokenizer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.FileUrlResource;

import java.net.MalformedURLException;

import static com.wanxp.batch.excel.constant.Constant.COLUMNS;

@Configuration
@EnableBatchProcessing
public class BatchBeanWorkConfiguration {

	@Autowired
	public JobBuilderFactory jobBuilderFactory;

	@Autowired
	public StepBuilderFactory stepBuilderFactory;

	public FlatFileItemReader<BeanPropertyDto> reader() throws MalformedURLException {
		return new FlatFileItemReaderBuilder<BeanPropertyDto>()
				.name("beanItemReader")
//                .resource(new FileUrlResource("/home/wanxp/temp/flu/cfs/input/boxDto.csv"))
//                .resource(new FileUrlResource("/home/wanxp/temp/flu/cfs/input/orderDto.csv"))
//                .resource(new FileUrlResource("/home/wanxp/temp/flu/cfs/input/productDto.csv"))
//                .resource(new FileUrlResource("/home/wanxp/temp/flu/cfs/input/orderFileDto.csv"))
//                .resource(new FileUrlResource("/home/wanxp/temp/flu/cfs/input/fileDto.csv"))
//                .resource(new FileUrlResource("/home/wanxp/temp/flu/cfs/input/11.csv"))
//                .resource(new FileUrlResource("/home/wanxp/temp/flu/cfs/ammas/pwvDTO.csv"))
//                .resource(new FileUrlResource("/home/wanxp/temp/flu/cfs/ammas/manifest.csv"))
//                .resource(new FileUrlResource("/home/wanxp/temp/flu/cfs/input/billCharge.csv"))
//                .resource(new FileUrlResource("/home/wanxp/temp/flu/cfs/input/orderFeeDetail.csv"))
//                .resource(new FileUrlResource("/home/wanxp/temp/flu/cfs/input/billOfLandingDto.csv"))
//                .resource(new FileUrlResource("/home/wanxp/temp/flu/cfs/input/HblDTO.csv"))
//                .resource(new FileUrlResource("/home/wanxp/temp/flu/cfs/input/manifestFeeDto.csv"))
//                .resource(new FileUrlResource("/home/wanxp/temp/flu/cfs/input/billFeeDTO.csv"))
//                .resource(new FileUrlResource("/home/wanxp/temp/flu/cfs/input/orderFeeDetail.csv"))
//                .resource(new FileUrlResource("/home/wanxp/temp/flu/cfs/input/manifestOC.csv"))
//                .resource(new FileUrlResource("/home/wanxp/temp/flu/cfs/input/billOfLadingActDTO.csv"))
//                .resource(new FileUrlResource("/home/wanxp/temp/flu/cfs/input/hsCodeDTO.csv"))
//                .resource(new FileUrlResource("/home/wanxp/temp/flu/cfs/input/hsCodeDTOList.csv"))
				.resource(new FileUrlResource("/home/wanxp/temp/flu/cfs/input/eventDto3.csv"))
//
//                .resource(new FileUrlResource("/home/wanxp/temp/flu/cfs/input/skuDto.csv"))
				.delimited()
				.names(COLUMNS)
				.lineMapper(lineMapper())
				.fieldSetMapper(new BeanWrapperFieldSetMapper<BeanPropertyDto>() {{
					setTargetType(BeanPropertyDto.class);
				}})
				.build();
	}

	public LineMapper<BeanPropertyDto> lineMapper() {

		final DefaultLineMapper<BeanPropertyDto> defaultLineMapper = new DefaultLineMapper<>();
		final DelimitedLineTokenizer lineTokenizer = new DelimitedLineTokenizer();
		lineTokenizer.setDelimiter(";");
		lineTokenizer.setStrict(false);
		lineTokenizer.setNames(COLUMNS);


		final BeanPropertySetMapper fieldSetMapper = new BeanPropertySetMapper();
		defaultLineMapper.setLineTokenizer(lineTokenizer);
		defaultLineMapper.setFieldSetMapper(fieldSetMapper);

		return defaultLineMapper;
	}

	public BeanPropertyProcessor beanPropertyProcessor() {
		return new BeanPropertyProcessor();
	}

	public BeanPropertyLineAggregator beanPropertyLineAggregator() {
		return new BeanPropertyLineAggregator();
	}

	@Bean
	public FlatFileItemWriter<BeanProperty> writer() throws MalformedURLException {
		return new FlatFileItemWriterBuilder<BeanProperty>()
				.append(false)
				.encoding("UTF-8")
				.lineSeparator("\n")
				.name("valueWriter")
				.lineAggregator(beanPropertyLineAggregator())
				.resource(new FileUrlResource("/home/wanxp/temp/flu/cfs/output/output.txt"))
				.build();
	}

	@Bean
	public Job importBeanJob(NotificationListener listener) throws MalformedURLException {
		return jobBuilderFactory.get("importBeanJob")
				.incrementer(new RunIdIncrementer())
				.listener(listener)
				.flow(beanJobStep1())
				.end()
				.build();
	}

	public Step beanJobStep1() throws MalformedURLException {
		return stepBuilderFactory.get("beanJobStep1")
				.<BeanPropertyDto, BeanProperty>chunk(10)
				.reader(reader())
				.processor(beanPropertyProcessor())
				.writer(writer())
				.build();
	}
}