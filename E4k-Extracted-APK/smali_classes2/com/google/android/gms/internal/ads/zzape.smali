.class public final Lcom/google/android/gms/internal/ads/zzape;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public zza:[B

.field public zzb:[B

.field public zzc:I

.field public zzd:[I

.field public zze:[I

.field public zzf:I

.field private final zzg:Landroid/media/MediaCodec$CryptoInfo;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzapd;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/gms/internal/ads/zzave;->zza:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 2
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzape;->zzg:Landroid/media/MediaCodec$CryptoInfo;

    sget v0, Lcom/google/android/gms/internal/ads/zzave;->zza:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzapd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzape;->zzg:Landroid/media/MediaCodec$CryptoInfo;

    .line 3
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzapd;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lcom/google/android/gms/internal/ads/zzapc;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzape;->zzh:Lcom/google/android/gms/internal/ads/zzapd;

    return-void
.end method


# virtual methods
.method public final zza(I[I[I[B[BI)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzape;->zzf:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzape;->zzd:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzape;->zze:[I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzape;->zzb:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzape;->zza:[B

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzape;->zzc:I

    sget p1, Lcom/google/android/gms/internal/ads/zzave;->zza:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzape;->zzg:Landroid/media/MediaCodec$CryptoInfo;

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzape;->zzf:I

    .line 2
    iput p2, p1, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzape;->zzg:Landroid/media/MediaCodec$CryptoInfo;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzape;->zzd:[I

    .line 3
    iput-object p2, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzape;->zzg:Landroid/media/MediaCodec$CryptoInfo;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzape;->zze:[I

    .line 4
    iput-object p2, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzape;->zzg:Landroid/media/MediaCodec$CryptoInfo;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzape;->zzb:[B

    .line 5
    iput-object p2, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzape;->zzg:Landroid/media/MediaCodec$CryptoInfo;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzape;->zza:[B

    .line 6
    iput-object p2, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzape;->zzg:Landroid/media/MediaCodec$CryptoInfo;

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzape;->zzc:I

    .line 7
    iput p2, p1, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    sget p1, Lcom/google/android/gms/internal/ads/zzave;->zza:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzape;->zzh:Lcom/google/android/gms/internal/ads/zzapd;

    const/4 p2, 0x0

    .line 8
    invoke-static {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzapd;->zza(Lcom/google/android/gms/internal/ads/zzapd;II)V

    :cond_0
    return-void
.end method

.method public final zzb()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzape;->zzg:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method
