.class Lcom/adobe/air/AndroidStageText$RestrictFilter;
.super Ljava/lang/Object;
.source "AndroidStageText.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AndroidStageText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestrictFilter"
.end annotation


# static fields
.field private static final kMapSize:I = 0x2000


# instance fields
.field private mPattern:Ljava/lang/String;

.field private m_map:[B

.field final synthetic this$0:Lcom/adobe/air/AndroidStageText;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AndroidStageText;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->mPattern:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    iput-object p2, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->mPattern:Ljava/lang/String;

    if-eqz p2, :cond_6

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    invoke-virtual {p0, v1}, Lcom/adobe/air/AndroidStageText$RestrictFilter;->SetAll(Z)V

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5e

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/adobe/air/AndroidStageText$RestrictFilter;->SetAll(Z)V

    :cond_0
    move v0, v1

    move v2, v1

    move v3, v4

    move v5, v1

    move v6, v1

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_6

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-nez v6, :cond_2

    sparse-switch v7, :sswitch_data_0

    move v8, v4

    :goto_1
    if-eqz v8, :cond_4

    if-eqz v5, :cond_5

    :goto_2
    if-gt v2, v7, :cond_3

    invoke-virtual {p0, v2, v3}, Lcom/adobe/air/AndroidStageText$RestrictFilter;->SetCode(CZ)V

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    goto :goto_2

    :sswitch_0
    move v8, v1

    move v5, v4

    goto :goto_1

    :sswitch_1
    if-nez v3, :cond_1

    move v3, v4

    :goto_3
    move v8, v1

    goto :goto_1

    :cond_1
    move v3, v1

    goto :goto_3

    :sswitch_2
    move v8, v1

    move v6, v4

    goto :goto_1

    :cond_2
    move v8, v4

    move v6, v1

    goto :goto_1

    :cond_3
    move v2, v1

    move v5, v1

    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v7, v3}, Lcom/adobe/air/AndroidStageText$RestrictFilter;->SetCode(CZ)V

    move v2, v7

    goto :goto_4

    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_0
        0x5c -> :sswitch_2
        0x5e -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method IsCharAvailable(C)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->mPattern:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_0
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    if-nez v2, :cond_1

    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    shr-int/lit8 v3, p1, 0x3

    aget-byte v2, v2, v3

    and-int/lit8 v3, p1, 0x7

    shl-int v3, v0, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method IsEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->mPattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method SetAll(Z)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0xff

    :goto_0
    int-to-byte v0, v0

    :goto_1
    const/16 v2, 0x2000

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method SetCode(CZ)V
    .locals 5

    const/4 v4, 0x1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    shr-int/lit8 v1, p1, 0x3

    aget-byte v2, v0, v1

    and-int/lit8 v3, p1, 0x7

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    shr-int/lit8 v1, p1, 0x3

    aget-byte v2, v0, v1

    and-int/lit8 v3, p1, 0x7

    shl-int v3, v4, v3

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->mPattern:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    if-nez v0, :cond_2

    const-string v3, ""

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    sub-int v0, p3, p2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    sub-int v0, p3, p2

    if-le v0, v2, :cond_7

    move v0, v5

    :goto_1
    add-int v4, p2, v0

    if-ge v4, p3, :cond_3

    add-int v4, p5, v0

    if-ge v4, p6, :cond_3

    add-int v4, p2, v0

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int v6, p5, v0

    invoke-interface {p4, v6}, Landroid/text/Spanned;->charAt(I)C

    move-result v6

    if-ne v4, v6, :cond_3

    add-int v4, p2, v0

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v0, p2

    :goto_2
    move v7, v0

    move v0, v2

    move v2, v7

    :goto_3
    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/adobe/air/AndroidStageText$RestrictFilter;->IsCharAvailable(C)Z

    move-result v6

    if-nez v6, :cond_4

    move v0, v5

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_5
    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_6

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    move v1, p2

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    move-object v3, v4

    goto :goto_0

    :cond_6
    move-object v3, v1

    goto :goto_0

    :cond_7
    move v0, p2

    goto :goto_2
.end method
