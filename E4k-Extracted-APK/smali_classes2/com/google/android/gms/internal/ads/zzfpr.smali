.class public Lcom/google/android/gms/internal/ads/zzfpr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfpq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/ads/zzfpp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/internal/ads/zzfpp<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/google/android/gms/internal/ads/zzfpk;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfpk;-><init>(I)V

    return-object p0
.end method

.method public static zzc(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfpp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K0:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TK0;>;)",
            "Lcom/google/android/gms/internal/ads/zzfpp<",
            "TK0;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfpl;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method
