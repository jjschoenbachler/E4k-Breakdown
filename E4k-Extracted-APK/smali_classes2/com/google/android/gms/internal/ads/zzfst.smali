.class public final Lcom/google/android/gms/internal/ads/zzfst;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public static zza()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfrr;->zza:Lcom/google/android/gms/internal/ads/zzfrr;

    return-object v0
.end method

.method public static zzb(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/ads/zzfsn;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/ads/zzfsn;

    move-object v0, p0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfss;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfss;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsp;

    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfsp;-><init>(Ljava/util/concurrent/ExecutorService;)V

    :goto_0
    return-object v0
.end method

.method static zzc(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfqw;)Ljava/util/concurrent/Executor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/zzfqw<",
            "*>;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfrr;->zza:Lcom/google/android/gms/internal/ads/zzfrr;

    if-ne p0, v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfso;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfso;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfqw;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    .line 3
    throw p0
.end method
