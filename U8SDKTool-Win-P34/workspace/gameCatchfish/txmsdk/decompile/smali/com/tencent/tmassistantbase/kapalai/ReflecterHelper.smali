.class public final Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static mCurrentClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getArgsClasses([Ljava/lang/Object;)[Ljava/lang/Class;
    .registers 6

    .prologue
    .line 280
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    .line 281
    if-eqz p0, :cond_40

    .line 282
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Class;

    .line 284
    const/4 v1, 0x0

    array-length v2, p0

    :goto_a
    if-ge v1, v2, :cond_40

    .line 285
    aget-object v3, p0, v1

    if-eqz v3, :cond_25

    .line 286
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v1

    .line 290
    :goto_18
    aget-object v3, v0, v1

    const-class v4, Ljava/lang/Integer;

    if-ne v3, v4, :cond_2a

    .line 291
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v1

    .line 284
    :cond_22
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 288
    :cond_25
    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v1

    goto :goto_18

    .line 292
    :cond_2a
    aget-object v3, v0, v1

    const-class v4, Ljava/lang/Boolean;

    if-ne v3, v4, :cond_35

    .line 293
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v1

    goto :goto_22

    .line 295
    :cond_35
    aget-object v3, v0, v1

    const-class v4, Ljava/lang/Long;

    if-ne v3, v4, :cond_22

    .line 296
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v1

    goto :goto_22

    .line 300
    :cond_40
    return-object v0
.end method

.method private static final getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4

    .prologue
    .line 66
    const/4 v1, 0x0

    .line 68
    :try_start_1
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->mCurrentClass:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_6} :catch_c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_6} :catch_14

    move-result-object v0

    .line 69
    const/4 v1, 0x1

    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_b} :catch_1e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_b} :catch_1c

    .line 76
    :goto_b
    return-object v0

    .line 70
    :catch_c
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 71
    :goto_10
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_b

    .line 72
    :catch_14
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 73
    :goto_18
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_b

    .line 72
    :catch_1c
    move-exception v1

    goto :goto_18

    .line 70
    :catch_1e
    move-exception v1

    goto :goto_10
.end method

.method public static final getIntValue(Ljava/lang/Object;Ljava/lang/String;I)I
    .registers 4

    .prologue
    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->setClass(Ljava/lang/String;)Z

    .line 51
    invoke-static {p1}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_15

    .line 55
    :try_start_11
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_14} :catch_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_14} :catch_1b

    move-result p2

    .line 62
    :cond_15
    :goto_15
    return p2

    .line 56
    :catch_16
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_15

    .line 58
    :catch_1b
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_15
.end method

.method public static getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 214
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 217
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 218
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 220
    return-object v0
.end method

.method public static final getStaticIntValue(Ljava/lang/String;I)I
    .registers 4

    .prologue
    .line 33
    .line 34
    invoke-static {p0}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_b

    .line 38
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_a} :catch_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_a} :catch_11

    move-result p1

    .line 45
    :cond_b
    :goto_b
    return p1

    .line 39
    :catch_c
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_b

    .line 41
    :catch_11
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_b
.end method

.method public static getStaticProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-static {p0}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->setClass(Ljava/lang/String;)Z

    .line 89
    invoke-static {p1}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_f

    .line 94
    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_e} :catch_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_e} :catch_15

    move-result-object v0

    .line 102
    :cond_f
    :goto_f
    return-object v0

    .line 95
    :catch_10
    move-exception v1

    .line 96
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_f

    .line 97
    :catch_15
    move-exception v1

    .line 98
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_f
.end method

.method public static invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .prologue
    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 189
    const/4 v0, 0x0

    .line 191
    :try_start_5
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_12

    move-result-object v0

    .line 201
    :cond_9
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 202
    invoke-virtual {v0, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 192
    :catch_12
    move-exception v2

    .line 193
    if-nez v0, :cond_23

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 194
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 196
    :cond_23
    if-nez v0, :cond_9

    .line 197
    throw v2
.end method

.method public static invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 160
    invoke-static {p2}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->getArgsClasses([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 276
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 272
    invoke-static {p2}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->getArgsClasses([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 8

    .prologue
    .line 241
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 242
    const/4 v0, 0x0

    .line 245
    :try_start_5
    invoke-virtual {v1, p1, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_12

    move-result-object v0

    .line 254
    :cond_9
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 255
    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 256
    return-object v0

    .line 246
    :catch_12
    move-exception v2

    .line 247
    if-nez v0, :cond_23

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 248
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 250
    :cond_23
    if-nez v0, :cond_9

    .line 251
    throw v2
.end method

.method public static newInstance(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 146
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 131
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 132
    invoke-static {p1}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->getArgsClasses([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 133
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 233
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 234
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 235
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 236
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final setClass(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 23
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_4} :catch_d

    move-result-object v0

    .line 28
    :goto_5
    sput-object v0, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->mCurrentClass:Ljava/lang/Class;

    .line 29
    sget-object v0, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->mCurrentClass:Ljava/lang/Class;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_c
    return v0

    .line 24
    :catch_d
    move-exception v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_5

    .line 29
    :cond_12
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 225
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 226
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 227
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 228
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    return-void
.end method

.method public static setStaticProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 106
    invoke-static {p0}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->setClass(Ljava/lang/String;)Z

    .line 107
    invoke-static {p1}, Lcom/tencent/tmassistantbase/kapalai/ReflecterHelper;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_d

    .line 111
    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_d} :catch_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_d} :catch_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_18

    .line 120
    :cond_d
    :goto_d
    return-void

    .line 112
    :catch_e
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_d

    .line 114
    :catch_13
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_d

    .line 116
    :catch_18
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method
