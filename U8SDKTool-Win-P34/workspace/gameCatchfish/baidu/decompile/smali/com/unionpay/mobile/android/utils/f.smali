.class public final Lcom/unionpay/mobile/android/utils/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .registers 12

    const/16 v7, 0x21

    const/4 v2, 0x0

    const-string v0, ""

    invoke-static {p0}, Lcom/unionpay/mobile/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1c
    invoke-static {p2}, Lcom/unionpay/mobile/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_33
    invoke-static {p3}, Lcom/unionpay/mobile/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4a
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/unionpay/mobile/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8c

    move v1, v2

    :goto_56
    invoke-static {p2}, Lcom/unionpay/mobile/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_91

    move v3, v2

    :goto_5d
    add-int/2addr v3, v1

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const/high16 v6, -0x1000000

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v5, v2, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p1}, Lcom/unionpay/mobile/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_96

    invoke-static {p1}, Lcom/unionpay/mobile/android/utils/f;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_96

    :goto_7f
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4, v0, v1, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_8b
    return-object v4

    :cond_8c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_56

    :cond_91
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_5d

    :cond_96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7f
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-nez p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_16

    :cond_b
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_16
    return-object v0
.end method

.method public static final b(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static final c(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/unionpay/mobile/android/utils/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_54

    const/16 v2, 0xb

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "black"

    aput-object v2, v3, v1

    const-string v2, "darkgray"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "gray"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "lightgray"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "white"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "red"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "green"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "blue"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "yellow"

    aput-object v4, v3, v2

    const/16 v2, 0x9

    const-string v4, "cyan"

    aput-object v4, v3, v2

    const/16 v2, 0xa

    const-string v4, "magenta"

    aput-object v4, v3, v2

    array-length v4, v3

    move v2, v1

    :goto_46
    if-ge v2, v4, :cond_54

    aget-object v5, v3, v2

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_51

    :goto_50
    return v0

    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_54
    move v0, v1

    goto :goto_50
.end method
