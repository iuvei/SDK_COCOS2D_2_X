.class public Lcom/tencent/android/tpush/common/e;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 53
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_19

    .line 58
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_1a

    move-result-object v0

    .line 59
    if-eqz v0, :cond_19

    move-object p2, v0

    .line 66
    :cond_19
    :goto_19
    return-object p2

    .line 63
    :catch_1a
    move-exception v0

    .line 64
    const-string v0, "TPush"

    const-string v1, "cann\'t not get accessid from META_DATA"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public static a(Landroid/content/Context;I)Lorg/json/JSONArray;
    .registers 9

    .prologue
    .line 71
    :try_start_0
    const-string v0, "android.permission.INTERNET"

    invoke-static {p0, v0}, Lcom/tencent/mid/util/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/tencent/mid/util/Util;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 75
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 77
    if-eqz v0, :cond_66

    .line 78
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    .line 79
    if-eqz v3, :cond_66

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_66

    .line 80
    new-instance v0, Lcom/tencent/android/tpush/common/f;

    invoke-direct {v0}, Lcom/tencent/android/tpush/common/f;-><init>()V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 92
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 93
    const/4 v0, 0x0

    move v2, v0

    :goto_35
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3d

    .line 94
    if-lt v2, p1, :cond_3f

    :cond_3d
    move-object v0, v1

    .line 112
    :goto_3e
    return-object v0

    .line 97
    :cond_3f
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 98
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 99
    const-string v5, "bs"

    iget-object v6, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v5, "ss"

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 93
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_35

    .line 107
    :cond_5f
    const-string v0, "TPush"

    const-string v1, "can not get the permisson of android.permission.INTERNET"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_66} :catch_68

    .line 112
    :cond_66
    :goto_66
    const/4 v0, 0x0

    goto :goto_3e

    .line 109
    :catch_68
    move-exception v0

    .line 110
    const-string v1, "TPush"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 21
    if-eqz p2, :cond_8

    .line 23
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_5} :catch_7

    .line 24
    const/4 v0, 0x1

    .line 28
    :goto_6
    return v0

    .line 25
    :catch_7
    move-exception v0

    .line 28
    :cond_8
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 34
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 35
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object p2

    .line 39
    :cond_a
    :goto_a
    return-object p2

    .line 37
    :catch_b
    move-exception v0

    goto :goto_a
.end method
