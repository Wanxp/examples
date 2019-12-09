package com.wanxp.postmanapi.graphql;

import com.google.common.base.Charsets;
import com.google.common.io.Resources;
import graphql.GraphQL;
import graphql.schema.GraphQLSchema;
import graphql.schema.idl.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.io.IOException;
import java.net.URL;

import static graphql.schema.idl.TypeRuntimeWiring.newTypeWiring;

/**
 * schema在初始化中构建
 */
@Component
public class GraphQLProvider {
    private GraphQL graphQL;

    @Autowired
    private GraphQLDataFetchers graphQLDataFetchers;

    @Bean
    public GraphQL graphQL() {
        return graphQL;
    }

    /**
     * 使用Guava资源从类路径读取文件，然后创GraphQLSchema和GraphQL实例。
     * 这个GraphQL实例通过使用@Bean注解的GraphQL()方法作为Spring Bean暴露出去。
     * GraphQL Java Spring适配器将使用该GraphQL实例
     * 作者：TomorJM的小窝
     * 链接：https://juejin.im/post/5c886063e51d454ffb104bfd
     * 来源：掘金
     * 著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
     * @throws IOException
     */
    @PostConstruct
    public void init() throws IOException {
        URL url = Resources.getResource("schema.graphqls");
        String sdl =Resources.toString(url, Charsets.UTF_8);
        GraphQLSchema schema = buildSchema(sdl);
        this.graphQL =GraphQL.newGraphQL(schema).build();
    }

    /**
     *
     * @param sdl
     * @return
     */
    private GraphQLSchema buildSchema(String sdl) {
        TypeDefinitionRegistry typeDefinitionRegistry = new SchemaParser().parse(sdl);
        RuntimeWiring runtimeWiring = buildWiring();
        SchemaGenerator schemaGenerator = new SchemaGenerator();
        return schemaGenerator.makeExecutableSchema(typeDefinitionRegistry, runtimeWiring);
    }

    private RuntimeWiring buildWiring() {
        return RuntimeWiring.newRuntimeWiring()
                .type(newTypeWiring("Query")
                        .dataFetcher("userById", graphQLDataFetchers.getUserByIdDataFetcher()))
                .type(newTypeWiring("User")
                        .dataFetcher("address", graphQLDataFetchers.getAddressDataFetcher()))
                .build();
    }
}
