package com.example.m_class.utils

import android.content.Context
import android.content.pm.PackageManager
import android.util.Log
import com.example.m_class.BuildConfig

object AppUtils {

    fun isGoogleTV(context: Context): Boolean {
        val pm: PackageManager = context.getPackageManager()

        var isAndroidTv = false

        isAndroidTv = pm.hasSystemFeature(PackageManager.FEATURE_TELEVISION) || pm.hasSystemFeature(PackageManager.FEATURE_LEANBACK)
        if (BuildConfig.DEBUG){
            Log.d("#### DEVICE TYPE ","IS ANDROID TV  ${isAndroidTv}")
        }

        return isAndroidTv
    }
}