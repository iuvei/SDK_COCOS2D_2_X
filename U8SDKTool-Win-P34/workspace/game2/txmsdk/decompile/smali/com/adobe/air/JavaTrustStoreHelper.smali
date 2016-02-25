.class public final Lcom/adobe/air/JavaTrustStoreHelper;
.super Ljava/lang/Object;
.source "JavaTrustStoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/JavaTrustStoreHelper$1;,
        Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;,
        Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_sysprop;,
        Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_stub;,
        Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "JavaTrustStoreHelper"

.field private static mSystemKeyStoreMgr:Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/adobe/air/JavaTrustStoreHelper;->initSystemKeyStoreMgr()Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/JavaTrustStoreHelper;->mSystemKeyStoreMgr:Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyTimestamp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static dumpAcceptedIssuersToFile(Ljavax/net/ssl/X509TrustManager;Ljava/io/RandomAccessFile;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/io/IOException;,
            Ljava/io/SyncFailedException;
        }
    .end annotation

    invoke-interface {p0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    array-length v3, v2

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->write([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    array-length v0, v1

    return v0
.end method

.method public static enumerateRootCAs(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/adobe/air/JavaTrustStoreHelper;->isAirCertBundleStale(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/adobe/air/JavaTrustStoreHelper;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-static {v1, v3}, Lcom/adobe/air/JavaTrustStoreHelper;->dumpAcceptedIssuersToFile(Ljavax/net/ssl/X509TrustManager;Ljava/io/RandomAccessFile;)I

    invoke-static {}, Lcom/adobe/air/JavaTrustStoreHelper;->getTrustStoreTimestamp()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private static getTrustStoreTimestamp()J
    .locals 2

    sget-object v0, Lcom/adobe/air/JavaTrustStoreHelper;->mSystemKeyStoreMgr:Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;

    invoke-interface {v0}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 4

    invoke-static {}, Lcom/adobe/air/JavaTrustStoreHelper;->getX509TrustManagerFactory()Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    instance-of v3, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_0

    aget-object v0, v2, v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private static getX509TrustManagerFactory()Ljavax/net/ssl/TrustManagerFactory;
    .locals 2

    :try_start_0
    const-string v0, "X509"

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    sget-object v1, Lcom/adobe/air/JavaTrustStoreHelper;->mSystemKeyStoreMgr:Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;

    invoke-interface {v1}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static initSystemKeyStoreMgr()Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_sysprop;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_sysprop;

    invoke-direct {v0, v1}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_sysprop;-><init>(Lcom/adobe/air/JavaTrustStoreHelper$1;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;

    invoke-direct {v0, v1}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;-><init>(Lcom/adobe/air/JavaTrustStoreHelper$1;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_stub;

    invoke-direct {v0, v1}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_stub;-><init>(Lcom/adobe/air/JavaTrustStoreHelper$1;)V

    goto :goto_0
.end method

.method private static isAirCertBundleStale(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/adobe/air/JavaTrustStoreHelper;->mSystemKeyStoreMgr:Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;

    invoke-interface {v2}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
