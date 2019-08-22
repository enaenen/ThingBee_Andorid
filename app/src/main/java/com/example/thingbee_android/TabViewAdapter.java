package com.example.thingbee_android;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;

public class TabViewAdapter extends FragmentPagerAdapter {
    int mNumOfTabs;


    public TabViewAdapter(FragmentManager fm, int mNumOfTabs) {
        super(fm);
        this.mNumOfTabs = mNumOfTabs;
    }

    @Override
    public Fragment getItem(int position) {
        switch (position) {

            case 0:
                FragmentMap tab1 = new FragmentMap();
                return tab1;
            case 1:
                FragmentNews tab2 = new FragmentNews();
                return tab2;
            case 2:
                FragmentStatics tab3 = new FragmentStatics();
                return tab3;
            case 3:
                FragmentStatics tab4 = new FragmentStatics();
            return tab4;
            case 4:
                FragmentPrototype tab5 = new FragmentPrototype();
                return tab5;
            default:
                return null;
        }
    }

    @Override
    public int getCount() {
        return mNumOfTabs;
    }
}
