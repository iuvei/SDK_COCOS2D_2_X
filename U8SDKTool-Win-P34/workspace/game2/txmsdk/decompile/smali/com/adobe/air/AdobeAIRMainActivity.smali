.class public Lcom/adobe/air/AdobeAIRMainActivity;
.super Landroid/app/Activity;
.source "AdobeAIRMainActivity.java"

# interfaces
.implements Lcom/adobe/air/AndroidGcmResultReceiver$Receiver;


# static fields
.field private static final AIR_PROPERTIES_URL:Ljava/lang/String; = "airPropertiesUrl"

.field public static final ENABLE_MY_GAMES:Ljava/lang/String; = "EnableMyGames"

.field private static final MSG_ID:Ljava/lang/String; = "msgId"

.field private static final NEW_UI_ANALYTICS_URL:Ljava/lang/String; = "http://www.adobe.com/airgames/3/"

.field private static final NOTIFICATION_ANALYTICS_URL:Ljava/lang/String; = "https://www.adobe.com/gamepreview/?game=notification/notificationClicked.html_"

.field private static final PLAY_SERVICES_RESOLUTION_REQUEST:I = 0x2328

.field public static final PROPERTY_DEFAULT_ACTIVITY:Ljava/lang/String; = "AIRDefaultActivity"

.field private static final PROPERTY_ENABLE_MY_GAMES_PERCENTAGE:Ljava/lang/String; = "MyGamesPercentage"

.field private static final PROPERTY_FIRST_LAUNCH:Ljava/lang/String; = "firstLaunch"

.field private static final PROPERTY_ID:Ljava/lang/String; = "UA-54849355-1"

.field private static final PROPERTY_NEW_UI_PERCENTAGE:Ljava/lang/String; = "NewUIPercentage"

.field private static final PROPERTY_RANDOM_NO:Ljava/lang/String; = "AirRandomNumber"

.field public static RATE_LIMIT:J = 0x0L

.field public static final RESULT_RECEIVER:Ljava/lang/String; = "resultReceiver"

.field private static final TAG:Ljava/lang/String; = "AdobeAIRMainActivity"


# instance fields
.field private mAirPropsFileUrl:Ljava/lang/String;

.field private mAnalyticsWebView:Lcom/adobe/air/AdobeAIRWebView;

.field private mCtx:Landroid/content/Context;

.field private mEnableMyGamesThreshold:I

.field private mIsGameListDefaultActivity:Z

.field private mIsNewUISupported:Z

.field private mNewUIThreshold:I

.field private mNotificationWebView:Lcom/adobe/air/AdobeAIRWebView;

.field private mRandomNumber:I

.field private mReceiver:Lcom/adobe/air/AndroidGcmResultReceiver;

.field private mTracker:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/adobe/air/AdobeAIRMainActivity;->RATE_LIMIT:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x4b

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mCtx:Landroid/content/Context;

    iput v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNewUIThreshold:I

    iput v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mEnableMyGamesThreshold:I

    const-string v0, "http://s3-us-west-1.amazonaws.com/gamepreview/prod/airandroid/air.properties"

    iput-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mAirPropsFileUrl:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsNewUISupported:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsGameListDefaultActivity:Z

    iput-object v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mReceiver:Lcom/adobe/air/AndroidGcmResultReceiver;

    iput-object v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNotificationWebView:Lcom/adobe/air/AdobeAIRWebView;

    iput-object v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mAnalyticsWebView:Lcom/adobe/air/AdobeAIRWebView;

    iput-object v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/AdobeAIRMainActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mAirPropsFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/air/AdobeAIRMainActivity;)I
    .locals 1

    iget v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNewUIThreshold:I

    return v0
.end method

.method static synthetic access$102(Lcom/adobe/air/AdobeAIRMainActivity;I)I
    .locals 0

    iput p1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNewUIThreshold:I

    return p1
.end method

