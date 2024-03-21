.class public final Lcom/google/android/gms/internal/ads/zzbwf;
.super Lcom/google/android/gms/internal/ads/zzbvi;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final zza:Ljava/lang/Object;

.field private zzb:Lcom/google/android/gms/internal/ads/zzbwh;

.field private zzc:Lcom/google/android/gms/internal/ads/zzcck;

.field private zzd:Lcom/google/android/gms/dynamic/IObjectWrapper;

.field private zze:Landroid/view/View;

.field private zzf:Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;

.field private zzg:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

.field private zzh:Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

.field private zzi:Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;

.field private final zzj:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/Adapter;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/mediation/Adapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbvi;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zzj:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/mediation/MediationAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbvi;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zzj:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    return-void
.end method

.method static synthetic zzO(Lcom/google/android/gms/internal/ads/zzbwf;Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zzg:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    return-object p1
.end method

.method static synthetic zzP(Lcom/google/android/gms/internal/ads/zzbwf;Lcom/google/android/gms/ads/mediation/MediationRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAd;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zzh:Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

    return-object p1
.end method

.method static synthetic zzQ(Lcom/google/android/gms/internal/ads/zzbwf;Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;)Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zzi:Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;

    return-object p1
.end method

.method private final zzR(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Server parameters: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzd(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    .line 4
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object p1, v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 8
    instance-of v0, v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    if-eqz v0, :cond_3

    const-string v0, "adJson"

    .line 9
    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const-string p3, "tagForChildDirectedTreatment"

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzbdg;->zzg:I

    .line 10
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    const-string p2, "max_ad_content_rating"

    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string p2, ""

    .line 12
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    :goto_2
    nop

    goto :goto_2
.end method

.method private final zzS(Lcom/google/android/gms/internal/ads/zzbdg;)Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbdg;->zzm:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .line 3
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    return-object p1
.end method

.method private static final zzT(Lcom/google/android/gms/internal/ads/zzbdg;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzbdg;->zzf:Z

    if-nez p0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgm;->zzm()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final zzU(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbdg;->zzu:Ljava/lang/String;

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "max_ad_content_rating"

    .line 3
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzbwf;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzbwf;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zze:Landroid/view/View;

    return-object p1
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzbwf;Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;)Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zzf:Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;

    return-object p1
.end method


# virtual methods
.method public final zzA(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/OnImmersiveModeUpdatedListener;

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/OnImmersiveModeUpdatedListener;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/OnImmersiveModeUpdatedListener;->onImmersiveModeUpdated(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, ""

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    const-class p1, Lcom/google/android/gms/ads/mediation/OnImmersiveModeUpdatedListener;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x16

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " #009 Class mismatch: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzd(Ljava/lang/String;)V

    return-void
.end method

.method public final zzB()Lcom/google/android/gms/internal/ads/zzbhc;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/zzb;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/zzb;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/zzb;->getVideoController()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, ""

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_0
    return-object v2
.end method

.method public final zzC()Lcom/google/android/gms/internal/ads/zzbvv;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zzb:Lcom/google/android/gms/internal/ads/zzbwh;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbwh;->zzd()Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbwy;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbwy;-><init>(Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V

    return-object v1

    .line 3
    :cond_0
    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zzg:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbwy;

    .line 4
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbwy;-><init>(Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzD(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvm;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 1
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    instance-of v3, v3, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v3, :cond_0

    const-string v3, "Requesting rewarded ad from adapter."

    .line 6
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcgt;->zzd(Ljava/lang/String;)V

    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 7
    check-cast v3, Lcom/google/android/gms/ads/mediation/Adapter;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbwe;

    move-object/from16 v5, p4

    .line 8
    invoke-direct {v4, v1, v5}, Lcom/google/android/gms/internal/ads/zzbwe;-><init>(Lcom/google/android/gms/internal/ads/zzbwf;Lcom/google/android/gms/internal/ads/zzbvm;)V

    .line 16
    new-instance v15, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;

    .line 9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/content/Context;

    const-string v7, ""

    const/4 v5, 0x0

    .line 10
    invoke-direct {v1, v2, v0, v5}, Lcom/google/android/gms/internal/ads/zzbwf;->zzR(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 11
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbwf;->zzS(Lcom/google/android/gms/internal/ads/zzbdg;)Landroid/os/Bundle;

    move-result-object v9

    .line 12
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbwf;->zzT(Lcom/google/android/gms/internal/ads/zzbdg;)Z

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzk:Landroid/location/Location;

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzg:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzt:I

    .line 13
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbwf;->zzU(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;)Ljava/lang/String;

    move-result-object v14

    const-string v0, ""

    move-object v5, v15

    move-object v2, v15

    move-object v15, v0

    invoke-direct/range {v5 .. v15}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/ads/mediation/Adapter;->loadRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, ""

    .line 15
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1
    :cond_0
    const-class v0, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x16

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    .line 5
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zzE(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v0, :cond_1

    const-string v0, "Show rewarded ad from adapter."

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zzh:Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

    if-eqz v0, :cond_0

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAd;->showAd(Landroid/content/Context;)V

    return-void

    :cond_0
    const-string p1, "Can not show null mediation rewarded ad."

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzf(Ljava/lang/String;)V

    .line 9
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    .line 1
    :cond_1
    const-class p1, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x16

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " #009 Class mismatch: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    .line 5
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbrp;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/android/gms/internal/ads/zzbrp;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbrv;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v0, :cond_3

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbwa;

    .line 3
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzbwa;-><init>(Lcom/google/android/gms/internal/ads/zzbwf;Lcom/google/android/gms/internal/ads/zzbrp;)V

    new-instance p2, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbrv;

    .line 6
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbrv;->zza:Ljava/lang/String;

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "rewarded_interstitial"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_2

    :sswitch_1
    const-string v3, "interstitial"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_2
    const-string v3, "rewarded"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_3
    const-string v3, "native"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_4
    const-string v3, "banner"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    goto :goto_3

    .line 8
    :pswitch_0
    sget-object v2, Lcom/google/android/gms/ads/AdFormat;->NATIVE:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_3

    .line 9
    :pswitch_1
    sget-object v2, Lcom/google/android/gms/ads/AdFormat;->REWARDED_INTERSTITIAL:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_3

    .line 10
    :pswitch_2
    sget-object v2, Lcom/google/android/gms/ads/AdFormat;->REWARDED:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_3

    .line 11
    :pswitch_3
    sget-object v2, Lcom/google/android/gms/ads/AdFormat;->INTERSTITIAL:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_3

    .line 12
    :pswitch_4
    sget-object v2, Lcom/google/android/gms/ads/AdFormat;->BANNER:Lcom/google/android/gms/ads/AdFormat;

    :goto_3
    if-eqz v2, :cond_0

    .line 7
    new-instance v3, Lcom/google/android/gms/ads/mediation/MediationConfiguration;

    .line 13
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbrv;->zzb:Landroid/os/Bundle;

    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/ads/mediation/MediationConfiguration;-><init>(Lcom/google/android/gms/ads/AdFormat;Landroid/os/Bundle;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 14
    check-cast p3, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p3, p1, v0, p2}, Lcom/google/android/gms/ads/mediation/Adapter;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;Ljava/util/List;)V

    return-void

    .line 2
    :cond_3
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    :goto_4
    nop

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_4
        -0x3ebdafe9 -> :sswitch_3
        -0xe47b3f2 -> :sswitch_2
        0x240b672c -> :sswitch_1
        0x71ef0bbd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzG(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvm;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 1
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    instance-of v3, v3, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v3, :cond_0

    const-string v3, "Requesting rewarded interstitial ad from adapter."

    .line 6
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcgt;->zzd(Ljava/lang/String;)V

    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 7
    check-cast v3, Lcom/google/android/gms/ads/mediation/Adapter;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbwe;

    move-object/from16 v5, p4

    .line 8
    invoke-direct {v4, v1, v5}, Lcom/google/android/gms/internal/ads/zzbwe;-><init>(Lcom/google/android/gms/internal/ads/zzbwf;Lcom/google/android/gms/internal/ads/zzbvm;)V

    .line 16
    new-instance v15, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;

    .line 9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/content/Context;

    const-string v7, ""

    const/4 v5, 0x0

    .line 10
    invoke-direct {v1, v2, v0, v5}, Lcom/google/android/gms/internal/ads/zzbwf;->zzR(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 11
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbwf;->zzS(Lcom/google/android/gms/internal/ads/zzbdg;)Landroid/os/Bundle;

    move-result-object v9

    .line 12
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbwf;->zzT(Lcom/google/android/gms/internal/ads/zzbdg;)Z

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzk:Landroid/location/Location;

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzg:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzt:I

    .line 13
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbwf;->zzU(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;)Ljava/lang/String;

    move-result-object v14

    const-string v0, ""

    move-object v5, v15

    move-object v2, v15

    move-object v15, v0

    invoke-direct/range {v5 .. v15}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/ads/mediation/Adapter;->loadRewardedInterstitialAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, ""

    .line 15
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1
    :cond_0
    const-class v0, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x16

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    .line 5
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zzH()Lcom/google/android/gms/internal/ads/zzbya;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/Adapter;->getVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbya;->zza(Lcom/google/android/gms/ads/mediation/VersionInfo;)Lcom/google/android/gms/internal/ads/zzbya;

    move-result-object v0

    return-object v0
.end method

.method public final zzI()Lcom/google/android/gms/internal/ads/zzbya;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/Adapter;->getSDKVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbya;->zza(Lcom/google/android/gms/ads/mediation/VersionInfo;)Lcom/google/android/gms/internal/ads/zzbya;

    move-result-object v0

    return-object v0
.end method

.method public final zzJ(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvm;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 1
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    instance-of v4, v4, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v4, :cond_0

    const-string v4, "Requesting interscroller ad from adapter."

    .line 6
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzcgt;->zzd(Ljava/lang/String;)V

    .line 17
    :try_start_0
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 7
    check-cast v4, Lcom/google/android/gms/ads/mediation/Adapter;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbvz;

    move-object/from16 v6, p6

    .line 8
    invoke-direct {v5, v1, v6, v4}, Lcom/google/android/gms/internal/ads/zzbvz;-><init>(Lcom/google/android/gms/internal/ads/zzbwf;Lcom/google/android/gms/internal/ads/zzbvm;Lcom/google/android/gms/ads/mediation/Adapter;)V

    new-instance v15, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroid/content/Context;

    const-string v8, ""

    move-object/from16 v6, p5

    .line 10
    invoke-direct {v1, v3, v2, v6}, Lcom/google/android/gms/internal/ads/zzbwf;->zzR(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 11
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzbwf;->zzS(Lcom/google/android/gms/internal/ads/zzbdg;)Landroid/os/Bundle;

    move-result-object v10

    .line 12
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzbwf;->zzT(Lcom/google/android/gms/internal/ads/zzbdg;)Z

    move-result v11

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzk:Landroid/location/Location;

    iget v13, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzg:I

    iget v14, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzt:I

    .line 13
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzbwf;->zzU(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzbdl;->zze:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbdl;->zzb:I

    .line 14
    invoke-static {v3, v0}, Lcom/google/android/gms/ads/zza;->zzc(II)Lcom/google/android/gms/ads/AdSize;

    move-result-object v16

    const-string v17, ""

    move-object v6, v15

    move-object v0, v15

    move-object v15, v2

    invoke-direct/range {v6 .. v17}, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Lcom/google/android/gms/ads/AdSize;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v4, v0, v5}, Lcom/google/android/gms/ads/mediation/Adapter;->loadInterscrollerAd(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, ""

    .line 16
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1
    :cond_0
    const-class v0, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x16

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    .line 5
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zzK()Lcom/google/android/gms/internal/ads/zzbvp;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zzi:Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbwg;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbwg;-><init>(Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzL(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    const-class p1, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1a

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " #009 Class mismatch: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    .line 12
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbwf;->zzh()V

    return-void

    :cond_2
    const-string v0, "Show interstitial ad from adapter."

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zzf:Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;

    if-eqz v0, :cond_3

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;->showAd(Landroid/content/Context;)V

    return-void

    :cond_3
    const-string p1, "Can not show null mediation interstitial ad."

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzf(Ljava/lang/String;)V

    .line 7
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final zzM()Lcom/google/android/gms/internal/ads/zzbvr;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzN()Lcom/google/android/gms/internal/ads/zzbvs;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvm;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbwf;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvm;)V

    return-void
.end method

.method public final zzf()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;->getBannerView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, ""

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 6
    :cond_0
    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zze:Landroid/view/View;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    const-class v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1a

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " or "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    .line 12
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvm;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbwf;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvm;)V

    return-void
.end method

.method public final zzh()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-eqz v0, :cond_0

    const-string v0, "Showing interstitial from adapter."

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzd(Ljava/lang/String;)V

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 7
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;->showInterstitial()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, ""

    .line 9
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1
    :cond_0
    const-class v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x16

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    .line 5
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zzi()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, ""

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvm;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 1
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    instance-of v7, v6, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-nez v7, :cond_1

    instance-of v6, v6, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v6, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    const-class v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 33
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1a

    add-int/2addr v4, v5

    add-int/2addr v4, v6

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " or "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    .line 36
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const-string v6, "Requesting banner ad from adapter."

    .line 2
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzcgt;->zzd(Ljava/lang/String;)V

    .line 3
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzbdl;->zzn:Z

    if-eqz v6, :cond_2

    .line 4
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzbdl;->zze:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbdl;->zzb:I

    .line 5
    invoke-static {v6, v0}, Lcom/google/android/gms/ads/zza;->zzb(II)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    :goto_1
    move-object v12, v0

    goto :goto_2

    .line 6
    :cond_2
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzbdl;->zze:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzbdl;->zzb:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbdl;->zza:Ljava/lang/String;

    invoke-static {v6, v7, v0}, Lcom/google/android/gms/ads/zza;->zza(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    goto :goto_1

    .line 5
    :goto_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 7
    instance-of v6, v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    if-eqz v6, :cond_6

    .line 8
    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;

    .line 9
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zze:Ljava/util/List;

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v16, v8

    goto :goto_3

    :cond_3
    move-object/from16 v16, v7

    :goto_3
    new-instance v8, Lcom/google/android/gms/internal/ads/zzbvy;

    .line 10
    iget-wide v9, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzb:J

    const-wide/16 v13, -0x1

    cmp-long v6, v9, v13

    if-nez v6, :cond_4

    move-object v14, v7

    goto :goto_4

    .line 18
    :cond_4
    new-instance v6, Ljava/util/Date;

    .line 11
    invoke-direct {v6, v9, v10}, Ljava/util/Date;-><init>(J)V

    move-object v14, v6

    :goto_4
    iget v15, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzd:I

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzk:Landroid/location/Location;

    .line 12
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzbwf;->zzT(Lcom/google/android/gms/internal/ads/zzbdg;)Z

    move-result v18

    iget v9, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzg:I

    iget-boolean v10, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzr:Z

    iget v11, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzt:I

    .line 13
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzbwf;->zzU(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;)Ljava/lang/String;

    move-result-object v22

    move-object v13, v8

    move-object/from16 v17, v6

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v21, v11

    invoke-direct/range {v13 .. v22}, Lcom/google/android/gms/internal/ads/zzbvy;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZILjava/lang/String;)V

    .line 14
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzm:Landroid/os/Bundle;

    if-eqz v6, :cond_5

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    move-object v9, v6

    goto :goto_5

    :cond_5
    move-object v9, v7

    .line 16
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbwh;

    invoke-direct {v7, v5}, Lcom/google/android/gms/internal/ads/zzbwh;-><init>(Lcom/google/android/gms/internal/ads/zzbvm;)V

    .line 17
    invoke-direct {v1, v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzbwf;->zzR(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object v2, v0

    move-object v3, v6

    move-object v4, v7

    move-object v6, v12

    move-object v7, v8

    move-object v8, v9

    .line 18
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;->requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v2, ""

    .line 19
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 21
    :cond_6
    instance-of v6, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v6, :cond_7

    .line 22
    :try_start_1
    check-cast v0, Lcom/google/android/gms/ads/mediation/Adapter;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzbwb;

    .line 23
    invoke-direct {v14, v1, v5}, Lcom/google/android/gms/internal/ads/zzbwb;-><init>(Lcom/google/android/gms/internal/ads/zzbwf;Lcom/google/android/gms/internal/ads/zzbvm;)V

    new-instance v15, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 24
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    const-string v6, ""

    .line 25
    invoke-direct {v1, v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzbwf;->zzR(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 26
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzbwf;->zzS(Lcom/google/android/gms/internal/ads/zzbdg;)Landroid/os/Bundle;

    move-result-object v8

    .line 27
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzbwf;->zzT(Lcom/google/android/gms/internal/ads/zzbdg;)Z

    move-result v9

    iget-object v10, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzk:Landroid/location/Location;

    iget v11, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzg:I

    iget v13, v2, Lcom/google/android/gms/internal/ads/zzbdg;->zzt:I

    .line 28
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzbwf;->zzU(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;)Ljava/lang/String;

    move-result-object v16

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbwf;->zzj:Ljava/lang/String;

    move-object v2, v15

    move-object v3, v5

    move-object/from16 v17, v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move v7, v9

    move-object v8, v10

    move v9, v11

    move v10, v13

    move-object/from16 v11, v16

    move-object/from16 v13, v17

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Lcom/google/android/gms/ads/AdSize;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, v15, v14}, Lcom/google/android/gms/ads/mediation/Adapter;->loadBannerAd(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    const-string v2, ""

    .line 30
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_7
    return-void
.end method

.method public final zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvm;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 1
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    instance-of v6, v5, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-nez v6, :cond_1

    instance-of v5, v5, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v5, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    const-class v0, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 29
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 30
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1a

    add-int/2addr v4, v5

    add-int/2addr v4, v6

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " or "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    .line 32
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const-string v5, "Requesting interstitial ad from adapter."

    .line 2
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzcgt;->zzd(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 3
    instance-of v6, v5, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    if-eqz v6, :cond_5

    .line 4
    :try_start_0
    move-object v7, v5

    check-cast v7, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;

    .line 5
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zze:Ljava/util/List;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v12, v8

    goto :goto_1

    :cond_2
    move-object v12, v6

    :goto_1
    new-instance v5, Lcom/google/android/gms/internal/ads/zzbvy;

    .line 6
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzb:J

    const-wide/16 v10, -0x1

    cmp-long v13, v8, v10

    if-nez v13, :cond_3

    move-object v10, v6

    goto :goto_2

    .line 14
    :cond_3
    new-instance v10, Ljava/util/Date;

    .line 7
    invoke-direct {v10, v8, v9}, Ljava/util/Date;-><init>(J)V

    :goto_2
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzd:I

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzk:Landroid/location/Location;

    .line 8
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbwf;->zzT(Lcom/google/android/gms/internal/ads/zzbdg;)Z

    move-result v14

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzg:I

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzr:Z

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzt:I

    .line 9
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbwf;->zzU(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;)Ljava/lang/String;

    move-result-object v18

    move/from16 v17, v9

    move-object v9, v5

    move/from16 v16, v8

    invoke-direct/range {v9 .. v18}, Lcom/google/android/gms/internal/ads/zzbvy;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZILjava/lang/String;)V

    .line 10
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzm:Landroid/os/Bundle;

    if-eqz v8, :cond_4

    .line 11
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    :cond_4
    move-object v12, v6

    .line 12
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Landroid/content/Context;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzbwh;

    invoke-direct {v9, v4}, Lcom/google/android/gms/internal/ads/zzbwh;-><init>(Lcom/google/android/gms/internal/ads/zzbvm;)V

    .line 13
    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzbwf;->zzR(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    move-object v11, v5

    .line 14
    invoke-interface/range {v7 .. v12}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;->requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v2, ""

    .line 15
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 17
    :cond_5
    instance-of v6, v5, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v6, :cond_6

    .line 18
    :try_start_1
    check-cast v5, Lcom/google/android/gms/ads/mediation/Adapter;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzbwc;

    .line 19
    invoke-direct {v6, v1, v4}, Lcom/google/android/gms/internal/ads/zzbwc;-><init>(Lcom/google/android/gms/internal/ads/zzbwf;Lcom/google/android/gms/internal/ads/zzbvm;)V

    new-instance v4, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;

    .line 20
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroid/content/Context;

    const-string v9, ""

    .line 21
    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzbwf;->zzR(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 22
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbwf;->zzS(Lcom/google/android/gms/internal/ads/zzbdg;)Landroid/os/Bundle;

    move-result-object v11

    .line 23
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbwf;->zzT(Lcom/google/android/gms/internal/ads/zzbdg;)Z

    move-result v12

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzk:Landroid/location/Location;

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzg:I

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzt:I

    .line 24
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbwf;->zzU(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;)Ljava/lang/String;

    move-result-object v16

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbwf;->zzj:Ljava/lang/String;

    move-object v7, v4

    move-object/from16 v17, v0

    invoke-direct/range {v7 .. v17}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/ads/mediation/Adapter;->loadInterstitialAd(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    const-string v2, ""

    .line 26
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_6
    return-void
.end method

.method public final zzl()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, ""

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zzm()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationAdapter;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/MediationAdapter;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, ""

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcck;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    instance-of p3, p2, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz p3, :cond_0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zzd:Lcom/google/android/gms/dynamic/IObjectWrapper;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zzc:Lcom/google/android/gms/internal/ads/zzcck;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/google/android/gms/internal/ads/zzcck;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    .line 1
    :cond_0
    const-class p1, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    new-instance p5, Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x16

    add-int/2addr p3, p4

    invoke-direct {p5, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " #009 Class mismatch: "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    .line 5
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbwf;->zzv(Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zzh:Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zzd:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAd;->showAd(Landroid/content/Context;)V

    return-void

    :cond_0
    const-string v0, "Can not show null mediated rewarded ad."

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzf(Ljava/lang/String;)V

    .line 8
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 1
    :cond_1
    const-class v0, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x16

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    .line 5
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zzq()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zzc:Lcom/google/android/gms/internal/ads/zzcck;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1
    :cond_1
    const-class v0, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x16

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    .line 5
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zzr(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvm;Lcom/google/android/gms/internal/ads/zzblv;Ljava/util/List;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/android/gms/internal/ads/zzbdg;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbvm;",
            "Lcom/google/android/gms/internal/ads/zzblv;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 1
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    instance-of v6, v5, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    if-nez v6, :cond_1

    instance-of v5, v5, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v5, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    const-class v0, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 30
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1a

    add-int/2addr v4, v5

    add-int/2addr v4, v6

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " or "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    .line 33
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const-string v5, "Requesting native ad from adapter."

    .line 2
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzcgt;->zzd(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 3
    instance-of v6, v5, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    if-eqz v6, :cond_5

    .line 4
    :try_start_0
    check-cast v5, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    .line 5
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zze:Ljava/util/List;

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v12, v8

    goto :goto_1

    :cond_2
    move-object v12, v7

    :goto_1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbwj;

    .line 6
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzb:J

    const-wide/16 v10, -0x1

    cmp-long v13, v8, v10

    if-nez v13, :cond_3

    move-object v10, v7

    goto :goto_2

    .line 15
    :cond_3
    new-instance v10, Ljava/util/Date;

    .line 7
    invoke-direct {v10, v8, v9}, Ljava/util/Date;-><init>(J)V

    :goto_2
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzd:I

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzk:Landroid/location/Location;

    .line 8
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbwf;->zzT(Lcom/google/android/gms/internal/ads/zzbdg;)Z

    move-result v14

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzg:I

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzr:Z

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzt:I

    .line 9
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbwf;->zzU(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;)Ljava/lang/String;

    move-result-object v20

    move/from16 v19, v9

    move-object v9, v6

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    move/from16 v18, v8

    invoke-direct/range {v9 .. v20}, Lcom/google/android/gms/internal/ads/zzbwj;-><init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZILcom/google/android/gms/internal/ads/zzblv;Ljava/util/List;ZILjava/lang/String;)V

    .line 10
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzm:Landroid/os/Bundle;

    if-eqz v8, :cond_4

    .line 11
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    :cond_4
    new-instance v8, Lcom/google/android/gms/internal/ads/zzbwh;

    .line 12
    invoke-direct {v8, v4}, Lcom/google/android/gms/internal/ads/zzbwh;-><init>(Lcom/google/android/gms/internal/ads/zzbvm;)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzbwf;->zzb:Lcom/google/android/gms/internal/ads/zzbwh;

    .line 13
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbwf;->zzb:Lcom/google/android/gms/internal/ads/zzbwh;

    .line 14
    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzbwf;->zzR(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    move-object/from16 p1, v5

    move-object/from16 p2, v4

    move-object/from16 p3, v8

    move-object/from16 p4, v0

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    .line 15
    invoke-interface/range {p1 .. p6}, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;->requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationNativeListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v2, ""

    .line 16
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 18
    :cond_5
    instance-of v6, v5, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v6, :cond_6

    .line 19
    :try_start_1
    check-cast v5, Lcom/google/android/gms/ads/mediation/Adapter;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzbwd;

    .line 20
    invoke-direct {v6, v1, v4}, Lcom/google/android/gms/internal/ads/zzbwd;-><init>(Lcom/google/android/gms/internal/ads/zzbwf;Lcom/google/android/gms/internal/ads/zzbvm;)V

    new-instance v4, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

    .line 21
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroid/content/Context;

    const-string v9, ""

    .line 22
    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzbwf;->zzR(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 23
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbwf;->zzS(Lcom/google/android/gms/internal/ads/zzbdg;)Landroid/os/Bundle;

    move-result-object v11

    .line 24
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbwf;->zzT(Lcom/google/android/gms/internal/ads/zzbdg;)Z

    move-result v12

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzk:Landroid/location/Location;

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzg:I

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzbdg;->zzt:I

    .line 25
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbwf;->zzU(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdg;)Ljava/lang/String;

    move-result-object v16

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbwf;->zzj:Ljava/lang/String;

    move-object v7, v4

    move-object/from16 v17, v0

    move-object/from16 v18, p6

    invoke-direct/range {v7 .. v18}, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzblv;)V

    .line 26
    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/ads/mediation/Adapter;->loadNativeAd(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    const-string v2, ""

    .line 27
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_6
    return-void
.end method

.method public final zzs()Landroid/os/Bundle;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzcoh;

    if-nez v1, :cond_0

    const-class v0, Lcom/google/android/gms/internal/ads/zzcoh;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x16

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcoh;

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcoh;->zza()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final zzt()Landroid/os/Bundle;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzcoi;

    if-nez v1, :cond_0

    const-class v0, Lcom/google/android/gms/internal/ads/zzcoi;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x16

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #009 Class mismatch: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcoi;

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcoi;->getInterstitialAdapterInfo()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final zzu()Landroid/os/Bundle;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final zzv(Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    instance-of v0, p3, Lcom/google/android/gms/ads/mediation/Adapter;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zzd:Lcom/google/android/gms/dynamic/IObjectWrapper;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbwi;

    .line 6
    check-cast p3, Lcom/google/android/gms/ads/mediation/Adapter;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zzc:Lcom/google/android/gms/internal/ads/zzcck;

    invoke-direct {v1, p3, v2}, Lcom/google/android/gms/internal/ads/zzbwi;-><init>(Lcom/google/android/gms/ads/mediation/Adapter;Lcom/google/android/gms/internal/ads/zzcck;)V

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzbwf;->zzD(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvm;)V

    return-void

    .line 1
    :cond_0
    const-class p1, Lcom/google/android/gms/ads/mediation/Adapter;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x16

    add-int/2addr p3, v0

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " #009 Class mismatch: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    .line 5
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final zzw(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zza:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/OnContextChangedListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/android/gms/ads/mediation/OnContextChangedListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/OnContextChangedListener;->onContextChanged(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final zzx()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzcck;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            "Lcom/google/android/gms/internal/ads/zzcck;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "Could not initialize rewarded video adapter."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    .line 2
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1
.end method

.method public final zzz()Lcom/google/android/gms/internal/ads/zzbnb;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwf;->zzb:Lcom/google/android/gms/internal/ads/zzbwh;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbwh;->zze()Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbnc;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbnc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnc;->zza()Lcom/google/android/gms/internal/ads/zzbnb;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
