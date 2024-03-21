.class public final Lcom/google/android/gms/internal/ads/zzsz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zzb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Ljava/lang/String;

.field private zzd:Lcom/google/android/gms/internal/ads/zzox;

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:J

.field private zzi:Lcom/google/android/gms/internal/ads/zzafv;

.field private zzj:I

.field private zzk:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v1, 0x12

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zze:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzk:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zze:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzf:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzg:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzk:J

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zza()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzc:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzb()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzd:Lcom/google/android/gms/internal/ads/zzox;

    return-void
.end method

.method public final zzc(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzk:J

    :cond_0
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzamf;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzd:Lcom/google/android/gms/internal/ads/zzox;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v0

    if-lez v0, :cond_8

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zze:I

    const/16 v1, 0x8

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x4

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzj:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzf:I

    sub-int/2addr v1, v2

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzd:Lcom/google/android/gms/internal/ads/zzox;

    .line 9
    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzamf;I)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzf:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzf:I

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzj:I

    if-ne v1, v9, :cond_0

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzk:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v6, v0

    if-eqz v2, :cond_7

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzd:Lcom/google/android/gms/internal/ads/zzox;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 10
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzox;->zzv(JIIILcom/google/android/gms/internal/ads/zzow;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzk:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzh:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzk:J

    goto/16 :goto_5

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v7

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzf:I

    const/16 v9, 0x12

    rsub-int/lit8 v8, v8, 0x12

    .line 11
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzf:I

    .line 12
    invoke-virtual {p1, v0, v8, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzf:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzf:I

    if-ne v0, v9, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzi:Lcom/google/android/gms/internal/ads/zzafv;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzc:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzb:Ljava/lang/String;

    const/4 v10, 0x0

    .line 13
    invoke-static {v0, v7, v8, v10}, Lcom/google/android/gms/internal/ads/zzns;->zza([BLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzi:Lcom/google/android/gms/internal/ads/zzafv;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzd:Lcom/google/android/gms/internal/ads/zzox;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzi:Lcom/google/android/gms/internal/ads/zzafv;

    .line 14
    invoke-interface {v7, v8}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    .line 15
    :cond_1
    sget v7, Lcom/google/android/gms/internal/ads/zzns;->zza:I

    .line 16
    aget-byte v7, v0, v4

    const/16 v8, 0x1f

    const/4 v10, 0x5

    const/4 v11, 0x7

    const/4 v12, 0x6

    if-eq v7, v8, :cond_2

    packed-switch v7, :pswitch_data_1

    .line 20
    aget-byte v1, v0, v10

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, v0, v12

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    or-int/2addr v1, v2

    aget-byte v2, v0, v11

    and-int/lit16 v2, v2, 0xf0

    shr-int/2addr v2, v6

    or-int/2addr v1, v2

    add-int/2addr v1, v5

    :goto_1
    move v2, v1

    const/4 v1, 0x0

    goto :goto_3

    .line 18
    :pswitch_1
    aget-byte v1, v0, v11

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, v0, v12

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    or-int/2addr v1, v2

    const/16 v2, 0x9

    aget-byte v2, v0, v2

    and-int/lit8 v2, v2, 0x3c

    shr-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/2addr v1, v5

    :goto_2
    move v2, v1

    const/4 v1, 0x1

    goto :goto_3

    .line 19
    :pswitch_2
    aget-byte v1, v0, v6

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, v0, v11

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    or-int/2addr v1, v2

    aget-byte v2, v0, v12

    and-int/lit16 v2, v2, 0xf0

    shr-int/2addr v2, v6

    or-int/2addr v1, v2

    add-int/2addr v1, v5

    goto :goto_1

    .line 17
    :cond_2
    aget-byte v7, v0, v12

    and-int/2addr v2, v7

    shl-int/lit8 v2, v2, 0xc

    aget-byte v7, v0, v11

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v6

    or-int/2addr v2, v7

    aget-byte v1, v0, v1

    and-int/lit8 v1, v1, 0x3c

    shr-int/2addr v1, v3

    or-int/2addr v1, v2

    add-int/2addr v1, v5

    goto :goto_2

    :goto_3
    if-eqz v1, :cond_3

    mul-int/lit8 v2, v2, 0x10

    .line 20
    div-int/lit8 v2, v2, 0xe

    :cond_3
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzj:I

    .line 21
    aget-byte v1, v0, v4

    if-eq v1, v8, :cond_4

    packed-switch v1, :pswitch_data_2

    .line 25
    aget-byte v1, v0, v6

    and-int/2addr v1, v5

    shl-int/2addr v1, v12

    aget-byte v0, v0, v10

    and-int/lit16 v0, v0, 0xfc

    shr-int/2addr v0, v3

    or-int/2addr v0, v1

    goto :goto_4

    .line 23
    :pswitch_3
    aget-byte v1, v0, v6

    and-int/2addr v1, v11

    shl-int/2addr v1, v6

    aget-byte v0, v0, v11

    and-int/lit8 v0, v0, 0x3c

    shr-int/2addr v0, v3

    or-int/2addr v0, v1

    goto :goto_4

    .line 24
    :pswitch_4
    aget-byte v1, v0, v10

    and-int/2addr v1, v5

    shl-int/2addr v1, v12

    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xfc

    shr-int/2addr v0, v3

    or-int/2addr v0, v1

    goto :goto_4

    .line 22
    :cond_4
    aget-byte v1, v0, v10

    and-int/2addr v1, v11

    shl-int/2addr v1, v6

    aget-byte v0, v0, v12

    and-int/lit8 v0, v0, 0x3c

    shr-int/2addr v0, v3

    or-int/2addr v0, v1

    :goto_4
    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x20

    int-to-long v0, v0

    const-wide/32 v5, 0xf4240

    mul-long v0, v0, v5

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzi:Lcom/google/android/gms/internal/ads/zzafv;

    .line 26
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzafv;->zzz:I

    int-to-long v5, v2

    div-long/2addr v0, v5

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzh:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 27
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzd:Lcom/google/android/gms/internal/ads/zzox;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsz;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 28
    invoke-static {v0, v1, v9}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzamf;I)V

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzsz;->zze:I

    goto/16 :goto_0

    .line 10
    :cond_5
    :pswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzg:I

    shl-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzg:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v7

    or-int/2addr v0, v7

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzg:I

    .line 3
    sget v7, Lcom/google/android/gms/internal/ads/zzns;->zza:I

    const v7, 0x7ffe8001

    if-eq v0, v7, :cond_6

    const v7, -0x180fe80

    if-eq v0, v7, :cond_6

    const v7, 0x1fffe800

    if-eq v0, v7, :cond_6

    const v7, -0xe0ff18

    if-ne v0, v7, :cond_5

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsz;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzg:I

    shr-int/lit8 v7, v1, 0x18

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 4
    aput-byte v7, v0, v4

    shr-int/lit8 v7, v1, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 5
    aput-byte v7, v0, v5

    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 6
    aput-byte v7, v0, v3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 7
    aput-byte v1, v0, v2

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzf:I

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzsz;->zzg:I

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzsz;->zze:I

    goto/16 :goto_0

    .line 10
    :cond_7
    :goto_5
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzsz;->zze:I

    goto/16 :goto_0

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final zze()V
    .locals 0

    return-void
.end method
