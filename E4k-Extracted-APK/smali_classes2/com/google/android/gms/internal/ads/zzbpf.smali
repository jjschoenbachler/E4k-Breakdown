.class final Lcom/google/android/gms/internal/ads/zzbpf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbpr<",
        "Lcom/google/android/gms/internal/ads/zzcml;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcml;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcml;->zzaq()Lcom/google/android/gms/internal/ads/zzblt;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzblt;->zzc()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "nativeAdViewSignalsReady"

    .line 5
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzcml;->zzd(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 4
    :cond_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "nativeAdViewSignalsReady"

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzcml;->zzd(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
