.class public final Lcom/google/android/gms/internal/ads/zzfyi;
.super Lcom/google/android/gms/internal/ads/zzgfw;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzghj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgfw<",
        "Lcom/google/android/gms/internal/ads/zzfyj;",
        "Lcom/google/android/gms/internal/ads/zzfyi;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzghj;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyj;->zze()Lcom/google/android/gms/internal/ads/zzfyj;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgfw;-><init>(Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfyh;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyj;->zze()Lcom/google/android/gms/internal/ads/zzfyj;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgfw;-><init>(Lcom/google/android/gms/internal/ads/zzgga;)V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzfyi;
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzb:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgfw;->zzae()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgfw;->zzb:Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfyi;->zza:Lcom/google/android/gms/internal/ads/zzgga;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfyj;

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfyj;->zzf(Lcom/google/android/gms/internal/ads/zzfyj;I)V

    return-object p0
.end method
