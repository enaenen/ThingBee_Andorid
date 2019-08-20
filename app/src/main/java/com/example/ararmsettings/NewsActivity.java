package com.example.ararmsettings;

import android.os.Bundle;
import android.util.Log;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.ararmsettings.retorift.ApiNewsService;
import com.example.ararmsettings.retorift.ArticleInfoVO;

import java.util.ArrayList;
import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class NewsActivity extends AppCompatActivity {
    private Retrofit retrofit;
    private ApiNewsService newsService;
    private RecyclerView mRecyclerView;
    private RecyclerView.Adapter mAdapter;
    private RecyclerView.LayoutManager mLayoutManager;
    private List<ArticleInfoVO> myArticles;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_news);

        //값 초기화
        mRecyclerView = findViewById(R.id.my_recycler_view);
        mRecyclerView.setHasFixedSize(true);
        mLayoutManager= new LinearLayoutManager(this);
        mRecyclerView.setLayoutManager(mLayoutManager);
        myArticles = new ArrayList<>();

        //http 방식 통신 라이브러리
        retrofit= new Retrofit.Builder()
                .baseUrl(ApiNewsService.API_URL)
                .addConverterFactory(GsonConverterFactory.create()) //GSON parser 라이브러리 사용
                .build();
        newsService=retrofit.create(ApiNewsService.class);

        initArticles();     //기사 초기화(myArticles),
        Log.d("test", myArticles.toString());
        mAdapter = new MyAdapter(myArticles);   //어댑터 생성, 데이터 부여
        mRecyclerView.setAdapter(mAdapter);     //어댑터 등록


        //스크롤이벤트
        mRecyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() {
            @Override
            public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
                super.onScrolled(recyclerView, dx, dy);
                if (!mRecyclerView.canScrollVertically(1)) {    //맨끝까지 닿았을 때
                    add_article();
                }
            }
        });
    }

    //최초 기사 불러오기
    public void initArticles(){
        Call<List<ArticleInfoVO>> call = newsService.getArticles("first");
        Log.d("test", "call 할당");
        call.enqueue(new Callback<List<ArticleInfoVO>>() {
            @Override   //onRes, onFail 둘다 스레드로 돌기 때문에 윗라인 실행하고 initArticel 메서드는
                        //종료된다. 이후 다른작업을 하다가 아래 스레드가 실행된다.
            public void onResponse(Call<List<ArticleInfoVO>> call, Response<List<ArticleInfoVO>> response) {
                List<ArticleInfoVO> result=response.body();
                myArticles.addAll(result);
                Log.d("test", "기사: "+myArticles);
                mAdapter.notifyDataSetChanged();    //데이터 업데이트
            }
            @Override
            public void onFailure(Call<List<ArticleInfoVO>> call, Throwable t) {
                Log.d("initArticle()","Exception 발생");
                t.printStackTrace();
            }
        });
    }

    public void add_article(){
        //데이터 추가
        int size= myArticles.size();
        Call<List<ArticleInfoVO>> call = newsService.getArticles(myArticles.get(size-1).getCode());
        Log.d("test", "call 할당");
        call.enqueue(new Callback<List<ArticleInfoVO>>() {
            @Override
            public void onResponse(Call<List<ArticleInfoVO>> call, Response<List<ArticleInfoVO>> response) {
                List<ArticleInfoVO> result=response.body();
                if(result!=null)
                     myArticles.addAll(result);
                Log.d("test",result.toString());
                mAdapter.notifyDataSetChanged();    //Recycle View의 데이터,화면 업데이트.
            }
            @Override
            public void onFailure(Call<List<ArticleInfoVO>> call, Throwable t) {
                Log.d("test",  "Exception 발생");
                t.printStackTrace();
            }
        });
    }
}
