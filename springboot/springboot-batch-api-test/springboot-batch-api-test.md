# springboot-batch
* excel批量测试接口
* 批量读取文件并写入到数据库
* 解析excel文档生成目标结构并调用api测试接口
# 要点
* springboot batch 
* aop 监控方法执行时长
* springboot web 调用接口
* 多数据源
# 单元测试
* repository / dao 单元测试
BaseRepositoryTests
```
@SpringBootTest(classes = BatchTestApplication.class)
@AutoConfigureTestDatabase
public abstract class BaseRepositoryTests {
}
```


