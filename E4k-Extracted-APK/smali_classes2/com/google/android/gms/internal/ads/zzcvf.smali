.class public final Lcom/google/android/gms/internal/ads/zzcvf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgla;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgla<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcve;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcve;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zza:Lcom/google/android/gms/internal/ads/zzcve;

    return-void
.end method


# virtual methods
.method public final zza()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zza:Lcom/google/android/gms/internal/ads/zzcve;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcve;->zza()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zza:Lcom/google/android/gms/internal/ads/zzcve;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcve;->zza()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method