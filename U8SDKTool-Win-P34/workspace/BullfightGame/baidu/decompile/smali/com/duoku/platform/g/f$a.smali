.class public final enum Lcom/duoku/platform/g/f$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/g/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duoku/platform/g/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/duoku/platform/g/f$a;

.field public static final enum b:Lcom/duoku/platform/g/f$a;

.field public static final enum c:Lcom/duoku/platform/g/f$a;

.field public static final enum d:Lcom/duoku/platform/g/f$a;

.field private static final synthetic e:[Lcom/duoku/platform/g/f$a;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/duoku/platform/g/f$a;

    const-string v1, "EDlsInit"

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/g/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/g/f$a;->a:Lcom/duoku/platform/g/f$a;

    .line 16
    new-instance v0, Lcom/duoku/platform/g/f$a;

    const-string v1, "EDlsDownLoading"

    invoke-direct {v0, v1, v3}, Lcom/duoku/platform/g/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/g/f$a;->b:Lcom/duoku/platform/g/f$a;

    .line 17
    new-instance v0, Lcom/duoku/platform/g/f$a;

    const-string v1, "EDlsDownLoadComplete"

    invoke-direct {v0, v1, v4}, Lcom/duoku/platform/g/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/g/f$a;->c:Lcom/duoku/platform/g/f$a;

    .line 18
    new-instance v0, Lcom/duoku/platform/g/f$a;

    const-string v1, "EDlsDownLoadErr"

    invoke-direct {v0, v1, v5}, Lcom/duoku/platform/g/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/g/f$a;->d:Lcom/duoku/platform/g/f$a;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/duoku/platform/g/f$a;

    sget-object v1, Lcom/duoku/platform/g/f$a;->a:Lcom/duoku/platform/g/f$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/duoku/platform/g/f$a;->b:Lcom/duoku/platform/g/f$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/duoku/platform/g/f$a;->c:Lcom/duoku/platform/g/f$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/duoku/platform/g/f$a;->d:Lcom/duoku/platform/g/f$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/duoku/platform/g/f$a;->e:[Lcom/duoku/platform/g/f$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duoku/platform/g/f$a;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/duoku/platform/g/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/g/f$a;

    return-object v0
.end method

.method public static values()[Lcom/duoku/platform/g/f$a;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/duoku/platform/g/f$a;->e:[Lcom/duoku/platform/g/f$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/duoku/platform/g/f$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
