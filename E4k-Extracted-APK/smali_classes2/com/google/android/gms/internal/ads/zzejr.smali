.class public final Lcom/google/android/gms/internal/ads/zzejr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgla;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgla<",
        "Lcom/google/android/gms/internal/ads/zzbkg;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzejq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzejq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejr;->zza:Lcom/google/android/gms/internal/ads/zzejq;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbkg;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zza:Lcom/google/android/gms/internal/ads/zzejq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejq;->zza()Lcom/google/android/gms/internal/ads/zzbkg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zza:Lcom/google/android/gms/internal/ads/zzejq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejq;->zza()Lcom/google/android/gms/internal/ads/zzbkg;

    move-result-object v0

    return-object v0
.end method
