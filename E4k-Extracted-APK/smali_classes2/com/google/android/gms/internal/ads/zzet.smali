.class public final Lcom/google/android/gms/internal/ads/zzet;
.super Lcom/google/android/gms/internal/ads/zzeb;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private zzd:I

.field private zze:Z

.field private zzf:[B

.field private zzg:[B

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:Z

.field private zzl:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeb;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzamq;->zzf:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzf:[B

    sget-object v0, Lcom/google/android/gms/internal/ads/zzamq;->zzf:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzg:[B

    return-void
.end method

.method private final zzq([BI)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzeb;->zzi(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzk:Z

    :cond_0
    return-void
.end method

.method private final zzr(Ljava/nio/ByteBuffer;[BI)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzj:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzj:I

    sub-int/2addr v1, v0

    sub-int/2addr p3, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzg:[B

    const/4 v3, 0x0

    .line 2
    invoke-static {p2, p3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzg:[B

    .line 4
    invoke-virtual {p1, p2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final zzs(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzb:Lcom/google/android/gms/internal/ads/zzdc;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdc;->zzb:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method private final zzt(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x400

    if-le v1, v2, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzd:I

    .line 3
    div-int/2addr v0, p1

    mul-int p1, p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    return p1
.end method


# virtual methods
.method public final zzb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zze:Z

    return v0
.end method

.method public final zzc(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeb;->zzj()Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzh:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 27
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzet;->zzt(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 29
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzet;->zzl:J

    .line 30
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzet;->zzd:I

    div-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzet;->zzl:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzet;->zzg:[B

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzet;->zzj:I

    .line 31
    invoke-direct {p0, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzet;->zzr(Ljava/nio/ByteBuffer;[BI)V

    if-ge v2, v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzg:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzet;->zzj:I

    .line 32
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzet;->zzq([BI)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzh:I

    .line 33
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 13
    :pswitch_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzet;->zzt(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int v3, v2, v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzet;->zzf:[B

    .line 16
    array-length v5, v4

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzet;->zzi:I

    sub-int/2addr v5, v6

    if-ge v2, v0, :cond_1

    if-ge v3, v5, :cond_1

    .line 26
    invoke-direct {p0, v4, v6}, Lcom/google/android/gms/internal/ads/zzet;->zzq([BI)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzi:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzh:I

    goto :goto_0

    .line 17
    :cond_1
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzet;->zzf:[B

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzet;->zzi:I

    .line 19
    invoke-virtual {p1, v3, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzet;->zzi:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzet;->zzi:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzf:[B

    .line 20
    array-length v4, v2

    if-ne v3, v4, :cond_3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzet;->zzk:Z

    if-eqz v4, :cond_2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzet;->zzj:I

    .line 21
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzet;->zzq([BI)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzl:J

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzet;->zzi:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzet;->zzj:I

    add-int/2addr v5, v5

    sub-int v5, v4, v5

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzet;->zzd:I

    .line 22
    div-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzl:J

    move v3, v4

    goto :goto_1

    .line 25
    :cond_2
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzet;->zzl:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzj:I

    sub-int v2, v3, v2

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzet;->zzd:I

    .line 23
    div-int/2addr v2, v6

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzet;->zzl:J

    .line 22
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzf:[B

    .line 24
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzet;->zzr(Ljava/nio/ByteBuffer;[BI)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzi:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzh:I

    .line 25
    :cond_3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 2
    :pswitch_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzf:[B

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-lt v1, v2, :cond_5

    .line 5
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x400

    if-le v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzd:I

    .line 6
    div-int/2addr v1, v2

    mul-int v1, v1, v2

    add-int/2addr v1, v2

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, -0x2

    goto :goto_2

    .line 7
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 8
    :goto_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_6

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzet;->zzh:I

    goto :goto_4

    .line 9
    :cond_6
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 11
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzeb;->zzi(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v1, :cond_7

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzet;->zzk:Z

    .line 12
    :cond_7
    :goto_4
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzdc;)Lcom/google/android/gms/internal/ads/zzdc;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdd;
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzdc;->zzd:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zze:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdc;->zza:Lcom/google/android/gms/internal/ads/zzdc;

    return-object p1

    .line 1
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdd;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdd;-><init>(Lcom/google/android/gms/internal/ads/zzdc;)V

    throw v0
.end method

.method protected final zzl()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzi:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzf:[B

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzet;->zzq([BI)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzk:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzl:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzet;->zzj:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzet;->zzd:I

    .line 2
    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzl:J

    :cond_1
    return-void
.end method

.method protected final zzm()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zze:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzb:Lcom/google/android/gms/internal/ads/zzdc;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdc;->zze:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzd:I

    const-wide/32 v0, 0x249f0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzet;->zzs(J)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzd:I

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzf:[B

    .line 3
    array-length v1, v1

    if-eq v1, v0, :cond_0

    .line 4
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzf:[B

    :cond_0
    const-wide/16 v0, 0x4e20

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzet;->zzs(J)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzd:I

    mul-int v0, v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzj:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzg:[B

    .line 6
    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 7
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzg:[B

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzh:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzet;->zzl:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzi:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzk:Z

    return-void
.end method

.method protected final zzn()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zze:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzj:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzamq;->zzf:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzf:[B

    sget-object v0, Lcom/google/android/gms/internal/ads/zzamq;->zzf:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzg:[B

    return-void
.end method

.method public final zzo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzet;->zze:Z

    return-void
.end method

.method public final zzp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzet;->zzl:J

    return-wide v0
.end method
