.class final Lcom/google/android/gms/internal/ads/zzbxw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbxq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbxy;Lcom/google/android/gms/internal/ads/zzbxq;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbxw;->zza:Lcom/google/android/gms/internal/ads/zzbxq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/google/android/gms/ads/AdError;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxw;->zza:Lcom/google/android/gms/internal/ads/zzbxq;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->zza()Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbxq;->zzg(Lcom/google/android/gms/internal/ads/zzbcz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onFailure(Ljava/lang/String;)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxw;->zza:Lcom/google/android/gms/internal/ads/zzbxq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbxq;->zzf(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxw;->zza:Lcom/google/android/gms/internal/ads/zzbxq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbxq;->zze(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
