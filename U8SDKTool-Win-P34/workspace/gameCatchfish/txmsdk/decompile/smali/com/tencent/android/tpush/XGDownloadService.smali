.class public Lcom/tencent/android/tpush/XGDownloadService;
.super Landroid/app/Service;
.source "ProGuard"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/io/File;

.field private d:Ljava/io/File;

.field private e:Landroid/app/NotificationManager;

.field private f:Landroid/app/Notification;

.field private g:Landroid/content/Intent;

.field private h:Landroid/app/PendingIntent;

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->a:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->b:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/tencent/android/tpush/XGDownloadService;->c:Ljava/io/File;

    .line 33
    iput-object v1, p0, Lcom/tencent/android/tpush/XGDownloadService;->d:Ljava/io/File;

    .line 36
    iput-object v1, p0, Lcom/tencent/android/tpush/XGDownloadService;->e:Landroid/app/NotificationManager;

    .line 37
    iput-object v1, p0, Lcom/tencent/android/tpush/XGDownloadService;->f:Landroid/app/Notification;

    .line 39
    iput-object v1, p0, Lcom/tencent/android/tpush/XGDownloadService;->g:Landroid/content/Intent;

    .line 40
    iput-object v1, p0, Lcom/tencent/android/tpush/XGDownloadService;->h:Landroid/app/PendingIntent;

    .line 43
    new-instance v0, Lcom/tencent/android/tpush/a;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/a;-><init>(Lcom/tencent/android/tpush/XGDownloadService;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->i:Landroid/os/Handler;

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/XGDownloadService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tencent/android/tpush/XGDownloadService;->h:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/android/tpush/XGDownloadService;)Ljava/io/File;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->d:Ljava/io/File;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/android/tpush/XGDownloadService;)Landroid/app/Notification;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->f:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/android/tpush/XGDownloadService;)Landroid/app/PendingIntent;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->h:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/android/tpush/XGDownloadService;)Landroid/app/NotificationManager;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->e:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/android/tpush/XGDownloadService;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/android/tpush/XGDownloadService;)Ljava/io/File;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->c:Ljava/io/File;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/android/tpush/XGDownloadService;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/File;I)J
    .registers 21

    .prologue
    .line 122
    const/4 v7, 0x0

    .line 124
    const-wide/16 v8, 0x0

    .line 127
    const/4 v3, 0x0

    .line 128
    const/4 v5, 0x0

    .line 129
    const/4 v4, 0x0

    .line 132
    :try_start_6
    new-instance v2, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_c8

    .line 134
    :try_start_13
    const-string v3, "User-Agent"

    const-string v6, "PacificHttpClient"

    invoke-virtual {v2, v3, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 141
    const/16 v3, 0x4e20

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 142
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v10

    .line 143
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v6, 0x194

    if-ne v3, v6, :cond_50

    .line 144
    new-instance v3, Ljava/lang/Exception;

    const-string v6, "fail!"

    invoke-direct {v3, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_38
    .catchall {:try_start_13 .. :try_end_38} :catchall_38

    .line 166
    :catchall_38
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v2

    move-object/from16 v2, v16

    :goto_40
    if-eqz v5, :cond_45

    .line 167
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 169
    :cond_45
    if-eqz v4, :cond_4a

    .line 170
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 172
    :cond_4a
    if-eqz v3, :cond_4f

    .line 173
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_4f
    throw v2

    .line 146
    :cond_50
    :try_start_50
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_38

    move-result-object v6

    .line 147
    :try_start_54
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_d1

    .line 148
    const/16 v3, 0x1000

    :try_start_5e
    new-array v4, v3, [B

    move v3, v7

    .line 150
    :cond_61
    :goto_61
    invoke-virtual {v6, v4}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_b8

    .line 151
    const/4 v11, 0x0

    invoke-virtual {v5, v4, v11, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 152
    int-to-long v12, v7

    add-long/2addr v8, v12

    .line 154
    if-eqz v3, :cond_79

    const-wide/16 v12, 0x64

    mul-long/2addr v12, v8

    int-to-long v14, v10

    div-long/2addr v12, v14

    long-to-int v7, v12

    add-int/lit8 v7, v7, -0xa

    if-le v7, v3, :cond_61

    .line 156
    :cond_79
    add-int/lit8 v3, v3, 0xa

    .line 157
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/android/tpush/XGDownloadService;->f:Landroid/app/Notification;

    const-string v11, "\u6b63\u5728\u4e0b\u8f7d"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    long-to-int v13, v8

    mul-int/lit8 v13, v13, 0x64

    div-int/2addr v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/android/tpush/XGDownloadService;->h:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    invoke-virtual {v7, v0, v11, v12, v13}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/android/tpush/XGDownloadService;->e:Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/android/tpush/XGDownloadService;->f:Landroid/app/Notification;

    move/from16 v0, p3

    invoke-virtual {v7, v0, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_ae
    .catchall {:try_start_5e .. :try_end_ae} :catchall_af

    goto :goto_61

    .line 166
    :catchall_af
    move-exception v3

    move-object v4, v6

    move-object/from16 v16, v5

    move-object v5, v2

    move-object v2, v3

    move-object/from16 v3, v16

    goto :goto_40

    :cond_b8
    if-eqz v2, :cond_bd

    .line 167
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 169
    :cond_bd
    if-eqz v6, :cond_c2

    .line 170
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 172
    :cond_c2
    if-eqz v5, :cond_c7

    .line 173
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 176
    :cond_c7
    return-wide v8

    .line 166
    :catchall_c8
    move-exception v2

    move-object/from16 v16, v4

    move-object v4, v5

    move-object v5, v3

    move-object/from16 v3, v16

    goto/16 :goto_40

    :catchall_d1
    move-exception v3

    move-object v5, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    goto/16 :goto_40
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 183
    const-string v0, "packageDownloadUrl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->b:Ljava/lang/String;

    .line 187
    :try_start_9
    const-string v2, "NOTIFY_ID"

    .line 188
    const/4 v0, 0x0

    invoke-static {p0, v2, v0}, Lcom/tencent/android/tpush/common/m;->a(Landroid/content/Context;Ljava/lang/String;I)I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_f} :catch_99

    move-result v0

    .line 189
    const v3, 0x7ffffffe

    if-lt v0, v3, :cond_16

    move v0, v1

    .line 192
    :cond_16
    add-int/lit8 v1, v0, 0x1

    :try_start_18
    invoke-static {p0, v2, v1}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_a7

    move v1, v0

    .line 196
    :goto_1c
    invoke-static {}, Lcom/tencent/android/tpush/service/d/d;->b()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 197
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "app/download/"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->c:Ljava/io/File;

    .line 199
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/android/tpush/XGDownloadService;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadApp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->d:Ljava/io/File;

    .line 203
    :cond_55
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/XGDownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->e:Landroid/app/NotificationManager;

    .line 204
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->f:Landroid/app/Notification;

    .line 206
    iget-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->f:Landroid/app/Notification;

    invoke-virtual {p0}, Lcom/tencent/android/tpush/XGDownloadService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v2, v0, Landroid/app/Notification;->icon:I

    .line 207
    iget-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->f:Landroid/app/Notification;

    const-string v2, "\u5f00\u59cb\u4e0b\u8f7d"

    iput-object v2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 208
    iget-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->f:Landroid/app/Notification;

    const-string v2, "\u4e0b\u8f7d\u5e94\u7528"

    const-string v3, "0%"

    iget-object v4, p0, Lcom/tencent/android/tpush/XGDownloadService;->h:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 211
    iget-object v0, p0, Lcom/tencent/android/tpush/XGDownloadService;->e:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/tencent/android/tpush/XGDownloadService;->f:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 213
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v2, Lcom/tencent/android/tpush/b;

    invoke-direct {v2, p0, p1, v1}, Lcom/tencent/android/tpush/b;-><init>(Lcom/tencent/android/tpush/XGDownloadService;Landroid/content/Intent;I)V

    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;)Z

    .line 216
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 193
    :catch_99
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 194
    :goto_9d
    const-string v2, "TPush"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v0

    goto/16 :goto_1c

    .line 193
    :catch_a7
    move-exception v1

    goto :goto_9d
.end method
