.class public final Lcom/baidu/wallet/core/b/a;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/core/b/a$1;,
        Lcom/baidu/wallet/core/b/a$a;,
        Lcom/baidu/wallet/core/b/a$b;
    }
.end annotation


# static fields
.field private static a:Lcom/baidu/wallet/core/b/a;


# instance fields
.field private b:Landroid/content/Context;

.field private final c:Landroid/app/DownloadManager;

.field private final d:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/core/b/a;->b:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/b/a;->d:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/baidu/wallet/core/b/a;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/baidu/wallet/core/b/a;->b:Landroid/content/Context;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/baidu/wallet/core/b/a;->c:Landroid/app/DownloadManager;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/wallet/core/b/a;
    .registers 2

    sget-object v0, Lcom/baidu/wallet/core/b/a;->a:Lcom/baidu/wallet/core/b/a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/baidu/wallet/core/b/a;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/core/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/wallet/core/b/a;->a:Lcom/baidu/wallet/core/b/a;

    :cond_b
    sget-object v0, Lcom/baidu/wallet/core/b/a;->a:Lcom/baidu/wallet/core/b/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ZZZ)J
    .registers 10

    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-wide/16 v0, -0x1

    :goto_12
    return-wide v0

    :cond_13
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    if-eqz p5, :cond_47

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    :goto_22
    invoke-virtual {v1, p3}, Landroid/app/DownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    invoke-virtual {v1, p4}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    iget-object v0, p0, Lcom/baidu/wallet/core/b/a;->c:Landroid/app/DownloadManager;

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    goto :goto_12

    :cond_47
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    goto :goto_22
.end method

.method public a(J)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/wallet/core/b/a;->c:Landroid/app/DownloadManager;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    return-void
.end method

.method public a(Landroid/content/Context;JLcom/baidu/wallet/core/b/a$b;)V
    .registers 13

    if-eqz p4, :cond_8

    const-wide/16 v0, -0x1

    cmp-long v0, v0, p2

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/baidu/wallet/core/b/a;->d:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/b/a$a;

    if-nez v0, :cond_4c

    new-instance v1, Lcom/baidu/wallet/core/b/a$a;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/baidu/wallet/core/b/a$a;-><init>(Lcom/baidu/wallet/core/b/a;Landroid/content/Context;JLcom/baidu/wallet/core/b/a$1;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/b/a;->d:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://downloads/my_downloads/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_48
    invoke-static {v1, p4}, Lcom/baidu/wallet/core/b/a$a;->a(Lcom/baidu/wallet/core/b/a$a;Lcom/baidu/wallet/core/b/a$b;)Z

    goto :goto_8

    :cond_4c
    move-object v1, v0

    goto :goto_48
.end method

.method public a(Lcom/baidu/wallet/core/b/b;)V
    .registers 10

    const-wide/16 v4, -0x1

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/baidu/wallet/core/b/b;->d()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/baidu/wallet/core/b/a;->c:Landroid/app/DownloadManager;

    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    new-array v2, v2, [J

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/baidu/wallet/core/b/b;->d()J

    move-result-wide v4

    aput-wide v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_32

    :try_start_26
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_46

    :cond_32
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/baidu/wallet/core/b/b;->a(J)V

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v2, v3}, Lcom/baidu/wallet/core/b/b;->b(J)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/baidu/wallet/core/b/b;->a(I)V
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_73

    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :cond_46
    :try_start_46
    const-string v0, "total_size"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v2, "bytes_so_far"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "status"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v4, v5}, Lcom/baidu/wallet/core/b/b;->b(J)V

    invoke-virtual {p1, v6, v7}, Lcom/baidu/wallet/core/b/b;->a(J)V

    invoke-virtual {p1, v0}, Lcom/baidu/wallet/core/b/b;->a(I)V
    :try_end_6d
    .catchall {:try_start_46 .. :try_end_6d} :catchall_73

    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :catchall_73
    move-exception v0

    if-eqz v1, :cond_79

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_79
    throw v0
.end method

.method public b(Landroid/content/Context;JLcom/baidu/wallet/core/b/a$b;)V
    .registers 7

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/baidu/wallet/core/b/a;->d:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/b/a$a;

    if-eqz v0, :cond_6

    invoke-static {v0, p4}, Lcom/baidu/wallet/core/b/a$a;->b(Lcom/baidu/wallet/core/b/a$a;Lcom/baidu/wallet/core/b/a$b;)Z

    invoke-virtual {v0}, Lcom/baidu/wallet/core/b/a$a;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://downloads/my_downloads/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/b/a;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6
.end method