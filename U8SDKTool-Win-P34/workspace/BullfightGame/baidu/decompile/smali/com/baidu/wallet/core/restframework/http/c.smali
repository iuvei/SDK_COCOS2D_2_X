.class public Lcom/baidu/wallet/core/restframework/http/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:Lcom/baidu/wallet/core/restframework/http/c;

.field public static final b:Lcom/baidu/wallet/core/restframework/http/c;

.field public static final c:Lcom/baidu/wallet/core/restframework/http/c;

.field private static final d:Ljava/util/BitSet;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v1, 0x0

    const/16 v4, 0x80

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v4}, Ljava/util/BitSet;-><init>(I)V

    move v0, v1

    :goto_9
    const/16 v3, 0x1f

    if-gt v0, v3, :cond_13

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_13
    const/16 v0, 0x7f

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v4}, Ljava/util/BitSet;-><init>(I)V

    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x3c

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x3e

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x5c

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x3f

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v3, Lcom/baidu/wallet/core/restframework/http/c;->d:Ljava/util/BitSet;

    sget-object v3, Lcom/baidu/wallet/core/restframework/http/c;->d:Ljava/util/BitSet;

    invoke-virtual {v3, v1, v4}, Ljava/util/BitSet;->set(II)V

    sget-object v1, Lcom/baidu/wallet/core/restframework/http/c;->d:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    sget-object v1, Lcom/baidu/wallet/core/restframework/http/c;->d:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    const-string v0, "*"

    invoke-static {v0}, Lcom/baidu/wallet/core/restframework/http/c;->a(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/c;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/restframework/http/c;->a:Lcom/baidu/wallet/core/restframework/http/c;

    const-string v0, "identity"

    invoke-static {v0}, Lcom/baidu/wallet/core/restframework/http/c;->a(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/c;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/restframework/http/c;->b:Lcom/baidu/wallet/core/restframework/http/c;

    const-string v0, "gzip"

    invoke-static {v0}, Lcom/baidu/wallet/core/restframework/http/c;->a(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/c;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/restframework/http/c;->c:Lcom/baidu/wallet/core/restframework/http/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\'type\' must not be empty"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/restframework/http/c;->d(Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/core/restframework/http/c;->e:Ljava/lang/String;

    invoke-static {p2}, Lcom/baidu/wallet/core/utils/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_56

    new-instance v2, Lcom/baidu/wallet/core/utils/support/LinkedCaseInsensitiveMap;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v0, v1}, Lcom/baidu/wallet/core/utils/support/LinkedCaseInsensitiveMap;-><init>(ILjava/util/Locale;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/baidu/wallet/core/restframework/http/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/baidu/wallet/core/restframework/http/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :cond_4f
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/core/restframework/http/c;->f:Ljava/util/Map;

    :goto_55
    return-void

    :cond_56
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/core/restframework/http/c;->f:Ljava/util/Map;

    goto :goto_55
.end method

.method public static a(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/c;
    .registers 2

    invoke-static {p0}, Lcom/baidu/wallet/core/restframework/http/c;->b(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/c;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const-string v0, "parameter attribute must not be empty"

    invoke-static {p1, v0}, Lcom/baidu/wallet/core/utils/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "parameter value must not be empty"

    invoke-static {p2, v0}, Lcom/baidu/wallet/core/utils/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/restframework/http/c;->d(Ljava/lang/String;)V

    const-string v0, "q"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-direct {p0, p2}, Lcom/baidu/wallet/core/restframework/http/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_19
    const-string v2, "Invalid quality value \""

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_47

    const-wide/high16 v6, 0x3ff0000000000000L

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_47

    const/4 v0, 0x1

    :goto_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\": should be between 0.0 and 1.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/Assert;->isTrue(ZLjava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_46} :catch_49

    :cond_46
    :goto_46
    return-void

    :cond_47
    const/4 v0, 0x0

    goto :goto_2c

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46

    :cond_4e
    invoke-direct {p0, p2}, Lcom/baidu/wallet/core/restframework/http/c;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    invoke-direct {p0, p2}, Lcom/baidu/wallet/core/restframework/http/c;->d(Ljava/lang/String;)V

    goto :goto_46
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/http/c;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/http/c;->f:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/baidu/wallet/core/restframework/http/c;->a(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/StringBuilder;)V
    .registers 6

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/16 v1, 0x3b

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_31
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/c;
    .registers 10

    const/4 v0, 0x1

    const/4 v8, 0x0

    const-string v1, "\'codingType\' must not be empty"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ";"

    invoke-static {p0, v1}, Lcom/baidu/wallet/core/utils/StringUtils;->tokenizeToStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v8

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    array-length v4, v2

    if-le v4, v0, :cond_48

    new-instance v1, Ljava/util/LinkedHashMap;

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v1, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    :goto_1f
    array-length v4, v2

    if-ge v0, v4, :cond_41

    aget-object v4, v2, v0

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3e

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_41
    move-object v0, v1

    :goto_42
    new-instance v1, Lcom/baidu/wallet/core/restframework/http/c;

    invoke-direct {v1, v3, v0}, Lcom/baidu/wallet/core/restframework/http/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1

    :cond_48
    move-object v0, v1

    goto :goto_42
.end method

.method public static c(Ljava/lang/String;)Ljava/util/List;
    .registers 6

    invoke-static {p0}, Lcom/baidu/wallet/core/utils/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_a
    return-object v0

    :cond_b
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v2

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v3, :cond_a

    aget-object v4, v2, v1

    invoke-static {v4}, Lcom/baidu/wallet/core/restframework/http/c;->b(Ljava/lang/String;)Lcom/baidu/wallet/core/restframework/http/c;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_19
.end method

.method private d(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-object v2, Lcom/baidu/wallet/core/restframework/http/c;->d:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_3c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid token character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in token \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3f
    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_18

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 p1, 0x0

    :cond_9
    :goto_9
    return-object p1

    :cond_a
    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/restframework/http/c;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_9
.end method


# virtual methods
.method public a(Lcom/baidu/wallet/core/restframework/http/c;)I
    .registers 7

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/http/c;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/wallet/core/restframework/http/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/http/c;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p1, Lcom/baidu/wallet/core/restframework/http/c;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/baidu/wallet/core/restframework/http/c;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/TreeSet;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iget-object v2, p1, Lcom/baidu/wallet/core/restframework/http/c;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5c

    move v0, v2

    goto :goto_a

    :cond_5c
    iget-object v2, p0, Lcom/baidu/wallet/core/restframework/http/c;->f:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/wallet/core/restframework/http/c;->f:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_70

    const-string v1, ""

    :cond_70
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_a

    :cond_77
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/baidu/wallet/core/restframework/http/c;

    invoke-virtual {p0, p1}, Lcom/baidu/wallet/core/restframework/http/c;->a(Lcom/baidu/wallet/core/restframework/http/c;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/baidu/wallet/core/restframework/http/c;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/baidu/wallet/core/restframework/http/c;

    iget-object v2, p0, Lcom/baidu/wallet/core/restframework/http/c;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/wallet/core/restframework/http/c;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/baidu/wallet/core/restframework/http/c;->f:Ljava/util/Map;

    iget-object v3, p1, Lcom/baidu/wallet/core/restframework/http/c;->f:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/restframework/http/c;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/baidu/wallet/core/restframework/http/c;->f:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/baidu/wallet/core/restframework/http/c;->a(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
