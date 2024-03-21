.class final Lcom/google/android/gms/internal/ads/zzdy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdx;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzb:I

.field private zzc:J

.field private zzd:J

.field private zze:J

.field private zzf:J


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdx;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdx;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdy;->zza:Lcom/google/android/gms/internal/ads/zzdx;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zze()V

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdy;->zza:Lcom/google/android/gms/internal/ads/zzdx;

    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzh(I)V

    return-void
.end method

.method private final zzh(I)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdy;->zzb:I

    const-wide/16 v0, 0x2710

    packed-switch p1, :pswitch_data_0

    const-wide/32 v0, 0x7a120

    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdy;->zzd:J

    return-void

    :pswitch_0
    const-wide/32 v0, 0x989680

    goto :goto_0

    :pswitch_1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdy;->zzd:J

    return-void

    :pswitch_2
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdy;->zze:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdy;->zzf:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdy;->zzc:J

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final zza(J)Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdy;->zza:Lcom/google/android/gms/internal/ads/zzdx;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdy;->zze:J

    sub-long v2, p1, v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdy;->zzd:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    goto :goto_1

    :cond_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzdy;->zze:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdx;->zza()Z

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdy;->zzb:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-nez v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zze()V

    return v3

    :pswitch_1
    if-eqz v0, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zze()V

    return v1

    :pswitch_2
    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdy;->zza:Lcom/google/android/gms/internal/ads/zzdx;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdx;->zzc()J

    move-result-wide p1

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdy;->zzf:J

    cmp-long v4, p1, v1

    if-gtz v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzh(I)V

    return v3

    .line 6
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zze()V

    goto :goto_0

    :pswitch_3
    if-eqz v0, :cond_6

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdy;->zza:Lcom/google/android/gms/internal/ads/zzdx;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdx;->zzb()J

    move-result-wide p1

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdy;->zzc:J

    cmp-long v0, p1, v4

    if-gez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdy;->zza:Lcom/google/android/gms/internal/ads/zzdx;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdx;->zzc()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzdy;->zzf:J

    .line 9
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzh(I)V

    return v3

    :cond_6
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdy;->zzc:J

    sub-long/2addr p1, v2

    const-wide/32 v2, 0x7a120

    cmp-long v4, p1, v2

    if-gtz v4, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x3

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzh(I)V

    return v1

    :goto_0
    return v0

    :cond_8
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzh(I)V

    return-void
.end method

.method public final zzc()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdy;->zzb:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zze()V

    :cond_0
    return-void
.end method

.method public final zzd()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdy;->zzb:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zze()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdy;->zza:Lcom/google/android/gms/internal/ads/zzdx;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzh(I)V

    :cond_0
    return-void
.end method

.method public final zzf()J
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdy;->zza:Lcom/google/android/gms/internal/ads/zzdx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzb()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final zzg()J
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdy;->zza:Lcom/google/android/gms/internal/ads/zzdx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzc()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
