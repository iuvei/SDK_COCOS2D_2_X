.class public Lcom/alipay/sdk/encrypt/Rsa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "SHA1WithRSA"

.field private static final b:Ljava/lang/String; = "RSA"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 41
    .line 45
    :try_start_1
    const-string v0, "RSA"

    invoke-static {v0, p1}, Lcom/alipay/sdk/encrypt/Rsa;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    .line 47
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 48
    const/4 v2, 0x1

    invoke-virtual {v5, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 50
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 52
    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    .line 53
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_50
    .catchall {:try_start_1 .. :try_end_20} :catchall_61

    .line 55
    const/4 v0, 0x0

    move v4, v0

    :goto_22
    :try_start_22
    array-length v0, v6

    if-ge v4, v0, :cond_38

    .line 56
    array-length v0, v6

    sub-int/2addr v0, v4

    if-ge v0, v3, :cond_36

    array-length v0, v6

    sub-int/2addr v0, v4

    :goto_2b
    invoke-virtual {v5, v6, v4, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 55
    add-int v0, v4, v3

    move v4, v0

    goto :goto_22

    :cond_36
    move v0, v3

    .line 56
    goto :goto_2b

    .line 62
    :cond_38
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/sdk/encrypt/Base64;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_45} :catch_70
    .catchall {:try_start_22 .. :try_end_45} :catchall_6e

    .line 67
    if-eqz v2, :cond_4a

    .line 69
    :try_start_47
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 77
    :cond_4a
    :goto_4a
    return-object v0

    .line 70
    :catch_4b
    move-exception v1

    .line 71
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4a

    .line 64
    :catch_50
    move-exception v0

    move-object v2, v1

    .line 65
    :goto_52
    :try_start_52
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_6e

    .line 67
    if-eqz v2, :cond_72

    .line 69
    :try_start_57
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5c

    :goto_5a
    move-object v0, v1

    .line 73
    goto :goto_4a

    .line 70
    :catch_5c
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5a

    .line 67
    :catchall_61
    move-exception v0

    move-object v2, v1

    :goto_63
    if-eqz v2, :cond_68

    .line 69
    :try_start_65
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    .line 73
    :cond_68
    :goto_68
    throw v0

    .line 70
    :catch_69
    move-exception v1

    .line 71
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_68

    .line 67
    :catchall_6e
    move-exception v0

    goto :goto_63

    .line 64
    :catch_70
    move-exception v0

    goto :goto_52

    :cond_72
    move-object v0, v1

    goto :goto_4a
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 151
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 152
    invoke-static {p2}, Lcom/alipay/sdk/encrypt/Base64;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 153
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 156
    const-string v1, "SHA1WithRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 159
    invoke-virtual {v1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 160
    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    .line 162
    invoke-static {p1}, Lcom/alipay/sdk/encrypt/Base64;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->verify([B)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2e

    move-result v0

    .line 169
    :goto_2d
    return v0

    .line 165
    :catch_2e
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 81
    .line 85
    :try_start_1
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-static {p1}, Lcom/alipay/sdk/encrypt/Base64;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 87
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 88
    invoke-virtual {v2, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 90
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 91
    const/4 v2, 0x2

    invoke-virtual {v5, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 93
    invoke-static {p0}, Lcom/alipay/sdk/encrypt/Base64;->a(Ljava/lang/String;)[B

    move-result-object v6

    .line 96
    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    .line 97
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_57
    .catchall {:try_start_1 .. :try_end_2b} :catchall_68

    .line 99
    const/4 v0, 0x0

    move v4, v0

    :goto_2d
    :try_start_2d
    array-length v0, v6

    if-ge v4, v0, :cond_43

    .line 100
    array-length v0, v6

    sub-int/2addr v0, v4

    if-ge v0, v3, :cond_41

    array-length v0, v6

    sub-int/2addr v0, v4

    :goto_36
    invoke-virtual {v5, v6, v4, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 99
    add-int v0, v4, v3

    move v4, v0

    goto :goto_2d

    :cond_41
    move v0, v3

    .line 100
    goto :goto_36

    .line 106
    :cond_43
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4c} :catch_77
    .catchall {:try_start_2d .. :try_end_4c} :catchall_74

    .line 110
    if-eqz v2, :cond_51

    .line 112
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    .line 120
    :cond_51
    :goto_51
    return-object v0

    .line 113
    :catch_52
    move-exception v1

    .line 114
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51

    .line 107
    :catch_57
    move-exception v0

    move-object v2, v1

    .line 108
    :goto_59
    :try_start_59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_74

    .line 110
    if-eqz v2, :cond_79

    .line 112
    :try_start_5e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_63

    :goto_61
    move-object v0, v1

    .line 116
    goto :goto_51

    .line 113
    :catch_63
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_61

    .line 110
    :catchall_68
    move-exception v0

    :goto_69
    if-eqz v1, :cond_6e

    .line 112
    :try_start_6b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    .line 116
    :cond_6e
    :goto_6e
    throw v0

    .line 113
    :catch_6f
    move-exception v1

    .line 114
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6e

    .line 110
    :catchall_74
    move-exception v0

    move-object v1, v2

    goto :goto_69

    .line 107
    :catch_77
    move-exception v0

    goto :goto_59

    :cond_79
    move-object v0, v1

    goto :goto_51
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 126
    const-string v0, "utf-8"

    .line 128
    :try_start_2
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-static {p1}, Lcom/alipay/sdk/encrypt/Base64;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 130
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 131
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 133
    const-string v2, "SHA1WithRSA"

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 136
    invoke-virtual {v2, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 137
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/Signature;->update([B)V

    .line 139
    invoke-virtual {v2}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/alipay/sdk/encrypt/Base64;->a([B)Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_2e

    move-result-object v0

    .line 146
    :goto_2d
    return-object v0

    .line 142
    :catch_2e
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p1}, Lcom/alipay/sdk/encrypt/Base64;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 34
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 36
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 37
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method
