.class public Lcom/baidu/android/pushservice/PushSettings;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    const-string v1, "com.baidu.pushservice.channel_id"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/f;->q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)V
    .registers 3

    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    const-string v1, "com.baidu.pushservice.cur_period"

    invoke-static {v0, v1, p0}, Lcom/baidu/android/pushservice/util/f;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(J)V
    .registers 6

    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    if-nez v0, :cond_c

    const-string v0, "PushSettings"

    const-string v1, "setLastSendStatisticTime mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    const-string v1, "com.baidu.pushservice.cst"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/util/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1

    sput-object p0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    if-nez p0, :cond_a

    const-string v0, "PushSettings"

    const-string v1, "removeUninstalledAppLbsSwitch mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.baidu.pushservice.le"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_31
    if-ge v0, v3, :cond_55

    aget-object v4, v2, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    :goto_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_3e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    :cond_55
    const-string v0, "com.baidu.pushservice.le"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/android/pushservice/util/f;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_b

    const-string v0, "PushSettings"

    const-string v1, "setLbsEnabled mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v0, "PushSettings"

    const-string v1, "mContext.getPackageName() == null"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_1d
    const-string v1, "com.baidu.pushservice.le"

    invoke-static {p0, v1}, Lcom/baidu/android/pushservice/util/f;->q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_3a
    if-ge v1, v4, :cond_65

    aget-object v5, v3, v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    const/4 v0, 0x1

    if-nez p1, :cond_4e

    :goto_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_4e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4b

    :cond_65
    if-nez v0, :cond_81

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_81
    const-string v0, "com.baidu.pushservice.le"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/android/pushservice/util/f;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_8b
    if-eqz p1, :cond_a

    const-string v0, "com.baidu.pushservice.le"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/android/pushservice/util/f;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    const-string v1, "com.baidu.pushservice.channel_id"

    invoke-static {v0, v1, p0}, Lcom/baidu/android/pushservice/util/f;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9

    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    if-nez v0, :cond_c

    const-string v0, "PushSettings"

    const-string v1, "setApiInfo mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    const/16 v0, 0x9

    if-ne p1, v0, :cond_6c

    :try_start_10
    invoke-static {}, Lcom/baidu/android/pushservice/PushSettings;->j()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.baidu.pushservice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.baidu.pushservice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushSettings;->a(Ljava/util/HashMap;)V

    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.baidu.pushservice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/util/f;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_62} :catch_63

    goto :goto_b

    :catch_63
    move-exception v0

    const-string v0, "PushSettings"

    const-string v1, "set appInfo exception"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_6c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_7d
    const-string v1, "2011121211143000"

    const-string v2, "9876543210123456"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/baidu/frontia/a/e/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/e/b;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_8e} :catch_ed

    move-result-object v0

    :goto_8f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x0

    :try_start_96
    invoke-static {}, Lcom/baidu/android/pushservice/PushSettings;->j()Ljava/util/HashMap;
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_99} :catch_f8

    move-result-object v1

    :goto_9a
    if-nez v1, :cond_a1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_a1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.baidu.pushservice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.baidu.pushservice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/baidu/android/pushservice/PushSettings;->a(Ljava/util/HashMap;)V

    :cond_d3
    sget-object v1, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.baidu.pushservice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/baidu/android/pushservice/util/f;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :catch_ed
    move-exception v0

    const-string v0, ""

    const-string v1, "PushSettings"

    const-string v2, "setAppInfo exception"

    invoke-static {v1, v2}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8f

    :catch_f8
    move-exception v2

    const-string v3, "PushSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set AppInfo exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9a
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    if-nez v0, :cond_c

    const-string v0, "PushSettings"

    const-string v1, "setFrontiaUser mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.baidu.pushservice.fu"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_71

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.baidu.pushservice.fu"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_4c} :catch_4d

    goto :goto_b

    :catch_4d
    move-exception v0

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "PushSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_71
    :try_start_71
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_76
    .catch Lorg/json/JSONException; {:try_start_71 .. :try_end_76} :catch_4d

    goto :goto_23
.end method

