.class final synthetic Lcom/google/android/gms/internal/ads/zzcji;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcjs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcjs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcji;->zza:Lcom/google/android/gms/internal/ads/zzcjs;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcji;->zza:Lcom/google/android/gms/internal/ads/zzcjs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzF()V

    return-void
.end method
