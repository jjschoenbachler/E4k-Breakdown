.class public final Lcom/google/android/gms/internal/ads/zzbmi;
.super Lcom/google/android/gms/ads/formats/NativeAd$Image;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbmh;

.field private final zzb:Landroid/graphics/drawable/Drawable;

.field private final zzc:Landroid/net/Uri;

.field private final zzd:D

.field private final zze:I

.field private final zzf:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbmh;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmi;->zza:Lcom/google/android/gms/internal/ads/zzbmh;

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmi;->zza:Lcom/google/android/gms/internal/ads/zzbmh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbmh;->zzb()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, p1

    .line 2
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmi;->zzb:Landroid/graphics/drawable/Drawable;

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmi;->zza:Lcom/google/android/gms/internal/ads/zzbmh;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbmh;->zzc()Landroid/net/Uri;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, ""

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmi;->zzc:Landroid/net/Uri;

    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmi;->zza:Lcom/google/android/gms/internal/ads/zzbmh;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbmh;->zzd()D

    move-result-wide v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    const-string v0, ""

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 6
    :goto_2
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbmi;->zzd:D

    const/4 p1, -0x1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmi;->zza:Lcom/google/android/gms/internal/ads/zzbmh;

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbmh;->zze()I

    move-result v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v1, ""

    .line 9
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    .line 8
    :goto_3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbmi;->zze:I

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmi;->zza:Lcom/google/android/gms/internal/ads/zzbmh;

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbmh;->zzf()I

    move-result v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move p1, v0

    goto :goto_4

    :catch_4
    move-exception v0

    const-string v1, ""

    .line 11
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    :goto_4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbmi;->zzf:I

    return-void
.end method


# virtual methods
.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmi;->zzb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getScale()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbmi;->zzd:D

    return-wide v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmi;->zzc:Landroid/net/Uri;

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbmi;->zze:I

    return v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbmi;->zzf:I

    return v0
.end method
