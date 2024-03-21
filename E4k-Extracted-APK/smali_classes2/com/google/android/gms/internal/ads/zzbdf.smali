.class public final Lcom/google/android/gms/internal/ads/zzbdf;
.super Lcom/google/android/gms/dynamic/RemoteCreator;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/RemoteCreator<",
        "Lcom/google/android/gms/internal/ads/zzbfo;",
        ">;"
    }
.end annotation


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzcat;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-string v0, "com.google.android.gms.ads.AdManagerCreatorImpl"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/RemoteCreator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic getRemoteCreator(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManagerCreator"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbfo;

    if-eqz v1, :cond_1

    .line 3
    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbfo;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfo;

    .line 4
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbfo;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;I)Lcom/google/android/gms/internal/ads/zzbfn;
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbjl;->zza(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzgW:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    const-string v0, "com.google.android.gms.ads.ChimeraAdManagerCreatorImpl"

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbde;->zza:Lcom/google/android/gms/internal/ads/zzcgv;

    .line 5
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcgx;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcgv;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbfo;

    const v7, 0xcbe6bb0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v8, p5

    .line 6
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzbfo;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;II)Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-string p3, "com.google.android.gms.ads.internal.client.IAdManager"

    .line 7
    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 8
    instance-of p4, p3, Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz p4, :cond_1

    .line 9
    check-cast p3, Lcom/google/android/gms/internal/ads/zzbfn;

    :goto_0
    move-object v1, p3

    goto :goto_1

    :cond_1
    new-instance p3, Lcom/google/android/gms/internal/ads/zzbfl;

    .line 10
    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzbfl;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcgw; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcar;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcat;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdf;->zza:Lcom/google/android/gms/internal/ads/zzcat;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdf;->zza:Lcom/google/android/gms/internal/ads/zzcat;

    const-string p3, "AdManagerCreator.newAdManagerByDynamiteLoader"

    .line 12
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcat;->zzd(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p1, "#007 Could not call remote method."

    .line 13
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v1

    .line 14
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdf;->getRemoteCreatorInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbfo;

    const v7, 0xcbe6bb0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v8, p5

    .line 16
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzbfo;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;II)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_3

    move-object p1, v1

    goto :goto_2

    :cond_3
    const-string p2, "com.google.android.gms.ads.internal.client.IAdManager"

    .line 17
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 18
    instance-of p3, p2, Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz p3, :cond_4

    .line 19
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbfn;

    goto :goto_2

    :cond_4
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbfl;

    .line 20
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzbfl;-><init>(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, p2

    :goto_2
    return-object p1

    :catch_1
    move-exception p1

    const-string p2, "Could not create remote AdManager."

    .line 21
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
