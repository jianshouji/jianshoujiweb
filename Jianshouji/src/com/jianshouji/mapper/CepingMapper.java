package com.jianshouji.mapper;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.jianshouji.model.Ceping;

@Scope("singleton")
@Service("cepingMapper")
public interface CepingMapper extends AbstractEntityMapper<Ceping> {

}
