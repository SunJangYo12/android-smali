/*
 * Decompiled with CFR 0_131.
 * 
 * Could not load the following classes:
 *  android.app.AlertDialog
 *  android.app.AlertDialog$Builder
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnClickListener
 *  android.content.res.AssetManager
 *  android.content.res.Resources
 *  android.net.ConnectivityManager
 *  android.net.NetworkInfo
 *  android.os.IBinder
 *  android.util.DisplayMetrics
 *  android.util.Log
 *  android.view.View
 *  android.view.inputmethod.InputMethodManager
 *  android.widget.Toast
 *  org.apache.http.HttpEntity
 *  org.apache.http.HttpResponse
 *  org.apache.http.HttpVersion
 *  org.apache.http.client.HttpClient
 *  org.apache.http.client.methods.HttpGet
 *  org.apache.http.client.methods.HttpUriRequest
 *  org.apache.http.conn.ClientConnectionManager
 *  org.apache.http.impl.client.DefaultHttpClient
 *  org.apache.http.params.BasicHttpParams
 *  org.apache.http.params.HttpParams
 *  org.apache.http.params.HttpProtocolParams
 */
package com.akura.utils;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.IBinder;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Toast;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

public class Utils {
    private static final String TAG = "Utils";

    public static void alert(Context context, String string, String string2) {
        context = new AlertDialog.Builder(context);
        context.setTitle((CharSequence)string);
        context.setMessage((CharSequence)string2);
        context.setPositiveButton((CharSequence)"OK", new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n) {
                dialogInterface.cancel();
            }
        });
        context.show();
    }

    public static void confirm(Context context, String string, String string2, final Runnable runnable, final Runnable runnable2) {
        context = new AlertDialog.Builder(context);
        context.setTitle((CharSequence)string);
        context.setMessage((CharSequence)string2);
        context.setPositiveButton((CharSequence)"Yes", new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n) {
                dialogInterface.cancel();
                if (runnable != null) {
                    runnable.run();
                }
            }
        });
        context.setNegativeButton((CharSequence)"No", new DialogInterface.OnClickListener(){

            public void onClick(DialogInterface dialogInterface, int n) {
                dialogInterface.cancel();
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
        context.show();
    }

    public static float convertDpToPixel(Context context, float f) {
        return f * ((float)context.getResources().getDisplayMetrics().densityDpi / 160.0f);
    }

    /*
     * Loose catch block
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static byte[] getAsset(Context object, String arrby) {
        Object var4_7 = null;
        byte[] arrby2 = null;
        Object object2 = null;
        object2 = object = object.getAssets().open((String)arrby);
        arrby2 = object;
        arrby2 = arrby = Utils.streamBytes((InputStream)object);
        if (object == null) return arrby2;
        try {
            object.close();
            return arrby;
        }
        catch (Exception exception) {
            return arrby;
        }
        catch (Exception exception) {
            arrby2 = object2;
            exception.printStackTrace();
            arrby2 = var4_7;
            if (object2 == null) return arrby2;
            try {
                object2.close();
                return null;
            }
            catch (Exception exception2) {
                return null;
            }
            catch (Throwable throwable) {
                if (arrby2 == null) throw throwable;
                try {
                    arrby2.close();
                }
                catch (Exception exception3) {
                    throw throwable;
                }
                do {
                    throw throwable;
                    break;
                } while (true);
            }
        }
    }

    public static String getByteFormat(long l) {
        float f = l;
        if (f >= 1.07374182E9f) {
            return String.format("%.2f ", Float.valueOf(f / 1.07374182E9f)) + "GB";
        }
        if (f >= 1048576.0f) {
            return String.format("%.2f ", Float.valueOf(f / 1048576.0f)) + "MB";
        }
        if (f >= 1024.0f) {
            return String.format("%.2f ", Float.valueOf(f / 1024.0f)) + "KB";
        }
        return String.format("%d ", l) + "B";
    }

    public static String getEncodedQuery(String string) {
        try {
            String string2 = URLEncoder.encode(string, "UTF-8");
            return string2;
        }
        catch (IOException iOException) {
            Log.e((String)TAG, (String)iOException.toString());
            return string;
        }
    }

    public static HttpClient getHttpClient() {
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpProtocolParams.setContentCharset((HttpParams)basicHttpParams, (String)"UTF-8");
        HttpProtocolParams.setHttpElementCharset((HttpParams)basicHttpParams, (String)"UTF-8");
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient((HttpParams)basicHttpParams);
        defaultHttpClient.getParams().setParameter("http.protocol.version", (Object)HttpVersion.HTTP_1_1);
        defaultHttpClient.getParams().setParameter("http.protocol.content-charset", (Object)"UTF-8");
        basicHttpParams.setBooleanParameter("http.protocol.expect-continue", false);
        return new DefaultHttpClient((HttpParams)basicHttpParams);
    }

    public static long getLong(String string) {
        try {
            long l = Long.parseLong(string);
            return l;
        }
        catch (Exception exception) {
            return 1L;
        }
    }

    public static String getSHA1(String string) {
        if (string == null) {
            return "";
        }
        byte[] arrby = MessageDigest.getInstance("SHA1");
        arrby.update(string.getBytes());
        arrby = arrby.digest();
        StringBuffer stringBuffer = new StringBuffer();
        int n = 0;
        do {
            if (n >= arrby.length) break;
            string = Integer.toHexString(arrby[n] & 255);
            while (string.length() < 2) {
                string = "0" + string;
            }
            stringBuffer.append(string);
            ++n;
            continue;
            break;
        } while (true);
        try {
            string = stringBuffer.toString();
            return string;
        }
        catch (NoSuchAlgorithmException noSuchAlgorithmException) {
            noSuchAlgorithmException.printStackTrace();
            return null;
        }
    }

    public static String getUTF(String string) {
        try {
            String string2 = new String(string.getBytes(), "UTF-8");
            return string2;
        }
        catch (Throwable throwable) {
            throw throwable;
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            return string;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static byte[] getUrl(String arrby) {
        byte[] arrby2 = null;
        byte[] arrby3 = null;
        HttpClient httpClient = Utils.getHttpClient();
        byte[] arrby4 = arrby3;
        byte[] arrby5 = arrby2;
        try {
            InputStream inputStream = httpClient.execute((HttpUriRequest)new HttpGet((String)arrby)).getEntity().getContent();
            arrby4 = arrby3;
            arrby5 = arrby2;
            arrby4 = arrby = Utils.streamBytes(inputStream);
            arrby5 = arrby;
            inputStream.close();
        }
        catch (IOException iOException) {
            Log.e((String)TAG, (String)iOException.toString());
            arrby = arrby4;
        }
        catch (Exception exception) {
            Log.e((String)TAG, (String)exception.toString());
            arrby = arrby5;
        }
        httpClient.getConnectionManager().shutdown();
        return arrby;
    }

    public static void hideKeyboard(Context context, View view) {
        if (view == null) {
            return;
        }
        ((InputMethodManager)context.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    public static boolean isOnline(Context context) {
        if ((context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo()) != null && context.isConnectedOrConnecting()) {
            return true;
        }
        return false;
    }

    public static boolean isValidJSON(String string) {
        boolean bl = false;
        string = string.trim();
        boolean bl2 = bl;
        if (string != null) {
            bl2 = bl;
            if (string.length() != 0) {
                bl2 = bl;
                if (string.charAt(0) == '{') {
                    bl2 = bl;
                    if (string.charAt(string.length() - 1) == '}') {
                        bl2 = true;
                    }
                }
            }
        }
        return bl2;
    }

    public static void sleeper(int n) {
        long l = n;
        try {
            Thread.sleep(l);
            return;
        }
        catch (InterruptedException interruptedException) {
            return;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public static byte[] streamBytes(InputStream var0) throws Exception {
        var4_6 = null;
        var2_7 /* !! */  = null;
        var5_12 = null;
        var3_13 = new ByteArrayOutputStream();
        try {
            var2_7 /* !! */  = new byte[16384];
            while ((var1_16 = var0.read(var2_7 /* !! */ , 0, var2_7 /* !! */ .length)) != -1) {
                var3_13.write(var2_7 /* !! */ , 0, var1_16);
            }
            var0 = var3_13.toByteArray();
            if (var3_13 == null) return var0;
            ** GOTO lbl18
        }
        catch (IOException var2_8) {
            var0 = var3_13;
            var3_13 = var2_8;
            ** GOTO lbl42
lbl18: // 1 sources:
            try {
                var3_13.close();
                return var0;
            }
            catch (Exception var2_9) {
                return var0;
            }
            catch (Exception var3_14) {
                block21 : {
                    var0 = var4_6;
                    break block21;
                    catch (Throwable var0_5) {
                        var2_7 /* !! */  = var3_13;
                        ** GOTO lbl-1000
                    }
                    catch (Exception var2_11) {
                        var0 = var3_13;
                        var3_13 = var2_11;
                    }
                }
                var2_7 /* !! */  = var0;
                Log.i((String)"Utils", (String)("inputStreamToByte Exception: " + var3_13.toString()));
                if (var0 == null) return null;
                try {
                    var0.close();
                    return null;
                }
                catch (Exception var0_1) {
                    return null;
                }
lbl42: // 2 sources:
                do {
                    var2_7 /* !! */  = var0;
                    try {
                        Log.i((String)"Utils", (String)("inputStreamToByte IOException: " + var3_13.toString()));
                        if (var0 == null) return null;
                    }
                    catch (Throwable var0_2) lbl-1000: // 2 sources:
                    {
                        if (var2_7 /* !! */  == null) throw var0_3;
                        try {
                            var2_7 /* !! */ .close();
                        }
                        catch (Exception var2_10) {
                            throw var0_3;
                        }
                        throw var0_3;
                    }
                    var0.close();
                    return null;
                    {
                        catch (Exception var0_4) {
                            return null;
                        }
                    }
                    break;
                } while (true);
            }
        }
        catch (IOException var3_15) {
            var0 = var5_12;
            ** continue;
        }
    }

    public static void toast(Context context, String string) {
        context = Toast.makeText((Context)context, (CharSequence)string, (int)1);
        context.setGravity(80, 0, 0);
        context.show();
    }

    public static void toastCenter(Context context, String string) {
        context = Toast.makeText((Context)context, (CharSequence)string, (int)1);
        context.setGravity(17, 0, 0);
        context.show();
    }

}
