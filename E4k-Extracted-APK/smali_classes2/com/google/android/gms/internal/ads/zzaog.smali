.class final Lcom/google/android/gms/internal/ads/zzaog;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzapf;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzaoi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaoi;Lcom/google/android/gms/internal/ads/zzapf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaog;->zzb:Lcom/google/android/gms/internal/ads/zzaoi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaog;->zza:Lcom/google/android/gms/internal/ads/zzapf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaog;->zza:Lcom/google/android/gms/internal/ads/zzapf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapf;->zza()V

    return-void
.end method
