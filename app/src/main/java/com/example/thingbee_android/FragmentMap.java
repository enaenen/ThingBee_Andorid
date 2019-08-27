package com.example.thingbee_android;


import android.Manifest;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.PointF;
import android.location.Location;
import android.os.Build;
import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;

import android.os.Handler;
import android.os.Parcelable;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.example.thingbee_android.animator.FacilityAnimator;
import com.example.thingbee_android.detailInfo.MarkerOverlay;
import com.example.thingbee_android.fragment.DetailPathFragment;
import com.example.thingbee_android.fragment.PathIndexFragment;
import com.example.thingbee_android.fragment.PathSimpleContent;
import com.example.thingbee_android.fragment.PlaceFragment;
import com.example.thingbee_android.vo.Facility;
import com.example.thingbee_android.vo.PathInfo;
import com.example.thingbee_android.vo.Place;
import com.skt.Tmap.TMapData;
import com.skt.Tmap.TMapGpsManager;
import com.skt.Tmap.TMapInfo;
import com.skt.Tmap.TMapMarkerItem;
import com.skt.Tmap.TMapPOIItem;
import com.skt.Tmap.TMapPoint;
import com.skt.Tmap.TMapPolyLine;
import com.skt.Tmap.TMapView;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import static android.view.View.VISIBLE;


/**
 * A simple {@link Fragment} subclass.
 */
public class FragmentMap extends Fragment implements TMapGpsManager.onLocationChangedCallback {
    Context mContext;
    public static final String SHORTEST_PATH = "최단거리";
    public static final String SAFE_PATH = "안전거리";
    public static final int REQUEST_ACCESS_FINE_LOCATION = 1000;
    public static final int SEARCH_PATH_ACITIVITY = 1;
    public static final int SEARCH_ONE_ACTIVITY =2;
    private FacilityAnimator animator ;

    // OnBackKeyPressedListener 인터페이스를 저장할 stack 만들기
//    public Stack<OnBackKeyPressedListener> mFragmentBackStack = new Stack<>();

    private TMapView tMapView;
    private Bitmap bitmap;

    private TMapGpsManager gps ; // 현재 위치 gps

    private EditText searchTextBox;

    private boolean compassFlag = false;    //  나침반 모드
    private boolean sightFlag;  // 현 위치 모드
    private boolean sightCenterFlag;
    private boolean facilityFlag = false;   // 시설물 메인메뉴 버튼
    private boolean safetyPathFlag = false; // 안전한 경로인지 flag


    private ImageButton btnSight; // 내 위치 버튼
    private ImageButton btnFacilityMenu; // 시설물 메인 메뉴

    // 시설물 버튼들
    private ImageButton btnCCTV;
    private ImageButton btnBell;
    private ImageButton btnPolice;
    private ImageButton btnProtect;
    private ImageButton btnLamp;
    private ImageButton btnShop;

    private List<ImageButton> facilities;   // 시설물 버튼 리스트
    private Bundle bundle;  // 목적지까지의 시간, 거리, 모드를 저장할 객체

    private Facility facility;  // 시설물 플래그, 이름 종합 객체

    // 마커 리스트들 ( 삭제 용도 )
    private List<TMapMarkerItem> bellList;
    private List<TMapMarkerItem> cctvList;
    private List<TMapMarkerItem> policeList;
    private List<TMapMarkerItem> protectList;
    private List<TMapMarkerItem> shopList;
    private List<TMapMarkerItem> lampList;
    private List<TMapMarkerItem> aroundList;

    private TMapPolyLine safePolyLine; // 안전경로 폴리라인
    private TMapPolyLine shortPolyLine; // 최단경로 폴리라인


    private List<TMapMarkerItem> pointList;
    private List<TMapMarkerItem> pointSafeList;

    private List<Parcelable> pathInfoList;    // 경로 저장 리스트
    private List<Parcelable> pathInfoSafeList;  // 안전 경로 저장 리스트

    private Place selectedPlace;    // 현재 선택된 장소
    private List<Place> placeList;  // 장소 검색 결과들을 (상세 정보 까지) 갖고 있는 리스트
    private List<TMapMarkerItem> placeMarker; // 장소 검색 결과 마커들의 리스트 ( 마커는 상세 정보 못 갖음)

    private MarkerOverlay markerOverlay ;   // 시설물 상세정보 띄우는 풍선뷰

    private ArrayList<TMapPoint> coordinatesList;   // 상세 경로의 부분 포인트들의 위도 경도 집합 리스트
    private ArrayList<TMapPoint> coordinatesSafeList;   // 안전 상세 경로의 부분 포인트들의 위도 경도 집합 리스트

    private FragmentManager fm; // 프래그먼트 매니저
    private PlaceFragment placeFragment;    // 장소 표현 프래그먼트
    private PathSimpleContent pathSimpleContent;    // 경로 단순 정보 프래그먼트
    private DetailPathFragment detailPathFragment;  // 상세 경로 프래그먼트
    private PathIndexFragment pathIndexFragment;    // 경로 아이템 프래그먼트
    private boolean detailFlag; // 상세 경로 표시 여부 플래그


    public FragmentMap() {
        // Required empty public constructor
    }


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view = inflater.inflate(R.layout.fragment_map, container, false);

        LinearLayout relativeLayout = view.findViewById(R.id.linearLayoutTmap);
        btnSight = view.findViewById(R.id.btnSight);
        btnFacilityMenu = view.findViewById(R.id.btnFacilityMenu);
        btnBell = view.findViewById(R.id.bellMenu);
        btnCCTV = view.findViewById(R.id.cctvMenu);
        btnLamp = view.findViewById(R.id.lampMenu);
        btnShop = view.findViewById(R.id.shopMenu);
        btnProtect = view.findViewById(R.id.protectMenu);
        btnPolice=  view.findViewById(R.id.policeMenu);

        searchTextBox = view.findViewById(R.id.searchTextBox);

        facility = new Facility();

        // 버튼들 리스트
        facilities = new ArrayList<>();
        facilities.add(btnBell);
        facilities.add(btnCCTV);
        facilities.add(btnLamp);
        facilities.add(btnPolice);
        facilities.add(btnProtect);
        facilities.add(btnShop);

        // 시설물마다 마커 리스트 초기화
        bellList = new ArrayList<>();
        cctvList = new ArrayList<>();
        policeList = new ArrayList<>();
        protectList = new ArrayList<>();
        shopList = new ArrayList<>();
        lampList = new ArrayList<>();
        aroundList = new ArrayList<>();

        pointList = new ArrayList<>();
        pointSafeList = new ArrayList<>();

        coordinatesList = new ArrayList<>();
        coordinatesSafeList = new ArrayList<>();

        pathInfoList = new ArrayList<>();
        pathInfoSafeList = new ArrayList<>();

        placeList = new ArrayList<>();
        placeMarker = new ArrayList<>();

        safePolyLine = new TMapPolyLine();
        safePolyLine.setID("safe");
        shortPolyLine = new TMapPolyLine();
        shortPolyLine.setID("short");
        animator = new FacilityAnimator(mContext);

        EditText searchTextBox = view.findViewById(R.id.searchTextBox);
        searchTextBox.setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                showPlace(textView.getText().toString());
                return false;
            }
        });

        tMapView = new TMapView(mContext);  // 지도 생성
