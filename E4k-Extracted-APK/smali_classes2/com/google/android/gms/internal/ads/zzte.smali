.class final Lcom/google/android/gms/internal/ads/zzte;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static final zzd:[B


# instance fields
.field public zza:I

.field public zzb:I

.field public zzc:[B

.field private zze:Z

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzte;->zzd:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzc:[B

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zze:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zza:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzf:I

    return-void
.end method

.method public final zzb(II)Z
    .locals 5

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzf:I

    const/4 v1, 0x3

    const/16 v2, 0xb5

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xb3

    if-eq p1, v0, :cond_4

    if-ne p1, v2, :cond_3

    goto :goto_1

    :pswitch_0
    and-int/lit16 p1, p1, 0xf0

    const/16 p2, 0x20

    if-eq p1, p2, :cond_0

    const-string p1, "H263Reader"

    const-string p2, "Unexpected start code value"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zza()V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zza:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzb:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzf:I

    goto :goto_0

    :pswitch_1
    const/16 p2, 0x1f

    if-le p1, p2, :cond_1

    const-string p1, "H263Reader"

    const-string p2, "Unexpected start code value"

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zza()V

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzf:I

    goto :goto_0

    :pswitch_2
    if-eq p1, v2, :cond_2

    const-string p1, "H263Reader"

    const-string p2, "Unexpected start code value"

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zza()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzf:I

    goto :goto_0

    :pswitch_3
    const/16 p2, 0xb0

    if-ne p1, p2, :cond_3

    .line 2
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzte;->zzf:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzte;->zze:Z

    .line 7
    :cond_3
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzte;->zzd:[B

    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzte;->zzc([BII)V

    return v4

    :cond_4
    :goto_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zza:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zza:I

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzte;->zze:Z

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzc([BII)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zze:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sub-int/2addr p3, p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzc:[B

    array-length v1, v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zza:I

    add-int/2addr v2, p3

    if-ge v1, v2, :cond_1

    add-int/2addr v2, v2

    .line 2
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzc:[B

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzc:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zza:I

    .line 3
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zza:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zza:I

    return-void
.end method
