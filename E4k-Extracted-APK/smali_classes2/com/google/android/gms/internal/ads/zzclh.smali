.class final synthetic Lcom/google/android/gms/internal/ads/zzclh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcjb;

.field private final zzb:Z

.field private final zzc:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcjb;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclh;->zza:Lcom/google/android/gms/internal/ads/zzcjb;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzclh;->zzb:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzclh;->zzc:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclh;->zza:Lcom/google/android/gms/internal/ads/zzcjb;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzclh;->zzb:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzclh;->zzc:J

    sget v4, Lcom/google/android/gms/internal/ads/zzclj;->zzd:I

    .line 2
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcjb;->zzv(ZJ)V

    return-void
.end method
