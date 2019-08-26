package com.example.thingbee_android.retorift;

import java.util.List;
import java.util.Map;

import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Query;
import retrofit2.http.QueryMap;

public interface ApiNewsService {

    String API_URL ="http://think.powerlinux.co.kr/api/news/";
    //http://localhost:8088/api/news/getArticles?lastArticleCode=first
    //http://think.powerlinux.co.kr/api/news/getArticles?lastArticleCode=first
    @GET("getArticles")
    Call<List<ArticleInfoVO>> getArticles(@Query("lastArticleCode") String lastArticleCode);

    @GET("searchNews")
    Call<List<ArticleInfoVO>> searchNews(@QueryMap Map<String, String> params);

    //String version
    @GET("increaseViewCount")
    Call<ResponseBody> getCommentStr();

    @GET("updateTopKeywords")
    Call<List<String>> updateKeyword(@Query("limit") int limit);

    @GET("getAllPress")
    Call<List<String>> getAllPresName();

    @GET("getAllDistrict")
    Call<List<String>> getAllDistrict();

}
