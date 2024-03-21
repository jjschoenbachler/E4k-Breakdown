.class public final Lcom/google/android/gms/internal/ads/zzts;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzuo;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zztb;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzame;

.field private zzc:I

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzamn;

.field private zzf:Z

.field private zzg:Z

.field private zzh:Z

.field private zzi:I

.field private zzj:I

.field private zzk:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zztb;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzts;->zza:Lcom/google/android/gms/internal/ads/zztb;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzame;

    const/16 v0, 0xa

    new-array v1, v0, [B

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzame;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzts;->zzc:I

    return-void
.end method

.method private final zzd(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzts;->zzc:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzts;->zzd:I

    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zzamf;[BI)Z
    .locals 3
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzts;->zzd:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzts;->zzd:I

    .line 3
    invoke-virtual {p1, p2, v2, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 2
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzts;->zzd:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzts;->zzd:I

    if-ne p1, p3, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzamn;Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzts;->zze:Lcom/google/android/gms/internal/ads/zzamn;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzts;->zza:Lcom/google/android/gms/internal/ads/zztb;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zztb;->zzb(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzun;)V

    return-void
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzts;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzts;->zzd:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzts;->zzh:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzts;->zza:Lcom/google/android/gms/internal/ads/zztb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zztb;->zza()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzamf;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaha;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzts;->zze:Lcom/google/android/gms/internal/ads/zzamn;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzakt;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, p2, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zzc:I

    packed-switch v3, :pswitch_data_0

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zzj:I

    if-eq v3, v4, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x3b

    .line 2
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Unexpected start indicator: expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " more bytes"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "PesReader"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3
    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const-string v3, "PesReader"

    const-string v6, "Unexpected start indicator reading extended header"

    .line 5
    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zza:Lcom/google/android/gms/internal/ads/zztb;

    .line 4
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zztb;->zze()V

    .line 6
    :goto_1
    :pswitch_1
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzts;->zzd(I)V

    :cond_1
    move/from16 v2, p2

    :cond_2
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v3

    if-lez v3, :cond_b

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zzc:I

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v3

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzts;->zzj:I

    if-ne v7, v4, :cond_9

    goto/16 :goto_6

    .line 10
    :pswitch_2
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zzi:I

    const/16 v7, 0xa

    .line 11
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzame;->zza:[B

    .line 12
    invoke-direct {v0, v1, v7, v3}, Lcom/google/android/gms/internal/ads/zzts;->zze(Lcom/google/android/gms/internal/ads/zzamf;[BI)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzts;->zzi:I

    .line 13
    invoke-direct {v0, v1, v3, v7}, Lcom/google/android/gms/internal/ads/zzts;->zze(Lcom/google/android/gms/internal/ads/zzamf;[BI)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 14
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzame;->zzd(I)V

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zzf:Z

    const/4 v7, 0x3

    const/4 v8, 0x4

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 15
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 16
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v3

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 17
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    const/16 v10, 0xf

    .line 18
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v9

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 19
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    int-to-long v11, v3

    const/16 v3, 0x1e

    shl-long/2addr v11, v3

    shl-int/2addr v9, v10

    int-to-long v13, v9

    or-long/2addr v11, v13

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 20
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v9

    int-to-long v13, v9

    or-long/2addr v11, v13

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 21
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzts;->zzh:Z

    if-nez v9, :cond_3

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzts;->zzg:Z

    if-eqz v9, :cond_3

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 22
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 23
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v9

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 24
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 25
    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v13

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 26
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 27
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v14

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 28
    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzts;->zze:Lcom/google/android/gms/internal/ads/zzamn;

    int-to-long v8, v9

    shl-long/2addr v8, v3

    shl-int/lit8 v3, v13, 0xf

    int-to-long v6, v3

    or-long/2addr v6, v8

    int-to-long v8, v14

    or-long/2addr v6, v8

    .line 29
    invoke-virtual {v15, v6, v7}, Lcom/google/android/gms/internal/ads/zzamn;->zze(J)J

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzts;->zzh:Z

    :cond_3
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zze:Lcom/google/android/gms/internal/ads/zzamn;

    .line 30
    invoke-virtual {v3, v11, v12}, Lcom/google/android/gms/internal/ads/zzamn;->zze(J)J

    move-result-wide v6

    goto :goto_3

    :cond_4
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    :goto_3
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zzk:Z

    if-eq v5, v3, :cond_5

    const/16 v16, 0x0

    goto :goto_4

    :cond_5
    const/16 v16, 0x4

    :goto_4
    or-int v2, v2, v16

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zza:Lcom/google/android/gms/internal/ads/zztb;

    .line 31
    invoke-interface {v3, v6, v7, v2}, Lcom/google/android/gms/internal/ads/zztb;->zzc(JI)V

    const/4 v3, 0x3

    .line 32
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzts;->zzd(I)V

    goto/16 :goto_2

    :pswitch_3
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzame;->zza:[B

    const/16 v6, 0x9

    .line 33
    invoke-direct {v0, v1, v3, v6}, Lcom/google/android/gms/internal/ads/zzts;->zze(Lcom/google/android/gms/internal/ads/zzamf;[BI)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    const/4 v6, 0x0

    .line 34
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzame;->zzd(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    const/16 v7, 0x18

    .line 35
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v3

    const/4 v7, 0x2

    if-eq v3, v5, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x29

    .line 36
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Unexpected start code prefix: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "PesReader"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 37
    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzts;->zzj:I

    const/4 v7, 0x0

    goto :goto_5

    .line 49
    :cond_6
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    const/16 v6, 0x8

    .line 38
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    const/16 v8, 0x10

    .line 39
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v3

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    const/4 v9, 0x5

    .line 40
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 41
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v8

    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzts;->zzk:Z

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 42
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 43
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v8

    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzts;->zzf:Z

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 44
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v8

    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzts;->zzg:Z

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    const/4 v9, 0x6

    .line 45
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 46
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v6

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzts;->zzi:I

    if-nez v3, :cond_7

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzts;->zzj:I

    goto :goto_5

    :cond_7
    add-int/lit8 v3, v3, -0x3

    sub-int/2addr v3, v6

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zzj:I

    if-gez v3, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v8, 0x2f

    .line 47
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Found negative packet payload size: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "PesReader"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 48
    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzts;->zzj:I

    .line 49
    :cond_8
    :goto_5
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzts;->zzd(I)V

    goto/16 :goto_2

    .line 48
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v3

    .line 50
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    goto/16 :goto_2

    :cond_9
    sub-int v6, v3, v7

    :goto_6
    if-lez v6, :cond_a

    sub-int/2addr v3, v6

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v6

    add-int/2addr v6, v3

    .line 7
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzf(I)V

    :cond_a
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzts;->zza:Lcom/google/android/gms/internal/ads/zztb;

    .line 8
    invoke-interface {v6, v1}, Lcom/google/android/gms/internal/ads/zztb;->zzd(Lcom/google/android/gms/internal/ads/zzamf;)V

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzts;->zzj:I

    if-eq v6, v4, :cond_2

    sub-int/2addr v6, v3

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzts;->zzj:I

    if-nez v6, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zza:Lcom/google/android/gms/internal/ads/zztb;

    .line 9
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zztb;->zze()V

    .line 10
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzts;->zzd(I)V

    goto/16 :goto_2

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
