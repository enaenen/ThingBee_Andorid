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
                FragmentNews tab11 = new FragmentNews();
                return tab11;
            case 1:
                FragmentStatics tab2 = new FragmentStatics();
                return tab2;
            case 2:
                FragmentStatics tab3 = new FragmentStatics();
                return tab3;
            case 3:
                FragmentPrototype tab4 = new FragmentPrototype();
                return tab4;
            default:
                return null;
        }
    }

    @Override
    public int getCount() {
        return mNumOfTabs;
    }
}
