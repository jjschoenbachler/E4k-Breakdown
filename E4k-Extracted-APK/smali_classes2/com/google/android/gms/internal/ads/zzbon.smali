.class public final Lcom/google/android/gms/internal/ads/zzbon;
.super Lcom/google/android/gms/internal/ads/zzbnr;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbnr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbon;->zza:Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzbon;)Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbon;->zza:Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;

    return-object p0
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbfn;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 3

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_3

    .line 1
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 2
    invoke-direct {v0, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 3
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzD()Lcom/google/android/gms/internal/ads/zzbfa;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/gms/internal/ads/zzbdb;

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzD()Lcom/google/android/gms/internal/ads/zzbfa;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbdb;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdb;->zzj()Lcom/google/android/gms/ads/AdListener;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p2

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, ""

    .line 6
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzC()Lcom/google/android/gms/internal/ads/zzbfu;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/gms/internal/ads/zzawr;

    if-eqz v1, :cond_4

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzC()Lcom/google/android/gms/internal/ads/zzbfu;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzawr;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawr;->zzc()Lcom/google/android/gms/ads/admanager/AppEventListener;

    move-result-object p2

    .line 9
    :cond_3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAppEventListener(Lcom/google/android/gms/ads/admanager/AppEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    const-string v1, ""

    .line 10
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :cond_4
    :goto_2
    sget-object p2, Lcom/google/android/gms/internal/ads/zzcgm;->zza:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbom;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzbom;-><init>(Lcom/google/android/gms/internal/ads/zzbon;Lcom/google/android/gms/ads/admanager/AdManagerAdView;Lcom/google/android/gms/internal/ads/zzbfn;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_5
    :goto_3
    return-void
.end method