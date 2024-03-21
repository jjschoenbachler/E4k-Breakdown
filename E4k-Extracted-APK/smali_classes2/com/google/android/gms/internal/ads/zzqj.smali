.class final Lcom/google/android/gms/internal/ads/zzqj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzamf;

.field private zzb:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zznv;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zznp;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    .line 2
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_2

    const/16 v3, 0x80

    const/4 v4, 0x0

    :goto_0
    and-int v5, v0, v3

    if-nez v5, :cond_0

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqj;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v3

    .line 3
    invoke-virtual {p1, v3, v1, v4, v2}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    :goto_1
    if-ge v2, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 p1, v0, 0x8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    .line 4
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, p1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzb:I

    add-int/2addr v4, v1

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzb:I

    int-to-long v0, v0

    return-wide v0

    :cond_2
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zznv;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzo()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    const-wide/16 v5, 0x400

    cmp-long v7, v1, v3

    if-eqz v7, :cond_1

    cmp-long v7, v1, v5

    if-lez v7, :cond_0

    goto :goto_0

    :cond_0
    move-wide v5, v1

    :cond_1
    :goto_0
    long-to-int v5, v5

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzqj;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v6

    move-object/from16 v8, p1

    check-cast v8, Lcom/google/android/gms/internal/ads/zznp;

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v10, v9, v10}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzqj;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 2
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v11

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzb:I

    :goto_1
    const-wide/32 v13, 0x1a45dfa3

    const/4 v6, 0x1

    cmp-long v9, v11, v13

    if-eqz v9, :cond_3

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzb:I

    add-int/2addr v9, v6

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzb:I

    if-ne v9, v5, :cond_2

    return v10

    :cond_2
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzqj;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v9

    .line 3
    invoke-virtual {v8, v9, v10, v6, v10}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    const/16 v6, 0x8

    shl-long/2addr v11, v6

    const-wide/16 v13, -0x100

    and-long/2addr v11, v13

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzqj;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v6

    .line 4
    aget-byte v6, v6, v10

    and-int/lit16 v6, v6, 0xff

    int-to-long v13, v6

    or-long/2addr v11, v13

    goto :goto_1

    .line 5
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzqj;->zzb(Lcom/google/android/gms/internal/ads/zznv;)J

    move-result-wide v11

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzb:I

    int-to-long v13, v5

    const-wide/high16 v15, -0x8000000000000000L

    cmp-long v5, v11, v15

    if-eqz v5, :cond_9

    cmp-long v5, v1, v3

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    add-long v3, v13, v11

    cmp-long v5, v3, v1

    if-ltz v5, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzb:I

    int-to-long v1, v1

    add-long v3, v13, v11

    cmp-long v5, v1, v3

    if-gez v5, :cond_8

    .line 6
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzqj;->zzb(Lcom/google/android/gms/internal/ads/zznv;)J

    move-result-wide v1

    cmp-long v3, v1, v15

    if-nez v3, :cond_6

    return v10

    .line 7
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzqj;->zzb(Lcom/google/android/gms/internal/ads/zznv;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_7

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    long-to-int v1, v1

    .line 8
    invoke-virtual {v8, v1, v10}, Lcom/google/android/gms/internal/ads/zznp;->zzj(IZ)Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzb:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzb:I

    goto :goto_2

    :cond_7
    return v10

    :cond_8
    cmp-long v5, v1, v3

    if-nez v5, :cond_9

    return v6

    :cond_9
    :goto_3
    return v10
.end method
