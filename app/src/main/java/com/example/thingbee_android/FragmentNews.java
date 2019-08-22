package com.example.thingbee_android;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.thingbee_android.retorift.ApiNewsService;
import com.example.thingbee_android.retorift.ArticleInfoVO;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;


public class FragmentNews extends Fragment {
    private Retrofit retrofit;
    private ApiNewsService newsService;
    private RecyclerView mRecyclerView;
    private RecyclerView.Adapter mAdapter;
    private RecyclerView.LayoutManager mLayoutManager;
    private List<ArticleInfoVO> myArticles;
    private List<String> dates;
    private List<String> districtNames;
    private FloatingActionButton searchBtn;
    private EditText searchBox;
    private LinearLayout searchBar;
    private LinearLayout searchOptionBar;
    private Boolean searchBarFlag;
    private Boolean searchOptionFlag;
    private Animation top;
    private Animation bottom;
    private ImageButton searchButton;
    private String searchWord;
    private ImageButton searchOptionBtn;
    private ImageButton dateBtn;
    private ImageButton districtBtn;

    public FragmentNews() {
        // Required empty public constructor
    }
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {

        View view =inflater.inflate(R.layout.fragment_news, container, false);

        //값 초기화

        searchBarFlag = false;
        searchOptionFlag = false;

        mRecyclerView = view.findViewById(R.id.my_recycler_view);
        mRecyclerView.setHasFixedSize(true);
        mLayoutManager= new LinearLayoutManager(getContext());
        mRecyclerView.setLayoutManager(mLayoutManager);
        myArticles = new ArrayList<>();


        searchOptionBtn = view.findViewById(R.id.search_option_Btn);
        searchBar = view.findViewById(R.id.searchBar);
        searchBox  = view.findViewById(R.id.searchBox);
        searchBtn = view.findViewById(R.id.searchBtn);
        searchButton = view.findViewById(R.id.search);
        searchOptionBar = view.findViewById(R.id.optionBar);
        dateBtn = view.findViewById(R.id.date_btn);
        districtBtn = view.findViewById(R.id.district_btn);

        searchOptionBar.setVisibility(View.INVISIBLE);
        searchBar.setVisibility(View.INVISIBLE);

        top = AnimationUtils.loadAnimation(getContext(),R.anim.animation_top);
        bottom = AnimationUtils.loadAnimation(getContext(),R.anim.animation_bottom);

        dates = new ArrayList<String>();
        dates.add("선택 없음");
        dates.add("지난 1일");
        dates.add("지난 3일");
        dates.add("지난 7일");
        dates.add("지난 30일");
        dates.add("지난 1년");

        //검색창 보이기 버튼
        searchBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(searchBarFlag){
                    searchBarFlag = false;

                    if(searchOptionFlag){
                        searchOptionFlag = false;
                        switchSearchOptionBar();
                    }
                }else {
                    searchBarFlag = true;
                }

                switchSearchBar();
            }
        });

        //검색어 옵션 열기
        searchOptionBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(searchOptionFlag){
                    searchOptionFlag = false;
                }else {
                    searchOptionFlag = true;
                }
                switchSearchOptionBar();
            }
        });

        //지역구 옵션 버튼 클릭
        districtBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                //모든 지역구 이름 정보를 가져온다.
                getDistrictNames();
                String[] districtInfos = new String[]{};
                districtInfos = districtNames.toArray(districtInfos);

                //다이얼로그 생성 메서드 호출
                makeOptionDialog(districtInfos,"지역구를 선택하세요.");
            }
        });

        //날짜 옵션 버튼 클릭시
        dateBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String[] dateInfo = new String[]{};
                dateInfo = dates.toArray(dateInfo);

                makeOptionDialog(dateInfo,"날짜를 선택하세요.");
            }
        });

        //검색어를 입력한 후, 검색버튼을 눌렀을 경우, 감지하는 onClick 리스너
        searchButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                searchWord = searchBox.getText().toString();
                searchArticleAtFirst();
            }
        });

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


        //탑 뷰 프래그먼트
/*        FragmentTransaction fragmentTransaction = getActivity().getSupportFragmentManager().beginTransaction();
        MenuTopbar topbar= new MenuTopbar();
        fragmentTransaction.add(R.id.topbar_container, topbar);
        fragmentTransaction.commit();*/


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

        return view;
    }

    //옵션 선택 다이얼로그를 만든다.
    private void makeOptionDialog(String[] infos,String title){
        AlertDialog.Builder optionDialog = new AlertDialog.Builder(getContext(),android.R.style.Theme_DeviceDefault_Light_Dialog_Alert);

        optionDialog.setTitle(title).setItems(infos, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                ;
            }
        }).setCancelable(true).show();
    }

    private void searchArticleAtFirst(){
        Map<String, String> params = new HashMap<String, String>();
        params.put("searchWord",searchWord);
//        params.put()

//        Call<List<ArticleInfoVO>> call = newsService.getArticles();
    }

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

    //모든 지역구 이름을 가져온다.
    public void getDistrictNames(){
        Call<List<String>> call = newsService.getAllDistrictName();

        call.enqueue(new Callback<List<String>>() {
            @Override
            public void onResponse(Call<List<String>> call, Response<List<String>> response) {
                List<String> result = response.body();
                districtNames.addAll(result);
            }

            @Override
            public void onFailure(Call<List<String>> call, Throwable t) {
                Log.d("getDistrictNames()","Exception 발생");
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

    //검색창 유무 스위치 버튼
    private void switchSearchBar(){
        if(searchBarFlag){
            searchBar.setVisibility(View.VISIBLE);
            searchBar.startAnimation(top);
        }else{
            searchBar.startAnimation(bottom);
            searchBar.setVisibility(View.INVISIBLE);
        }
    }

    //검색 옵션창 스위치 버튼
    private void switchSearchOptionBar(){
        if(searchOptionFlag){
            searchOptionBar.setVisibility(View.VISIBLE);
            searchOptionBar.startAnimation(top);
        }else {
            searchOptionBar.startAnimation(bottom);
            searchOptionBar.setVisibility(View.INVISIBLE);
        }
    }
}
