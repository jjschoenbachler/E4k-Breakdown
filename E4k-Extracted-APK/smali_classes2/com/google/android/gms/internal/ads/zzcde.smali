.class public final Lcom/google/android/gms/internal/ads/zzcde;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;)Lcom/google/android/gms/internal/ads/zzccs;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.google.android.gms.ads.rewarded.ChimeraRewardedAdCreatorImpl"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzcdd;->zza:Lcom/google/android/gms/internal/ads/zzcgv;

    .line 2
    invoke-static {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcgx;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcgv;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzccw;

    const v2, 0xcbe6bb0

    .line 3
    invoke-virtual {p0, v0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzccw;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;I)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_0
    const-string p1, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd"

    .line 4
    invoke-interface {p0, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 5
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzccs;

    if-eqz p2, :cond_1

    .line 6
    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/ads/zzccs;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzccq;

    .line 7
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzccq;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcgw; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "#007 Could not call remote method."

    .line 8
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
