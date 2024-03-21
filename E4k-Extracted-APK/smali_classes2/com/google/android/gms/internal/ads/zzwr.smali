.class public Lcom/google/android/gms/internal/ads/zzwr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzvv;


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzwt;

.field protected final zzb:Lcom/google/android/gms/internal/ads/zzwq;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzwq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzwq;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwt;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzwt;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzc:Lcom/google/android/gms/internal/ads/zzwq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzb:Lcom/google/android/gms/internal/ads/zzwq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zza:Lcom/google/android/gms/internal/ads/zzwt;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/zzvy;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzwc<",
            "*>;)",
            "Lcom/google/android/gms/internal/ads/zzvy;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzwl;
        }
    .end annotation

    move-object/from16 v1, p1

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwc;->zzl()Lcom/google/android/gms/internal/ads/zzvl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 35
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    .line 5
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzvl;->zzb:Ljava/lang/String;

    if-eqz v9, :cond_1

    const-string v10, "If-None-Match"

    .line 6
    invoke-interface {v8, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzvl;->zzd:J

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-lez v0, :cond_2

    const-string v0, "If-Modified-Since"

    .line 7
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzwz;->zzc(J)Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-interface {v8, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v0, v8

    :goto_1
    const-string v8, "application/x-www-form-urlencoded; charset=UTF-8"

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwc;->zzi()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/util/HashMap;

    .line 10
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-virtual {v10, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwc;->zzn()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 13
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    .line 15
    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    move-result v11

    invoke-virtual {v9, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwc;->zzp()I

    move-result v11

    .line 17
    invoke-virtual {v9, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 18
    invoke-virtual {v9, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 19
    invoke-virtual {v9, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 20
    invoke-virtual {v9, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v11, "https"

    .line 21
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 22
    :try_start_1
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 23
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v9, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 24
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwc;->zzb()I

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "POST"

    .line 25
    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwc;->zzo()[B

    move-result-object v0

    if-eqz v0, :cond_6

    .line 27
    invoke-virtual {v9, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 28
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v10

    const-string v11, "Content-Type"

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "Content-Type"

    .line 29
    invoke-virtual {v9, v10, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_4
    new-instance v8, Ljava/io/DataOutputStream;

    .line 31
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    .line 32
    invoke-direct {v8, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 33
    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 34
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    goto :goto_3

    :cond_5
    const-string v0, "GET"

    .line 35
    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 36
    :cond_6
    :goto_3
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/4 v8, -0x1

    if-eq v0, v8, :cond_16

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwc;->zzb()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/16 v10, 0x64

    const/16 v11, 0x130

    const/16 v12, 0xc8

    if-lt v0, v10, :cond_7

    if-lt v0, v12, :cond_8

    :cond_7
    const/16 v10, 0xcc

    if-eq v0, v10, :cond_8

    if-eq v0, v11, :cond_8

    :try_start_2
    new-instance v10, Lcom/google/android/gms/internal/ads/zzxa;

    .line 39
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzxd;->zza(Ljava/util/Map;)Ljava/util/List;

    move-result-object v13

    .line 40
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v14

    new-instance v15, Lcom/google/android/gms/internal/ads/zzxb;

    .line 41
    invoke-direct {v15, v9}, Lcom/google/android/gms/internal/ads/zzxb;-><init>(Ljava/net/HttpURLConnection;)V

    .line 42
    invoke-direct {v10, v0, v13, v14, v15}, Lcom/google/android/gms/internal/ads/zzxa;-><init>(ILjava/util/List;ILjava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v11, p0

    move-object v6, v0

    const/4 v0, 0x1

    goto/16 :goto_13

    .line 82
    :cond_8
    :try_start_3
    new-instance v10, Lcom/google/android/gms/internal/ads/zzxa;

    .line 43
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzxd;->zza(Ljava/util/Map;)Ljava/util/List;

    move-result-object v13

    .line 44
    invoke-direct {v10, v0, v13, v8, v6}, Lcom/google/android/gms/internal/ads/zzxa;-><init>(ILjava/util/List;ILjava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 45
    :try_start_4
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 42
    :goto_4
    :try_start_5
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzxa;->zza()I

    move-result v14

    .line 46
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzxa;->zzb()Ljava/util/List;

    move-result-object v0

    if-ne v14, v11, :cond_f

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/4 v11, 0x0

    sub-long/2addr v8, v2

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwc;->zzl()Lcom/google/android/gms/internal/ads/zzvl;

    move-result-object v11

    if-nez v11, :cond_9

    new-instance v11, Lcom/google/android/gms/internal/ads/zzvy;

    const/16 v16, 0x130

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v15, v11

    move-wide/from16 v19, v8

    move-object/from16 v21, v0

    .line 63
    invoke-direct/range {v15 .. v21}, Lcom/google/android/gms/internal/ads/zzvy;-><init>(I[BZJLjava/util/List;)V

    move-object v0, v11

    goto/16 :goto_8

    :cond_9
    new-instance v12, Ljava/util/TreeSet;

    sget-object v13, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 49
    invoke-direct {v12, v13}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 50
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_a

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzvu;

    .line 52
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzvu;->zza()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    new-instance v15, Ljava/util/ArrayList;

    .line 53
    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzvl;->zzh:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 54
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzvl;->zzh:Ljava/util/List;

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzvu;

    .line 56
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzvu;->zza()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 57
    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 62
    :cond_c
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzvl;->zzg:Ljava/util/Map;

    .line 58
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzvl;->zzg:Ljava/util/Map;

    .line 59
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 60
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    new-instance v14, Lcom/google/android/gms/internal/ads/zzvu;

    .line 61
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {v14, v6, v13}, Lcom/google/android/gms/internal/ads/zzvu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    goto :goto_7

    .line 57
    :cond_e
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvy;

    const/16 v13, 0x130

    iget-object v14, v11, Lcom/google/android/gms/internal/ads/zzvl;->zza:[B

    const/4 v6, 0x1

    move-object v12, v0

    move-object v11, v15

    move v15, v6

    move-wide/from16 v16, v8

    move-object/from16 v18, v11

    .line 62
    invoke-direct/range {v12 .. v18}, Lcom/google/android/gms/internal/ads/zzvy;-><init>(I[BZJLjava/util/List;)V

    :goto_8
    return-object v0

    .line 61
    :cond_f
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzxa;->zzd()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzxa;->zzc()I

    move-result v9
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v11, p0

    :try_start_6
    iget-object v13, v11, Lcom/google/android/gms/internal/ads/zzwr;->zza:Lcom/google/android/gms/internal/ads/zzwt;

    .line 64
    new-instance v15, Lcom/google/android/gms/internal/ads/zzxg;

    invoke-direct {v15, v13, v9}, Lcom/google/android/gms/internal/ads/zzxg;-><init>(Lcom/google/android/gms/internal/ads/zzwt;I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    const/16 v9, 0x400

    .line 65
    :try_start_7
    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/zzwt;->zza(I)[B

    move-result-object v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 66
    :goto_9
    :try_start_8
    invoke-virtual {v6, v9}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-eq v12, v8, :cond_10

    .line 67
    invoke-virtual {v15, v9, v7, v12}, Lcom/google/android/gms/internal/ads/zzxg;->write([BII)V

    goto :goto_9

    .line 68
    :cond_10
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzxg;->toByteArray()[B

    move-result-object v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 69
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_a

    :catch_0
    :try_start_a
    const-string v6, "Error occurred when closing InputStream"

    .line 73
    new-array v12, v7, [Ljava/lang/Object;

    .line 70
    invoke-static {v6, v12}, Lcom/google/android/gms/internal/ads/zzwo;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :goto_a
    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/zzwt;->zzb([B)V

    .line 72
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzxg;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    move-object v6, v8

    goto :goto_d

    :catchall_1
    move-exception v0

    goto :goto_b

    :catchall_2
    move-exception v0

    const/4 v9, 0x0

    .line 69
    :goto_b
    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_c

    :catch_1
    :try_start_c
    const-string v6, "Error occurred when closing InputStream"

    .line 103
    new-array v8, v7, [Ljava/lang/Object;

    .line 70
    invoke-static {v6, v8}, Lcom/google/android/gms/internal/ads/zzwo;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :goto_c
    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/zzwt;->zzb([B)V

    .line 72
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzxg;->close()V

    .line 73
    throw v0

    :cond_11
    move-object/from16 v11, p0

    .line 82
    new-array v6, v7, [B
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 74
    :goto_d
    :try_start_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/4 v12, 0x0

    sub-long/2addr v8, v2

    .line 75
    sget-boolean v12, Lcom/google/android/gms/internal/ads/zzwo;->zzb:Z

    if-nez v12, :cond_13

    const-wide/16 v12, 0xbb8

    cmp-long v15, v8, v12

    if-lez v15, :cond_12

    goto :goto_f

    :cond_12
    :goto_e
    const/16 v8, 0xc8

    goto :goto_11

    :cond_13
    :goto_f
    const-string v12, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v1, v13, v7

    .line 76
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v13, v5

    if-eqz v6, :cond_14

    array-length v8, v6

    .line 77
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_10

    :cond_14
    const-string v8, "null"

    :goto_10
    aput-object v8, v13, v4

    const/4 v8, 0x3

    .line 78
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v13, v8

    const/4 v8, 0x4

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwc;->zzy()Lcom/google/android/gms/internal/ads/zzvq;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzvq;->zzb()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v13, v8

    .line 80
    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzwo;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    :goto_11
    if-lt v14, v8, :cond_15

    const/16 v8, 0x12b

    if-gt v14, v8, :cond_15

    .line 81
    new-instance v8, Lcom/google/android/gms/internal/ads/zzvy;

    const/16 v16, 0x0

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const/4 v9, 0x0

    sub-long v17, v12, v2

    move-object v13, v8

    move-object v15, v6

    move-object/from16 v19, v0

    invoke-direct/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/zzvy;-><init>(I[BZJLjava/util/List;)V

    return-object v8

    .line 80
    :cond_15
    new-instance v0, Ljava/io/IOException;

    .line 81
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    :catch_2
    move-exception v0

    move-object v14, v6

    goto :goto_17

    :catch_3
    move-exception v0

    goto :goto_16

    :catch_4
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_16

    :cond_16
    move-object/from16 v11, p0

    .line 36
    :try_start_e
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Could not retrieve response code from HttpUrlConnection."

    .line 37
    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_12

    :catchall_4
    move-exception v0

    move-object/from16 v11, p0

    :goto_12
    move-object v6, v0

    const/4 v0, 0x0

    :goto_13
    if-nez v0, :cond_17

    .line 45
    :try_start_f
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_14

    :catch_5
    move-exception v0

    goto :goto_15

    .line 83
    :cond_17
    :goto_14
    throw v6
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    :catch_6
    move-exception v0

    move-object/from16 v11, p0

    :goto_15
    const/4 v10, 0x0

    :goto_16
    const/4 v14, 0x0

    .line 84
    :goto_17
    instance-of v6, v0, Ljava/net/SocketTimeoutException;

    if-eqz v6, :cond_18

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxf;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzwk;

    .line 85
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzwk;-><init>()V

    const-string v8, "socket"

    const/4 v9, 0x0

    invoke-direct {v0, v8, v6, v9}, Lcom/google/android/gms/internal/ads/zzxf;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzwl;Lcom/google/android/gms/internal/ads/zzxe;)V

    :goto_18
    move-object v6, v0

    goto/16 :goto_1b

    .line 86
    :cond_18
    instance-of v6, v0, Ljava/net/MalformedURLException;

    if-eqz v6, :cond_1a

    new-instance v2, Ljava/lang/RuntimeException;

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwc;->zzi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Bad URL "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    .line 90
    :cond_19
    new-instance v1, Ljava/lang/String;

    .line 96
    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_19
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1a
    if-eqz v10, :cond_1f

    .line 70
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzxa;->zza()I

    move-result v0

    new-array v6, v4, [Ljava/lang/Object;

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwc;->zzi()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v5

    const-string v8, "Unexpected response code %d for %s"

    invoke-static {v8, v6}, Lcom/google/android/gms/internal/ads/zzwo;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v14, :cond_1e

    .line 88
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzxa;->zzb()Ljava/util/List;

    move-result-object v18

    new-instance v6, Lcom/google/android/gms/internal/ads/zzvy;

    const/4 v15, 0x0

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v16, v8, v2

    move-object v12, v6

    move v13, v0

    invoke-direct/range {v12 .. v18}, Lcom/google/android/gms/internal/ads/zzvy;-><init>(I[BZJLjava/util/List;)V

    const/16 v8, 0x191

    if-eq v0, v8, :cond_1d

    const/16 v8, 0x193

    if-ne v0, v8, :cond_1b

    goto :goto_1a

    :cond_1b
    const/16 v1, 0x190

    if-lt v0, v1, :cond_1c

    const/16 v1, 0x1f3

    if-gt v0, v1, :cond_1c

    .line 98
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvp;

    .line 99
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzvp;-><init>(Lcom/google/android/gms/internal/ads/zzvy;)V

    throw v0

    .line 91
    :cond_1c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwj;

    .line 98
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzwj;-><init>(Lcom/google/android/gms/internal/ads/zzvy;)V

    throw v0

    .line 89
    :cond_1d
    :goto_1a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxf;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzvk;

    .line 90
    invoke-direct {v8, v6}, Lcom/google/android/gms/internal/ads/zzvk;-><init>(Lcom/google/android/gms/internal/ads/zzvy;)V

    const-string v6, "auth"

    const/4 v9, 0x0

    invoke-direct {v0, v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzxf;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzwl;Lcom/google/android/gms/internal/ads/zzxe;)V

    goto :goto_18

    :cond_1e
    const/4 v9, 0x0

    .line 97
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxf;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzvx;

    .line 91
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzvx;-><init>()V

    const-string v8, "network"

    invoke-direct {v0, v8, v6, v9}, Lcom/google/android/gms/internal/ads/zzxf;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzwl;Lcom/google/android/gms/internal/ads/zzxe;)V

    goto/16 :goto_18

    .line 92
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwc;->zzy()Lcom/google/android/gms/internal/ads/zzvq;

    move-result-object v0

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwc;->zzp()I

    move-result v8

    :try_start_10
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzxf;->zzb(Lcom/google/android/gms/internal/ads/zzxf;)Lcom/google/android/gms/internal/ads/zzwl;

    move-result-object v9

    .line 94
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzvq;->zzc(Lcom/google/android/gms/internal/ads/zzwl;)V
    :try_end_10
    .catch Lcom/google/android/gms/internal/ads/zzwl; {:try_start_10 .. :try_end_10} :catch_7

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzxf;->zza(Lcom/google/android/gms/internal/ads/zzxf;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    .line 95
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v5

    const-string v4, "%s-retry [timeout=%s]"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzwc;->zzd(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_7
    move-exception v0

    .line 96
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzxf;->zza(Lcom/google/android/gms/internal/ads/zzxf;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 100
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "%s-timeout-giveup [timeout=%s]"

    .line 101
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzwc;->zzd(Ljava/lang/String;)V

    .line 103
    throw v0

    .line 96
    :cond_1f
    new-instance v1, Lcom/google/android/gms/internal/ads/zzvz;

    .line 97
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzvz;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_1c
    nop

    goto :goto_1c
.end method
