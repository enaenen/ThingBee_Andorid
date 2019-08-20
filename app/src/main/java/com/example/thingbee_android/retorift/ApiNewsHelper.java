package com.example.thingbee_android.retorift;

import retrofit2.Retrofit;

public class ApiNewsHelper {


    public ApiNewsService build(){
        return new Retrofit.Builder().
                baseUrl(ApiNewsService.API_URL)
                .build()
                .create(ApiNewsService.class);
    }

}
