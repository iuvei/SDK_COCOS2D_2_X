.class public Lcom/tencent/tmdownloader/internal/b/c/i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmdownloader/internal/b/c/j;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 86
    if-eqz p0, :cond_5

    if-nez p1, :cond_7

    .line 87
    :cond_5
    const/4 v0, -0x1

    .line 105
    :cond_6
    :goto_6
    return v0

    .line 90
    :cond_7
    :try_start_7
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 92
    const-string v2, "settingField"

    invoke-virtual {v0, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v2, "value"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v2, "type"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v2, "settingInfo"

    const-string v3, "settingField = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {p3, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_28} :catch_2d
    .catchall {:try_start_7 .. :try_end_28} :catchall_3a

    move-result v0

    .line 97
    if-gtz v0, :cond_6

    move v0, v1

    .line 100
    goto :goto_6

    .line 102
    :catch_2d
    move-exception v0

    .line 103
    :try_start_2e
    const-string v1, "DownloadSettingTable"

    const-string v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_3a

    .line 105
    const/4 v0, -0x2

    goto :goto_6

    .line 106
    :catchall_3a
    move-exception v0

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 55
    if-eqz p0, :cond_2e

    if-eqz p1, :cond_2e

    .line 57
    :try_start_4
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a/b;->a()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/internal/b/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_2e

    .line 59
    invoke-static {p0, p1, p2, v0}, Lcom/tencent/tmdownloader/internal/b/c/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 60
    if-gtz v1, :cond_2e

    .line 61
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 63
    const-string v2, "settingField"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "value"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v2, "type"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v2, "settingInfo"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2e} :catch_2f

    .line 76
    :cond_2e
    :goto_2e
    return-void

    .line 71
    :catch_2f
    move-exception v0

    .line 72
    const-string v1, "DownloadSettingTable"

    const-string v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e
.end method

.method public static c()Ljava/util/HashMap;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    :try_start_6
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a/b;->a()Lcom/tencent/tmdownloader/internal/b/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmdownloader/internal/b/a/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 120
    if-eqz v1, :cond_57

    .line 121
    const-string v3, "select * from settingInfo"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 123
    if-eqz v2, :cond_57

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 126
    :cond_1f
    const-string v1, "settingField"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    const-string v3, "value"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_39} :catch_42
    .catchall {:try_start_6 .. :try_end_39} :catchall_50

    move-result v1

    if-nez v1, :cond_1f

    .line 140
    if-eqz v2, :cond_41

    .line 141
    :goto_3e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_41
    return-object v0

    .line 136
    :catch_42
    move-exception v1

    .line 137
    :try_start_43
    const-string v3, "DownloadSettingTable"

    const-string v4, "exception: "

    invoke-static {v3, v4, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_50

    .line 140
    if-eqz v2, :cond_41

    goto :goto_3e

    :catchall_50
    move-exception v0

    if-eqz v2, :cond_56

    .line 141
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_56
    throw v0

    :cond_57
    if-eqz v2, :cond_41

    goto :goto_3e
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    const-string v0, "settingInfo"

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    .line 176
    return-void
.end method

.method public a(II)[Ljava/lang/String;
    .registers 4

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    const-string v0, "CREATE TABLE if not exists settingInfo( _id INTEGER PRIMARY KEY AUTOINCREMENT, settingField TEXT , value TEXT,type TEXT);"

    return-object v0
.end method