.method static synthetic access$202(Lcom/adobe/air/AdobeAIRMainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsGameListDefaultActivity:Z

    return p1
.end method

.method static synthetic access$300(Lcom/adobe/air/AdobeAIRMainActivity;)I
    .locals 1

    iget v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mRandomNumber:I

    return v0
.end method

.method static synthetic access$402(Lcom/adobe/air/AdobeAIRMainActivity;I)I
    .locals 0

    iput p1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mEnableMyGamesThreshold:I

    return p1
.end method

.method static synthetic access$500(Lcom/adobe/air/AdobeAIRMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->updateSharedPrefForDefaultActivity()V

    return-void
.end method

.method private configureTestEnv()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "airPropertiesUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mAirPropsFileUrl:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private copyActivityLevelPrefsToApplicationLevel()V
    .locals 8

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-class v0, Lcom/adobe/air/AdobeAIR;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/air/AdobeAIRMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    instance-of v5, v1, Ljava/lang/Long;

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v2, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_2
    instance-of v5, v1, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    instance-of v5, v1, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private decideDefaultActivity()V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsNewUISupported:Z

    if-eqz v2, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->isWidgetShown()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mRandomNumber:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mRandomNumber:I

    iget v3, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNewUIThreshold:I

    if-gt v2, v3, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsGameListDefaultActivity:Z

    :goto_2
    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->generateRandomNumber()I

    move-result v2

    iput v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mRandomNumber:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/16 v2, 0x64

    iput v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mRandomNumber:I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsGameListDefaultActivity:Z

    goto :goto_2
.end method

.method private decideDefaultActivityForNextLaunch()V
    .locals 2

    iget-boolean v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsNewUISupported:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/air/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->configureTestEnv()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adobe/air/AdobeAIRMainActivity$1;

    invoke-direct {v1, p0}, Lcom/adobe/air/AdobeAIRMainActivity$1;-><init>(Lcom/adobe/air/AdobeAIRMainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private generateRandomNumber()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    :goto_0
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0

    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    goto :goto_0
.end method

.method private declared-synchronized getTracker()Lcom/google/android/gms/analytics/Tracker;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->enableAutoActivityReports(Landroid/app/Application;)V

    const-string v1, "UA-54849355-1"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mTracker:Lcom/google/android/gms/analytics/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isFirstLaunch()Z
    .locals 3

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "firstLaunch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isWidgetShown()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "widgetShown"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "featuredWidgetShown"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private launchDefaultActivity()V
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-boolean v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsGameListDefaultActivity:Z

    if-eqz v2, :cond_0

    const-string v0, "com.adobe.air.AdobeAIR"

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/adobe/air/AdobeAIRMainActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v2, "com.adobe.mobile_playpanel.LeadingPageActivity"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/adobe/app/AppManager;->doesDeviceHaveExcessiveApps(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "EnableMyGames"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1
    new-instance v0, Lcom/adobe/air/AdobeAIRWebView;

    iget-object v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/adobe/air/AdobeAIRWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mAnalyticsWebView:Lcom/adobe/air/AdobeAIRWebView;

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mAnalyticsWebView:Lcom/adobe/air/AdobeAIRWebView;

    invoke-virtual {v0}, Lcom/adobe/air/AdobeAIRWebView;->createAnalyticsWebView()V

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mAnalyticsWebView:Lcom/adobe/air/AdobeAIRWebView;

    const-string v2, "http://www.adobe.com/airgames/3/"

    invoke-virtual {v0, v2}, Lcom/adobe/air/AdobeAIRWebView;->loadAnalyticsUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "EnableMyGames"

    iget v3, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mRandomNumber:I

    iget v4, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mEnableMyGamesThreshold:I

    if-gt v3, v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method private registerForNotifications()V
    .locals 3

    new-instance v0, Lcom/adobe/air/AndroidGcmResultReceiver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/adobe/air/AndroidGcmResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mReceiver:Lcom/adobe/air/AndroidGcmResultReceiver;

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mReceiver:Lcom/adobe/air/AndroidGcmResultReceiver;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidGcmResultReceiver;->setReceiver(Lcom/adobe/air/AndroidGcmResultReceiver$Receiver;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mCtx:Landroid/content/Context;

    const-class v2, Lcom/adobe/air/AndroidGcmRegistrationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "resultReceiver"

    iget-object v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mReceiver:Lcom/adobe/air/AndroidGcmResultReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mCtx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private updateSharedPrefForDefaultActivity()V
    .locals 3

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "AIRDefaultActivity"

    iget-boolean v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsGameListDefaultActivity:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-boolean v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsNewUISupported:Z

    if-eqz v1, :cond_0

    const-string v1, "AirRandomNumber"

    iget v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mRandomNumber:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "NewUIPercentage"

    iget v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNewUIThreshold:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {p0}, Lcom/adobe/app/AppManager;->doesDeviceHaveExcessiveApps(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MyGamesPercentage"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_1
    const-string v1, "MyGamesPercentage"

    iget v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mEnableMyGamesThreshold:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private updateSharedPrefForInitialLaunch()V
    .locals 3

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firstLaunch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private verifyNewUISupport()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsNewUISupported:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->launchDefaultActivity()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mCtx:Landroid/content/Context;

    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->copyActivityLevelPrefsToApplicationLevel()V

    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->verifyNewUISupport()V

    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->isFirstLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->updateSharedPrefForInitialLaunch()V

    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->decideDefaultActivity()V

    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->updateSharedPrefForDefaultActivity()V

    :goto_0
    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/air/AdobeAIRMainActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->getTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    const-string v1, "AdobeAIRMainActivity"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/air/ShakeListenerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/adobe/air/AdobeAIRMainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "AIRDefaultActivity"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsGameListDefaultActivity:Z

    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->isWidgetShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iput v3, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mRandomNumber:I

    iput-boolean v3, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsGameListDefaultActivity:Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "AIRDefaultActivity"

    iget-boolean v3, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsGameListDefaultActivity:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    const-string v1, "NewUIPercentage"

    iget v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNewUIThreshold:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNewUIThreshold:I

    const-string v1, "MyGamesPercentage"

    iget v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mEnableMyGamesThreshold:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mEnableMyGamesThreshold:I

    goto :goto_0

    :cond_1
    const-string v1, "AirRandomNumber"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mRandomNumber:I

    goto :goto_1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "gameUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "gameUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adobe/air/AdobeAIRWebView;

    iget-object v3, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mCtx:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/adobe/air/AdobeAIRWebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNotificationWebView:Lcom/adobe/air/AdobeAIRWebView;

    iget-object v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNotificationWebView:Lcom/adobe/air/AdobeAIRWebView;

    invoke-virtual {v2}, Lcom/adobe/air/AdobeAIRWebView;->create()V

    iget-object v2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNotificationWebView:Lcom/adobe/air/AdobeAIRWebView;

    invoke-virtual {v2, v1}, Lcom/adobe/air/AdobeAIRWebView;->loadUrl(Ljava/lang/String;)V

    const-string v1, "msgId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNotificationWebView:Lcom/adobe/air/AdobeAIRWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://www.adobe.com/gamepreview/?game=notification/notificationClicked.html_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msgId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/air/AdobeAIRWebView;->loadAnalyticsUrl(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->decideDefaultActivityForNextLaunch()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->launchDefaultActivity()V

    goto :goto_0
.end method

.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0x2328

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    return-void
.end method
