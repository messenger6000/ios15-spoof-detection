package com.example.DetectSpoofing;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.PluginResult;
import org.json.JSONArray;
import org.json.JSONException;

public class DetectSpoofing extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        if (action.equals("detect")) {
            callbackContext.success("Plugin loaded successfully on Android");
            return true;
        }
        return false;
    }
}
