.class final synthetic Lcom/google/android/gms/internal/ads/zzmn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzmt;

.field private final zzb:J

.field private final zzc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzmt;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmn;->zza:Lcom/google/android/gms/internal/ads/zzmt;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzmn;->zzb:J

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzmn;->zzc:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmn;->zza:Lcom/google/android/gms/internal/ads/zzmt;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzmn;->zzb:J

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzmn;->zzc:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzmt;->zzp(JI)V

    return-void
.end method