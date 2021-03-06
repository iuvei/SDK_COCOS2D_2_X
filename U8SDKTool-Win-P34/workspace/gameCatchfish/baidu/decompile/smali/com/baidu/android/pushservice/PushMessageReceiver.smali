.class public abstract Lcom/baidu/android/pushservice/PushMessageReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static ACTION_LAPP_MESSAGE:Ljava/lang/String;

.field private static ACTION_LAPP_RECEIVE:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/android/pushservice/PushMessageReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/pushservice/PushMessageReceiver;->TAG:Ljava/lang/String;

    const-string v0, "com.baidu.android.pushservice.action.lapp.RECEIVE"

    sput-object v0, Lcom/baidu/android/pushservice/PushMessageReceiver;->ACTION_LAPP_RECEIVE:Ljava/lang/String;

    const-string v0, "com.baidu.android.pushservice.action.LAPP_MESSAGE"

    sput-object v0, Lcom/baidu/android/pushservice/PushMessageReceiver;->ACTION_LAPP_MESSAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onBind(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public onCheckBindState(Landroid/content/Context;ILjava/lang/String;Z)V
    .registers 5

    return-void
.end method

.method public abstract onDelTags(Landroid/content/Context;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onListTags(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onNotificationArrived(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onNotificationClicked(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    const/4 v1, 0x0

    const/4 v10, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.baidu.android.pushservice.action.MESSAGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.baidu.android.pushservice.action.LAPP_MESSAGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_21
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message_string"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "extra_extra_custom_content"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/android/pushservice/PushMessageReceiver;->onMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_3b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.baidu.android.pushservice.action.RECEIVE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/baidu/android/pushservice/PushMessageReceiver;->ACTION_LAPP_RECEIVE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2bc

    :cond_53
    const-string v0, "method"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "error_msg"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v0, ""

    const-string v4, "content"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_7e

    new-instance v0, Ljava/lang/String;

    const-string v4, "content"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    :cond_7e
    const-string v4, "com.baidu.android.pushservice.action.notification.ARRIVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    const-string v0, "notification_title"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification_content"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_extra_custom_content"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/baidu/android/pushservice/PushMessageReceiver;->onNotificationArrived(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_9d
    const-string v4, "method_bind"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ad

    const-string v4, "method_deal_lapp_bind_intent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14e

    :cond_ad
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    :try_start_b3
    const-string v1, "bindcache"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "request_id"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "response_params"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "appid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "channel_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "user_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v7, "real_bind"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_107

    const-string v7, "access_token"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "secret_key"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "access_token"

    invoke-interface {v1, v9, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v7, "secret_key"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_107
    const-string v7, "appid"

    invoke-interface {v1, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v7, "channel_id"

    invoke-interface {v1, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v7, "request_id"

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v7, "user_id"

    invoke-interface {v1, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v7, "bind_status"

    const/4 v8, 0x1

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v7, "currbindtime"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v1, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "version_code"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/baidu/android/pushservice/util/f;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    int-to-long v8, v7

    invoke-interface {v1, v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/android/pushservice/PushMessageReceiver;->onBind(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_140} :catch_142

    goto/16 :goto_8

    :catch_142
    move-exception v0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v10

    move-object v4, v10

    move-object v5, v10

    move-object v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/android/pushservice/PushMessageReceiver;->onBind(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_14e
    const-string v4, "method_unbind"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15e

    const-string v4, "method_lapp_unbind"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18f

    :cond_15e
    const-string v3, "bindcache"

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    :try_start_168
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "request_id"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/baidu/android/pushservice/PushMessageReceiver;->onUnbind(Landroid/content/Context;ILjava/lang/String;)V

    const-string v0, "bind_status"

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_17f
    .catch Lorg/json/JSONException; {:try_start_168 .. :try_end_17f} :catch_181

    goto/16 :goto_8

    :catch_181
    move-exception v0

    invoke-virtual {p0, p1, v2, v10}, Lcom/baidu/android/pushservice/PushMessageReceiver;->onUnbind(Landroid/content/Context;ILjava/lang/String;)V

    const-string v0, "bind_status"

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_8

    :cond_18f
    const-string v4, "method_get_lapp_bind_state"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a8

    const-string v0, "secret_key"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "lapp_bind_state"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/baidu/android/pushservice/PushMessageReceiver;->onCheckBindState(Landroid/content/Context;ILjava/lang/String;Z)V

    goto/16 :goto_8

    :cond_1a8
    const-string v4, "method_set_tags"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b8

    const-string v4, "method_set_lapp_tags"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22a

    :cond_1b8
    :try_start_1b8
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "request_id"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "error_msg"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1eb

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/android/pushservice/PushMessageReceiver;->onSetTags(Landroid/content/Context;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V
    :try_end_1de
    .catch Lorg/json/JSONException; {:try_start_1b8 .. :try_end_1de} :catch_1e0

    goto/16 :goto_8

    :catch_1e0
    move-exception v0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v10

    move-object v4, v10

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/android/pushservice/PushMessageReceiver;->onSetTags(Landroid/content/Context;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1eb
    :try_start_1eb
    const-string v0, "response_params"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "details"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_201
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_223

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "tag"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "result"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_21f

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_21c
    add-int/lit8 v1, v1, 0x1

    goto :goto_201

    :cond_21f
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21c

    :cond_223
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/android/pushservice/PushMessageReceiver;->onSetTags(Landroid/content/Context;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V
    :try_end_228
    .catch Lorg/json/JSONException; {:try_start_1eb .. :try_end_228} :catch_1e0

    goto/16 :goto_8

    :cond_22a
    const-string v4, "method_del_tags"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23a

    const-string v4, "method_del_lapp_tags"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_290

    :cond_23a
    :try_start_23a
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "request_id"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "response_params"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "details"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_25c
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_289

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v7, "tag"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "result"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_27a

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_277
    add-int/lit8 v0, v0, 0x1

    goto :goto_25c

    :cond_27a
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27d
    .catch Lorg/json/JSONException; {:try_start_23a .. :try_end_27d} :catch_27e

    goto :goto_277

    :catch_27e
    move-exception v0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v10

    move-object v4, v10

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/android/pushservice/PushMessageReceiver;->onDelTags(Landroid/content/Context;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_289
    move-object v0, p0

    move-object v1, p1

    :try_start_28b
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/android/pushservice/PushMessageReceiver;->onDelTags(Landroid/content/Context;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V
    :try_end_28e
    .catch Lorg/json/JSONException; {:try_start_28b .. :try_end_28e} :catch_27e

    goto/16 :goto_8

    :cond_290
    const-string v1, "method_listtags"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a0

    const-string v1, "method_list_lapp_tags"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_2a0
    :try_start_2a0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "request_id"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tags_list"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/baidu/android/pushservice/PushMessageReceiver;->onListTags(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;)V
    :try_end_2b4
    .catch Lorg/json/JSONException; {:try_start_2a0 .. :try_end_2b4} :catch_2b6

    goto/16 :goto_8

    :catch_2b6
    move-exception v0

    invoke-virtual {p0, p1, v2, v10, v10}, Lcom/baidu/android/pushservice/PushMessageReceiver;->onListTags(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_2bc
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.baidu.android.pushservice.action.notification.CLICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "notification_title"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification_content"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_extra_custom_content"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/baidu/android/pushservice/PushMessageReceiver;->onNotificationClicked(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method public abstract onSetTags(Landroid/content/Context;ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onUnbind(Landroid/content/Context;ILjava/lang/String;)V
.end method
