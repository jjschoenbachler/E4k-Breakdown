.class public final Lcom/adobe/air/JavaTrustStoreHelper;
.super Ljava/lang/Object;
.source "JavaTrustStoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

    .line 52
    invoke-static {}, Lcom/adobe/air/JavaTrustStoreHelper;->initSystemKeyStoreMgr()Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/JavaTrustStoreHelper;->mSystemKeyStoreMgr:Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyTimestamp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 304
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static dumpAcceptedIssuersToFile(Ljavax/net/ssl/X509TrustManager;Ljava/io/RandomAccessFile;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/io/IOException;,
            Ljava/io/SyncFailedException;
        }
    .end annotation

    .line 318
    invoke-interface {p0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object p0

    const/4 v0, 0x0

    .line 320
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 324
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    .line 325
    array-length v2, v1

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 326
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->write([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V

    .line 330
    array-length p0, p0

    return p0
.end method

.method public static enumerateRootCAs(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 354
    invoke-static {p0}, Lcom/adobe/air/JavaTrustStoreHelper;->isAirCertBundleStale(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 359
    :cond_0
    invoke-static {}, Lcom/adobe/air/JavaTrustStoreHelper;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 367
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    new-instance p1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {p1, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    .line 371
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 373
    invoke-static {p0, p1}, Lcom/adobe/air/JavaTrustStoreHelper;->dumpAcceptedIssuersToFile(Ljavax/net/ssl/X509TrustManager;Ljava/io/RandomAccessFile;)I

    .line 377
    invoke-static {}, Lcom/adobe/air/JavaTrustStoreHelper;->getTrustStoreTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 378
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method private static getTrustStoreTimestamp()J
    .locals 2

    .line 248
    sget-object v0, Lcom/adobe/air/JavaTrustStoreHelper;->mSystemKeyStoreMgr:Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;

    invoke-interface {v0}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 3

    .line 274
    invoke-static {}, Lcom/adobe/air/JavaTrustStoreHelper;->getX509TrustManagerFactory()Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 281
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 283
    aget-object v2, v0, v1

    instance-of v2, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_0

    .line 285
    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private static getX509TrustManagerFactory()Ljavax/net/ssl/TrustManagerFactory;
    .locals 2

    :try_start_0
    const-string v0, "X509"

    .line 257
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 259
    sget-object v1, Lcom/adobe/air/JavaTrustStoreHelper;->mSystemKeyStoreMgr:Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;

    invoke-interface {v1}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v1

    .line 261
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static initSystemKeyStoreMgr()Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;
    .locals 2

    .line 228
    invoke-static {}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_sysprop;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_sysprop;

    invoke-direct {v0, v1}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_sysprop;-><init>(Lcom/adobe/air/JavaTrustStoreHelper$1;)V

    return-object v0

    .line 234
    :cond_0
    invoke-static {}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    new-instance v0, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;

    invoke-direct {v0, v1}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;-><init>(Lcom/adobe/air/JavaTrustStoreHelper$1;)V

    return-object v0

    .line 242
    :cond_1
    new-instance v0, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_stub;

    invoke-direct {v0, v1}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_stub;-><init>(Lcom/adobe/air/JavaTrustStoreHelper$1;)V

    return-object v0
.end method

.method private static isAirCertBundleStale(Ljava/lang/String;)Z
    .locals 6

    .line 215
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 219
    sget-object p0, Lcom/adobe/air/JavaTrustStoreHelper;->mSystemKeyStoreMgr:Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;

    invoke-interface {p0}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
