.class final Lcom/google/android/gms/internal/ads/zzckx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:I

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzcla;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcla;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckx;->zzd:Lcom/google/android/gms/internal/ads/zzcla;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzckx;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzckx;->zzb:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzckx;->zzc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "precacheComplete"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "src"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzckx;->zza:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cachedSrc"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzckx;->zzb:Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "totalBytes"

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzckx;->zzc:I

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckx;->zzd:Lcom/google/android/gms/internal/ads/zzcla;

    const-string v2, "onPrecacheEvent"

    .line 6
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcla;->zzs(Lcom/google/android/gms/internal/ads/zzcla;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