.method private static a(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "baidu/pushservice/files"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_18
    new-instance v1, Ljava/io/File;

    const-string v2, "baidu/pushservice/files/apps"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    :goto_32
    return-void

    :catch_33
    move-exception v0

    const-string v0, "PushSettings"

    const-string v1, "setAppInfo read file exception"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    const-string v1, "com.baidu.pushservice.channel_token_rsa"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/f;->q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    if-nez v0, :cond_e

    const-string v0, "PushSettings"

    const-string v1, "setApiInfo mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.baidu.pushservice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/f;->q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4c

    :try_start_2d
    invoke-static {}, Lcom/baidu/android/pushservice/PushSettings;->j()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_6c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.baidu.pushservice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4c} :catch_6f

    :cond_4c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_73

    :try_start_52
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/frontia/a/e/b;->a([B)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    const-string v2, "2011121211143000"

    const-string v3, "9876543210123456"

    invoke-static {v2, v3, v1}, Lcom/baidu/frontia/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_67} :catch_68

    goto :goto_d

    :catch_68
    move-exception v0

    const-string v0, ""

    goto :goto_d

    :cond_6c
    :try_start_6c
    const-string v0, ""
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6e} :catch_6f

    goto :goto_d

    :catch_6f
    move-exception v0

    const-string v0, ""

    goto :goto_d

    :cond_73
    const-string v0, ""

    goto :goto_d
.end method

.method public static b(I)V
    .registers 3

    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    if-nez v0, :cond_c

    const-string v0, "PushSettings"

    const-string v1, "setStatisticSendDisabled mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.baidu.pushservice.sd"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_b
.end method

.method public static b(J)V
    .registers 4

    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    if-nez v0, :cond_c

    const-string v0, "PushSettings"

    const-string v1, "setLastSendStatisticTime mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.baidu.pushservice.st"

    invoke-static {v0, v1, p0, p1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    const-string v2, "com.baidu.pushservice.PushSettings.connect_state"

    invoke-static {p0, v2}, Lcom/baidu/android/pushservice/util/f;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_b} :catch_11

    move-result v2

    if-ne v2, v0, :cond_f

    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e

    :catch_11
    move-exception v0

    const-string v0, "PushSettings"

    const-string v2, "com.baidu.pushservice.PushSettings.connect_state setting is not set."

    invoke-static {v0, v2}, Lcom/baidu/frontia/a/b/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_e
.end method

.method public static c(Landroid/content/Context;)J
    .registers 5

    const-wide/16 v0, 0x0

    if-nez p0, :cond_c

    const-string v2, "PushSettings"

    const-string v3, "getLastSendStatisticTime mContext == null"

    invoke-static {v2, v3}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-wide v0

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.baidu.pushservice.cst"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_15
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_c .. :try_end_15} :catch_17

    move-result-wide v0

    goto :goto_b

    :catch_17
    move-exception v2

    const-string v2, "PushSettings"

    const-string v3, "Setting not found: com.baidu.pushservice.cst"

    invoke-static {v2, v3}, Lcom/baidu/frontia/a/b/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public static c(I)V
    .registers 4

    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    if-nez v0, :cond_c

    const-string v0, "PushSettings"

    const-string v1, "setCurPeriod mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    const-string v1, "com.baidu.pushservice.lsi"

    mul-int/lit16 v2, p0, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/util/f;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_b
.end method

.method public static c(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    if-nez v0, :cond_c

    const-string v0, "PushSettings"

    const-string v1, "setChannelToken mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    const-string v1, "com.baidu.pushservice.channel_token_rsa"

    invoke-static {v0, v1, p0}, Lcom/baidu/android/pushservice/util/f;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public static c()Z
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    :try_start_7
    sget-object v2, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    const-string v3, "com.baidu.android.pushservice.PushSettings.debug_mode"

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/util/f;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_12
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_12} :catch_17

    move-result v2

    if-ne v2, v1, :cond_6

    move v0, v1

    goto :goto_6

    :catch_17
    move-exception v1

    goto :goto_6
.end method

