/*
 * Copyright (C) 2015 The CyanogenMod Project
 *               2017-2020 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.lineageos.devicesettings;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import android.content.SharedPreferences;
import android.os.SystemProperties;
import android.util.Log;
import androidx.preference.PreferenceManager;

import org.lineageos.devicesettings.dirac.DiracUtils;
import org.lineageos.settings.utils.DisplayUtils;
import org.lineageos.settings.utils.FileUtils;

public class BootCompletedReceiver extends BroadcastReceiver {
    private static final boolean DEBUG = false;
    private static final String TAG = "DeviceParts";
    private static final String DC_DIMMING_ENABLE_KEY = "dc_dimming_enable";
    private static final String DC_DIMMING_NODE = "/sys/devices/platform/soc/soc:qcom,dsi-display-primary/dimlayer_exposure";

    @Override
    public void onReceive(final Context context, Intent intent) {
        SharedPreferences sharedPrefs = PreferenceManager.getDefaultSharedPreferences(context);
        if (DEBUG)
            Log.d(TAG, "Received boot completed intent");
        DiracUtils.initialize(context);
        FileUtils.enableService(context);
        DisplayUtils.enableService(context);

        boolean dcDimmingEnabled = sharedPrefs.getBoolean(DC_DIMMING_ENABLE_KEY, false);
        FileUtils.writeLine(DC_DIMMING_NODE, dcDimmingEnabled ? "1" : "0");
    }
}
