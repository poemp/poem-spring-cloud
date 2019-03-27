package org.poem.command;

import com.netflix.hystrix.HystrixCommandGroupKey;
import com.netflix.hystrix.HystrixObservableCommand;
import org.springframework.web.client.RestTemplate;
import rx.Observable;
import rx.Subscriber;

public class StringObservableCommand extends HystrixObservableCommand<String> {

    private RestTemplate restTemplate;

    private String message;


    public StringObservableCommand(RestTemplate restTemplate, String message) {
        super(new HystrixCommandGroupKey() {
            @Override
            public String name() {
                return null;
            }
        });
        this.restTemplate = restTemplate;
        this.message = message;
    }

    @Override
    protected Observable<String> construct() {
        return Observable.create(new Observable.OnSubscribe<String>() {
            @Override
            public void call(Subscriber<? super String> subscriber) {
                if (!subscriber.isUnsubscribed()) {
                    String ms = restTemplate.getForEntity("http://SERVICE-PROVIDE-2/user/{1}", String.class, "").getBody();
                    subscriber.onNext(ms);
                    subscriber.onCompleted();
                }
            }
        });
    }
}
