package com.app.sistemmonitoring.ui.santri;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;

public class FragmentViewModel extends ViewModel {
    private MutableLiveData<String> mText;

    public FragmentViewModel() {
        mText = new MutableLiveData<>();
        mText.setValue("This is santri fragment");
    }

    public LiveData<String> getText() {
        return mText;
    }
}
