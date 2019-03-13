[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO] 
[INFO] poem-spring-cloud
[INFO] spring-eureka
[INFO] spring-zuul
[INFO] spring-hystrix
[INFO] service-provide-1
[INFO] service-provide-2
[INFO] 
[INFO] ------------------------------------------------------------------------
[INFO] Building poem-spring-cloud 1.0-SNAPSHOT
[INFO] ------------------------------------------------------------------------
[INFO] 
[INFO] --- maven-dependency-plugin:3.1.1:tree (default-cli) @ poem-spring-cloud ---
[INFO] org.poem:poem-spring-cloud:pom:1.0-SNAPSHOT
[INFO] \- org.springframework.boot:spring-boot-starter-web:jar:2.1.2.RELEASE:compile
[INFO]    +- org.springframework.boot:spring-boot-starter:jar:2.1.2.RELEASE:compile
[INFO]    |  +- org.springframework.boot:spring-boot:jar:2.1.2.RELEASE:compile
[INFO]    |  +- org.springframework.boot:spring-boot-autoconfigure:jar:2.1.2.RELEASE:compile
[INFO]    |  +- org.springframework.boot:spring-boot-starter-logging:jar:2.1.2.RELEASE:compile
[INFO]    |  |  +- ch.qos.logback:logback-classic:jar:1.2.3:compile
[INFO]    |  |  |  +- ch.qos.logback:logback-core:jar:1.2.3:compile
[INFO]    |  |  |  \- org.slf4j:slf4j-api:jar:1.7.25:compile
[INFO]    |  |  +- org.apache.logging.log4j:log4j-to-slf4j:jar:2.11.1:compile
[INFO]    |  |  |  \- org.apache.logging.log4j:log4j-api:jar:2.11.1:compile
[INFO]    |  |  \- org.slf4j:jul-to-slf4j:jar:1.7.25:compile
[INFO]    |  +- javax.annotation:javax.annotation-api:jar:1.3.2:compile
[INFO]    |  +- org.springframework:spring-core:jar:5.1.4.RELEASE:compile
[INFO]    |  |  \- org.springframework:spring-jcl:jar:5.1.4.RELEASE:compile
[INFO]    |  \- org.yaml:snakeyaml:jar:1.23:runtime
[INFO]    +- org.springframework.boot:spring-boot-starter-json:jar:2.1.2.RELEASE:compile
[INFO]    |  +- com.fasterxml.jackson.core:jackson-databind:jar:2.9.8:compile
[INFO]    |  |  +- com.fasterxml.jackson.core:jackson-annotations:jar:2.9.0:compile
[INFO]    |  |  \- com.fasterxml.jackson.core:jackson-core:jar:2.9.8:compile
[INFO]    |  +- com.fasterxml.jackson.datatype:jackson-datatype-jdk8:jar:2.9.8:compile
[INFO]    |  +- com.fasterxml.jackson.datatype:jackson-datatype-jsr310:jar:2.9.8:compile
[INFO]    |  \- com.fasterxml.jackson.module:jackson-module-parameter-names:jar:2.9.8:compile
[INFO]    +- org.springframework.boot:spring-boot-starter-tomcat:jar:2.1.2.RELEASE:compile
[INFO]    |  +- org.apache.tomcat.embed:tomcat-embed-core:jar:9.0.14:compile
[INFO]    |  +- org.apache.tomcat.embed:tomcat-embed-el:jar:9.0.14:compile
[INFO]    |  \- org.apache.tomcat.embed:tomcat-embed-websocket:jar:9.0.14:compile
[INFO]    +- org.hibernate.validator:hibernate-validator:jar:6.0.14.Final:compile
[INFO]    |  +- javax.validation:validation-api:jar:2.0.1.Final:compile
[INFO]    |  +- org.jboss.logging:jboss-logging:jar:3.3.2.Final:compile
[INFO]    |  \- com.fasterxml:classmate:jar:1.4.0:compile
[INFO]    +- org.springframework:spring-web:jar:5.1.4.RELEASE:compile
[INFO]    |  \- org.springframework:spring-beans:jar:5.1.4.RELEASE:compile
[INFO]    \- org.springframework:spring-webmvc:jar:5.1.4.RELEASE:compile
[INFO]       +- org.springframework:spring-aop:jar:5.1.4.RELEASE:compile
[INFO]       +- org.springframework:spring-context:jar:5.1.4.RELEASE:compile
[INFO]       \- org.springframework:spring-expression:jar:5.1.4.RELEASE:compile
[INFO] 
[INFO] ------------------------------------------------------------------------
[INFO] Building spring-eureka 1.0-SNAPSHOT
[INFO] ------------------------------------------------------------------------
[INFO] 
[INFO] --- maven-dependency-plugin:3.1.1:tree (default-cli) @ spring-eureka ---
[INFO] org.poem:spring-eureka:jar:1.0-SNAPSHOT
[INFO] +- org.springframework.cloud:spring-cloud-starter-netflix-eureka-server:jar:2.0.2.RELEASE:compile
[INFO] |  +- org.springframework.cloud:spring-cloud-starter:jar:2.0.2.RELEASE:compile
[INFO] |  |  +- org.springframework.cloud:spring-cloud-context:jar:2.0.2.RELEASE:compile
[INFO] |  |  |  \- org.springframework.security:spring-security-crypto:jar:5.1.3.RELEASE:compile
[INFO] |  |  +- org.springframework.cloud:spring-cloud-commons:jar:2.0.2.RELEASE:compile
[INFO] |  |  \- org.springframework.security:spring-security-rsa:jar:1.0.7.RELEASE:compile
[INFO] |  |     \- org.bouncycastle:bcpkix-jdk15on:jar:1.60:compile
[INFO] |  |        \- org.bouncycastle:bcprov-jdk15on:jar:1.60:compile
[INFO] |  +- org.springframework.cloud:spring-cloud-netflix-eureka-server:jar:2.0.2.RELEASE:compile
[INFO] |  |  +- org.springframework.boot:spring-boot-starter-freemarker:jar:2.1.2.RELEASE:compile
[INFO] |  |  |  +- org.freemarker:freemarker:jar:2.3.28:compile
[INFO] |  |  |  \- org.springframework:spring-context-support:jar:5.1.4.RELEASE:compile
[INFO] |  |  +- org.springframework.cloud:spring-cloud-netflix-core:jar:2.0.2.RELEASE:compile
[INFO] |  |  |  \- org.springframework.boot:spring-boot-starter-aop:jar:2.1.2.RELEASE:compile
[INFO] |  |  |     \- org.aspectj:aspectjweaver:jar:1.9.2:compile
[INFO] |  |  +- org.springframework.cloud:spring-cloud-netflix-eureka-client:jar:2.0.2.RELEASE:compile
[INFO] |  |  +- com.netflix.eureka:eureka-client:jar:1.9.3:compile
[INFO] |  |  |  +- org.codehaus.jettison:jettison:jar:1.3.7:runtime
[INFO] |  |  |  |  \- stax:stax-api:jar:1.0.1:runtime
[INFO] |  |  |  +- com.netflix.netflix-commons:netflix-eventbus:jar:0.3.0:runtime
[INFO] |  |  |  |  +- com.netflix.netflix-commons:netflix-infix:jar:0.3.0:runtime
[INFO] |  |  |  |  |  +- commons-jxpath:commons-jxpath:jar:1.3:runtime
[INFO] |  |  |  |  |  +- org.antlr:antlr-runtime:jar:3.4:runtime
[INFO] |  |  |  |  |  |  +- org.antlr:stringtemplate:jar:3.2.1:runtime
[INFO] |  |  |  |  |  |  \- antlr:antlr:jar:2.7.7:runtime
[INFO] |  |  |  |  |  \- com.google.code.gson:gson:jar:2.8.5:runtime
[INFO] |  |  |  |  \- org.apache.commons:commons-math:jar:2.2:runtime
[INFO] |  |  |  +- javax.ws.rs:jsr311-api:jar:1.1.1:compile
[INFO] |  |  |  +- com.netflix.servo:servo-core:jar:0.12.21:runtime
[INFO] |  |  |  +- com.sun.jersey:jersey-core:jar:1.19.1:compile
[INFO] |  |  |  +- com.sun.jersey:jersey-client:jar:1.19.1:runtime
[INFO] |  |  |  +- com.sun.jersey.contribs:jersey-apache-client4:jar:1.19.1:runtime
[INFO] |  |  |  +- org.apache.httpcomponents:httpclient:jar:4.5.6:runtime
[INFO] |  |  |  |  +- org.apache.httpcomponents:httpcore:jar:4.4.10:runtime
[INFO] |  |  |  |  \- commons-codec:commons-codec:jar:1.11:runtime
[INFO] |  |  |  +- com.google.inject:guice:jar:4.1.0:runtime
[INFO] |  |  |  |  \- aopalliance:aopalliance:jar:1.0:runtime
[INFO] |  |  |  +- com.github.vlsi.compactmap:compactmap:jar:1.2.1:runtime
[INFO] |  |  |  |  \- com.github.andrewoma.dexx:dexx-collections:jar:0.2:runtime
[INFO] |  |  |  +- com.fasterxml.jackson.core:jackson-annotations:jar:2.9.0:compile
[INFO] |  |  |  \- com.fasterxml.jackson.core:jackson-core:jar:2.9.8:compile
[INFO] |  |  +- com.sun.jersey:jersey-servlet:jar:1.19.1:compile
[INFO] |  |  +- com.sun.jersey:jersey-server:jar:1.19.1:compile
[INFO] |  |  +- com.netflix.eureka:eureka-core:jar:1.9.3:compile
[INFO] |  |  |  +- com.amazonaws:aws-java-sdk-core:jar:1.11.277:runtime
[INFO] |  |  |  |  +- commons-logging:commons-logging:jar:1.1.3:runtime
[INFO] |  |  |  |  +- software.amazon.ion:ion-java:jar:1.0.2:runtime
[INFO] |  |  |  |  +- com.fasterxml.jackson.dataformat:jackson-dataformat-cbor:jar:2.9.8:runtime
[INFO] |  |  |  |  \- joda-time:joda-time:jar:2.10.1:runtime
[INFO] |  |  |  +- com.amazonaws:aws-java-sdk-ec2:jar:1.11.277:runtime
[INFO] |  |  |  |  \- com.amazonaws:jmespath-java:jar:1.11.277:runtime
[INFO] |  |  |  +- com.amazonaws:aws-java-sdk-autoscaling:jar:1.11.277:runtime
[INFO] |  |  |  +- com.amazonaws:aws-java-sdk-sts:jar:1.11.277:runtime
[INFO] |  |  |  +- com.amazonaws:aws-java-sdk-route53:jar:1.11.277:runtime
[INFO] |  |  |  +- javax.servlet:servlet-api:jar:2.5:runtime
[INFO] |  |  |  \- org.codehaus.woodstox:woodstox-core-asl:jar:4.4.1:runtime
[INFO] |  |  |     \- javax.xml.stream:stax-api:jar:1.0-2:runtime
[INFO] |  |  +- com.netflix.archaius:archaius-core:jar:0.7.6:compile
[INFO] |  |  |  +- com.google.code.findbugs:jsr305:jar:3.0.1:runtime
[INFO] |  |  |  \- com.google.guava:guava:jar:16.0:runtime
[INFO] |  |  +- javax.inject:javax.inject:jar:1:compile
[INFO] |  |  +- com.fasterxml.jackson.dataformat:jackson-dataformat-xml:jar:2.9.8:compile
[INFO] |  |  |  +- com.fasterxml.jackson.module:jackson-module-jaxb-annotations:jar:2.9.8:compile
[INFO] |  |  |  +- org.codehaus.woodstox:stax2-api:jar:3.1.4:compile
[INFO] |  |  |  \- com.fasterxml.woodstox:woodstox-core:jar:5.0.3:compile
[INFO] |  |  \- com.thoughtworks.xstream:xstream:jar:1.4.10:compile
[INFO] |  |     +- xmlpull:xmlpull:jar:1.1.3.1:compile
[INFO] |  |     \- xpp3:xpp3_min:jar:1.1.4c:compile
[INFO] |  +- org.springframework.cloud:spring-cloud-starter-netflix-archaius:jar:2.0.2.RELEASE:compile
[INFO] |  |  +- org.springframework.cloud:spring-cloud-netflix-ribbon:jar:2.0.2.RELEASE:compile
[INFO] |  |  +- org.springframework.cloud:spring-cloud-netflix-archaius:jar:2.0.2.RELEASE:compile
[INFO] |  |  \- commons-configuration:commons-configuration:jar:1.8:compile
[INFO] |  |     \- commons-lang:commons-lang:jar:2.6:compile
[INFO] |  +- org.springframework.cloud:spring-cloud-starter-netflix-ribbon:jar:2.0.2.RELEASE:compile
[INFO] |  |  +- com.netflix.ribbon:ribbon:jar:2.2.5:compile
[INFO] |  |  |  +- com.netflix.ribbon:ribbon-transport:jar:2.2.5:runtime
[INFO] |  |  |  |  +- io.reactivex:rxnetty-contexts:jar:0.4.9:runtime
[INFO] |  |  |  |  \- io.reactivex:rxnetty-servo:jar:0.4.9:runtime
[INFO] |  |  |  +- com.netflix.hystrix:hystrix-core:jar:1.4.3:runtime
[INFO] |  |  |  \- io.reactivex:rxnetty:jar:0.4.9:runtime
[INFO] |  |  +- com.netflix.ribbon:ribbon-core:jar:2.2.5:compile
[INFO] |  |  +- com.netflix.ribbon:ribbon-httpclient:jar:2.2.5:compile
[INFO] |  |  |  +- commons-collections:commons-collections:jar:3.2.2:runtime
[INFO] |  |  |  \- com.netflix.netflix-commons:netflix-commons-util:jar:0.1.1:runtime
[INFO] |  |  +- com.netflix.ribbon:ribbon-loadbalancer:jar:2.2.5:compile
[INFO] |  |  |  \- com.netflix.netflix-commons:netflix-statistics:jar:0.1.1:runtime
[INFO] |  |  \- io.reactivex:rxjava:jar:1.3.8:compile
[INFO] |  \- com.netflix.ribbon:ribbon-eureka:jar:2.2.5:compile
[INFO] |     \- org.slf4j:slf4j-api:jar:1.7.25:compile
[INFO] +- org.springframework.boot:spring-boot-starter-actuator:jar:2.1.2.RELEASE:compile
[INFO] |  +- org.springframework.boot:spring-boot-starter:jar:2.1.2.RELEASE:compile
[INFO] |  |  +- org.springframework.boot:spring-boot:jar:2.1.2.RELEASE:compile
[INFO] |  |  +- org.springframework.boot:spring-boot-autoconfigure:jar:2.1.2.RELEASE:compile
[INFO] |  |  +- org.springframework.boot:spring-boot-starter-logging:jar:2.1.2.RELEASE:compile
[INFO] |  |  |  +- ch.qos.logback:logback-classic:jar:1.2.3:compile
[INFO] |  |  |  |  \- ch.qos.logback:logback-core:jar:1.2.3:compile
[INFO] |  |  |  +- org.apache.logging.log4j:log4j-to-slf4j:jar:2.11.1:compile
[INFO] |  |  |  |  \- org.apache.logging.log4j:log4j-api:jar:2.11.1:compile
[INFO] |  |  |  \- org.slf4j:jul-to-slf4j:jar:1.7.25:compile
[INFO] |  |  +- javax.annotation:javax.annotation-api:jar:1.3.2:compile
[INFO] |  |  +- org.springframework:spring-core:jar:5.1.4.RELEASE:compile
[INFO] |  |  |  \- org.springframework:spring-jcl:jar:5.1.4.RELEASE:compile
[INFO] |  |  \- org.yaml:snakeyaml:jar:1.23:runtime
[INFO] |  +- org.springframework.boot:spring-boot-actuator-autoconfigure:jar:2.1.2.RELEASE:compile
[INFO] |  |  +- org.springframework.boot:spring-boot-actuator:jar:2.1.2.RELEASE:compile
[INFO] |  |  +- com.fasterxml.jackson.core:jackson-databind:jar:2.9.8:compile
[INFO] |  |  +- org.springframework:spring-context:jar:5.1.4.RELEASE:compile
[INFO] |  |  \- com.fasterxml.jackson.datatype:jackson-datatype-jsr310:jar:2.9.8:compile
[INFO] |  \- io.micrometer:micrometer-core:jar:1.1.2:compile
[INFO] |     +- org.hdrhistogram:HdrHistogram:jar:2.1.9:compile
[INFO] |     \- org.latencyutils:LatencyUtils:jar:2.0.3:compile
[INFO] \- org.springframework.boot:spring-boot-starter-web:jar:2.1.2.RELEASE:compile
[INFO]    +- org.springframework.boot:spring-boot-starter-json:jar:2.1.2.RELEASE:compile
[INFO]    |  +- com.fasterxml.jackson.datatype:jackson-datatype-jdk8:jar:2.9.8:compile
[INFO]    |  \- com.fasterxml.jackson.module:jackson-module-parameter-names:jar:2.9.8:compile
[INFO]    +- org.springframework.boot:spring-boot-starter-tomcat:jar:2.1.2.RELEASE:compile
[INFO]    |  +- org.apache.tomcat.embed:tomcat-embed-core:jar:9.0.14:compile
[INFO]    |  +- org.apache.tomcat.embed:tomcat-embed-el:jar:9.0.14:compile
[INFO]    |  \- org.apache.tomcat.embed:tomcat-embed-websocket:jar:9.0.14:compile
[INFO]    +- org.hibernate.validator:hibernate-validator:jar:6.0.14.Final:compile
[INFO]    |  +- javax.validation:validation-api:jar:2.0.1.Final:compile
[INFO]    |  +- org.jboss.logging:jboss-logging:jar:3.3.2.Final:compile
[INFO]    |  \- com.fasterxml:classmate:jar:1.4.0:compile
[INFO]    +- org.springframework:spring-web:jar:5.1.4.RELEASE:compile
[INFO]    |  \- org.springframework:spring-beans:jar:5.1.4.RELEASE:compile
[INFO]    \- org.springframework:spring-webmvc:jar:5.1.4.RELEASE:compile
[INFO]       +- org.springframework:spring-aop:jar:5.1.4.RELEASE:compile
[INFO]       \- org.springframework:spring-expression:jar:5.1.4.RELEASE:compile
[INFO] 
[INFO] ------------------------------------------------------------------------
[INFO] Building spring-zuul 1.0-SNAPSHOT
[INFO] ------------------------------------------------------------------------
[INFO] 
[INFO] --- maven-dependency-plugin:3.1.1:tree (default-cli) @ spring-zuul ---
[INFO] org.poem:spring-zuul:jar:1.0-SNAPSHOT
[INFO] +- org.springframework.cloud:spring-cloud-starter-netflix-zuul:jar:2.1.0.RELEASE:compile
[INFO] |  +- org.springframework.cloud:spring-cloud-starter:jar:2.1.0.RELEASE:compile
[INFO] |  |  +- org.springframework.cloud:spring-cloud-context:jar:2.1.0.RELEASE:compile
[INFO] |  |  |  \- org.springframework.security:spring-security-crypto:jar:5.1.3.RELEASE:compile
[INFO] |  |  +- org.springframework.cloud:spring-cloud-commons:jar:2.1.0.RELEASE:compile
[INFO] |  |  \- org.springframework.security:spring-security-rsa:jar:1.0.7.RELEASE:compile
[INFO] |  |     \- org.bouncycastle:bcpkix-jdk15on:jar:1.60:compile
[INFO] |  |        \- org.bouncycastle:bcprov-jdk15on:jar:1.60:compile
[INFO] |  +- org.springframework.boot:spring-boot-starter-actuator:jar:2.1.2.RELEASE:compile
[INFO] |  |  +- org.springframework.boot:spring-boot-actuator-autoconfigure:jar:2.1.2.RELEASE:compile
[INFO] |  |  |  \- org.springframework.boot:spring-boot-actuator:jar:2.1.2.RELEASE:compile
[INFO] |  |  \- io.micrometer:micrometer-core:jar:1.1.2:compile
[INFO] |  |     +- org.hdrhistogram:HdrHistogram:jar:2.1.9:compile
[INFO] |  |     \- org.latencyutils:LatencyUtils:jar:2.0.3:compile
[INFO] |  +- org.springframework.cloud:spring-cloud-starter-netflix-hystrix:jar:2.1.0.RELEASE:compile
[INFO] |  |  +- org.springframework.cloud:spring-cloud-netflix-ribbon:jar:2.1.0.RELEASE:compile
[INFO] |  |  +- com.netflix.hystrix:hystrix-core:jar:1.5.18:compile
[INFO] |  |  +- com.netflix.hystrix:hystrix-serialization:jar:1.5.18:compile
[INFO] |  |  |  \- com.fasterxml.jackson.module:jackson-module-afterburner:jar:2.9.8:runtime
[INFO] |  |  +- com.netflix.hystrix:hystrix-metrics-event-stream:jar:1.5.18:compile
[INFO] |  |  +- com.netflix.hystrix:hystrix-javanica:jar:1.5.18:compile
[INFO] |  |  |  +- org.apache.commons:commons-lang3:jar:3.8.1:runtime
[INFO] |  |  |  +- org.ow2.asm:asm:jar:5.0.4:runtime
[INFO] |  |  |  +- org.aspectj:aspectjweaver:jar:1.9.2:compile
[INFO] |  |  |  \- com.google.guava:guava:jar:15.0:compile
[INFO] |  |  \- io.reactivex:rxjava-reactive-streams:jar:1.2.1:compile
[INFO] |  |     \- org.reactivestreams:reactive-streams:jar:1.0.2:runtime
[INFO] |  +- org.springframework.cloud:spring-cloud-starter-netflix-ribbon:jar:2.1.0.RELEASE:compile
[INFO] |  |  +- com.netflix.ribbon:ribbon:jar:2.3.0:compile
[INFO] |  |  |  +- com.netflix.ribbon:ribbon-transport:jar:2.3.0:runtime
[INFO] |  |  |  |  +- io.reactivex:rxnetty-contexts:jar:0.4.9:runtime
[INFO] |  |  |  |  \- io.reactivex:rxnetty-servo:jar:0.4.9:runtime
[INFO] |  |  |  \- io.reactivex:rxnetty:jar:0.4.9:runtime
[INFO] |  |  +- com.netflix.ribbon:ribbon-core:jar:2.3.0:compile
[INFO] |  |  |  \- commons-lang:commons-lang:jar:2.6:compile
[INFO] |  |  +- com.netflix.ribbon:ribbon-httpclient:jar:2.3.0:compile
[INFO] |  |  |  \- commons-collections:commons-collections:jar:3.2.2:runtime
[INFO] |  |  +- com.netflix.ribbon:ribbon-loadbalancer:jar:2.3.0:compile
[INFO] |  |  |  \- com.netflix.netflix-commons:netflix-statistics:jar:0.1.1:runtime
[INFO] |  |  \- io.reactivex:rxjava:jar:1.3.8:compile
[INFO] |  +- org.springframework.cloud:spring-cloud-starter-netflix-archaius:jar:2.1.0.RELEASE:compile
[INFO] |  |  +- org.springframework.cloud:spring-cloud-netflix-archaius:jar:2.1.0.RELEASE:compile
[INFO] |  |  +- com.netflix.archaius:archaius-core:jar:0.7.6:compile
[INFO] |  |  |  \- com.google.code.findbugs:jsr305:jar:3.0.1:runtime
[INFO] |  |  \- commons-configuration:commons-configuration:jar:1.8:compile
[INFO] |  \- com.netflix.zuul:zuul-core:jar:1.3.1:compile
[INFO] |     +- commons-io:commons-io:jar:2.4:runtime
[INFO] |     +- org.slf4j:slf4j-api:jar:1.7.25:compile
[INFO] |     \- com.netflix.servo:servo-core:jar:0.7.2:runtime
[INFO] |        \- com.google.code.findbugs:annotations:jar:2.0.0:runtime
[INFO] +- org.springframework.cloud:spring-cloud-starter-netflix-eureka-client:jar:2.1.0.RELEASE:compile
[INFO] |  +- org.springframework.cloud:spring-cloud-netflix-hystrix:jar:2.1.0.RELEASE:compile
[INFO] |  |  +- org.springframework.boot:spring-boot-autoconfigure:jar:2.1.2.RELEASE:compile
[INFO] |  |  \- org.springframework.boot:spring-boot-starter-aop:jar:2.1.2.RELEASE:compile
[INFO] |  +- org.springframework.cloud:spring-cloud-netflix-eureka-client:jar:2.1.0.RELEASE:compile
[INFO] |  +- com.netflix.eureka:eureka-client:jar:1.9.8:compile
[INFO] |  |  +- org.codehaus.jettison:jettison:jar:1.3.7:runtime
[INFO] |  |  |  \- stax:stax-api:jar:1.0.1:runtime
[INFO] |  |  +- com.netflix.netflix-commons:netflix-eventbus:jar:0.3.0:runtime
[INFO] |  |  |  +- com.netflix.netflix-commons:netflix-infix:jar:0.3.0:runtime
[INFO] |  |  |  |  +- commons-jxpath:commons-jxpath:jar:1.3:runtime
[INFO] |  |  |  |  +- joda-time:joda-time:jar:2.10.1:runtime
[INFO] |  |  |  |  +- org.antlr:antlr-runtime:jar:3.4:runtime
[INFO] |  |  |  |  |  +- org.antlr:stringtemplate:jar:3.2.1:runtime
[INFO] |  |  |  |  |  \- antlr:antlr:jar:2.7.7:runtime
[INFO] |  |  |  |  \- com.google.code.gson:gson:jar:2.8.5:runtime
[INFO] |  |  |  \- org.apache.commons:commons-math:jar:2.2:runtime
[INFO] |  |  +- javax.ws.rs:jsr311-api:jar:1.1.1:runtime
[INFO] |  |  +- com.sun.jersey:jersey-core:jar:1.19.1:runtime
[INFO] |  |  +- com.sun.jersey:jersey-client:jar:1.19.1:runtime
[INFO] |  |  +- com.sun.jersey.contribs:jersey-apache-client4:jar:1.19.1:runtime
[INFO] |  |  +- com.google.inject:guice:jar:4.1.0:runtime
[INFO] |  |  |  \- aopalliance:aopalliance:jar:1.0:runtime
[INFO] |  |  +- com.github.vlsi.compactmap:compactmap:jar:1.2.1:runtime
[INFO] |  |  |  \- com.github.andrewoma.dexx:dexx-collections:jar:0.2:runtime
[INFO] |  |  +- com.fasterxml.jackson.core:jackson-annotations:jar:2.9.0:compile
[INFO] |  |  +- com.fasterxml.jackson.core:jackson-core:jar:2.9.8:compile
[INFO] |  |  \- com.fasterxml.jackson.core:jackson-databind:jar:2.9.8:compile
[INFO] |  +- com.netflix.eureka:eureka-core:jar:1.9.8:compile
[INFO] |  |  \- org.codehaus.woodstox:woodstox-core-asl:jar:4.4.1:runtime
[INFO] |  |     +- javax.xml.stream:stax-api:jar:1.0-2:runtime
[INFO] |  |     \- org.codehaus.woodstox:stax2-api:jar:3.1.4:runtime
[INFO] |  +- com.netflix.ribbon:ribbon-eureka:jar:2.3.0:compile
[INFO] |  \- com.thoughtworks.xstream:xstream:jar:1.4.10:compile
[INFO] |     +- xmlpull:xmlpull:jar:1.1.3.1:compile
[INFO] |     \- xpp3:xpp3_min:jar:1.1.4c:compile
[INFO] +- org.springframework.cloud:spring-cloud-netflix-zuul:jar:2.1.0.RELEASE:compile
[INFO] |  +- org.apache.httpcomponents:httpclient:jar:4.5.6:compile
[INFO] |  |  +- org.apache.httpcomponents:httpcore:jar:4.4.10:compile
[INFO] |  |  \- commons-codec:commons-codec:jar:1.11:compile
[INFO] |  \- com.netflix.netflix-commons:netflix-commons-util:jar:0.3.0:compile
[INFO] |     \- javax.inject:javax.inject:jar:1:runtime
[INFO] \- org.springframework.boot:spring-boot-starter-web:jar:2.1.2.RELEASE:compile
[INFO]    +- org.springframework.boot:spring-boot-starter:jar:2.1.2.RELEASE:compile
[INFO]    |  +- org.springframework.boot:spring-boot:jar:2.1.2.RELEASE:compile
[INFO]    |  +- org.springframework.boot:spring-boot-starter-logging:jar:2.1.2.RELEASE:compile
[INFO]    |  |  +- ch.qos.logback:logback-classic:jar:1.2.3:compile
[INFO]    |  |  |  \- ch.qos.logback:logback-core:jar:1.2.3:compile
[INFO]    |  |  +- org.apache.logging.log4j:log4j-to-slf4j:jar:2.11.1:compile
[INFO]    |  |  |  \- org.apache.logging.log4j:log4j-api:jar:2.11.1:compile
[INFO]    |  |  \- org.slf4j:jul-to-slf4j:jar:1.7.25:compile
[INFO]    |  +- javax.annotation:javax.annotation-api:jar:1.3.2:compile
[INFO]    |  +- org.springframework:spring-core:jar:5.1.4.RELEASE:compile
[INFO]    |  |  \- org.springframework:spring-jcl:jar:5.1.4.RELEASE:compile
[INFO]    |  \- org.yaml:snakeyaml:jar:1.23:runtime
[INFO]    +- org.springframework.boot:spring-boot-starter-json:jar:2.1.2.RELEASE:compile
[INFO]    |  +- com.fasterxml.jackson.datatype:jackson-datatype-jdk8:jar:2.9.8:compile
[INFO]    |  +- com.fasterxml.jackson.datatype:jackson-datatype-jsr310:jar:2.9.8:compile
[INFO]    |  \- com.fasterxml.jackson.module:jackson-module-parameter-names:jar:2.9.8:compile
[INFO]    +- org.springframework.boot:spring-boot-starter-tomcat:jar:2.1.2.RELEASE:compile
[INFO]    |  +- org.apache.tomcat.embed:tomcat-embed-core:jar:9.0.14:compile
[INFO]    |  +- org.apache.tomcat.embed:tomcat-embed-el:jar:9.0.14:compile
[INFO]    |  \- org.apache.tomcat.embed:tomcat-embed-websocket:jar:9.0.14:compile
[INFO]    +- org.hibernate.validator:hibernate-validator:jar:6.0.14.Final:compile
[INFO]    |  +- javax.validation:validation-api:jar:2.0.1.Final:compile
[INFO]    |  +- org.jboss.logging:jboss-logging:jar:3.3.2.Final:compile
[INFO]    |  \- com.fasterxml:classmate:jar:1.4.0:compile
[INFO]    +- org.springframework:spring-web:jar:5.1.4.RELEASE:compile
[INFO]    |  \- org.springframework:spring-beans:jar:5.1.4.RELEASE:compile
[INFO]    \- org.springframework:spring-webmvc:jar:5.1.4.RELEASE:compile
[INFO]       +- org.springframework:spring-aop:jar:5.1.4.RELEASE:compile
[INFO]       +- org.springframework:spring-context:jar:5.1.4.RELEASE:compile
[INFO]       \- org.springframework:spring-expression:jar:5.1.4.RELEASE:compile
[INFO] 
[INFO] ------------------------------------------------------------------------
[INFO] Building spring-hystrix 1.0-SNAPSHOT
[INFO] ------------------------------------------------------------------------
[INFO] 
[INFO] --- maven-dependency-plugin:3.1.1:tree (default-cli) @ spring-hystrix ---
[INFO] org.poem:spring-hystrix:jar:1.0-SNAPSHOT
[INFO] \- org.springframework.boot:spring-boot-starter-web:jar:2.1.2.RELEASE:compile
[INFO]    +- org.springframework.boot:spring-boot-starter:jar:2.1.2.RELEASE:compile
[INFO]    |  +- org.springframework.boot:spring-boot:jar:2.1.2.RELEASE:compile
[INFO]    |  +- org.springframework.boot:spring-boot-autoconfigure:jar:2.1.2.RELEASE:compile
[INFO]    |  +- org.springframework.boot:spring-boot-starter-logging:jar:2.1.2.RELEASE:compile
[INFO]    |  |  +- ch.qos.logback:logback-classic:jar:1.2.3:compile
[INFO]    |  |  |  +- ch.qos.logback:logback-core:jar:1.2.3:compile
[INFO]    |  |  |  \- org.slf4j:slf4j-api:jar:1.7.25:compile
[INFO]    |  |  +- org.apache.logging.log4j:log4j-to-slf4j:jar:2.11.1:compile
[INFO]    |  |  |  \- org.apache.logging.log4j:log4j-api:jar:2.11.1:compile
[INFO]    |  |  \- org.slf4j:jul-to-slf4j:jar:1.7.25:compile
[INFO]    |  +- javax.annotation:javax.annotation-api:jar:1.3.2:compile
[INFO]    |  +- org.springframework:spring-core:jar:5.1.4.RELEASE:compile
[INFO]    |  |  \- org.springframework:spring-jcl:jar:5.1.4.RELEASE:compile
[INFO]    |  \- org.yaml:snakeyaml:jar:1.23:runtime
[INFO]    +- org.springframework.boot:spring-boot-starter-json:jar:2.1.2.RELEASE:compile
[INFO]    |  +- com.fasterxml.jackson.core:jackson-databind:jar:2.9.8:compile
[INFO]    |  |  +- com.fasterxml.jackson.core:jackson-annotations:jar:2.9.0:compile
[INFO]    |  |  \- com.fasterxml.jackson.core:jackson-core:jar:2.9.8:compile
[INFO]    |  +- com.fasterxml.jackson.datatype:jackson-datatype-jdk8:jar:2.9.8:compile
[INFO]    |  +- com.fasterxml.jackson.datatype:jackson-datatype-jsr310:jar:2.9.8:compile
[INFO]    |  \- com.fasterxml.jackson.module:jackson-module-parameter-names:jar:2.9.8:compile
[INFO]    +- org.springframework.boot:spring-boot-starter-tomcat:jar:2.1.2.RELEASE:compile
[INFO]    |  +- org.apache.tomcat.embed:tomcat-embed-core:jar:9.0.14:compile
[INFO]    |  +- org.apache.tomcat.embed:tomcat-embed-el:jar:9.0.14:compile
[INFO]    |  \- org.apache.tomcat.embed:tomcat-embed-websocket:jar:9.0.14:compile
[INFO]    +- org.hibernate.validator:hibernate-validator:jar:6.0.14.Final:compile
[INFO]    |  +- javax.validation:validation-api:jar:2.0.1.Final:compile
[INFO]    |  +- org.jboss.logging:jboss-logging:jar:3.3.2.Final:compile
[INFO]    |  \- com.fasterxml:classmate:jar:1.4.0:compile
[INFO]    +- org.springframework:spring-web:jar:5.1.4.RELEASE:compile
[INFO]    |  \- org.springframework:spring-beans:jar:5.1.4.RELEASE:compile
[INFO]    \- org.springframework:spring-webmvc:jar:5.1.4.RELEASE:compile
[INFO]       +- org.springframework:spring-aop:jar:5.1.4.RELEASE:compile
[INFO]       +- org.springframework:spring-context:jar:5.1.4.RELEASE:compile
[INFO]       \- org.springframework:spring-expression:jar:5.1.4.RELEASE:compile
[INFO] 
[INFO] ------------------------------------------------------------------------
[INFO] Building service-provide-1 1.0-SNAPSHOT
[INFO] ------------------------------------------------------------------------
[INFO] 
[INFO] --- maven-dependency-plugin:3.1.1:tree (default-cli) @ service-provide-1 ---
[INFO] org.poem:service-provide-1:jar:1.0-SNAPSHOT
[INFO] +- org.springframework.cloud:spring-cloud-starter-netflix-eureka-server:jar:2.0.2.RELEASE:compile
[INFO] |  +- org.springframework.cloud:spring-cloud-starter:jar:2.0.2.RELEASE:compile
[INFO] |  |  +- org.springframework.cloud:spring-cloud-context:jar:2.0.2.RELEASE:compile
[INFO] |  |  |  \- org.springframework.security:spring-security-crypto:jar:5.1.3.RELEASE:compile
[INFO] |  |  +- org.springframework.cloud:spring-cloud-commons:jar:2.0.2.RELEASE:compile
[INFO] |  |  \- org.springframework.security:spring-security-rsa:jar:1.0.7.RELEASE:compile
[INFO] |  |     \- org.bouncycastle:bcpkix-jdk15on:jar:1.60:compile
[INFO] |  |        \- org.bouncycastle:bcprov-jdk15on:jar:1.60:compile
[INFO] |  +- org.springframework.cloud:spring-cloud-netflix-eureka-server:jar:2.0.2.RELEASE:compile
[INFO] |  |  +- org.springframework.boot:spring-boot-starter-actuator:jar:2.1.2.RELEASE:compile
[INFO] |  |  |  +- org.springframework.boot:spring-boot-actuator-autoconfigure:jar:2.1.2.RELEASE:compile
[INFO] |  |  |  |  \- org.springframework.boot:spring-boot-actuator:jar:2.1.2.RELEASE:compile
[INFO] |  |  |  \- io.micrometer:micrometer-core:jar:1.1.2:compile
[INFO] |  |  |     +- org.hdrhistogram:HdrHistogram:jar:2.1.9:compile
[INFO] |  |  |     \- org.latencyutils:LatencyUtils:jar:2.0.3:compile
[INFO] |  |  +- org.springframework.boot:spring-boot-starter-freemarker:jar:2.1.2.RELEASE:compile
[INFO] |  |  |  +- org.freemarker:freemarker:jar:2.3.28:compile
[INFO] |  |  |  \- org.springframework:spring-context-support:jar:5.1.4.RELEASE:compile
[INFO] |  |  +- org.springframework.cloud:spring-cloud-netflix-core:jar:2.0.2.RELEASE:compile
[INFO] |  |  |  \- org.springframework.boot:spring-boot-starter-aop:jar:2.1.2.RELEASE:compile
[INFO] |  |  |     \- org.aspectj:aspectjweaver:jar:1.9.2:compile
[INFO] |  |  +- org.springframework.cloud:spring-cloud-netflix-eureka-client:jar:2.0.2.RELEASE:compile
[INFO] |  |  +- com.netflix.eureka:eureka-client:jar:1.9.3:compile
[INFO] |  |  |  +- org.codehaus.jettison:jettison:jar:1.3.7:runtime
[INFO] |  |  |  |  \- stax:stax-api:jar:1.0.1:runtime
[INFO] |  |  |  +- com.netflix.netflix-commons:netflix-eventbus:jar:0.3.0:runtime
[INFO] |  |  |  |  +- com.netflix.netflix-commons:netflix-infix:jar:0.3.0:runtime
[INFO] |  |  |  |  |  +- commons-jxpath:commons-jxpath:jar:1.3:runtime
[INFO] |  |  |  |  |  +- org.antlr:antlr-runtime:jar:3.4:runtime
[INFO] |  |  |  |  |  |  +- org.antlr:stringtemplate:jar:3.2.1:runtime
[INFO] |  |  |  |  |  |  \- antlr:antlr:jar:2.7.7:runtime
[INFO] |  |  |  |  |  \- com.google.code.gson:gson:jar:2.8.5:runtime
[INFO] |  |  |  |  \- org.apache.commons:commons-math:jar:2.2:runtime
[INFO] |  |  |  +- javax.ws.rs:jsr311-api:jar:1.1.1:compile
[INFO] |  |  |  +- com.netflix.servo:servo-core:jar:0.12.21:runtime
[INFO] |  |  |  +- com.sun.jersey:jersey-core:jar:1.19.1:compile
[INFO] |  |  |  +- com.sun.jersey:jersey-client:jar:1.19.1:runtime
[INFO] |  |  |  +- com.sun.jersey.contribs:jersey-apache-client4:jar:1.19.1:runtime
[INFO] |  |  |  +- org.apache.httpcomponents:httpclient:jar:4.5.6:runtime
[INFO] |  |  |  |  +- org.apache.httpcomponents:httpcore:jar:4.4.10:runtime
[INFO] |  |  |  |  \- commons-codec:commons-codec:jar:1.11:runtime
[INFO] |  |  |  +- com.google.inject:guice:jar:4.1.0:runtime
[INFO] |  |  |  |  \- aopalliance:aopalliance:jar:1.0:runtime
[INFO] |  |  |  +- com.github.vlsi.compactmap:compactmap:jar:1.2.1:runtime
[INFO] |  |  |  |  \- com.github.andrewoma.dexx:dexx-collections:jar:0.2:runtime
[INFO] |  |  |  +- com.fasterxml.jackson.core:jackson-annotations:jar:2.9.0:compile
[INFO] |  |  |  \- com.fasterxml.jackson.core:jackson-core:jar:2.9.8:compile
[INFO] |  |  +- com.sun.jersey:jersey-servlet:jar:1.19.1:compile
[INFO] |  |  +- com.sun.jersey:jersey-server:jar:1.19.1:compile
[INFO] |  |  +- com.netflix.eureka:eureka-core:jar:1.9.3:compile
[INFO] |  |  |  +- com.amazonaws:aws-java-sdk-core:jar:1.11.277:runtime
[INFO] |  |  |  |  +- commons-logging:commons-logging:jar:1.1.3:runtime
[INFO] |  |  |  |  +- software.amazon.ion:ion-java:jar:1.0.2:runtime
[INFO] |  |  |  |  +- com.fasterxml.jackson.dataformat:jackson-dataformat-cbor:jar:2.9.8:runtime
[INFO] |  |  |  |  \- joda-time:joda-time:jar:2.10.1:runtime
[INFO] |  |  |  +- com.amazonaws:aws-java-sdk-ec2:jar:1.11.277:runtime
[INFO] |  |  |  |  \- com.amazonaws:jmespath-java:jar:1.11.277:runtime
[INFO] |  |  |  +- com.amazonaws:aws-java-sdk-autoscaling:jar:1.11.277:runtime
[INFO] |  |  |  +- com.amazonaws:aws-java-sdk-sts:jar:1.11.277:runtime
[INFO] |  |  |  +- com.amazonaws:aws-java-sdk-route53:jar:1.11.277:runtime
[INFO] |  |  |  +- javax.servlet:servlet-api:jar:2.5:runtime
[INFO] |  |  |  \- org.codehaus.woodstox:woodstox-core-asl:jar:4.4.1:runtime
[INFO] |  |  |     \- javax.xml.stream:stax-api:jar:1.0-2:runtime
[INFO] |  |  +- com.netflix.archaius:archaius-core:jar:0.7.6:compile
[INFO] |  |  |  +- com.google.code.findbugs:jsr305:jar:3.0.1:runtime
[INFO] |  |  |  \- com.google.guava:guava:jar:16.0:runtime
[INFO] |  |  +- javax.inject:javax.inject:jar:1:compile
[INFO] |  |  +- com.fasterxml.jackson.dataformat:jackson-dataformat-xml:jar:2.9.8:compile
[INFO] |  |  |  +- com.fasterxml.jackson.module:jackson-module-jaxb-annotations:jar:2.9.8:compile
[INFO] |  |  |  +- org.codehaus.woodstox:stax2-api:jar:3.1.4:compile
[INFO] |  |  |  \- com.fasterxml.woodstox:woodstox-core:jar:5.0.3:compile
[INFO] |  |  \- com.thoughtworks.xstream:xstream:jar:1.4.10:compile
[INFO] |  |     +- xmlpull:xmlpull:jar:1.1.3.1:compile
[INFO] |  |     \- xpp3:xpp3_min:jar:1.1.4c:compile
[INFO] |  +- org.springframework.cloud:spring-cloud-starter-netflix-archaius:jar:2.0.2.RELEASE:compile
[INFO] |  |  +- org.springframework.cloud:spring-cloud-netflix-ribbon:jar:2.0.2.RELEASE:compile
[INFO] |  |  +- org.springframework.cloud:spring-cloud-netflix-archaius:jar:2.0.2.RELEASE:compile
[INFO] |  |  \- commons-configuration:commons-configuration:jar:1.8:compile
[INFO] |  |     \- commons-lang:commons-lang:jar:2.6:compile
[INFO] |  +- org.springframework.cloud:spring-cloud-starter-netflix-ribbon:jar:2.0.2.RELEASE:compile
[INFO] |  |  +- com.netflix.ribbon:ribbon:jar:2.2.5:compile
[INFO] |  |  |  +- com.netflix.ribbon:ribbon-transport:jar:2.2.5:runtime
[INFO] |  |  |  |  +- io.reactivex:rxnetty-contexts:jar:0.4.9:runtime
[INFO] |  |  |  |  \- io.reactivex:rxnetty-servo:jar:0.4.9:runtime
[INFO] |  |  |  +- com.netflix.hystrix:hystrix-core:jar:1.4.3:runtime
[INFO] |  |  |  \- io.reactivex:rxnetty:jar:0.4.9:runtime
[INFO] |  |  +- com.netflix.ribbon:ribbon-core:jar:2.2.5:compile
[INFO] |  |  +- com.netflix.ribbon:ribbon-httpclient:jar:2.2.5:compile
[INFO] |  |  |  +- commons-collections:commons-collections:jar:3.2.2:runtime
[INFO] |  |  |  \- com.netflix.netflix-commons:netflix-commons-util:jar:0.1.1:runtime
[INFO] |  |  +- com.netflix.ribbon:ribbon-loadbalancer:jar:2.2.5:compile
[INFO] |  |  |  \- com.netflix.netflix-commons:netflix-statistics:jar:0.1.1:runtime
[INFO] |  |  \- io.reactivex:rxjava:jar:1.3.8:compile
[INFO] |  \- com.netflix.ribbon:ribbon-eureka:jar:2.2.5:compile
[INFO] |     \- org.slf4j:slf4j-api:jar:1.7.25:compile
[INFO] \- org.springframework.boot:spring-boot-starter-web:jar:2.1.2.RELEASE:compile
[INFO]    +- org.springframework.boot:spring-boot-starter:jar:2.1.2.RELEASE:compile
[INFO]    |  +- org.springframework.boot:spring-boot:jar:2.1.2.RELEASE:compile
[INFO]    |  +- org.springframework.boot:spring-boot-autoconfigure:jar:2.1.2.RELEASE:compile
[INFO]    |  +- org.springframework.boot:spring-boot-starter-logging:jar:2.1.2.RELEASE:compile
[INFO]    |  |  +- ch.qos.logback:logback-classic:jar:1.2.3:compile
[INFO]    |  |  |  \- ch.qos.logback:logback-core:jar:1.2.3:compile
[INFO]    |  |  +- org.apache.logging.log4j:log4j-to-slf4j:jar:2.11.1:compile
[INFO]    |  |  |  \- org.apache.logging.log4j:log4j-api:jar:2.11.1:compile
[INFO]    |  |  \- org.slf4j:jul-to-slf4j:jar:1.7.25:compile
[INFO]    |  +- javax.annotation:javax.annotation-api:jar:1.3.2:compile
[INFO]    |  +- org.springframework:spring-core:jar:5.1.4.RELEASE:compile
[INFO]    |  |  \- org.springframework:spring-jcl:jar:5.1.4.RELEASE:compile
[INFO]    |  \- org.yaml:snakeyaml:jar:1.23:runtime
[INFO]    +- org.springframework.boot:spring-boot-starter-json:jar:2.1.2.RELEASE:compile
[INFO]    |  +- com.fasterxml.jackson.core:jackson-databind:jar:2.9.8:compile
[INFO]    |  +- com.fasterxml.jackson.datatype:jackson-datatype-jdk8:jar:2.9.8:compile
[INFO]    |  +- com.fasterxml.jackson.datatype:jackson-datatype-jsr310:jar:2.9.8:compile
[INFO]    |  \- com.fasterxml.jackson.module:jackson-module-parameter-names:jar:2.9.8:compile
[INFO]    +- org.springframework.boot:spring-boot-starter-tomcat:jar:2.1.2.RELEASE:compile
[INFO]    |  +- org.apache.tomcat.embed:tomcat-embed-core:jar:9.0.14:compile
[INFO]    |  +- org.apache.tomcat.embed:tomcat-embed-el:jar:9.0.14:compile
[INFO]    |  \- org.apache.tomcat.embed:tomcat-embed-websocket:jar:9.0.14:compile
[INFO]    +- org.hibernate.validator:hibernate-validator:jar:6.0.14.Final:compile
[INFO]    |  +- javax.validation:validation-api:jar:2.0.1.Final:compile
[INFO]    |  +- org.jboss.logging:jboss-logging:jar:3.3.2.Final:compile
[INFO]    |  \- com.fasterxml:classmate:jar:1.4.0:compile
[INFO]    +- org.springframework:spring-web:jar:5.1.4.RELEASE:compile
[INFO]    |  \- org.springframework:spring-beans:jar:5.1.4.RELEASE:compile
[INFO]    \- org.springframework:spring-webmvc:jar:5.1.4.RELEASE:compile
[INFO]       +- org.springframework:spring-aop:jar:5.1.4.RELEASE:compile
[INFO]       +- org.springframework:spring-context:jar:5.1.4.RELEASE:compile
[INFO]       \- org.springframework:spring-expression:jar:5.1.4.RELEASE:compile
[INFO] 
[INFO] ------------------------------------------------------------------------
[INFO] Building service-provide-2 1.0-SNAPSHOT
[INFO] ------------------------------------------------------------------------
[INFO] 
[INFO] --- maven-dependency-plugin:3.1.1:tree (default-cli) @ service-provide-2 ---
[INFO] org.poem:service-provide-2:jar:1.0-SNAPSHOT
[INFO] +- org.springframework.cloud:spring-cloud-starter-netflix-eureka-server:jar:2.0.2.RELEASE:compile
[INFO] |  +- org.springframework.cloud:spring-cloud-starter:jar:2.0.2.RELEASE:compile
[INFO] |  |  +- org.springframework.cloud:spring-cloud-context:jar:2.0.2.RELEASE:compile
[INFO] |  |  |  \- org.springframework.security:spring-security-crypto:jar:5.1.3.RELEASE:compile
[INFO] |  |  +- org.springframework.cloud:spring-cloud-commons:jar:2.0.2.RELEASE:compile
[INFO] |  |  \- org.springframework.security:spring-security-rsa:jar:1.0.7.RELEASE:compile
[INFO] |  |     \- org.bouncycastle:bcpkix-jdk15on:jar:1.60:compile
[INFO] |  |        \- org.bouncycastle:bcprov-jdk15on:jar:1.60:compile
[INFO] |  +- org.springframework.cloud:spring-cloud-netflix-eureka-server:jar:2.0.2.RELEASE:compile
[INFO] |  |  +- org.springframework.boot:spring-boot-starter-actuator:jar:2.1.2.RELEASE:compile
[INFO] |  |  |  +- org.springframework.boot:spring-boot-actuator-autoconfigure:jar:2.1.2.RELEASE:compile
[INFO] |  |  |  |  \- org.springframework.boot:spring-boot-actuator:jar:2.1.2.RELEASE:compile
[INFO] |  |  |  \- io.micrometer:micrometer-core:jar:1.1.2:compile
[INFO] |  |  |     +- org.hdrhistogram:HdrHistogram:jar:2.1.9:compile
[INFO] |  |  |     \- org.latencyutils:LatencyUtils:jar:2.0.3:compile
[INFO] |  |  +- org.springframework.boot:spring-boot-starter-freemarker:jar:2.1.2.RELEASE:compile
[INFO] |  |  |  +- org.freemarker:freemarker:jar:2.3.28:compile
[INFO] |  |  |  \- org.springframework:spring-context-support:jar:5.1.4.RELEASE:compile
[INFO] |  |  +- org.springframework.cloud:spring-cloud-netflix-core:jar:2.0.2.RELEASE:compile
[INFO] |  |  |  \- org.springframework.boot:spring-boot-starter-aop:jar:2.1.2.RELEASE:compile
[INFO] |  |  |     \- org.aspectj:aspectjweaver:jar:1.9.2:compile
[INFO] |  |  +- org.springframework.cloud:spring-cloud-netflix-eureka-client:jar:2.0.2.RELEASE:compile
[INFO] |  |  +- com.netflix.eureka:eureka-client:jar:1.9.3:compile
[INFO] |  |  |  +- org.codehaus.jettison:jettison:jar:1.3.7:runtime
[INFO] |  |  |  |  \- stax:stax-api:jar:1.0.1:runtime
[INFO] |  |  |  +- com.netflix.netflix-commons:netflix-eventbus:jar:0.3.0:runtime
[INFO] |  |  |  |  +- com.netflix.netflix-commons:netflix-infix:jar:0.3.0:runtime
[INFO] |  |  |  |  |  +- commons-jxpath:commons-jxpath:jar:1.3:runtime
[INFO] |  |  |  |  |  +- org.antlr:antlr-runtime:jar:3.4:runtime
[INFO] |  |  |  |  |  |  +- org.antlr:stringtemplate:jar:3.2.1:runtime
[INFO] |  |  |  |  |  |  \- antlr:antlr:jar:2.7.7:runtime
[INFO] |  |  |  |  |  \- com.google.code.gson:gson:jar:2.8.5:runtime
[INFO] |  |  |  |  \- org.apache.commons:commons-math:jar:2.2:runtime
[INFO] |  |  |  +- javax.ws.rs:jsr311-api:jar:1.1.1:compile
[INFO] |  |  |  +- com.netflix.servo:servo-core:jar:0.12.21:runtime
[INFO] |  |  |  +- com.sun.jersey:jersey-core:jar:1.19.1:compile
[INFO] |  |  |  +- com.sun.jersey:jersey-client:jar:1.19.1:runtime
[INFO] |  |  |  +- com.sun.jersey.contribs:jersey-apache-client4:jar:1.19.1:runtime
[INFO] |  |  |  +- org.apache.httpcomponents:httpclient:jar:4.5.6:runtime
[INFO] |  |  |  |  +- org.apache.httpcomponents:httpcore:jar:4.4.10:runtime
[INFO] |  |  |  |  \- commons-codec:commons-codec:jar:1.11:runtime
[INFO] |  |  |  +- com.google.inject:guice:jar:4.1.0:runtime
[INFO] |  |  |  |  \- aopalliance:aopalliance:jar:1.0:runtime
[INFO] |  |  |  +- com.github.vlsi.compactmap:compactmap:jar:1.2.1:runtime
[INFO] |  |  |  |  \- com.github.andrewoma.dexx:dexx-collections:jar:0.2:runtime
[INFO] |  |  |  +- com.fasterxml.jackson.core:jackson-annotations:jar:2.9.0:compile
[INFO] |  |  |  \- com.fasterxml.jackson.core:jackson-core:jar:2.9.8:compile
[INFO] |  |  +- com.sun.jersey:jersey-servlet:jar:1.19.1:compile
[INFO] |  |  +- com.sun.jersey:jersey-server:jar:1.19.1:compile
[INFO] |  |  +- com.netflix.eureka:eureka-core:jar:1.9.3:compile
[INFO] |  |  |  +- com.amazonaws:aws-java-sdk-core:jar:1.11.277:runtime
[INFO] |  |  |  |  +- commons-logging:commons-logging:jar:1.1.3:runtime
[INFO] |  |  |  |  +- software.amazon.ion:ion-java:jar:1.0.2:runtime
[INFO] |  |  |  |  +- com.fasterxml.jackson.dataformat:jackson-dataformat-cbor:jar:2.9.8:runtime
[INFO] |  |  |  |  \- joda-time:joda-time:jar:2.10.1:runtime
[INFO] |  |  |  +- com.amazonaws:aws-java-sdk-ec2:jar:1.11.277:runtime
[INFO] |  |  |  |  \- com.amazonaws:jmespath-java:jar:1.11.277:runtime
[INFO] |  |  |  +- com.amazonaws:aws-java-sdk-autoscaling:jar:1.11.277:runtime
[INFO] |  |  |  +- com.amazonaws:aws-java-sdk-sts:jar:1.11.277:runtime
[INFO] |  |  |  +- com.amazonaws:aws-java-sdk-route53:jar:1.11.277:runtime
[INFO] |  |  |  +- javax.servlet:servlet-api:jar:2.5:runtime
[INFO] |  |  |  \- org.codehaus.woodstox:woodstox-core-asl:jar:4.4.1:runtime
[INFO] |  |  |     \- javax.xml.stream:stax-api:jar:1.0-2:runtime
[INFO] |  |  +- com.netflix.archaius:archaius-core:jar:0.7.6:compile
[INFO] |  |  |  +- com.google.code.findbugs:jsr305:jar:3.0.1:runtime
[INFO] |  |  |  \- com.google.guava:guava:jar:16.0:runtime
[INFO] |  |  +- javax.inject:javax.inject:jar:1:compile
[INFO] |  |  +- com.fasterxml.jackson.dataformat:jackson-dataformat-xml:jar:2.9.8:compile
[INFO] |  |  |  +- com.fasterxml.jackson.module:jackson-module-jaxb-annotations:jar:2.9.8:compile
[INFO] |  |  |  +- org.codehaus.woodstox:stax2-api:jar:3.1.4:compile
[INFO] |  |  |  \- com.fasterxml.woodstox:woodstox-core:jar:5.0.3:compile
[INFO] |  |  \- com.thoughtworks.xstream:xstream:jar:1.4.10:compile
[INFO] |  |     +- xmlpull:xmlpull:jar:1.1.3.1:compile
[INFO] |  |     \- xpp3:xpp3_min:jar:1.1.4c:compile
[INFO] |  +- org.springframework.cloud:spring-cloud-starter-netflix-archaius:jar:2.0.2.RELEASE:compile
[INFO] |  |  +- org.springframework.cloud:spring-cloud-netflix-ribbon:jar:2.0.2.RELEASE:compile
[INFO] |  |  +- org.springframework.cloud:spring-cloud-netflix-archaius:jar:2.0.2.RELEASE:compile
[INFO] |  |  \- commons-configuration:commons-configuration:jar:1.8:compile
[INFO] |  |     \- commons-lang:commons-lang:jar:2.6:compile
[INFO] |  +- org.springframework.cloud:spring-cloud-starter-netflix-ribbon:jar:2.0.2.RELEASE:compile
[INFO] |  |  +- com.netflix.ribbon:ribbon:jar:2.2.5:compile
[INFO] |  |  |  +- com.netflix.ribbon:ribbon-transport:jar:2.2.5:runtime
[INFO] |  |  |  |  +- io.reactivex:rxnetty-contexts:jar:0.4.9:runtime
[INFO] |  |  |  |  \- io.reactivex:rxnetty-servo:jar:0.4.9:runtime
[INFO] |  |  |  +- com.netflix.hystrix:hystrix-core:jar:1.4.3:runtime
[INFO] |  |  |  \- io.reactivex:rxnetty:jar:0.4.9:runtime
[INFO] |  |  +- com.netflix.ribbon:ribbon-core:jar:2.2.5:compile
[INFO] |  |  +- com.netflix.ribbon:ribbon-httpclient:jar:2.2.5:compile
[INFO] |  |  |  +- commons-collections:commons-collections:jar:3.2.2:runtime
[INFO] |  |  |  \- com.netflix.netflix-commons:netflix-commons-util:jar:0.1.1:runtime
[INFO] |  |  +- com.netflix.ribbon:ribbon-loadbalancer:jar:2.2.5:compile
[INFO] |  |  |  \- com.netflix.netflix-commons:netflix-statistics:jar:0.1.1:runtime
[INFO] |  |  \- io.reactivex:rxjava:jar:1.3.8:compile
[INFO] |  \- com.netflix.ribbon:ribbon-eureka:jar:2.2.5:compile
[INFO] |     \- org.slf4j:slf4j-api:jar:1.7.25:compile
[INFO] \- org.springframework.boot:spring-boot-starter-web:jar:2.1.2.RELEASE:compile
[INFO]    +- org.springframework.boot:spring-boot-starter:jar:2.1.2.RELEASE:compile
[INFO]    |  +- org.springframework.boot:spring-boot:jar:2.1.2.RELEASE:compile
[INFO]    |  +- org.springframework.boot:spring-boot-autoconfigure:jar:2.1.2.RELEASE:compile
[INFO]    |  +- org.springframework.boot:spring-boot-starter-logging:jar:2.1.2.RELEASE:compile
[INFO]    |  |  +- ch.qos.logback:logback-classic:jar:1.2.3:compile
[INFO]    |  |  |  \- ch.qos.logback:logback-core:jar:1.2.3:compile
[INFO]    |  |  +- org.apache.logging.log4j:log4j-to-slf4j:jar:2.11.1:compile
[INFO]    |  |  |  \- org.apache.logging.log4j:log4j-api:jar:2.11.1:compile
[INFO]    |  |  \- org.slf4j:jul-to-slf4j:jar:1.7.25:compile
[INFO]    |  +- javax.annotation:javax.annotation-api:jar:1.3.2:compile
[INFO]    |  +- org.springframework:spring-core:jar:5.1.4.RELEASE:compile
[INFO]    |  |  \- org.springframework:spring-jcl:jar:5.1.4.RELEASE:compile
[INFO]    |  \- org.yaml:snakeyaml:jar:1.23:runtime
[INFO]    +- org.springframework.boot:spring-boot-starter-json:jar:2.1.2.RELEASE:compile
[INFO]    |  +- com.fasterxml.jackson.core:jackson-databind:jar:2.9.8:compile
[INFO]    |  +- com.fasterxml.jackson.datatype:jackson-datatype-jdk8:jar:2.9.8:compile
[INFO]    |  +- com.fasterxml.jackson.datatype:jackson-datatype-jsr310:jar:2.9.8:compile
[INFO]    |  \- com.fasterxml.jackson.module:jackson-module-parameter-names:jar:2.9.8:compile
[INFO]    +- org.springframework.boot:spring-boot-starter-tomcat:jar:2.1.2.RELEASE:compile
[INFO]    |  +- org.apache.tomcat.embed:tomcat-embed-core:jar:9.0.14:compile
[INFO]    |  +- org.apache.tomcat.embed:tomcat-embed-el:jar:9.0.14:compile
[INFO]    |  \- org.apache.tomcat.embed:tomcat-embed-websocket:jar:9.0.14:compile
[INFO]    +- org.hibernate.validator:hibernate-validator:jar:6.0.14.Final:compile
[INFO]    |  +- javax.validation:validation-api:jar:2.0.1.Final:compile
[INFO]    |  +- org.jboss.logging:jboss-logging:jar:3.3.2.Final:compile
[INFO]    |  \- com.fasterxml:classmate:jar:1.4.0:compile
[INFO]    +- org.springframework:spring-web:jar:5.1.4.RELEASE:compile
[INFO]    |  \- org.springframework:spring-beans:jar:5.1.4.RELEASE:compile
[INFO]    \- org.springframework:spring-webmvc:jar:5.1.4.RELEASE:compile
[INFO]       +- org.springframework:spring-aop:jar:5.1.4.RELEASE:compile
[INFO]       +- org.springframework:spring-context:jar:5.1.4.RELEASE:compile
[INFO]       \- org.springframework:spring-expression:jar:5.1.4.RELEASE:compile
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary:
[INFO] 
[INFO] poem-spring-cloud .................................. SUCCESS [  1.413 s]
[INFO] spring-eureka ...................................... SUCCESS [  0.760 s]
[INFO] spring-zuul ........................................ SUCCESS [  0.529 s]
[INFO] spring-hystrix ..................................... SUCCESS [  0.045 s]
[INFO] service-provide-1 .................................. SUCCESS [  0.189 s]
[INFO] service-provide-2 .................................. SUCCESS [  0.269 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 4.005 s
[INFO] Finished at: 2019-03-14T01:32:26+08:00
[INFO] Final Memory: 44M/450M
[INFO] ------------------------------------------------------------------------
