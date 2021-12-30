package com.app.sistemmonitoring.ui.sejarah;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;

public class SejarahViewModel extends ViewModel {
    private MutableLiveData<String> mText;

    public SejarahViewModel() {
        mText = new MutableLiveData<>();
        mText.setValue("This is sejarah fragment");
    }

    public LiveData<String> getText() {
        return mText;
    }
}
