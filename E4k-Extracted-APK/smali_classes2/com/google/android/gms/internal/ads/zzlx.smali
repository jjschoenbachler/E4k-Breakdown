.class public final Lcom/google/android/gms/internal/ads/zzlx;
.super Lcom/google/android/gms/internal/ads/zzfn;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzfo;Landroid/view/Surface;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/ads/zzfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfn;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzfo;)V

    .line 2
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3}, Landroid/view/Surface;->isValid()Z

    :cond_0
    return-void
.end method