.class public final Lcom/google/android/gms/internal/ads/zzglg;
.super Lcom/google/android/gms/internal/ads/zzgkv;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzgkv<",
        "TK;TV;",
        "Lcom/google/android/gms/internal/ads/zzgln<",
        "TV;>;>;"
    }
.end annotation


# direct methods
.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zzglf;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgkv;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgln;)Lcom/google/android/gms/internal/ads/zzglg;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/android/gms/internal/ads/zzgln<",
            "TV;>;)",
            "Lcom/google/android/gms/internal/ads/zzglg<",
            "TK;TV;>;"
        }
    .end annotation

    const-string p1, "Network"

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgkv;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgln;)Lcom/google/android/gms/internal/ads/zzgkv;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzglh;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzglh<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzglh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzglg;->zza:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzglh;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzglf;)V

    return-object v0
.end method
