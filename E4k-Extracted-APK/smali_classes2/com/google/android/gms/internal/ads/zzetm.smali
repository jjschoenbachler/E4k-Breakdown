.class final synthetic Lcom/google/android/gms/internal/ads/zzetm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfsm;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfsm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfsm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzetm;->zza:Lcom/google/android/gms/internal/ads/zzfsm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzetm;->zzb:Lcom/google/android/gms/internal/ads/zzfsm;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzetm;->zza:Lcom/google/android/gms/internal/ads/zzfsm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzetm;->zzb:Lcom/google/android/gms/internal/ads/zzfsm;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeto;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfsm;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfsm;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzeto;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
