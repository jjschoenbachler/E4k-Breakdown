.class final synthetic Lcom/google/android/gms/internal/ads/zzcao;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcgy;

.field private final zzb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcgy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcao;->zza:Lcom/google/android/gms/internal/ads/zzcgy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcao;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcao;->zza:Lcom/google/android/gms/internal/ads/zzcgy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcao;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgy;->zza(Ljava/lang/String;)V

    return-void
.end method