.method public static d()I
    .registers 3

    const/4 v0, 0x0

    sget-object v1, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    if-nez v1, :cond_d

    const-string v1, "PushSettings"

    const-string v2, "getCurPeriod mContext == null"

    invoke-static {v1, v2}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    return v0

    :cond_d
    :try_start_d
    sget-object v1, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    const-string v2, "com.baidu.pushservice.cur_period"

    invoke-static {v1, v2}, Lcom/baidu/android/pushservice/util/f;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_18
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_d .. :try_end_18} :catch_1a

    move-result v0

    goto :goto_c

    :catch_1a
    move-exception v1

    goto :goto_c
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    if-nez v0, :cond_e

    const-string v0, "PushSettings"

    const-string v1, "getLbsSendInterval mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.baidu.pushservice.fu"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string v0, ""

    :try_start_22
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_2a} :catch_2c

    move-result-object v0

    goto :goto_d

    :catch_2c
    move-exception v1

    const-string v2, "PushSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_4a
    const-string v0, ""

    goto :goto_d
.end method

.method public static d(Landroid/content/Context;)V
    .registers 3

    if-nez p0, :cond_9

    const-string v0, "PushSettings"

    const-string v1, "tofms mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v0, "com.baidu.pushservice.lms"

    const-string v1, "off"

    invoke-static {p0, v0, v1}, Lcom/baidu/android/pushservice/util/f;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e()J
    .registers 4

    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.baidu.pushservice.st"

    const-wide/32 v2, 0x2932e00

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static e(Landroid/content/Context;)V
    .registers 3

    if-nez p0, :cond_9

    const-string v0, "PushSettings"

    const-string v1, "toms mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v0, "com.baidu.pushservice.lms"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/baidu/android/pushservice/util/f;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static enableDebugMode(Landroid/content/Context;Z)V
    .registers 4

    if-eqz p1, :cond_9

    const-string v0, "com.baidu.android.pushservice.PushSettings.debug_mode"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/baidu/android/pushservice/util/f;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_8
    return-void

    :cond_9
    const-string v0, "com.baidu.android.pushservice.PushSettings.debug_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/baidu/android/pushservice/util/f;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_8
.end method

.method public static f()I
    .registers 3

    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.baidu.pushservice.sd"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static f(Landroid/content/Context;)V
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_b

    const-string v0, "PushSettings"

    const-string v1, "refreshLbsSwitchInfo mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    const-string v1, "com.baidu.pushservice.le"

    invoke-static {p0, v1}, Lcom/baidu/android/pushservice/util/f;->q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    array-length v5, v3

    move v1, v0

    :goto_2c
    if-ge v1, v5, :cond_5e

    aget-object v6, v3, v1

    const/4 v0, 0x0

    const/4 v7, 0x0

    :try_start_32
    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_32 .. :try_end_35} :catch_3c

    move-result-object v0

    :goto_36
    if-nez v0, :cond_47

    :goto_38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2c

    :catch_3c
    move-exception v7

    const-string v8, "PushSettings"

    invoke-static {v7}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/baidu/frontia/a/b/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    :cond_5e
    const-string v0, "com.baidu.pushservice.le"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/android/pushservice/util/f;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static g()I
    .registers 3

    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    if-nez v0, :cond_d

    const-string v0, "PushSettings"

    const-string v1, "getLbsSendInterval mContext == null"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.baidu.pushservice.lsi"

    const v2, 0x1b7740

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_c
.end method

.method public static h()Z
    .registers 2

    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    const-string v1, "com.baidu.pushservice.le"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/f;->q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static i()Z
    .registers 2

    sget-object v0, Lcom/baidu/android/pushservice/PushSettings;->a:Landroid/content/Context;

    const-string v1, "com.baidu.pushservice.lms"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/f;->q(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static j()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/StreamCorruptedException;,
            Ljava/io/IOException;,
            Ljava/io/OptionalDataException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "baidu/pushservice/files"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_18
    new-instance v0, Ljava/io/File;

    const-string v2, "apps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_27

    const/4 v0, 0x0

    :cond_26
    :goto_26
    return-object v0

    :cond_27
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v2, :cond_41

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    :cond_41
    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_26
.end method
