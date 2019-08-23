package com.example.thingbee_android;

import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;
import com.example.thingbee_android.retorift.ArticleInfoVO;

import java.util.List;


/*
* MyAdpater.class를 선언하고, RecyclerView.Adapter를 상속 받았다.
MyAdpater안에 직접 구현한 ViewHolder 클래스를 제네릭으로 받는 구조이다.  물론 직접 만드는 ViewHolder도
ReclerView.ViewHolder를 상속받아야 한다.
(ViewHolder는 ListView를 사용할 당시, RecylerView처럼 View를 효율적으로 쓰기 위한 디자인 패턴중 하나였다.
리소스를 제법 잡어먹는 findViewById()를 적게 호출하기 위함이다. RecyclerView 에서는 적극적으로 ViewHolder 패턴을 사용하라고 권장한다. )
ViewHolder 클래스는 RecyclerView의 item에 들어갈 view를 받은후 그 view 안에 있는 ImageView와 TextView를 초기화 한다.
그다음은 MyAdapter 생성자가 보이는데, 매개변수로 ArrayList<MyData> 객체를 받는다. MyData 클래스는 data-set을 위한 클래스로
해당 예제에 맨 아래에 생성했다.
중요한 내용은 지금부터이다.
onCreateViewHolder 메서드안의 내용을 잘 바꾸어야 내가 원하는 결과물이 나온다.
첫번째로, View v = LayoutInflater.from(parent.getContext()).inflate(R.layout.my_view, parent, false); 는
앞서 말한 ViewHolder에 넣어줄 view를 찾는 과정이다. my_view라는 xml에는 cardview가 들어갈 예정이다.
이 view를 넣기위한 ViewHolder를 다음과 같이 선언한 후 넣는다.
 ViewHolder vh = new ViewHolder(v);
그다음 onBindViewHolder 메서드를 보자. 이 메서드는 RecyclerView의 item의 셋팅과 사용자가 스크롤링 할때, 호출되는 메서드이다.
우리가 원하는 데이터가 포지션별로 ArrayList<MyData>에 저장되어 있다. 이러한 데이터를 포지션별로 보여주는 것을 보장해준다.
마지막으로 MyData 클래스이다. 우리가 원하는 image와 text 데이터를 보관하기 위한 데이터 저장소 개념으로 보면 된다.
*
*
* */

public class MyAdapter extends RecyclerView.Adapter<MyAdapter.ViewHolder> {
    private List<ArticleInfoVO> articles;
    int nowPosition;

    // Provide a reference to the views for each data item
    // Complex data items may need more than one view per item, and
    // you provide access to all the views for a data item in a view holder
    public static class ViewHolder extends RecyclerView.ViewHolder {
        // each data item is just a string in this case
        public TextView article_title;
        public TextView article_press;
        public TextView article_date;
        public ImageView article_img;
        public TextView article_summary;
        public Button article_press_btn;
        public Button article_info_btn;

        //ViewHolder 클래스는 RecyclerView의 item에 들어갈 view를 받은후 그 view 안에 있는 ImageView와 TextView를 초기화 한다.
        public ViewHolder(View view) {
            super(view);
            article_title = view.findViewById(R.id.article_title);
            article_press =view.findViewById(R.id.article_press);
            article_date =view.findViewById(R.id.article_date);
            article_img =view.findViewById(R.id.article_img);
            article_summary =view.findViewById(R.id.article_summary);
            article_press_btn =view.findViewById(R.id.article_district_btn);
            article_info_btn =view.findViewById(R.id.article_info_btn);
        }
    }

    //그다음은 MyAdapter 생성자가 보이는데, 매개변수로 ArrayList<MyData> 객체를 받는다. MyData 클래스는 data-set을 위한 클래스로
    //해당 예제에 맨 아래에 생성했다.
    // Provide a suitable constructor (depends on the kind of dataset)
    public MyAdapter(List<ArticleInfoVO> articleSet) {
        articles = articleSet;
    }

    // Create new views (invoked by the layout manager)
    @Override
    public MyAdapter.ViewHolder onCreateViewHolder(ViewGroup parent,
                                                   int viewType) {
        // create a new view
        View v = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.my_view, parent, false);
        // set the view's size, margins, paddings and layout parameters
        ViewHolder vh = new ViewHolder(v);
        return vh;
    }

    // Replace the contents of a view (invoked by the layout manager)
    @Override
    public void onBindViewHolder(ViewHolder holder, int position) {
        // - get element from your dataset at this position
        // - replace the contents of the view with that element
        Log.d("onBindViewHolder", articles.get(position).toString());
        ArticleInfoVO article= articles.get(position);
        if(article.getCode()!=null||article.getCode().equals("")||article.getImgURL()!=null) {
            nowPosition=position;
            holder.article_title.setText(article.getTitle());
            holder.article_press.setText(article.getPressName());
            holder.article_summary.setText(article.getSummary());
            holder.article_date.setText(article.getArticleTime());
            if(article.getImgURL()!=null && articles.get(position).getImgURL().startsWith("http")) {
                Glide.with(holder.itemView.getContext()).load(article.getImgURL()).into(holder.article_img);
            }
            holder.article_press_btn.setText(article.getDistrictName());
            holder.article_info_btn.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    Intent intent = new Intent (Intent.ACTION_VIEW, Uri.parse(articles.get(nowPosition).getUrl()));
                    view.getContext().startActivity(intent);
                }
            });
        }
        //holder.article_img.setImageResource(articles.get(position).getImgURL());
        //holder.article_press.setImageResource(articles.get(position).img);
    }

    // Return the size of your dataset (invoked by the layout manager)
    @Override
    public int getItemCount() {
        return articles.size();
    }



}

/*class MyData{
    public String text;
    public int img;
    public MyData(String text, int img){
        this.text = text;
        this.img = img;
    }
}*/