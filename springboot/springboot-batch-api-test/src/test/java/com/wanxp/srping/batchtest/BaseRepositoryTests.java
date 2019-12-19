package com.wanxp.srping.batchtest;

import com.wanxp.batchtest.BatchTestApplication;
import org.springframework.boot.test.context.SpringBootTest;

//@DataJpaTest
//@RunWith(SpringRunner.class)
@SpringBootTest(classes = BatchTestApplication.class)
//@AutoConfigureTestDatabase
public abstract class BaseRepositoryTests {
}
