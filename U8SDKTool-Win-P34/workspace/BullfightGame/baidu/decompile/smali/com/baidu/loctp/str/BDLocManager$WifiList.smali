.class public Lcom/baidu/loctp/str/BDLocManager$WifiList;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/loctp/str/BDLocManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WifiList"
.end annotation


# instance fields
.field public _WifiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic a:Lcom/baidu/loctp/str/BDLocManager;

.field private b:J


# direct methods
.method public constructor <init>(Lcom/baidu/loctp/str/BDLocManager;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/loctp/str/BDLocManager$WifiList;->a:Lcom/baidu/loctp/str/BDLocManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/loctp/str/BDLocManager$WifiList;->_WifiList:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/loctp/str/BDLocManager$WifiList;->b:J

    iput-object p2, p0, Lcom/baidu/loctp/str/BDLocManager$WifiList;->_WifiList:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/loctp/str/BDLocManager$WifiList;->b:J

    invoke-direct {p0}, Lcom/baidu/loctp/str/BDLocManager$WifiList;->a()V

    return-void
.end method

.method private a()V
    .registers 9

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/baidu/loctp/str/BDLocManager$WifiList;->size()I

    move-result v0

    if-ge v0, v1, :cond_9

    :cond_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/baidu/loctp/str/BDLocManager$WifiList;->_WifiList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v2, v1

    :goto_13
    if-lt v3, v1, :cond_8

    if-eqz v2, :cond_8

    move v4, v5

    move v2, v5

    :goto_19
    if-ge v4, v3, :cond_55

    iget-object v0, p0, Lcom/baidu/loctp/str/BDLocManager$WifiList;->_WifiList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v6, v0, Landroid/net/wifi/ScanResult;->level:I

    iget-object v0, p0, Lcom/baidu/loctp/str/BDLocManager$WifiList;->_WifiList:Ljava/util/List;

    add-int/lit8 v7, v4, 0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-ge v6, v0, :cond_59

    iget-object v0, p0, Lcom/baidu/loctp/str/BDLocManager$WifiList;->_WifiList:Ljava/util/List;

    add-int/lit8 v2, v4, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v2, p0, Lcom/baidu/loctp/str/BDLocManager$WifiList;->_WifiList:Ljava/util/List;

    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lcom/baidu/loctp/str/BDLocManager$WifiList;->_WifiList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/baidu/loctp/str/BDLocManager$WifiList;->_WifiList:Ljava/util/List;

    invoke-interface {v2, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :goto_50
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_19

    :cond_55
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_13

    :cond_59
    move v0, v2

    goto :goto_50
.end method

.method static synthetic a(Lcom/baidu/loctp/str/BDLocManager$WifiList;)Z
    .registers 2

    invoke-direct {p0}, Lcom/baidu/loctp/str/BDLocManager$WifiList;->b()Z

    move-result v0

    return v0
.end method

.method private b()Z
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/loctp/str/BDLocManager$WifiList;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_13

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    :cond_13
    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method


# virtual methods
.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/baidu/loctp/str/BDLocManager$WifiList;->_WifiList:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/baidu/loctp/str/BDLocManager$WifiList;->_WifiList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public toString(I)Ljava/lang/String;
    .registers 16

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/baidu/loctp/str/BDLocManager$WifiList;->size()I

    move-result v0

    if-ge v0, v2, :cond_b

    move-object v0, v6

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/baidu/loctp/str/BDLocManager$WifiList;->a:Lcom/baidu/loctp/str/BDLocManager;

    invoke-static {v0}, Lcom/baidu/loctp/str/BDLocManager;->a(Lcom/baidu/loctp/str/BDLocManager;)Z

    move-result v8

    if-eqz v8, :cond_e7

    add-int/lit8 p1, p1, -0x1

    move v0, v1

    :goto_16
    new-instance v9, Ljava/lang/StringBuffer;

    const/16 v3, 0x200

    invoke-direct {v9, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v3, p0, Lcom/baidu/loctp/str/BDLocManager$WifiList;->_WifiList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    move v7, v1

    move v3, v1

    move v4, v2

    move v5, v0

    :goto_27
    if-ge v7, v10, :cond_e5

    iget-object v0, p0, Lcom/baidu/loctp/str/BDLocManager$WifiList;->_WifiList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-nez v0, :cond_3f

    move v0, v3

    move v3, v4

    move v4, v5

    :goto_38
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move v5, v4

    move v4, v3

    move v3, v0

    goto :goto_27

    :cond_3f
    iget-object v0, p0, Lcom/baidu/loctp/str/BDLocManager$WifiList;->_WifiList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v11, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/loctp/str/BDLocManager$WifiList;->_WifiList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    const-string v12, ":"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/baidu/loctp/str/BDLocManager$WifiList;->a:Lcom/baidu/loctp/str/BDLocManager;

    invoke-static {v12}, Lcom/baidu/loctp/str/BDLocManager;->b(Lcom/baidu/loctp/str/BDLocManager;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7c

    iget-object v12, p0, Lcom/baidu/loctp/str/BDLocManager$WifiList;->a:Lcom/baidu/loctp/str/BDLocManager;

    invoke-static {v12}, Lcom/baidu/loctp/str/BDLocManager;->b(Lcom/baidu/loctp/str/BDLocManager;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7c

    iget-object v5, p0, Lcom/baidu/loctp/str/BDLocManager$WifiList;->a:Lcom/baidu/loctp/str/BDLocManager;

    invoke-static {v0}, Ljava/lang/StrictMath;->abs(I)I

    move-result v0

    invoke-static {v5, v0}, Lcom/baidu/loctp/str/BDLocManager;->a(Lcom/baidu/loctp/str/BDLocManager;I)I

    move v0, v3

    move v3, v4

    move v4, v2

    goto :goto_38

    :cond_7c
    if-ge v3, p1, :cond_e2

    const-string v4, "h"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "m"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/StrictMath;->abs(I)I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v3, 0x1

    move v3, v1

    :goto_95
    if-le v0, p1, :cond_df

    if-eqz v5, :cond_df

    :goto_99
    if-eqz v8, :cond_dd

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/loctp/str/BDLocManager$WifiList;->a:Lcom/baidu/loctp/str/BDLocManager;

    invoke-static {v1}, Lcom/baidu/loctp/str/BDLocManager;->b(Lcom/baidu/loctp/str/BDLocManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "km"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/loctp/str/BDLocManager$WifiList;->a:Lcom/baidu/loctp/str/BDLocManager;

    invoke-static {v1}, Lcom/baidu/loctp/str/BDLocManager;->c(Lcom/baidu/loctp/str/BDLocManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c4
    if-nez v3, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_dd
    move-object v0, v6

    goto :goto_c4

    :cond_df
    move v4, v5

    goto/16 :goto_38

    :cond_e2
    move v0, v3

    move v3, v4

    goto :goto_95

    :cond_e5
    move v3, v4

    goto :goto_99

    :cond_e7
    move v0, v2

    goto/16 :goto_16
.end method
