.class Lcom/tencent/stat/aw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/tencent/stat/au;


# direct methods
.method constructor <init>(Lcom/tencent/stat/au;Ljava/util/List;ZZ)V
    .registers 5

    iput-object p1, p0, Lcom/tencent/stat/aw;->d:Lcom/tencent/stat/au;

    iput-object p2, p0, Lcom/tencent/stat/aw;->a:Ljava/util/List;

    iput-boolean p3, p0, Lcom/tencent/stat/aw;->b:Z

    iput-boolean p4, p0, Lcom/tencent/stat/aw;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/tencent/stat/aw;->d:Lcom/tencent/stat/au;

    iget-object v1, p0, Lcom/tencent/stat/aw;->a:Ljava/util/List;

    iget-boolean v2, p0, Lcom/tencent/stat/aw;->b:Z

    invoke-static {v0, v1, v2}, Lcom/tencent/stat/au;->a(Lcom/tencent/stat/au;Ljava/util/List;Z)V

    iget-boolean v0, p0, Lcom/tencent/stat/aw;->c:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/tencent/stat/aw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_12
    return-void
.end method
