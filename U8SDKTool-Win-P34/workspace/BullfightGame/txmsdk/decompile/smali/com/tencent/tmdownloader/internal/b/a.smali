.class public Lcom/tencent/tmdownloader/internal/b/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static a:Lcom/tencent/tmdownloader/internal/b/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmdownloader/internal/b/a;->a:Lcom/tencent/tmdownloader/internal/b/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/tmdownloader/internal/b/a;
    .registers 2

    .prologue
    .line 21
    const-class v1, Lcom/tencent/tmdownloader/internal/b/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/tmdownloader/internal/b/a;->a:Lcom/tencent/tmdownloader/internal/b/a;

    if-nez v0, :cond_e

    .line 22
    new-instance v0, Lcom/tencent/tmdownloader/internal/b/a;

    invoke-direct {v0}, Lcom/tencent/tmdownloader/internal/b/a;-><init>()V

    sput-object v0, Lcom/tencent/tmdownloader/internal/b/a;->a:Lcom/tencent/tmdownloader/internal/b/a;

    .line 24
    :cond_e
    sget-object v0, Lcom/tencent/tmdownloader/internal/b/a;->a:Lcom/tencent/tmdownloader/internal/b/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/tencent/tmdownloader/internal/a/d;)V
    .registers 2

    .prologue
    .line 52
    invoke-static {p1}, Lcom/tencent/tmdownloader/internal/b/c/f;->a(Lcom/tencent/tmdownloader/internal/a/d;)V

    .line 53
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 60
    invoke-static {p1}, Lcom/tencent/tmdownloader/internal/b/c/f;->a(Ljava/lang/String;)V

    .line 61
    invoke-static {p1}, Lcom/tencent/tmdownloader/internal/b/c/d;->a(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 100
    invoke-static {p1, p2}, Lcom/tencent/tmdownloader/internal/b/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 44
    invoke-static {p1}, Lcom/tencent/tmdownloader/internal/b/c/f;->a(Ljava/util/ArrayList;)V

    .line 45
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/tencent/tmdownloader/internal/a/d;
    .registers 3

    .prologue
    .line 70
    invoke-static {p1}, Lcom/tencent/tmdownloader/internal/b/c/f;->b(Ljava/lang/String;)Lcom/tencent/tmdownloader/internal/a/d;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 36
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/c/f;->c()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/tencent/tmdownloader/internal/a/d;
    .registers 3

    .prologue
    .line 79
    invoke-static {p1}, Lcom/tencent/tmdownloader/internal/b/c/f;->c(Ljava/lang/String;)Lcom/tencent/tmdownloader/internal/a/d;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 87
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/c/f;->d()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
