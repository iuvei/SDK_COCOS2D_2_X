.class public Lcom/tencent/stat/StatNativeCrashReport;
.super Ljava/lang/Object;


# static fields
.field public static final PRE_TAG_TOMBSTONE_FNAME:Ljava/lang/String; = "tombstone_"

.field static a:Lcom/tencent/stat/StatNativeCrashReport;

.field private static b:Lcom/tencent/stat/common/StatLogger;

.field private static d:Z

.field private static e:Z

.field private static f:Ljava/lang/String;

.field private static g:Z


# instance fields
.field private volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/stat/common/k;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    new-instance v0, Lcom/tencent/stat/StatNativeCrashReport;

    invoke-direct {v0}, Lcom/tencent/stat/StatNativeCrashReport;-><init>()V

    sput-object v0, Lcom/tencent/stat/StatNativeCrashReport;->a:Lcom/tencent/stat/StatNativeCrashReport;

    sput-boolean v1, Lcom/tencent/stat/StatNativeCrashReport;->d:Z

    sput-boolean v1, Lcom/tencent/stat/StatNativeCrashReport;->e:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/stat/StatNativeCrashReport;->f:Ljava/lang/String;

    sput-boolean v1, Lcom/tencent/stat/StatNativeCrashReport;->g:Z

    :try_start_17
    const-string v0, "MtaNativeCrash"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/stat/StatNativeCrashReport;->g:Z
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    sput-boolean v1, Lcom/tencent/stat/StatNativeCrashReport;->d:Z

    sget-object v0, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "can\'t find libMtaNativeCrash.so, NativeCrash report disable."

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    goto :goto_1f
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/stat/StatNativeCrashReport;->c:Z

    return-void
.end method

.method static a(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_5
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1d} :catch_1e

    goto :goto_f

    :catch_1e
    move-exception v0

    sget-object v2, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    :goto_24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_29
    :try_start_29
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_1e

    goto :goto_24
.end method

.method static a(Landroid/content/Context;)Ljava/util/LinkedHashSet;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p0}, Lcom/tencent/stat/StatNativeCrashReport;->getTombstonesDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_66

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_66

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_66

    array-length v3, v2

    const/4 v0, 0x0

    :goto_20
    if-ge v0, v3, :cond_66

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tombstone_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isDebugEnable()Z

    move-result v5

    if-eqz v5, :cond_5c

    sget-object v5, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get tombstone file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    :cond_5c
    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_66
    return-object v1
.end method

.method static b(Ljava/io/File;)J
    .registers 5

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tombstone_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v0, 0x0

    :try_start_e
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_15} :catch_17

    move-result-wide v0

    :goto_16
    return-wide v0

    :catch_17
    move-exception v2

    sget-object v3, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v3, v2}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method public static doNativeCrashTest()V
    .registers 2

    sget-boolean v0, Lcom/tencent/stat/StatNativeCrashReport;->g:Z

    if-nez v0, :cond_c

    sget-object v0, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "libMtaNativeCrash.so not loaded."

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->warn(Ljava/lang/Object;)V

    :goto_b
    return-void

    :cond_c
    sget-object v0, Lcom/tencent/stat/StatNativeCrashReport;->a:Lcom/tencent/stat/StatNativeCrashReport;

    invoke-virtual {v0}, Lcom/tencent/stat/StatNativeCrashReport;->makeJniCrash()Ljava/lang/String;

    goto :goto_b
.end method

