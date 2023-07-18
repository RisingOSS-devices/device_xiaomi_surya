package org.lineageos.settings;

import android.content.Intent;
import android.os.Bundle;

import androidx.preference.Preference;
import androidx.preference.PreferenceFragment;
import androidx.preference.SwitchPreference;
import androidx.preference.ListPreference;

import org.lineageos.settings.R;
import org.lineageos.settings.display.KcalSettingsActivity;

public class MainSettingsFragment extends PreferenceFragment {

    private static final String PREF_KCAL_SETTINGS = "kcal_settings";

    private Preference mKcalSettingsPref;

    @Override
    public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
        addPreferencesFromResource(R.xml.xiaomiparts);

        mKcalSettingsPref = (Preference) findPreference(PREF_KCAL_SETTINGS);
        mKcalSettingsPref.setOnPreferenceClickListener(preference -> {
            Intent intent = new Intent(getActivity().getApplicationContext(), KcalSettingsActivity.class);
            startActivity(intent);
            return true;
        });
    }
}
