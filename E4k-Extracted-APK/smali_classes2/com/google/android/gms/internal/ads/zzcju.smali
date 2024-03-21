.class final Lcom/google/android/gms/internal/ads/zzcju;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaui;


# static fields
.field private static final zzb:Ljava/util/regex/Pattern;

.field private static final zzc:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final zzd:Ljavax/net/ssl/SSLSocketFactory;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Ljava/lang/String;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzauh;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzauo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzauo<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzcju;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:Lcom/google/android/gms/internal/ads/zzaub;

.field private zzk:Ljava/net/HttpURLConnection;

.field private zzl:Ljava/io/InputStream;

.field private zzm:Z

.field private zzn:J

.field private zzo:J

.field private zzp:J

.field private zzq:J

.field private zzr:I

.field private final zzs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcju;->zzb:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcju;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauo;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzauo<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzcju;",
            ">;III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcjt;-><init>(Lcom/google/android/gms/internal/ads/zzcju;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzd:Ljavax/net/ssl/SSLSocketFactory;

    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzs:Ljava/util/Set;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaup;->zzf(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzg:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzi:Lcom/google/android/gms/internal/ads/zzauo;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzauh;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzauh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzh:Lcom/google/android/gms/internal/ads/zzauh;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzcju;->zze:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzf:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzr:I

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzcju;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzr:I

    return p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzcju;Ljava/net/Socket;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzs:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final zzi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzk:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unexpected error while disconnecting"

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zze;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzk:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaub;)J
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzauf;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzcju;->zzj:Lcom/google/android/gms/internal/ads/zzaub;

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzcju;->zzq:J

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzcju;->zzp:J

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzaub;->zza:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/zzaub;->zzc:J

    iget-wide v8, v2, Lcom/google/android/gms/internal/ads/zzaub;->zzd:J

    const/4 v10, 0x0

    move-object v11, v0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v12, v0, 0x1

    const/16 v13, 0x14

    if-gt v0, v13, :cond_15

    .line 2
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 4
    instance-of v14, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v14, :cond_0

    .line 5
    move-object v14, v0

    check-cast v14, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzcju;->zzd:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v14, v15}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_0
    iget v14, v1, Lcom/google/android/gms/internal/ads/zzcju;->zze:I

    .line 6
    invoke-virtual {v0, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v14, v1, Lcom/google/android/gms/internal/ads/zzcju;->zzf:I

    .line 7
    invoke-virtual {v0, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzcju;->zzh:Lcom/google/android/gms/internal/ads/zzauh;

    .line 8
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzauh;->zza()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Ljava/lang/String;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v0, v5, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 v5, 0x1b

    const-wide/16 v14, -0x1

    cmp-long v16, v6, v3

    if-nez v16, :cond_3

    cmp-long v16, v8, v14

    if-eqz v16, :cond_2

    goto :goto_2

    :cond_2
    move-wide/from16 v21, v6

    goto :goto_4

    :cond_3
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    cmp-long v4, v8, v14

    if-eqz v4, :cond_4

    add-long v19, v6, v8

    move-wide/from16 v21, v6

    add-long v5, v19, v14

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v13

    new-instance v7, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-wide/from16 v21, v6

    :goto_3
    const-string v4, "Range"

    .line 12
    invoke-virtual {v0, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string v3, "User-Agent"

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzcju;->zzg:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Accept-Encoding"

    const-string v4, "identity"

    .line 14
    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 16
    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 17
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 18
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x12c

    if-eq v3, v4, :cond_11

    const/16 v4, 0x12d

    if-eq v3, v4, :cond_11

    const/16 v4, 0x12e

    if-eq v3, v4, :cond_11

    const/16 v4, 0x12f

    if-eq v3, v4, :cond_11

    const/16 v4, 0x133

    if-eq v3, v4, :cond_11

    const/16 v4, 0x134

    if-ne v3, v4, :cond_5

    goto/16 :goto_c

    .line 25
    :cond_5
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzcju;->zzk:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcju;->zzk:Ljava/net/HttpURLConnection;

    .line 26
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_e

    const/16 v4, 0x12b

    if-le v0, v4, :cond_6

    goto/16 :goto_9

    :cond_6
    if-ne v0, v3, :cond_7

    .line 33
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzaub;->zzc:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    const-wide/16 v3, 0x0

    :goto_5
    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzcju;->zzn:J

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzaub;->zzd:J

    cmp-long v0, v3, v14

    if-eqz v0, :cond_8

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzcju;->zzo:J

    goto/16 :goto_8

    .line 49
    :cond_8
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcju;->zzk:Ljava/net/HttpURLConnection;

    const-string v3, "Content-Length"

    .line 34
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 36
    :try_start_2
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 37
    :catch_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1c

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected Content-Length ["

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zze;->zzf(Ljava/lang/String;)V

    :cond_9
    move-wide v4, v14

    :goto_6
    const-string v6, "Content-Range"

    .line 38
    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    sget-object v6, Lcom/google/android/gms/internal/ads/zzcju;->zzb:Ljava/util/regex/Pattern;

    .line 40
    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 41
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v7, 0x2

    .line 42
    :try_start_3
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const/4 v6, 0x0

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    const-wide/16 v17, 0x0

    cmp-long v6, v4, v17

    if-gez v6, :cond_a

    move-wide v4, v7

    goto :goto_7

    :cond_a
    cmp-long v6, v4, v7

    if-eqz v6, :cond_b

    .line 43
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1a

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v6, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Inconsistent headers ["

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] ["

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zze;->zzi(Ljava/lang/String;)V

    .line 44
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    move-wide v4, v6

    goto :goto_7

    .line 45
    :catch_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x1b

    add-int/2addr v3, v7

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected Content-Range ["

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zzf(Ljava/lang/String;)V

    :cond_b
    :goto_7
    cmp-long v0, v4, v14

    if-eqz v0, :cond_c

    .line 42
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzcju;->zzn:J

    sub-long v14, v4, v6

    :cond_c
    iput-wide v14, v1, Lcom/google/android/gms/internal/ads/zzcju;->zzo:J

    .line 33
    :goto_8
    :try_start_4
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcju;->zzk:Ljava/net/HttpURLConnection;

    .line 46
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzcju;->zzl:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzcju;->zzm:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcju;->zzi:Lcom/google/android/gms/internal/ads/zzauo;

    if-eqz v0, :cond_d

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcki;

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcki;->zzR(Lcom/google/android/gms/internal/ads/zzatz;Lcom/google/android/gms/internal/ads/zzaub;)V

    :cond_d
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzcju;->zzo:J

    return-wide v2

    :catch_2
    move-exception v0

    .line 47
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzcju;->zzi()V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzauf;

    const/4 v4, 0x1

    .line 48
    invoke-direct {v3, v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzauf;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzaub;I)V

    throw v3

    .line 26
    :cond_e
    :goto_9
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcju;->zzk:Ljava/net/HttpURLConnection;

    .line 29
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    .line 30
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzcju;->zzi()V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaug;

    .line 31
    invoke-direct {v4, v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzaug;-><init>(ILjava/util/Map;Lcom/google/android/gms/internal/ads/zzaub;)V

    const/16 v2, 0x1a0

    if-ne v0, v2, :cond_f

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaua;

    .line 32
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzaua;-><init>(I)V

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzaug;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 33
    :cond_f
    throw v4

    :catch_3
    move-exception v0

    .line 27
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzcju;->zzi()V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzauf;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzaub;->zza:Landroid/net/Uri;

    .line 28
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Unable to connect to "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_a
    const/4 v5, 0x1

    goto :goto_b

    .line 51
    :cond_10
    new-instance v4, Ljava/lang/String;

    .line 28
    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_b
    invoke-direct {v3, v4, v0, v2, v5}, Lcom/google/android/gms/internal/ads/zzauf;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzaub;I)V

    throw v3

    :cond_11
    :goto_c
    const-wide/16 v17, 0x0

    :try_start_5
    const-string v3, "Location"

    .line 19
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v3, :cond_14

    .line 24
    new-instance v0, Ljava/net/URL;

    .line 21
    invoke-direct {v0, v11, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    .line 23
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "http"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 25
    new-instance v0, Ljava/net/ProtocolException;

    const-string v4, "Unsupported protocol redirect: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    .line 50
    :cond_12
    new-instance v3, Ljava/lang/String;

    .line 25
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_d
    invoke-direct {v0, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move-object v11, v0

    move v0, v12

    move-wide/from16 v3, v17

    move-wide/from16 v6, v21

    goto/16 :goto_0

    .line 24
    :cond_14
    new-instance v0, Ljava/net/ProtocolException;

    const-string v3, "Null location redirect"

    invoke-direct {v0, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_15
    new-instance v0, Ljava/net/NoRouteToHostException;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x1f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Too many redirects: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    move-exception v0

    .line 44
    new-instance v3, Lcom/google/android/gms/internal/ads/zzauf;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzaub;->zza:Landroid/net/Uri;

    .line 51
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Unable to connect to "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_e
    const/4 v5, 0x1

    goto :goto_f

    .line 45
    :cond_16
    new-instance v4, Ljava/lang/String;

    .line 51
    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_e

    :goto_f
    invoke-direct {v3, v4, v0, v2, v5}, Lcom/google/android/gms/internal/ads/zzauf;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzaub;I)V

    throw v3

    :goto_10
    nop

    goto :goto_10
.end method

.method public final zzb([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzauf;
        }
    .end annotation

    .line 9
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzp:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzn:J

    const/4 v4, 0x0

    const/4 v5, -0x1

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcju;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :cond_1
    :goto_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzp:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzn:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_4

    sub-long/2addr v6, v1

    .line 2
    array-length v1, v0

    int-to-long v1, v1

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzl:Ljava/io/InputStream;

    .line 3
    invoke-virtual {v2, v0, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_3

    if-eq v1, v5, :cond_2

    .line 7
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzp:J

    int-to-long v6, v1

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzp:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzi:Lcom/google/android/gms/internal/ads/zzauo;

    if-eqz v2, :cond_1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcki;

    .line 5
    invoke-virtual {v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzcki;->zzS(Lcom/google/android/gms/internal/ads/zzatz;I)V

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 6
    :cond_3
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 5
    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcju;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_1
    if-nez p3, :cond_5

    goto :goto_3

    .line 9
    :cond_5
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzo:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzq:J

    const/4 v4, 0x0

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-nez v4, :cond_6

    :goto_2
    const/4 v4, -0x1

    goto :goto_3

    :cond_6
    int-to-long v6, p3

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzl:Ljava/io/InputStream;

    .line 10
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ne v4, v5, :cond_9

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzo:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_8

    goto :goto_2

    .line 11
    :cond_8
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 10
    :cond_9
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzq:J

    int-to-long v0, v4

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzq:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzi:Lcom/google/android/gms/internal/ads/zzauo;

    if-eqz p1, :cond_a

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcki;

    .line 12
    invoke-virtual {p1, p0, v4}, Lcom/google/android/gms/internal/ads/zzcki;->zzS(Lcom/google/android/gms/internal/ads/zzatz;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_3
    return v4

    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Lcom/google/android/gms/internal/ads/zzauf;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzj:Lcom/google/android/gms/internal/ads/zzaub;

    const/4 v0, 0x2

    .line 13
    invoke-direct {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzauf;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzaub;I)V

    throw p2

    :goto_4
    nop

    goto :goto_4
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzk:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzauf;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzl:Ljava/io/InputStream;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzk:Ljava/net/HttpURLConnection;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzo:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzq:J

    const/4 v9, 0x0

    sub-long/2addr v3, v7

    .line 1
    :goto_0
    sget v7, Lcom/google/android/gms/internal/ads/zzave;->zza:I

    const/16 v8, 0x13

    if-eq v7, v8, :cond_1

    sget v7, Lcom/google/android/gms/internal/ads/zzave;->zza:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v8, 0x14

    if-eq v7, v8, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    .line 3
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    goto :goto_1

    :cond_2
    const-wide/16 v5, 0x800

    cmp-long v7, v3, v5

    if-gtz v7, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 7
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "unexpectedEndOfInput"

    new-array v5, v1, [Ljava/lang/Class;

    .line 8
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v1, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1
    :catch_0
    :cond_5
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzl:Ljava/io/InputStream;

    .line 11
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v2

    .line 15
    :try_start_3
    new-instance v3, Lcom/google/android/gms/internal/ads/zzauf;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzj:Lcom/google/android/gms/internal/ads/zzaub;

    const/4 v5, 0x3

    .line 12
    invoke-direct {v3, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzauf;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzaub;I)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 11
    :cond_6
    :goto_3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzl:Ljava/io/InputStream;

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcju;->zzi()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzm:Z

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzm:Z

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzs:Ljava/util/Set;

    .line 14
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void

    :catchall_0
    move-exception v2

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzl:Ljava/io/InputStream;

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcju;->zzi()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzm:Z

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzm:Z

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzs:Ljava/util/Set;

    .line 14
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 15
    throw v2
.end method

.method public final zze()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzk:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method final zzg(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzr:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzs:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 2
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcju;->zzr:I

    .line 3
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to update receive buffer size."

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zze;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
