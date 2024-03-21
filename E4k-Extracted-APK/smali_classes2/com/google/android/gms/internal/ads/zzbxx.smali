.class final Lcom/google/android/gms/internal/ads/zzbxx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
        "Lcom/google/android/gms/ads/mediation/MediationRewardedAd;",
        "Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbxk;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbvm;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbxy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbxy;Lcom/google/android/gms/internal/ads/zzbxk;Lcom/google/android/gms/internal/ads/zzbvm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zzc:Lcom/google/android/gms/internal/ads/zzbxy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zza:Lcom/google/android/gms/internal/ads/zzbxk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zzb:Lcom/google/android/gms/internal/ads/zzbvm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/google/android/gms/ads/AdError;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zza:Lcom/google/android/gms/internal/ads/zzbxk;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->zza()Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbxk;->zzg(Lcom/google/android/gms/internal/ads/zzbcz;)V
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
    .locals 3

    .line 3
    new-instance v0, Lcom/google/android/gms/ads/AdError;

    const-string v1, "undefined"

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbxx;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zza:Lcom/google/android/gms/internal/ads/zzbxk;

    const-string v1, "Adapter returned null."

    .line 3
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzbxk;->zzf(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, ""

    .line 4
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zzc:Lcom/google/android/gms/internal/ads/zzbxy;

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbxy;->zzd(Lcom/google/android/gms/internal/ads/zzbxy;Lcom/google/android/gms/ads/mediation/MediationRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zza:Lcom/google/android/gms/internal/ads/zzbxk;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbxk;->zze()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, ""

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbxz;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxx;->zzb:Lcom/google/android/gms/internal/ads/zzbvm;

    .line 8
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbxz;-><init>(Lcom/google/android/gms/internal/ads/zzbvm;)V

    :goto_1
    return-object v0
.end method
