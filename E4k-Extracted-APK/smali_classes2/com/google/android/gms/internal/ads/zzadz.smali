.class public final Lcom/google/android/gms/internal/ads/zzadz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:J

.field private final zzb:J

.field private zzc:J

.field private zzd:J

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:F

.field private zzj:F

.field private zzk:F

.field private zzl:J

.field private zzm:J

.field private zzn:J


# direct methods
.method synthetic constructor <init>(FFJFJJFLcom/google/android/gms/internal/ads/zzady;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzadz;->zza:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzb:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzc:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzd:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzf:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzg:J

    const p3, 0x3f7851ec    # 0.97f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzj:F

    const p3, 0x3f83d70a    # 1.03f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzi:F

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzk:F

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzl:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadz;->zze:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzh:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzm:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzn:J

    return-void
.end method

.method private final zzf()V
    .locals 7

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzc:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzd:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    move-wide v0, v4

    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzf:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    move-wide v0, v4

    :cond_1
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzg:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    cmp-long v6, v0, v4

    if-lez v6, :cond_3

    move-wide v0, v4

    goto :goto_0

    :cond_2
    move-wide v0, v2

    :cond_3
    :goto_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzadz;->zze:J

    cmp-long v6, v4, v0

    if-nez v6, :cond_4

    return-void

    :cond_4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadz;->zze:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzh:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzm:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzn:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzl:J

    return-void
.end method

.method private static zzg(JJF)J
    .locals 0

    long-to-float p0, p0

    const p1, 0x3f7fbe77    # 0.999f

    mul-float p0, p0, p1

    long-to-float p1, p2

    const p2, 0x3a831200    # 9.999871E-4f

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzagh;)V
    .locals 4

    .line 1
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzagh;->zzb:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzc:J

    .line 2
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzagh;->zzc:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzf:J

    .line 3
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzagh;->zzd:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzg:J

    .line 4
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzagh;->zze:F

    const v0, 0x3f7851ec    # 0.97f

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzj:F

    .line 5
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzagh;->zzf:F

    const p1, 0x3f83d70a    # 1.03f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzi:F

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzadz;->zzf()V

    return-void
.end method

.method public final zzb(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzd:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzadz;->zzf()V

    return-void
.end method

.method public final zzc()V
    .locals 7

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzh:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzb:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzh:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzg:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzh:J

    :cond_1
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzl:J

    return-void
.end method

.method public final zzd(JJ)F
    .locals 18

    move-object/from16 v0, p0

    .line 3
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzc:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v3, v6

    if-eqz v8, :cond_8

    sub-long v3, p1, p3

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzm:J

    cmp-long v10, v8, v6

    if-nez v10, :cond_0

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzm:J

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzn:J

    goto :goto_0

    :cond_0
    const v10, 0x3f7fbe77    # 0.999f

    .line 7
    invoke-static {v8, v9, v3, v4, v10}, Lcom/google/android/gms/internal/ads/zzadz;->zzg(JJF)J

    move-result-wide v8

    .line 1
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzm:J

    sub-long/2addr v3, v8

    .line 2
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzn:J

    invoke-static {v8, v9, v3, v4, v10}, Lcom/google/android/gms/internal/ads/zzadz;->zzg(JJF)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzn:J

    .line 3
    :goto_0
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzl:J

    const-wide/16 v8, 0x3e8

    cmp-long v10, v3, v6

    if-eqz v10, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzl:J

    sub-long/2addr v3, v10

    cmp-long v10, v3, v8

    if-ltz v10, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzk:F

    return v1

    .line 4
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzl:J

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzm:J

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzn:J

    const-wide/16 v12, 0x3

    mul-long v10, v10, v12

    add-long v16, v3, v10

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzh:J

    const v10, 0x33d6bf95    # 1.0E-7f

    const/high16 v11, -0x40800000    # -1.0f

    cmp-long v12, v3, v16

    if-lez v12, :cond_5

    .line 5
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(J)J

    move-result-wide v3

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzk:F

    long-to-float v3, v3

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzi:F

    const/4 v7, 0x3

    new-array v8, v7, [J

    const/4 v9, 0x0

    aput-wide v16, v8, v9

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzadz;->zze:J

    const/4 v14, 0x1

    aput-wide v12, v8, v14

    const/4 v12, 0x2

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzh:J

    add-float/2addr v6, v11

    mul-float v6, v6, v3

    float-to-long v5, v6

    add-float/2addr v4, v11

    mul-float v4, v4, v3

    float-to-long v3, v4

    add-long/2addr v5, v3

    sub-long/2addr v14, v5

    aput-wide v14, v8, v12

    aget-wide v3, v8, v9

    move-wide v4, v3

    const/4 v3, 0x1

    :goto_2
    if-ge v3, v7, :cond_4

    aget-wide v11, v8, v3

    cmp-long v6, v11, v4

    if-lez v6, :cond_3

    move-wide v4, v11

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzh:J

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 9
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzk:F

    add-float/2addr v4, v11

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v10

    float-to-long v3, v3

    sub-long v12, p1, v3

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzh:J

    .line 7
    invoke-static/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzamq;->zzy(JJJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzh:J

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzg:J

    cmp-long v3, v8, v6

    if-eqz v3, :cond_6

    cmp-long v3, v4, v8

    if-lez v3, :cond_6

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzh:J

    move-wide v4, v8

    :cond_6
    :goto_3
    const/4 v3, 0x0

    sub-long v1, p1, v4

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzadz;->zza:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_7

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzk:F

    goto :goto_4

    :cond_7
    const/high16 v3, 0x3f800000    # 1.0f

    long-to-float v1, v1

    mul-float v1, v1, v10

    add-float/2addr v1, v3

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzj:F

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzi:F

    .line 9
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzz(FFF)F

    move-result v5

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzadz;->zzk:F

    move v3, v5

    :goto_4
    return v3

    :cond_8
    const/high16 v3, 0x3f800000    # 1.0f

    return v3
.end method

.method public final zze()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadz;->zzh:J

    return-wide v0
.end method
