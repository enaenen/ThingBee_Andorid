package com.example.ararmsettings.retorift;

import java.util.List;

import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

public interface ApiService {

    //String API_URL ="http://jsonplaceholder.typicode.com/";

    //int version
    @GET("comments")
    Call<List<ArticleInfoVO>> getComment(@Query("postId") int postId);

    @POST("comments")
    Call<List<ArticleInfoVO>> getPostComment(@Query("postId") int postId);

    //String version
    @GET("comments")
    Call<ResponseBody> getCommentStr(@Query("postId") String postId);

    @FormUrlEncoded
    @POST("comments")
    Call<ResponseBody> getPostCommentStr(@Field("postId") String postId);


}