//        tMapView.setUserScrollZoomEnable(true);
        tMapView.setSKTMapApiKey(getString(R.string.tMapKey));
        relativeLayout.addView( tMapView ); // 화면에 지도 추가
        tMapView.setIconVisibility(false);

//        tMapView.setCenterPoint( 126.985302, 37.570841 ); // 지도 중심 화면 조정


        // 지도 클릭 이벤트 설정 -> 상세 정보 숨기기 추가
        tMapView.setOnClickListenerCallBack(new MapClickListener());
        tMapView.setOnLongClickListenerCallback(new MapLongClickListener());

// 지도 스크롤 종료 -> 지도 화면 선택 종료시, 드래그 종료시
        tMapView.setOnDisableScrollWithZoomLevelListener(new TMapView.OnDisableScrollWithZoomLevelCallback() {
            @Override
            public void onDisableScrollWithZoomLevelEvent(float zoom, TMapPoint centerPoint) {
                // 현 위치 모드 또는 나침반모드가 켜져 있으면
                if(sightFlag){
                    getActivity().runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            btnSight.setImageResource(R.drawable.location_not_center);
                        }
                    });
                    sightFlag = false;
                    sightCenterFlag = false;
                    compassFlag = false;
                }
                // 켜져 있는 시설물이 하나도 없으면  검색 없이 패스
                if( !facility.isContainsOne()) return;

                try {
                    searchFacility();
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        });
        // Fragment 관련

        //차일드프래그먼트매니져써야함

        fm = getChildFragmentManager();
        placeFragment = (PlaceFragment) fm.findFragmentById(R.id.placeFragment);
        pathSimpleContent = (PathSimpleContent)fm.findFragmentById(R.id.simplePathInfo);
        detailPathFragment = (DetailPathFragment) fm.findFragmentById(R.id.detailList);
        pathIndexFragment = (PathIndexFragment) fm.findFragmentById((R.id.pathItemFragment));

        // fm.beginTransaction().addToBackStack(null);

        getActivity().runOnUiThread(new Runnable() {
            @Override
            public void run() {
                hideFragment(placeFragment);
                hideFragment(pathSimpleContent);
                hideFragment(detailPathFragment);
                hideFragment(pathIndexFragment);
            }
        });

        initGps();
        bundle = new Bundle();


        //버튼이벤트들
        view.findViewById(R.id.findWay).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                onFindWay(view);
            }
        });
        view.findViewById(R.id.btnSight).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                onSight(view);
            }
        });

        // 시설물 메뉴 클릭
        view.findViewById(R.id.btnFacilityMenu).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(markerOverlay != null) {
                    tMapView.removeMarkerItem2(markerOverlay.getID());
                }
                if(facilityFlag == false){
                    facilityFlag =true;
                    btnFacilityMenu.setSelected(true);
                    showFacilAnime();
                }
                else {
                    facilityFlag = false;
                    btnFacilityMenu.setSelected(false);
                    hideFacilityBtn();
                }
            }
        });

        int[] facilityNum= {R.id.cctvMenu, R.id.bellMenu, R.id.policeMenu, R.id.lampMenu,
                R.id.shopMenu,R.id.protectMenu};

        for(int facil : facilityNum){
            view.findViewById(facil).setOnClickListener(new View.OnClickListener(){
                @Override
                public void onClick(View view) {
                    try {
                        showFacility(view);
                    }catch (Exception e){e.printStackTrace();}
                }
            });
        }

        return view;
    }

    @Override
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        mContext = context;
    }



    // 프래그먼트 숨기기
    public void hideFragment(Fragment fragment){
        fm.beginTransaction().hide(fragment).commit();
    }

    // 프래그먼트 보이기
    public void showFragment(Fragment fragment){
        fm.beginTransaction().show(fragment).commit();
    }

    public void initGps() {
        // gps 관련
        gps = new TMapGpsManager(mContext);
        gps.setMinTime(3000);
        gps.setMinDistance(5);
        gps.setProvider(gps.NETWORK_PROVIDER);  // 연결된 인터넷으로 현 위치를 받는다
//        gps.setProvider(gps.GPS_PROVIDER);    // GPS로 현 위치를 잡는다
        // 시작할 때 위치모드가 켜져 있으면 시작 위치로 바로 이동
        if(checkLocationPermission() == true) {
            showPresentLocation();
        }
    }

    // 버튼 클릭했을 때 메소드 분기
    public void onSight(View view){
        // 현위치, 나침반 모드 끄기
        if (sightFlag == true && compassFlag == true) {
            hidePresentLocation();
        }
        // 현위치만 표시되어있을때 나침반 모드 켜기
        else if(sightFlag == true){
            onCompassMode();
        }
        // 현 위치 모드 켜기
        else {
            if(checkLocationPermission() == true) {
                showPresentLocation();
            }
        }
    }

    // 나침반 모드 켜기 ( 현재 위치 켜져 있을 때만 )
    public void onCompassMode(){
        if(sightCenterFlag == false){   // 현재 위치가 화면 중심이 아니면 중심으로 이동
            tMapView.setTrackingMode(true);
            sightCenterFlag = true; // 현재 위치가 중심 = true
            return ;
        }
        tMapView.setSightVisible(true); // 시야 표시
        tMapView.setCompassMode(true);  // 나침반 모드 ON
        compassFlag = true;             // 나침반 Flag on
        btnSight.setImageResource(R.drawable.compass);
    }

    // 현재 위치 표시 -- 마커 이미지는 안됨
    public void showPresentLocation() {

        gps.OpenGps();  // GPS 키고
        tMapView.setTrackingMode(true); //  현재 위치 트래킹
        tMapView.setIconVisibility(true);   // 현 위치 아이콘 표시
        sightFlag =true;    // 현 위치 모드 TRUE
        sightCenterFlag = true;     // 현재 위치가 화면 중심이다 ㅇㅇ
        btnSight.setImageResource(R.drawable.location_click);   // 이미지 변경
    }

    // 현재 위치 끄기, 나침반도 같이 끄기
    public void hidePresentLocation(){
        gps.CloseGps();
        tMapView.setIconVisibility(false); // 현재 위치 아이콘 숨기기
        tMapView.setSightVisible(false);    // 시야표시 숨기기
        tMapView.setTrackingMode(false);    // 현재 위치 트래킹 끄기
        tMapView.setCompassMode(false); // 나침반 모드 끄기
        sightFlag = false;
        compassFlag =false;
        btnSight.setImageResource(R.drawable.location);
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        // grantResults[0] 거부 -> -1
        // grantResults[0] 허용 -> 0 (PackageManager.PERMISSION_GRANTED)

        // 권한 획득
        if(grantResults[0] == PackageManager.PERMISSION_GRANTED){
            showPresentLocation();
        }
        // 권한 거부
        else {
            return ;
        }
    }

    // 위치 권한 확인하기
    public boolean checkLocationPermission() {

        if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.M){
            int permissionCheck = ActivityCompat.checkSelfPermission(mContext, Manifest.permission.ACCESS_FINE_LOCATION);
            int permissionCheck2 = ActivityCompat.checkSelfPermission(mContext, Manifest.permission.ACCESS_COARSE_LOCATION);
            if(permissionCheck != PackageManager.PERMISSION_GRANTED && permissionCheck2 != PackageManager.PERMISSION_GRANTED) {
                //권한 없음
                ActivityCompat.requestPermissions(getActivity(), new String[]{
                        Manifest.permission.ACCESS_FINE_LOCATION, Manifest.permission.ACCESS_COARSE_LOCATION}, REQUEST_ACCESS_FINE_LOCATION);
                return false;
            }
            else {
                // 권한 있음
                return true;
            }
        }
        // 권한 체크 필요 없는 버전
        else {
            return true;
        }
    }

    public void makeMarker() {
        TMapMarkerItem markeritem = new TMapMarkerItem();   // 마커 생성
        tMapView.addMarkerItem("TestID", markeritem);   // 아이디 설정하고 마커를 지도에 추가
    }

    // 메인 메뉴 클릭
    public void onMenu(View view) {
    }

    // 길찾기 메뉴 클릭
    public void onFindWay(View view) {
        Intent intent = new Intent(mContext, SearchPathActivity.class);
        TMapGpsManager temp = gps; // 디버그 확인용
        // gps가 켜져 있을때
        if(gps.getLocation().getLongitude() != 0.0){
            intent.putExtra("startLat",gps.getLocation().getLatitude());
            intent.putExtra("startLon",gps.getLocation().getLongitude());
        }
        // 현재 클릭해놓은 장소가 있을 때
        if(selectedPlace != null){
            intent.putExtra("endName",selectedPlace.getName());
            intent.putExtra("endLat",selectedPlace.getNoorLat());
            intent.putExtra("endLon",selectedPlace.getNoorLon());
        }
        startActivityForResult(intent, SEARCH_PATH_ACITIVITY);
    }



    @Override
    public void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        switch(requestCode){
            case SEARCH_ONE_ACTIVITY:   // 메인에서 안 쓰임
                if(resultCode == getActivity().RESULT_OK){
                    showPlace(data.getStringExtra("searchPlace"));
                }
                break;
            case SEARCH_PATH_ACITIVITY:
                if(resultCode == getActivity().RESULT_OK){

                    // 길찾기 하면 , 장소 검색 결과는 지도에서 지우기
                    if(placeMarker.size() != 0 ){
                        placeList.clear();
                        hideFacility(placeMarker);
                        placeMarker.clear();
                    }

                    double startLat = data.getDoubleExtra("startLat",0);
                    double startLon = data.getDoubleExtra("startLon",0);
                    String startName = data.getStringExtra("startName");
                    double endLat = data.getDoubleExtra("endLat",0);
                    double endLon = data.getDoubleExtra("endLon",0);
                    String endName = data.getStringExtra("endName");

                    JSONObject request = new JSONObject();
                    try {
                        request.put("startX",startLon);
                        request.put("startY",startLat);
                        request.put("endX",endLon);
                        request.put("endY",endLat);
                        request.put("startName",startName);
                        request.put("endName",endName);

                        // 경유지는 request.put("passList", 위도경도 ); 경유지들의 X 좌표, Y 좌표를 콤마(,)와 밑줄(_)로 구분하여 순서대로 나열합니다.(최대 3곳)
//                      ex) 126.92774822,37.55395475_126.92577620,37.55337145_....
                        // 경로 탐색 옵션
                        // request.put("searchOption", 숫자 ) ex) 0:추천, 4:추천+대로 우선, 10:최단, 30:최단+계단제외
                        // 지리정보 개체의 정렬 순서를 지정
                        // request.put("sort", index)
                        // 1) index : 노드의 종류에 상관없이 인덱스의 순서로 정렬
                        // 2) custom : 라인노드, 포인트노드의 순서로 정렬렬
                        final TMapData tMapData = new TMapData();
                        TMapPoint startPoint = new TMapPoint(startLat, startLon);
                        TMapPoint endPoint = new TMapPoint(endLat, endLon);



                        tMapView.removeTMapPath();
                        // 보행자용 길찾기 지도에 바로 표시
                        tMapData.findPathDataWithType(TMapData.TMapPathType.PEDESTRIAN_PATH, startPoint, endPoint, new TMapData.FindPathDataListenerCallback() {
                            @Override
                            public void onFindPathData(TMapPolyLine tMapPolyLine) {
                                shortPolyLine = tMapPolyLine;
                                tMapView.addTMapPath(shortPolyLine);
                            }
                        });
                        // 길찾기 데이터 얻어오기 전에 초기화 시키기 최단경로만 존재할 때는 안 해도 됨
                        if(safetyPathFlag == true) {
                            clearAllaboutPath();
                        }
                        Thread shortPath = new ShortestPathThread(getString(R.string.findPathURL)+"?version=1&appKey="+getString(R.string.tMapKey),request); // 최단경로 찾기

                        shortPath.start();
                        shortPath.join();
                        searchSafePath(request);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                break;
        }
    }

    public void clearAllaboutPath(){
        safetyPathFlag = false;   // 길 찾기 전에 안전경로 상태 false로 , 안전경로 찾아지면 true 로 변경됨
        bundle.clear(); // 길 찾기 할 때마다 bundle 초기화
        coordinatesList.clear();
        coordinatesSafeList.clear();
        pointSafeList.clear();
        pointList.clear();
        pathInfoSafeList.clear();
        pathInfoList.clear();
        // 지도에 표시된 안전경로 지우기
        getActivity().runOnUiThread(new Runnable() {
            @Override
            public void run() {
                tMapView.removeTMapPolyLine(safePolyLine.getID());
                tMapView.removeAllMarkerItem();
            }
        });
    }

    public void searchSafePath(JSONObject request){
        // 안전 경로를 제시하려면 출발, 도착을 제외한 좌표가 최소 2개는 있어야한다. (우리 로직 상 어쩔 수 없다)
        if(coordinatesList.size()>3){
            new SafetyPathThread("http://192.168.30.244:8080/api/map/way/safe"+
//            new SafetyPathThread(getString(R.string.searchSafePathURL)+
                    "?startLat="+coordinatesList.get(1).getLatitude()+
                    "&startLon="+coordinatesList.get(1).getLongitude()+
                    "&endLat="+coordinatesList.get(coordinatesList.size()-2).getLatitude()+
                    "&endLon="+coordinatesList.get(coordinatesList.size()-2).getLongitude(), request).start(); // 최단경로 찾기
        }
        else {
            getActivity().runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    Toast.makeText(mContext.getApplicationContext(), "길찾기 검색 결과가 없어요", Toast.LENGTH_LONG).show();
                }
            });
        }
    }

    @Override
    public void onLocationChange(Location location) {
        if(sightFlag){
            tMapView.setLocationPoint(location.getLongitude(),location.getLatitude());
        }
    }

    // 상세 경로 보여주기
    public void getDetailPath(String mode) {
        detailFlag = true;
        showFragment(detailPathFragment);
        switch (mode){
            case SAFE_PATH:
                getActivity().runOnUiThread(new Runnable() {
                    @Override
                    // 안전 경로의 상세정보를 누르면 최단 거리 정보는 다 지우기
                    public void run() {
                        detailPathFragment.changePath(pathInfoSafeList, bundle, SAFE_PATH);
                        tMapView.removeAllMarkerItem();
                        tMapView.removeTMapPath();
                        for(TMapMarkerItem marker : pointSafeList){
                            tMapView.addMarkerItem(marker.getID(),marker);
                        }
                        tMapView.addTMapPolyLine("safe", safePolyLine);
                    }
                });
                break;
            case SHORTEST_PATH:
                getActivity().runOnUiThread(new Runnable() {
                    @Override
                    // 최단경로를 선택하면 안전경로 다 지우기
                    public void run() {
                        detailPathFragment.changePath(pathInfoList, bundle, SHORTEST_PATH);
                        tMapView.removeAllMarkerItem();
                        tMapView.removeTMapPolyLine("safe");
                        for(TMapMarkerItem marker : pointList){
                            tMapView.addMarkerItem(marker.getID(),marker);
                        }
                        tMapView.removeMarkerItem(pointList.get(0).getID());
                        TMapData tMapData = new TMapData();
                        tMapData.findPathDataWithType(TMapData.TMapPathType.PEDESTRIAN_PATH, coordinatesList.get(0),coordinatesList.get(coordinatesList.size()-1) , new TMapData.FindPathDataListenerCallback() {
                            @Override
                            public void onFindPathData(TMapPolyLine tMapPolyLine) {
                                tMapView.addTMapPath(tMapPolyLine);
                            }
                        });
//                        tMapView.addTMapPolyLine("short",shortPolyLine);
//                        tMapView.addTMapPath(shortPolyLine);
                    }
                });

                break;
        }
        hideFragment(pathSimpleContent);
    }

    // 경로 구하는 스레드, -> 최단 거리 + 안전 경로 다 이 스레드 사용
    private class ShortestPathThread extends Thread {
        JSONObject data;
        String url;
        String result;

        public ShortestPathThread(String url, JSONObject data){
            this.url  = url;
            this.data = data;
        }

        public void run() {
            try{
                Log.d("Debug","ShortestPath_Start");
                HttpURLConnection conn =
                        (HttpURLConnection) new URL(url).openConnection();
                conn.setRequestMethod("POST");
                conn.setDoOutput(true);
                conn.setDoInput(true); // 서버에서 오는 데이터 수신
                conn.setRequestProperty("Content-type","application/json");
                OutputStream os = conn.getOutputStream();
                os.write(data.toString().getBytes());
                os.flush();
                os.close();

                int status = conn.getResponseCode();
                InputStream is = null;
                if(status == HttpURLConnection.HTTP_NO_CONTENT){
                    getActivity().runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            Toast.makeText(mContext.getApplicationContext(), "길찾기 검색 결과가 없어요", Toast.LENGTH_LONG).show();
                        }
                    });
                    return ;
                }
                else if(status == HttpURLConnection.HTTP_INTERNAL_ERROR){
                    getActivity().runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            Toast.makeText(mContext.getApplicationContext(), "길찾기 검색 결과가 없어요", Toast.LENGTH_LONG).show();
                        }
                    });
                    return ;
                }
                else if(status != HttpURLConnection.HTTP_OK){
                    is = conn.getErrorStream();
                }
                else {
                    is = conn.getInputStream();
                }

                BufferedReader br = new BufferedReader(
                        new InputStreamReader(is,getString(R.string.encoding)) );

                StringBuffer buffer = new StringBuffer();
                String line = br.readLine();
                while(line != null){
                    buffer.append(line);
                    line = br.readLine();
                }
                br.close();
                result = buffer.toString();
                if(status != HttpURLConnection.HTTP_OK || result.equals("")) {
                    Log.d("TMAP ERROR", String.valueOf(is));
                    getActivity().runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            Toast.makeText(mContext.getApplicationContext(), result, Toast.LENGTH_LONG).show();
                        }
                    });
                    return;
                }
                // 에러가 발생하지 않은 경우
                JSONObject jsonObject = new JSONObject(result);
                JSONArray features = jsonObject.getJSONArray("features");

                // 총 거리
                final int totalDistance = features.getJSONObject(0).getJSONObject("properties").getInt("totalDistance");
                // 예상 시간
                final int totalTime = features.getJSONObject(0).getJSONObject("properties").getInt("totalTime");

                // 최단 거리 먼저 세팅
                if(safetyPathFlag == false) {
                    bundle.putString("mode", SHORTEST_PATH);
                    bundle.putInt("time", totalTime);
                    bundle.putInt("distance", totalDistance);
                }
                // 안전 거리 세팅 시간, 거리 간단 정보 띄우기
                else{
                    bundle.putString("safeMode",SAFE_PATH);
                    bundle.putInt("safeTime",totalTime);
                    bundle.putInt("safeDistance",totalDistance);
                    getActivity().runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            if(facilityFlag) {
                                hideFacilityBtn();
                            }
                            hideFragment(placeFragment);
                            animator.getFacilityUp().start();
                            showFragment(pathSimpleContent);
                            pathSimpleContent.changeSimpleContent(bundle);
                        }
                    });
                }

                if(safetyPathFlag == false){
                    // 상세 경로, 포인트 저장되어있는거 삭제
                    if(pathInfoList.size() != 0){
                        pathInfoList.clear();
                        pointList.clear();
                    }
                }else{
                    if(pathInfoSafeList != null && pathInfoSafeList.size() != 0){
                        pathInfoSafeList.clear();
                        pointSafeList.clear();
                    }
                }

                ArrayList<TMapPoint> coordiTemp ;
                List<TMapMarkerItem> pointTemp;
                List<Parcelable> pathTemp;

                if(safetyPathFlag == false){
                    coordiTemp = coordinatesList;   // 중간 안내점 좌표
                    pointTemp = pointList;  // 중간 안내점 마커
                    pathTemp = pathInfoList;    // 중간 안내점 상세 정보
                }else {
                    coordiTemp = coordinatesSafeList;
                    pointTemp = pointSafeList;
                    pathTemp = pathInfoSafeList;
                }

                //  상세 정보 관련 정보 가져오기
                for(int i=0; i<features.length(); i++){
                    JSONObject geometry = features.getJSONObject(i).getJSONObject("geometry");
                    if(geometry.getString("type").equals("Point")){
                        JSONArray coordinates = geometry.getJSONArray("coordinates");

                        // 경유지 찍어서 안전 경로 안내해주는데 경유지 필요 없으니까 경유지면 건너 뛰기기
                       String pointType  = features.getJSONObject(i).getJSONObject("properties").getString("pointType");
                        if(pointType.contains("PP")){
                            continue;
                        }
                        coordiTemp.add(new TMapPoint(coordinates.getDouble(1),coordinates.getDouble(0)));

                        JSONObject properties = features.getJSONObject(i).getJSONObject("properties");
                        pathTemp.add(new PathInfo(properties.getString("name"),properties.getString("description"),
                                properties.getInt("turnType"), properties.getInt("pointIndex")));
                    }
                }

                // 지도 위치 바꾸려면 현재위치 모드 꺼야됨
                if(sightFlag == true) hidePresentLocation();

                int resID;

                // 최단 경로와 안전 경로 그려주기
                if(safetyPathFlag == false) {

                }
                else {
                    safePolyLine.setLineColor(Color.BLUE);
                    safePolyLine.setLineWidth(2);
                    for(int i=0; i<coordiTemp.size(); i++){
                        safePolyLine.addLinePoint(coordiTemp.get(i));
                    }
                    tMapView.addTMapPolyLine("safe", safePolyLine);
                }

                for(int i=0; i<coordiTemp.size(); i++){
                    // 이미지 아이디 동적 결정
                    resID = getResources().getIdentifier("point"+i+"_icon","drawable",mContext.getPackageName());

                    bitmap = BitmapFactory.decodeResource(mContext.getApplicationContext().getResources(), resID);
                    TMapMarkerItem markerItem = new TMapMarkerItem();
                    TMapPoint tMapPoint = new TMapPoint(coordiTemp.get(i).getLatitude(),coordiTemp.get(i).getLongitude());

                    markerItem.setIcon(bitmap);
                    markerItem.setPosition(0.5f,0.5f);
                    markerItem.setTMapPoint(tMapPoint);
                    if(safetyPathFlag == false){
                        markerItem.setName("point");
                        markerItem.setID(i+"point");
                    } else {
                        markerItem.setName("safe_point");
                        markerItem.setID(i+"safe_point");
                    }
                    pointTemp.add(markerItem);   // 포인트 index 리슽트에 추가
                }
                // 안전거리는 마지막 마커가 몇 번째일지 모르니까 정해서 이미지 세팅해주고
                if(safetyPathFlag == true){
                    bitmap = BitmapFactory.decodeResource(mContext.getApplicationContext().getResources(), R.drawable.end_point);
                    pointTemp.get(pointTemp.size()-1).setIcon(bitmap);
                }
                // 최단거리는 출발,도착을 api메소드가 알아서 찍어주니까 마커 설정할 필요 없다
                else {
//                    pointTemp.remove(0);
//                    pointTemp.remove(pointTemp.size()-1);
                }
                // 최단 경로로 지도 위치를 경로에 맞게 바꿔주기
                if(safetyPathFlag == false){
                    TMapInfo tMapInfo = tMapView.getDisplayTMapInfo(coordinatesList);
                    tMapView.setZoomLevel(tMapInfo.getTMapZoomLevel());
                    tMapView.setCenterPoint(tMapInfo.getTMapPoint().getLongitude(),tMapInfo.getTMapPoint().getLatitude());
                }

            }
            catch(Exception e )
            {
                e.printStackTrace();
            }
        }
    }

    private class SafetyPathThread extends Thread {
        String url;
        String result;
        JSONObject data;

        public SafetyPathThread(String url, JSONObject request){
            this.url  = url;
            this.data = request;
        }

        public void run() {
            try{
                HttpURLConnection conn =
                        (HttpURLConnection) new URL(url).openConnection();
                conn.setRequestMethod("GET");
                conn.setDoInput(true); // 서버에서 오는 데이터 수신

                int status = conn.getResponseCode();
                InputStream is ;
                if(status == HttpURLConnection.HTTP_NO_CONTENT){
                    getActivity().runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            Toast.makeText(mContext.getApplicationContext(), getString(R.string.noSearch), Toast.LENGTH_SHORT).show();
                        }
                    });
                    return;
                }
                else if(status != HttpURLConnection.HTTP_OK){
                    is = conn.getErrorStream();
                }
                else {
                    is = conn.getInputStream();
                }

                BufferedReader br = new BufferedReader(
                        new InputStreamReader(is,getString(R.string.encoding)) );

                StringBuffer buffer = new StringBuffer();
                String line = br.readLine();
                while(line != null){
                    buffer.append(line);
                    line = br.readLine();
                }
                br.close();
                result = buffer.toString();
                if(status != HttpURLConnection.HTTP_OK ) {
                    getActivity().runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            Toast.makeText(mContext.getApplicationContext(), result, Toast.LENGTH_LONG).show();
                        }
                    });
                }
                // 에러가 발생하지 않은 경우
                // 안전거리가 존재하지 않으면 최단거리만 보여주고 끝
                if(result==null || result.equals("")){
                    getActivity().runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            if(facilityFlag) {
                                hideFacilityBtn();
                            }
                            hideFragment(placeFragment);
                            animator.getFacilityUp().start();
                            showFragment(pathSimpleContent);
                            pathSimpleContent.changeSimpleContent(bundle);
                        }
                    });
                    return;
                }

                JSONArray jsonArray = new JSONArray(result);

                StringBuilder sb = new StringBuilder();     // sb : 경유지들의 위도 경도 좌표 이어 붙이기
                double ratio = jsonArray.length()/4.0;  // 경유지 찍기위해 4등분
                for(double i = ratio ; i<jsonArray.length(); i += ratio){
                    if(i > jsonArray.length()/4.0) {
                        sb.append("_");
                    }
                    // 경유지 찍어서 경로 보내기 그냥 경유지 3개 찍어서 결과 하나만 받아오자 두개 이어 붙이기 귀찮다.
                    JSONObject object = jsonArray.getJSONObject((int)i);



                    sb.append(object.getDouble("lng")+","+object.getDouble("lat"));
                }

                data.put("passList",new String(sb));

                safetyPathFlag = true;

                new ShortestPathThread(getString(R.string.findPathURL)+"?version=1&appKey="+getString(R.string.tMapKey),data).start();   // 경유지 포함한 경로를 요청 보내기
            }
            catch(Exception e ){e.printStackTrace();}
        }
    }

    // 검색을 위한 단계
    public void showPlace(String searchPlace){
        if(searchPlace.trim().equals("")) return ;

        try {
            new SearchPlaceThread(getString(R.string.searchPlaceURL)+"?version=1"+
                    "&searchKeyword="+ URLEncoder.encode(searchPlace.trim(),getString(R.string.encoding))+
                    "&resCoorType=WGS84GEO"+
                    "&searchType=all"+
                    "&appKey="+getString(R.string.tMapKey)).start();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }
    // 장소 검색 스레드
    private class SearchPlaceThread extends Thread {
        String url;
        String result;

        public SearchPlaceThread(String url)
        {
            this.url  = url;
        }

        public void run() {
            try{
                HttpURLConnection conn =
                        (HttpURLConnection) new URL(url).openConnection();
                conn.setRequestMethod("GET");
                conn.setDoInput(true); // 서버에서 오는 데이터 수신

                int status = conn.getResponseCode();
                InputStream is ;
                // 요청에 대한 컨텐츠가 없다. ->
                if(status == HttpURLConnection.HTTP_NO_CONTENT){
                    getActivity().runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            Toast.makeText(mContext.getApplicationContext(), getString(R.string.noSearch), Toast.LENGTH_SHORT).show();
                        }
                    });
                    return;
                }
                else if(status != HttpURLConnection.HTTP_OK){
                    is = conn.getErrorStream();
                }
                else {
                    is = conn.getInputStream();
                }
                BufferedReader br = new BufferedReader(
                        new InputStreamReader(is,getString(R.string.encoding)) );

                StringBuffer buffer = new StringBuffer();
                String line = br.readLine();
                while(line != null){
                    buffer.append(line);
                    line = br.readLine();
                }
                br.close();
                result = buffer.toString();
                Log.d("DATA",result);
                if(status != HttpURLConnection.HTTP_OK) {
                    getActivity().runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            Toast.makeText(mContext.getApplicationContext(), result, Toast.LENGTH_SHORT).show();
                        }
                    });
                    return;
                }
                // 에러가 발생하지 않은 경우
                JSONObject jsonObject = new JSONObject(result);
                JSONObject searchPoinInfo = jsonObject.getJSONObject("searchPoiInfo");
                JSONObject pois = searchPoinInfo.getJSONObject("pois");
                final JSONArray poi = pois.getJSONArray("poi");

                // 스레드로 상세정보 표시
                getActivity().runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        bitmap = null;
                        if(facilityFlag){
                            hideFacilityBtn();
                        }
                        tMapView.removeTMapPath(); // 길찾기 지도에 표시되어 있으면 지우기
                        hideFragment(placeFragment);

                        if(placeMarker.size() != 0 ){   // 기존에 검색했던거 있으면 지우기
                            placeList.clear();
                            hideFacility(placeMarker);
                            placeMarker.clear();
                        }
                        JSONObject temp ;
