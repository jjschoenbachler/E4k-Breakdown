.class final synthetic Lcom/google/android/gms/internal/ads/zzeop;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeos;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeos;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeop;->zza:Lcom/google/android/gms/internal/ads/zzeos;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeop;->zza:Lcom/google/android/gms/internal/ads/zzeos;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeos;->zzb()Lcom/google/android/gms/internal/ads/zzeoq;

    move-result-object v0

    return-object v0
.end method
