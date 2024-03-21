.class public Lcom/ironsource/mediationsdk/utils/IronSourceAES;
.super Ljava/lang/Object;
.source "IronSourceAES.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized compressAndEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/IronSourceAES;

    monitor-enter v0

    .line 45
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->getInstance()Lcom/ironsource/mediationsdk/utils/EncryptionUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->getMediationKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->compressAndEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized compressAndEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/IronSourceAES;

    monitor-enter v0

    .line 49
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v0

    return-object p0

    .line 53
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceGZIP;->compress(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 55
    invoke-static {p0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->encodeFromBytes(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 58
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const-string p0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 48
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/ironsource/mediationsdk/utils/IronSourceAES;

    monitor-enter v0

    .line 119
    :try_start_0
    invoke-static {p0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->decodeToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 121
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :cond_0
    :try_start_1
    const-string p0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 118
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized decodeToBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5

    const-class v0, Lcom/ironsource/mediationsdk/utils/IronSourceAES;

    monitor-enter v0

    .line 128
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 129
    monitor-exit v0

    return-object v2

    .line 131
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 132
    monitor-exit v0

    return-object v2

    .line 135
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->getKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p0

    const/16 v1, 0x10

    .line 138
    new-array v1, v1, [B

    const/4 v3, 0x0

    .line 139
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 140
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 142
    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v1, "AES/CBC/PKCS7Padding"

    .line 144
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v3, 0x2

    .line 145
    invoke-virtual {v1, v3, p0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 146
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 151
    :try_start_3
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception on decryption error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 127
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized decryptAndDecompress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/IronSourceAES;

    monitor-enter v0

    .line 64
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->getInstance()Lcom/ironsource/mediationsdk/utils/EncryptionUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->getMediationKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->decryptAndDecompress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized decryptAndDecompress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/IronSourceAES;

    monitor-enter v0

    .line 68
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit v0

    return-object p0

    .line 72
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->decodeToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 74
    invoke-static {p0}, Lcom/ironsource/mediationsdk/utils/IronSourceGZIP;->decompress([B)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 78
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const-string p0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 67
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/IronSourceAES;

    monitor-enter v0

    .line 23
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit v0

    return-object p0

    .line 26
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_2
    const-string v1, "UTF8"

    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 31
    invoke-static {p0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->encodeFromBytes(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 34
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 37
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized encodeFromBytes(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/ironsource/mediationsdk/utils/IronSourceAES;

    monitor-enter v0

    .line 86
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit v0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    const-string p0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    monitor-exit v0

    return-object p0

    .line 93
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->getKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p0

    const/16 v1, 0x10

    .line 96
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 97
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 98
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v1, "AES/CBC/PKCS7Padding"

    .line 101
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v4, 0x1

    .line 102
    invoke-virtual {v1, v4, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 104
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string p1, "line.separator"

    .line 105
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    .line 110
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 85
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/IronSourceAES;

    monitor-enter v0

    .line 41
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->getInstance()Lcom/ironsource/mediationsdk/utils/EncryptionUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/EncryptionUtils;->getMediationKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 168
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 170
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const-string v2, "UTF-8"

    .line 173
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 174
    array-length v2, p0

    array-length v3, v0

    if-ge v2, v3, :cond_0

    array-length v2, p0

    goto :goto_0

    :cond_0
    array-length v2, v0

    .line 175
    :goto_0
    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {p0, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p0
.end method