//                        bitmap = BitmapFactory.decodeResource(getApplicationContext().getResources(), R.drawable.cctv_color);; // 우리 로고 마커로 추가하기


                        ArrayList<TMapPoint> arrays = new ArrayList<>();
                        for(int i=0; i<poi.length(); i++){
                            try {
                                temp = (JSONObject) poi.get(i);
                                placeList.add(new Place(temp.getString("id"), temp.getString("name"), temp.getString("telNo"),
                                        temp.getDouble("noorLat"), temp.getDouble("noorLon"),
                                        temp.getString("upperAddrName"), temp.getString("middleAddrName"), temp.getString("lowerAddrName"),
                                        temp.getString("detailAddrName"), temp.getString("roadName"),temp.getString("rpFlag")));

                                TMapMarkerItem markerItem = new TMapMarkerItem();
                                TMapPoint tMapPoint = new TMapPoint(Double.parseDouble((String) temp.get("noorLat")), Double.parseDouble((String) temp.get("noorLon")) );
                                arrays.add(tMapPoint);
                                markerItem.setIcon(bitmap);
                                markerItem.setPosition(0.5f,0.5f);
                                markerItem.setTMapPoint(tMapPoint);
                                markerItem.setName("place");
                                tMapView.addMarkerItem((String) temp.get("id"),markerItem);

                                placeMarker.add(markerItem);   // 장소 리스트에 추가

                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                        }
                        //검색 결과에 맞춰 지도 위치와 줌 레벨 조정
                        TMapInfo info = tMapView.getDisplayTMapInfo(arrays);
                        tMapView.setZoomLevel(info.getTMapZoomLevel());
                        tMapView.setCenterPoint(info.getTMapPoint().getLongitude(),info.getTMapPoint().getLatitude(),true);
                    }
                });
            }
            catch(Exception e ){e.printStackTrace();}
        }
    }

    // 모든 시설물 버튼 숨기기
    private void hideFacilityBtn() {
        getActivity().runOnUiThread(new Runnable() {
            @Override
            public void run() {
                for(ImageButton ib : facilities){
                    ib.clearAnimation();    // fillAfter로 유지되는 애니메이션 종료
                    ib.setVisibility(View.GONE);    // 화면에서 지우기
                }
            }
        });
    }

    // 시설물 등장 애니메이션
    public void showFacilAnime() {
        getActivity().runOnUiThread(new Runnable() {
            @Override
            public void run() {
                for(ImageButton ib : facilities){
                    ib.setVisibility(VISIBLE);
                    switch (ib.getId()){
                        case R.id.bellMenu:
                            animator.getBellSet().setTarget(ib);
                            animator.getBellSet().start();

                            break;
                        case R.id.cctvMenu:
                            animator.getCctvSet().setTarget(ib);
                            animator.getCctvSet().start();

                            break;
                        case R.id.lampMenu:
                            animator.getLampSet().setTarget(ib);
                            animator.getLampSet().start();

                            break;
                        case R.id.shopMenu:
                            animator.getShopSet().setTarget(ib);
                            animator.getShopSet().start();

                            break;
                        case R.id.policeMenu:
                            animator.getPoliceSet().setTarget(ib);
                            animator.getPoliceSet().start();

                            break;
                        case R.id.protectMenu:
                            animator.getProtectSet().setTarget(ib);
                            animator.getProtectSet().start();

                            break;
                    }
                }
            }
        });
    }

    // 시설물 별로 지도에 표시
    public void showFacility(View view)  throws JSONException {
        switch(view.getId()){
            case R.id.bellMenu:
                if(facility.getBellFlag() == 1){
                    facility.offBell();
                    btnBell.setSelected(false);
                    hideFacility(bellList);
                }else{
                    facility.onBell();
                    btnBell.setSelected(true);
                    searchFacility();
                }
                break;
            case R.id.cctvMenu:
                if(facility.getCctvFlag() == 1){
                    facility.offCCTV();
                    btnCCTV.setSelected(false);
                    hideFacility(cctvList);
                }else {
                    facility.onCCTV();
                    btnCCTV.setSelected(true);
                    searchFacility();
                }
                break;
            case R.id.policeMenu:
                if(facility.getPoliceFlag() == 1){
                    facility.offPolice();
                    btnPolice.setSelected(false);
                    hideFacility(policeList);
                } else {
                    facility.onPolice();
                    btnPolice.setSelected(true);
                    searchFacility();
                }
                break;
            case R.id.shopMenu:
                if(facility.getShopFlag() == 1){
                    facility.offShop();
                    btnShop.setSelected(false);
                    hideFacility(shopList);
                }else {
                    facility.onShop();
                    btnShop.setSelected(true);
                    searchFacility();
                }
                break;
            case R.id.lampMenu:
                if(facility.getLampFlag() == 1) {
                    facility.offLamp();
                    btnLamp.setSelected(false);
                    hideFacility(lampList);
                }else {
                    facility.onLamp();
                    btnLamp.setSelected(true);
                    searchFacility();
                }
                break;
            case R.id.protectMenu:
                if(facility.getProtectFlag() == 1){
                    facility.offProtect();
                    btnProtect.setSelected(false);
                    hideFacility(protectList);
                } else {
                    facility.onProtect();
                    btnProtect.setSelected(true);
                    searchFacility();
                }
                break;
            default:
                break;
        }
    }

    // 경로 주변 시설물 표시
    public void searchAroundFacility(final int i, final String mode) {
        getActivity().runOnUiThread(new Runnable() {
            @Override
            public void run() {
                for(int i=0; i<aroundList.size(); i++){
                    tMapView.removeMarkerItem(aroundList.get(i).getID());
                }
                aroundList.clear();
                hideFragment(detailPathFragment);
                showFragment(pathIndexFragment);

                List<Parcelable> pathTemp = null;
                ArrayList<TMapPoint> pointTemp = null;
                if(mode.equals(SHORTEST_PATH)){
                    pathTemp = pathInfoList;
                    pointTemp = coordinatesList;
                }else if(mode.equals(SAFE_PATH)){
                    pathTemp = pathInfoSafeList;
                    pointTemp = coordinatesSafeList;
                }
                pathIndexFragment.changePathIndex(pathTemp.get(i));
                tMapView.setZoomLevel(18);
                tMapView.setCenterPoint(pointTemp.get(i).getLongitude(), pointTemp.get(i).getLatitude()); // 지도 화면 선택한 상세 정보 위치로 바꾸기
                new Handler().postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        TMapPoint leftTopPoint = tMapView.getLeftTopPoint();
                        TMapPoint rightBottomPoint = tMapView.getRightBottomPoint();
//                new AroundFacilityThread("http://192.168.30.244:8080/api/map/search/around"+
                        new AroundFacilityThread(getString(R.string.aroundFacilityURL)+
                                "?la="+rightBottomPoint.getLatitude()+
                                "&ka="+leftTopPoint.getLatitude()+
                                "&ea="+leftTopPoint.getLongitude()+
                                "&ja="+rightBottomPoint.getLongitude()).start();    // 해당 부분의 모든 시설물 가져오기
                    }
                },500);
            }
        });



    }

    /// 시설물 찾기
    public void searchFacility() throws JSONException {
        if(facility.getFourBtnOn()){
            tMapView.setZoomLevel(18);
        }
        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
            TMapPoint leftTopPoint = tMapView.getLeftTopPoint();
            TMapPoint rightBottomPoint = tMapView.getRightBottomPoint();

            try {
                new HttpThread(getString(R.string.searchFacilityURL) +
    //            new HttpThread("http://192.168.30.244:8080/api/map/search/mobile" +
                        "?la="+rightBottomPoint.getLatitude()+
                        "&ka="+leftTopPoint.getLatitude()+
                        "&ea="+leftTopPoint.getLongitude()+
                        "&ja="+rightBottomPoint.getLongitude()+
                        "&facilFlag="+ URLEncoder.encode(facility.getFacilitiesFlag(),"UTF-8")+
                        "&facilName="+ URLEncoder.encode(String.valueOf(facility.getFacilitiesName()),"UTF-8")).start();
            } catch (UnsupportedEncodingException | JSONException e) {
                e.printStackTrace();
            }
            }
        },500);
    }

    // 시설물 지도에 표시하는 스레드
    private class HttpThread extends Thread {
        String url;
        String result;

        public HttpThread(String url){
            this.url  = url;
        }

        public void run() {
            try{
                HttpURLConnection conn =
                        (HttpURLConnection) new URL(url).openConnection();
                conn.setRequestMethod("GET");
                conn.setDoInput(true); // 서버에서 오는 데이터 수신

                int status = conn.getResponseCode();
                InputStream is ;
                if(status != HttpURLConnection.HTTP_OK){
                    is = conn.getErrorStream();
                }
                else {
                    is = conn.getInputStream();
                }

                BufferedReader br = new BufferedReader(
                        new InputStreamReader(is,getString(R.string.encoding)) );

                StringBuffer buffer = new StringBuffer();
                String line = br.readLine();
                while(line != null){
                    buffer.append(line);
                    line = br.readLine();
                }
                br.close();
                result = buffer.toString();
                if(status != HttpURLConnection.HTTP_OK) {
                    getActivity().runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            Toast.makeText(mContext.getApplicationContext(), result, Toast.LENGTH_LONG).show();
                        }
                    });
                    return;
                }
                // 에러가 발생하지 않은 경우
                final JSONArray jsonArray = new JSONArray(result);
                JSONArray dataArray;
                JSONObject jsonObject ;
                JSONObject dataObject ;
                for(int i=0; i<jsonArray.length(); i++){
                    try {
                        jsonObject = jsonArray.getJSONObject(i);
                        if(jsonObject.isNull("data")) { continue;}
                        dataArray = (JSONArray) jsonObject.get("data");

                        List<TMapMarkerItem> tempList = null;  // 시설물 배열 동적으로 결정할 임시

                        switch ((String) jsonObject.get("name")){
                            case "cctv":
                                bitmap =  BitmapFactory.decodeResource(getActivity().getApplicationContext().getResources(), R.drawable.cctv_color);
                                tempList = cctvList;
                                break;
                            case "bell":
                                bitmap =  BitmapFactory.decodeResource(getActivity().getApplicationContext().getResources(), R.drawable.bell_color);
                                tempList = bellList;
                                break;
                            case "guard":
                                bitmap =  BitmapFactory.decodeResource(getActivity().getApplicationContext().getResources(), R.drawable.protect_color);
                                tempList = protectList;
                                break;
                            case "convenience":
                                bitmap =  BitmapFactory.decodeResource(getActivity().getApplicationContext().getResources(), R.drawable.shop_color);
                                tempList = shopList;
                                break;
                            case "light":
                                bitmap =  BitmapFactory.decodeResource(getActivity().getApplicationContext().getResources(), R.drawable.lamp_color);
                                tempList = lampList;
                                break;
                            case "police":
                                bitmap =  BitmapFactory.decodeResource(getActivity().getApplicationContext().getResources(), R.drawable.police_color);
                                tempList = policeList;
                                break;
                            default :
                                break;
                        }


                        for(int j = 0; j< dataArray.length(); j++){
                            TMapMarkerItem markerItem = new TMapMarkerItem();
                            dataObject = (JSONObject) dataArray.get(j);
                            TMapPoint tMapPoint = new TMapPoint((double) dataObject.get("lat"),(double) dataObject.get("lng"));

                            markerItem.setIcon(bitmap);
                            markerItem.setPosition(0.5f,0.5f);
                            markerItem.setTMapPoint(tMapPoint);
                            markerItem.setName((String) dataObject.get("code"));
                            tMapView.addMarkerItem((String) dataObject.get("code"),markerItem);

                            tempList.add(markerItem);   // 시설물 배열에 마커 추가
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
                // 스레드로 시설물 표시
//                runOnUiThread(new Runnable() {
//                    @Override
//                    public void run() {
//
//
//                    }
//                });
            }
            catch(Exception e ){e.printStackTrace();}
        }
    }

    // 시설물 숨기기
    public void hideFacility(final List<TMapMarkerItem> list){
        getActivity().runOnUiThread(new Runnable() {
            @Override
            public void run() {
                for(int i=0; i<list.size(); i++ ){
                    String id = list.get(i).getID();
                    tMapView.removeMarkerItem(id);
                }
            }
        });
        list.clear();
    }

    // 지도 클릭 이벤트 핸들러
    public class MapClickListener implements TMapView.OnClickListenerCallback {

        @Override
        public boolean onPressEvent(ArrayList<TMapMarkerItem> arrayList, ArrayList<TMapPOIItem> arrayList1, TMapPoint tMapPoint, PointF pointF) {
//            Log.d("clickLat", String.valueOf(tMapPoint.getLatitude()));
//            Log.d("clickLon", String.valueOf(tMapPoint.getLongitude()));
            return false;
        }

        @Override
        public boolean onPressUpEvent(ArrayList<TMapMarkerItem> arrayList, ArrayList<TMapPOIItem> arrayList1, TMapPoint tMapPoint, PointF pointF) {

            Log.d("clickMarker",arrayList.toString());
            // 상세 경로 숨기면 심플 정보 띄우기
            if(detailFlag == true){
                hideFragment(detailPathFragment);
                showFragment(pathSimpleContent);
            }

            // 말풍선 지우기
            if(markerOverlay != null) {
                tMapView.removeMarkerItem2(markerOverlay.getID());
            }

            // 장소나 시설물 클릭한게 아니면 선택된 장소 취소하고 반환
            if(arrayList.size() == 0) {
                selectedPlace = null;
                hideFragment(placeFragment);
                hideFragment(pathIndexFragment);
                return false;
            }

            TMapMarkerItem clickMarker = arrayList.get(0); // 클릭한 마커
            Log.d("name",clickMarker.getName());
            Log.d("id",clickMarker.getID());

            // 아이디, 이름이 같으면 시설물
            if(clickMarker.getID().equals(clickMarker.getName())) {
                // 시설물 상세정보 요청
                new DetailThread(getString(R.string.facilityDetailURL)+"?code="+clickMarker.getID(),
                        clickMarker.getTMapPoint().getLatitude(),clickMarker.getTMapPoint().getLongitude()).start();
            }
            else if(clickMarker.getName().equals("point")){
                searchAroundFacility(Integer.parseInt(clickMarker.getID().substring(0,1)),SHORTEST_PATH);
            }
            // 이름이 포인트면 경로 중간 안내점
            else if (clickMarker.getName().contains("point")){
                searchAroundFacility(Integer.parseInt(clickMarker.getID().substring(0,1)),SAFE_PATH);
            }

            // 장소 마커 상세 정보 프래그먼트에 띄우기
            else if(clickMarker.getName().equals("place")){
                selectedPlace = placeList.get(placeMarker.indexOf(arrayList.get(0)));
                animator.getFacilityUp().start();
                hideFragment(pathSimpleContent);
                showFragment(placeFragment);
                placeFragment.changePlace(selectedPlace);
            }
            return false;
        }

    }

    // 시설물의 상세정보를 표시하는 스레드
    private class DetailThread extends Thread {
        String url;
        String result;
        double lat;
        double lng;

        public DetailThread(String url, double lat, double lng)
        {
            this.url  = url;
            this.lat = lat;
            this.lng = lng;
        }

        public void run() {
            try{
                HttpURLConnection conn =
                        (HttpURLConnection) new URL(url).openConnection();
                conn.setRequestMethod("GET");
                conn.setDoInput(true); // 서버에서 오는 데이터 수신

                int status = conn.getResponseCode();
                InputStream is ;
                if(status != HttpURLConnection.HTTP_OK){
                    is = conn.getErrorStream();
                }
                else {
                    is = conn.getInputStream();
                }
                BufferedReader br = new BufferedReader(
                        new InputStreamReader(is,getString(R.string.encoding)) );

                StringBuffer buffer = new StringBuffer();
                String line = br.readLine();
                while(line != null){
                    buffer.append(line);
                    line = br.readLine();
                }
                br.close();
                result = buffer.toString();
                Log.d("DATA",result);
                if(status != HttpURLConnection.HTTP_OK) {
                    getActivity().runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            Toast.makeText(getActivity().getApplicationContext(), result, Toast.LENGTH_SHORT).show();
                        }
                    });
                    return;
                }
                // 에러가 발생하지 않은 경우
                JSONObject json = new JSONObject(result);
                final String adminName = (String) json.get("adminName");
                final String adminTel = (String) json.get("adminTel");
                final String landAddr = (String) json.get("landAddr");
                final String roadAddr = (String) json.get("roadAddr");

                // 스레드로 상세정보 표시
                getActivity().runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        TMapPoint point = new TMapPoint(lat+0.0005,lng);

                        markerOverlay = new MarkerOverlay(mContext.getApplicationContext(),adminName,adminTel,landAddr,roadAddr);
                        markerOverlay.setID(adminName);
                        markerOverlay.setPosition(0.0f,0.0f);
                        markerOverlay.setTMapPoint(point);

                        tMapView.addMarkerItem2(adminName,markerOverlay);
                    }
                });

            }
            catch(Exception e ){e.printStackTrace();}
        }
    }

    // 지도 롱 클릭 이벤트 -> 마커 생성하고 말풍선 띄우기
    private class MapLongClickListener implements TMapView.OnLongClickListenerCallback {

        @Override
        public void onLongPressEvent(ArrayList<TMapMarkerItem> arrayList, ArrayList<TMapPOIItem> arrayList1, TMapPoint tMapPoint) {

        }
    }

