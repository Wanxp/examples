package com.wanxp.batch.excel.component.voltage.handler;

import com.wanxp.batch.excel.entity.Voltage;
import org.springframework.batch.item.file.mapping.FieldSetMapper;
import org.springframework.batch.item.file.transform.FieldSet;

//@Component
public class VoltageFieldSetMapper implements FieldSetMapper<Voltage> {

	@Override
	public Voltage mapFieldSet(FieldSet fieldSet) {
		final Voltage voltage = new Voltage();
		voltage.setVolt(fieldSet.readBigDecimal("volt"));
		voltage.setTime(fieldSet.readDouble("time"));
		return voltage;
	}
}