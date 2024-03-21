.class public final Lcom/google/android/gms/internal/ads/zzfjk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public static zza(I)Z
    .locals 1

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfii;)I
    .locals 13

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "lib"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x7

    const/16 v4, 0x1399

    const/16 v5, 0x3e8

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v1, :cond_0

    const-string v0, "No lib/"

    .line 3
    invoke-virtual {p1, v4, v0}, Lcom/google/android/gms/internal/ads/zzfii;->zze(ILjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    :goto_0
    const/16 v0, 0x3e8

    goto/16 :goto_5

    .line 4
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfqp;

    const-string v10, ".*\\.so$"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 5
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/ads/zzfqp;-><init>(Ljava/util/regex/Pattern;)V

    .line 6
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v1, v0

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 7
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const/4 v4, 0x0

    .line 8
    aget-object v0, v0, v4

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x14

    :try_start_1
    new-array v10, v0, [B

    .line 9
    invoke-virtual {v1, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    if-ne v12, v0, :cond_2

    new-array v0, v11, [B

    fill-array-data v0, :array_0

    aget-byte v12, v10, v6

    if-ne v12, v11, :cond_3

    .line 10
    invoke-static {v10, v8, p0, p1}, Lcom/google/android/gms/internal/ads/zzfjk;->zzc([BLjava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfii;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_3
    const/16 v11, 0x13

    :try_start_3
    aget-byte v11, v10, v11

    aput-byte v11, v0, v4

    const/16 v4, 0x12

    aget-byte v4, v10, v4

    aput-byte v4, v0, v9

    .line 12
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    if-eq v0, v7, :cond_7

    const/16 v4, 0x28

    if-eq v0, v4, :cond_6

    const/16 v4, 0x3e

    if-eq v0, v4, :cond_5

    const/16 v4, 0xb7

    if-eq v0, v4, :cond_4

    .line 14
    invoke-static {v10, v8, p0, p1}, Lcom/google/android/gms/internal/ads/zzfjk;->zzc([BLjava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfii;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 11
    :cond_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x6

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x7

    goto :goto_5

    :cond_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x3

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v0, 0x5

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 8
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzged;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfjk;->zzc([BLjava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfii;)V

    :goto_3
    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    :goto_4
    const-string v0, "No .so"

    .line 7
    invoke-virtual {p1, v4, v0}, Lcom/google/android/gms/internal/ads/zzfii;->zze(ILjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    goto/16 :goto_0

    :goto_5
    if-ne v0, v5, :cond_f

    .line 16
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfjk;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfii;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "Empty dev arch"

    .line 18
    invoke-static {v8, v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfjk;->zzc([BLjava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfii;)V

    :goto_6
    const/4 v6, 0x1

    goto :goto_8

    :cond_9
    const-string v1, "i686"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_8

    :cond_a
    const-string v1, "x86_64"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v6, 0x7

    goto :goto_8

    :cond_b
    const-string v1, "arm64-v8a"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v6, 0x6

    goto :goto_8

    :cond_c
    const-string v1, "armeabi-v7a"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "armv71"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_7

    .line 23
    :cond_d
    invoke-static {v8, v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfjk;->zzc([BLjava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfii;)V

    goto :goto_6

    :cond_e
    :goto_7
    const/4 v6, 0x3

    goto :goto_8

    :cond_f
    move v6, v0

    :cond_10
    :goto_8
    if-eq v6, v9, :cond_12

    if-eq v6, v7, :cond_11

    packed-switch v6, :pswitch_data_0

    const-string p0, "null"

    goto :goto_9

    :pswitch_0
    const-string p0, "X86_64"

    goto :goto_9

    :pswitch_1
    const-string p0, "ARM64"

    goto :goto_9

    :pswitch_2
    const-string p0, "X86"

    goto :goto_9

    :cond_11
    const-string p0, "ARM7"

    goto :goto_9

    :cond_12
    const-string p0, "UNSUPPORTED"

    :goto_9
    const/16 v0, 0x139a

    .line 24
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzfii;->zze(ILjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private static final zzc([BLjava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfii;)V
    .locals 2

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "os.arch:"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfmh;->zzu:Lcom/google/android/gms/internal/ads/zzfmh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfmh;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    const-class v0, Landroid/os/Build;

    const-string v1, "SUPPORTED_ABIS"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "supported_abis:"

    .line 5
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    const-string v0, "CPU_ABI:"

    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";CPU_ABI2:"

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    const-string v0, "ELF:"

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p1, :cond_2

    const-string p0, "dbg:"

    .line 9
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 p0, 0xfa7

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p3, p0, p1}, Lcom/google/android/gms/internal/ads/zzfii;->zze(ILjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static final zzd(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfii;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance p0, Ljava/util/HashSet;

    const-string v0, "i686"

    const-string v1, "armv71"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfmh;->zzu:Lcom/google/android/gms/internal/ads/zzfmh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfmh;->zza()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    const/16 p0, 0x7e8

    :try_start_0
    const-class v2, Landroid/os/Build;

    const-string v3, "SUPPORTED_ABIS"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    const/4 v3, 0x0

    .line 6
    aget-object v2, v2, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    .line 7
    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfii;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    goto :goto_1

    :catch_1
    move-exception v2

    .line 8
    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfii;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 6
    :cond_2
    :goto_1
    sget-object p0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    if-eqz p0, :cond_3

    sget-object p0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object p0

    :cond_3
    sget-object p0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    return-object p0
.end method