.method public static getTombstonesDir(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/tencent/stat/StatNativeCrashReport;->f:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, "__mta_tombstone__"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/tencent/stat/common/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/stat/StatNativeCrashReport;->f:Ljava/lang/String;

    :cond_e
    sget-object v0, Lcom/tencent/stat/StatNativeCrashReport;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static initNativeCrash(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    sget-boolean v0, Lcom/tencent/stat/StatNativeCrashReport;->g:Z

    if-nez v0, :cond_c

    sget-object v0, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "libMtaNativeCrash.so not loaded."

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->warn(Ljava/lang/Object;)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    sget-object v0, Lcom/tencent/stat/StatNativeCrashReport;->a:Lcom/tencent/stat/StatNativeCrashReport;

    iget-boolean v0, v0, Lcom/tencent/stat/StatNativeCrashReport;->c:Z

    if-nez v0, :cond_b

    if-nez p1, :cond_1f

    :try_start_14
    const-string v0, "tombstones"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    :cond_1f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_4d

    sget-object v0, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The length of tombstones dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t exceeds 200 bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_45} :catch_46

    goto :goto_b

    :catch_46
    move-exception v0

    sget-object v1, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    goto :goto_b

    :cond_4d
    :try_start_4d
    sput-object p1, Lcom/tencent/stat/StatNativeCrashReport;->f:Ljava/lang/String;

    const-string v0, "__mta_tombstone__"

    invoke-static {p0, v0, p1}, Lcom/tencent/stat/common/p;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/stat/StatNativeCrashReport;->setNativeCrashEnable(Z)V

    sget-object v0, Lcom/tencent/stat/StatNativeCrashReport;->a:Lcom/tencent/stat/StatNativeCrashReport;

    invoke-virtual {v0, p1}, Lcom/tencent/stat/StatNativeCrashReport;->initJNICrash(Ljava/lang/String;)Z

    sget-object v0, Lcom/tencent/stat/StatNativeCrashReport;->a:Lcom/tencent/stat/StatNativeCrashReport;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/stat/StatNativeCrashReport;->c:Z

    invoke-static {}, Lcom/tencent/stat/StatConfig;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "initNativeCrash success."

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_6f} :catch_46

    goto :goto_b
.end method

.method public static isNativeCrashDebugEnable()Z
    .registers 1

    sget-boolean v0, Lcom/tencent/stat/StatNativeCrashReport;->e:Z

    return v0
.end method

.method public static isNativeCrashEnable()Z
    .registers 1

    sget-boolean v0, Lcom/tencent/stat/StatNativeCrashReport;->d:Z

    return v0
.end method

.method public static onNativeCrashHappened()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "MTA has caught a native crash, java stack:\n"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_c} :catch_d

    :goto_c
    return-object v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static setNativeCrashDebugEnable(Z)V
    .registers 3

    sget-boolean v0, Lcom/tencent/stat/StatNativeCrashReport;->g:Z

    if-nez v0, :cond_c

    sget-object v0, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "libMtaNativeCrash.so not loaded."

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->warn(Ljava/lang/Object;)V

    :goto_b
    return-void

    :cond_c
    :try_start_c
    sget-object v0, Lcom/tencent/stat/StatNativeCrashReport;->a:Lcom/tencent/stat/StatNativeCrashReport;

    invoke-virtual {v0, p0}, Lcom/tencent/stat/StatNativeCrashReport;->enableNativeCrashDebug(Z)V

    sput-boolean p0, Lcom/tencent/stat/StatNativeCrashReport;->e:Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_b

    :catch_14
    move-exception v0

    sget-object v1, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public static setNativeCrashEnable(Z)V
    .registers 3

    sget-boolean v0, Lcom/tencent/stat/StatNativeCrashReport;->g:Z

    if-nez v0, :cond_c

    sget-object v0, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    const-string v1, "libMtaNativeCrash.so not loaded."

    invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->warn(Ljava/lang/Object;)V

    :goto_b
    return-void

    :cond_c
    :try_start_c
    sget-object v0, Lcom/tencent/stat/StatNativeCrashReport;->a:Lcom/tencent/stat/StatNativeCrashReport;

    invoke-virtual {v0, p0}, Lcom/tencent/stat/StatNativeCrashReport;->enableNativeCrash(Z)V

    sput-boolean p0, Lcom/tencent/stat/StatNativeCrashReport;->d:Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_b

    :catch_14
    move-exception v0

    sget-object v1, Lcom/tencent/stat/StatNativeCrashReport;->b:Lcom/tencent/stat/common/StatLogger;

    invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V

    goto :goto_b
.end method


# virtual methods
.method public native enableNativeCrash(Z)V
.end method

.method public native enableNativeCrashDebug(Z)V
.end method

.method public native initJNICrash(Ljava/lang/String;)Z
.end method

.method public native makeJniCrash()Ljava/lang/String;
.end method

.method public native stringFromJNI()Ljava/lang/String;
.end method
