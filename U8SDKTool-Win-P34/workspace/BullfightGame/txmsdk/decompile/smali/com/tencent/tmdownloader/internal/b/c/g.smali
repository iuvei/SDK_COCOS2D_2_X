.class public Lcom/tencent/tmdownloader/internal/b/c/g;
.super Lcom/tencent/tmdownloader/internal/b/c/a;
.source "ProGuard"


# static fields
.field protected static a:Lcom/tencent/tmdownloader/internal/b/c/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmdownloader/internal/b/c/g;->a:Lcom/tencent/tmdownloader/internal/b/c/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/tencent/tmdownloader/internal/b/c/a;-><init>()V

    return-void
.end method

.method public static declared-synchronized g()Lcom/tencent/tmdownloader/internal/b/c/g;
    .registers 2

    .prologue
    .line 31
    const-class v1, Lcom/tencent/tmdownloader/internal/b/c/g;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/tmdownloader/internal/b/c/g;->a:Lcom/tencent/tmdownloader/internal/b/c/g;

    if-nez v0, :cond_e

    .line 32
    new-instance v0, Lcom/tencent/tmdownloader/internal/b/c/g;

    invoke-direct {v0}, Lcom/tencent/tmdownloader/internal/b/c/g;-><init>()V

    sput-object v0, Lcom/tencent/tmdownloader/internal/b/c/g;->a:Lcom/tencent/tmdownloader/internal/b/c/g;

    .line 34
    :cond_e
    sget-object v0, Lcom/tencent/tmdownloader/internal/b/c/g;->a:Lcom/tencent/tmdownloader/internal/b/c/g;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected b(I)[Ljava/lang/String;
    .registers 5

    .prologue
    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/b/c/g;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    const-string v0, "downloadLogData"

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    const-string v0, "CREATE TABLE if not exists downloadLogData( _id INTEGER PRIMARY KEY AUTOINCREMENT, logData BLOB );"

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    const-string v0, "INSERT INTO downloadLogData logData = ?"

    return-object v0
.end method