//    public interface OnBackKeyPressedListener{
//        public void onBack();
//    }
//
//    public void pushOnBackKeyPressedListener(OnBackKeyPressedListener listener){
//        mFragmentBackStack.push(listener);
//    }

//    public void onBackPressed() {
//        if(mFragmentBackStack.isEmpty()){
//            mFragmentBackStack.pop().onBack();
//        }
//        else {
//            // 뒤로 가기 구현중
//        }
//    }

    //     경로 주변 시설물 표시 스레드
    private class AroundFacilityThread extends Thread {
        String url;
        String result;

        public AroundFacilityThread(String url)
        {
            this.url  = url;
        }

        public void run() {
            try{
                HttpURLConnection conn =
                        (HttpURLConnection) new URL(url).openConnection();
                conn.setRequestMethod("GET");
                conn.setDoInput(true); // 서버에서 오는 데이터 수신

                int status = conn.getResponseCode();
                InputStream is ;
                if(status != HttpURLConnection.HTTP_OK){
                    is = conn.getErrorStream();
                }
                else {
                    is = conn.getInputStream();
                }
                BufferedReader br = new BufferedReader(
                        new InputStreamReader(is,getString(R.string.encoding)) );

                StringBuffer buffer = new StringBuffer();
                String line = br.readLine();
                while(line != null){
                    buffer.append(line);
                    line = br.readLine();
                }
                br.close();
                result = buffer.toString();
                Log.d("DATA",result);
                if(status != HttpURLConnection.HTTP_OK) {
                    getActivity().runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            Toast.makeText(mContext.getApplicationContext(), result, Toast.LENGTH_SHORT).show();
                        }
                    });
                    return;
                }
                // 에러가 발생하지 않은 경우
                // 해당 시설물 주변에 안전 시설물 표시
                final JSONArray jsonArray = new JSONArray(result);

                // 스레드로 주변 시설물 표시
                getActivity().runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        if(aroundList.size() != 0){
                            aroundList.clear();
                            tMapView.removeAllMarkerItem();
                        }
                        for(int i=0; i<jsonArray.length(); i++){
                            try {
                                switch ( jsonArray.getJSONObject(i).getString("code").substring(0,2)){
                                    case "CC":
                                        bitmap =  BitmapFactory.decodeResource(mContext.getApplicationContext().getResources(), R.drawable.cctv_color);
                                        break;
                                    case "BE":
                                        bitmap =  BitmapFactory.decodeResource(mContext.getApplicationContext().getResources(), R.drawable.bell_color);
                                        break;
                                    case "PH":
                                        bitmap =  BitmapFactory.decodeResource(mContext.getApplicationContext().getResources(), R.drawable.protect_color);
                                        break;
                                    case "CS":
                                        bitmap =  BitmapFactory.decodeResource(mContext.getApplicationContext().getResources(), R.drawable.shop_color);
                                        break;
                                    case "LI":
                                        bitmap =  BitmapFactory.decodeResource(mContext.getApplicationContext().getResources(), R.drawable.lamp_color);
                                        break;
                                    case "PD":
                                        bitmap =  BitmapFactory.decodeResource(mContext.getApplicationContext().getResources(), R.drawable.police_color);
                                        break;
                                    default :
                                        break;
                                }
                                TMapMarkerItem markerItem = new TMapMarkerItem();
                                JSONObject jsonObject = jsonArray.getJSONObject(i);
                                TMapPoint tMapPoint = new TMapPoint((double) jsonObject.get("lat"),(double) jsonObject.get("lng"));

                                markerItem.setIcon(bitmap);
                                markerItem.setPosition(0.5f,0.5f);
                                markerItem.setTMapPoint(tMapPoint);
                                markerItem.setName((String)jsonObject.get("code"));
                                markerItem.setID((String)jsonObject.get("code"));
                                tMapView.addMarkerItem((String) jsonObject.get("code"),markerItem);

                                aroundList.add(markerItem);   // 시설물 배열에 마커 추가
                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                });

            }
            catch(Exception e ){e.printStackTrace();}
        }
    }




}
