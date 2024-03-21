.class final Lcom/google/android/gms/internal/ads/zzaqg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaux;

.field private zzb:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaux;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaux;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzapn;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzapn;->zze([BIIZ)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

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

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    .line 3
    invoke-virtual {p1, v3, v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzapn;->zze([BIIZ)Z

    :goto_1
    if-ge v2, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 p1, v0, 0x8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    .line 4
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, p1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zzb:I

    add-int/2addr v4, v1

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zzb:I

    int-to-long v0, v0

    return-wide v0

    :cond_2
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzapn;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzapn;->zzi()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x400

    cmp-long v6, v0, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    move-wide v4, v0

    :cond_1
    :goto_0
    long-to-int v4, v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v7, v6, v7}, Lcom/google/android/gms/internal/ads/zzapn;->zze([BIIZ)Z

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    .line 2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaux;->zzp()J

    move-result-wide v8

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zzb:I

    :goto_1
    const-wide/32 v5, 0x1a45dfa3

    const/4 v10, 0x1

    cmp-long v11, v8, v5

    if-eqz v11, :cond_3

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zzb:I

    add-int/2addr v5, v10

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zzb:I

    if-ne v5, v4, :cond_2

    return v7

    :cond_2
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    .line 3
    invoke-virtual {p1, v5, v7, v10, v7}, Lcom/google/android/gms/internal/ads/zzapn;->zze([BIIZ)Z

    const/16 v5, 0x8

    shl-long v5, v8, v5

    const-wide/16 v8, -0x100

    and-long/2addr v5, v8

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    .line 4
    aget-byte v8, v8, v7

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    or-long/2addr v8, v5

    goto :goto_1

    .line 5
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqg;->zzb(Lcom/google/android/gms/internal/ads/zzapn;)J

    move-result-wide v4

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zzb:I

    int-to-long v8, v6

    const-wide/high16 v11, -0x8000000000000000L

    cmp-long v6, v4, v11

    if-eqz v6, :cond_9

    cmp-long v6, v0, v2

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    add-long v2, v8, v4

    cmp-long v6, v2, v0

    if-ltz v6, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zzb:I

    int-to-long v0, v0

    add-long v2, v8, v4

    cmp-long v6, v0, v2

    if-gez v6, :cond_8

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqg;->zzb(Lcom/google/android/gms/internal/ads/zzapn;)J

    move-result-wide v0

    cmp-long v2, v0, v11

    if-nez v2, :cond_6

    return v7

    .line 7
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqg;->zzb(Lcom/google/android/gms/internal/ads/zzapn;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v6, v0, v2

    if-ltz v6, :cond_7

    cmp-long v6, v0, v2

    if-eqz v6, :cond_5

    long-to-int v2, v0

    .line 8
    invoke-virtual {p1, v2, v7}, Lcom/google/android/gms/internal/ads/zzapn;->zzf(IZ)Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zzb:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqg;->zzb:I

    goto :goto_2

    :cond_7
    return v7

    :cond_8
    cmp-long p1, v0, v2

    if-nez p1, :cond_9

    return v10

    :cond_9
    :goto_3
    return v7
.end method
