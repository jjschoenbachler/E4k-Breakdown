.class public final Lcom/google/android/gms/internal/ads/zzrv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final zza:Z

.field public final zzb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzc:Lcom/google/android/gms/internal/ads/zzow;

.field public final zzd:I

.field public final zze:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;I[BII[B)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p7, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    xor-int/2addr v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrv;->zza:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrv;->zzb:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzrv;->zzd:I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzrv;->zze:[B

    new-instance p1, Lcom/google/android/gms/internal/ads/zzow;

    const/4 p3, 0x2

    if-nez p2, :cond_2

    goto :goto_4

    .line 4
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p7

    const v2, 0x2e7ccd

    if-eq p7, v2, :cond_6

    const v2, 0x2e7d0f

    if-eq p7, v2, :cond_5

    const v2, 0x2e8997

    if-eq p7, v2, :cond_4

    const v0, 0x2e89a7

    if-eq p7, v0, :cond_3

    goto :goto_2

    :cond_3
    const-string p7, "cens"

    .line 3
    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const-string p7, "cenc"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_7

    goto :goto_3

    :cond_5
    const-string p7, "cbcs"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_7

    const/4 v0, 0x3

    goto :goto_3

    :cond_6
    const-string p7, "cbc1"

    invoke-virtual {p2, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_7

    const/4 v0, 0x2

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v0, -0x1

    :goto_3
    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p7

    add-int/lit8 p7, p7, 0x44

    .line 2
    invoke-direct {p3, p7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p7, "Unsupported protection scheme type \'"

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'. Assuming AES-CTR crypto mode."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "TrackEncryptionBox"

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 3
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :pswitch_0
    const/4 v1, 0x2

    .line 4
    :goto_4
    :pswitch_1
    invoke-direct {p1, v1, p4, p5, p6}, Lcom/google/android/gms/internal/ads/zzow;-><init>(I[BII)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrv;->zzc:Lcom/google/android/gms/internal/ads/zzow;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
