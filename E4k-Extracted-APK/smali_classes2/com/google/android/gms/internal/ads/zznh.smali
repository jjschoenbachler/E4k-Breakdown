.class public final Lcom/google/android/gms/internal/ads/zznh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:J

.field private final zzb:J

.field private final zzc:J

.field private zzd:J

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J


# direct methods
.method protected constructor <init>(JJJJJJJ)V
    .locals 13

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zznh;->zza:J

    move-wide/from16 v1, p3

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zznh;->zzb:J

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zznh;->zzd:J

    move-wide/from16 v5, p7

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zznh;->zze:J

    move-wide/from16 v7, p9

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zznh;->zzf:J

    move-wide/from16 v9, p11

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zznh;->zzg:J

    move-wide/from16 v11, p13

    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zznh;->zzc:J

    invoke-static/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/zznh;->zza(JJJJJJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zznh;->zzh:J

    return-void
.end method

.method protected static zza(JJJJJJ)J
    .locals 9

    const-wide/16 v4, 0x1

    add-long v6, p6, v4

    cmp-long v8, v6, p8

    if-gez v8, :cond_1

    add-long/2addr v4, p2

    cmp-long v6, v4, p4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    sub-long v4, p0, p2

    long-to-float v4, v4

    sub-long v5, p8, p6

    long-to-float v5, v5

    sub-long v0, p4, p2

    long-to-float v0, v0

    div-float/2addr v5, v0

    mul-float v4, v4, v5

    float-to-long v0, v4

    add-long v2, p6, v0

    sub-long v2, v2, p10

    const-wide/16 v4, 0x14

    .line 1
    div-long/2addr v0, v4

    sub-long v0, v2, v0

    const-wide/16 v2, -0x1

    add-long v2, p8, v2

    move-wide p0, v0

    move-wide p2, p6

    move-wide p4, v2

    invoke-static/range {p0 .. p5}, Lcom/google/android/gms/internal/ads/zzamq;->zzy(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    return-wide p6
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zznh;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzf:J

    return-wide v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zznh;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzg:J

    return-wide v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zznh;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzb:J

    return-wide v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zznh;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zza:J

    return-wide v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zznh;JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzd:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzf:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zznh;->zzi()V

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/ads/zznh;JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zze:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzg:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zznh;->zzi()V

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zznh;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzh:J

    return-wide v0
.end method

.method private final zzi()V
    .locals 12

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzb:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzd:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zznh;->zze:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zznh;->zzf:J

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zznh;->zzg:J

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/zznh;->zzc:J

    invoke-static/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zznh;->zza(JJJJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzh:J

    return-void
.end method
