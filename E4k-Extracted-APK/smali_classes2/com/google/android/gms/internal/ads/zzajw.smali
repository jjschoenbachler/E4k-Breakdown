.class public final Lcom/google/android/gms/internal/ads/zzajw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzaju;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzajt;->zza:Lcom/google/android/gms/internal/ads/zzaju;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzajw;->zza:Lcom/google/android/gms/internal/ads/zzaju;

    return-void
.end method

.method public static final zza([BILcom/google/android/gms/internal/ads/zzaju;Lcom/google/android/gms/internal/ads/zzaix;)Lcom/google/android/gms/internal/ads/zzaiv;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamf;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>([BI)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result p0

    const/4 p1, 0x2

    const/16 v1, 0xa

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge p0, v1, :cond_0

    const-string p0, "Id3Decoder"

    const-string v6, "Data too short to be an ID3 tag"

    .line 3
    invoke-static {p0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v8, v5

    goto/16 :goto_4

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzr()I

    move-result p0

    const v6, 0x494433

    if-eq p0, v6, :cond_2

    new-array v6, v4, [Ljava/lang/Object;

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v3

    const-string p0, "%06X"

    invoke-static {p0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v6, "Unexpected first three bytes of ID3 tag header: 0x"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/String;

    .line 5
    invoke-direct {p0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v6, "Id3Decoder"

    .line 6
    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result p0

    .line 8
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v6

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzA()I

    move-result v7

    if-ne p0, p1, :cond_3

    and-int/lit8 v8, v6, 0x40

    if-eqz v8, :cond_6

    const-string p0, "Id3Decoder"

    const-string v6, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme"

    .line 11
    invoke-static {p0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v8, 0x3

    if-ne p0, v8, :cond_4

    and-int/lit8 v8, v6, 0x40

    if-eqz v8, :cond_6

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v8

    .line 13
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    add-int/2addr v8, v2

    sub-int/2addr v7, v8

    goto :goto_2

    :cond_4
    if-ne p0, v2, :cond_8

    and-int/lit8 v8, v6, 0x40

    if-eqz v8, :cond_5

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzA()I

    move-result v8

    add-int/lit8 v9, v8, -0x4

    .line 15
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    sub-int/2addr v7, v8

    :cond_5
    and-int/lit8 v8, v6, 0x10

    if-eqz v8, :cond_6

    add-int/lit8 v7, v7, -0xa

    :cond_6
    :goto_2
    if-ge p0, v2, :cond_7

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    .line 11
    :goto_3
    new-instance v8, Lcom/google/android/gms/internal/ads/zzajv;

    .line 16
    invoke-direct {v8, p0, v6, v7}, Lcom/google/android/gms/internal/ads/zzajv;-><init>(IZI)V

    goto :goto_4

    .line 15
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x39

    .line 17
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Skipped ID3 tag with unsupported majorVersion="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "Id3Decoder"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-static {p0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :goto_4
    if-nez v8, :cond_9

    return-object v5

    .line 3
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result p0

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzajv;->zza(Lcom/google/android/gms/internal/ads/zzajv;)I

    move-result v6

    if-ne v6, p1, :cond_a

    const/4 v1, 0x6

    :cond_a
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzajv;->zzc(Lcom/google/android/gms/internal/ads/zzajv;)I

    move-result p1

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzajv;->zzb(Lcom/google/android/gms/internal/ads/zzajv;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzajv;->zzc(Lcom/google/android/gms/internal/ads/zzajv;)I

    move-result p1

    .line 19
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzajw;->zzd(Lcom/google/android/gms/internal/ads/zzamf;I)I

    move-result p1

    :cond_b
    add-int/2addr p0, p1

    .line 20
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzf(I)V

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzajv;->zza(Lcom/google/android/gms/internal/ads/zzajv;)I

    move-result p0

    .line 21
    invoke-static {v0, p0, v1, v3}, Lcom/google/android/gms/internal/ads/zzajw;->zzb(Lcom/google/android/gms/internal/ads/zzamf;IIZ)Z

    move-result p0

    if-nez p0, :cond_d

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzajv;->zza(Lcom/google/android/gms/internal/ads/zzajv;)I

    move-result p0

    if-ne p0, v2, :cond_c

    .line 22
    invoke-static {v0, v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzajw;->zzb(Lcom/google/android/gms/internal/ads/zzamf;IIZ)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 v3, 0x1

    goto :goto_5

    .line 27
    :cond_c
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzajv;->zza(Lcom/google/android/gms/internal/ads/zzajv;)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x38

    .line 23
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Failed to validate ID3 tag with majorVersion="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "Id3Decoder"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 22
    :cond_d
    :goto_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result p0

    if-lt p0, v1, :cond_e

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzajv;->zza(Lcom/google/android/gms/internal/ads/zzajv;)I

    move-result p0

    .line 25
    invoke-static {p0, v0, v3, v1, p2}, Lcom/google/android/gms/internal/ads/zzajw;->zzc(ILcom/google/android/gms/internal/ads/zzamf;ZILcom/google/android/gms/internal/ads/zzaju;)Lcom/google/android/gms/internal/ads/zzajx;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 26
    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    new-instance p0, Lcom/google/android/gms/internal/ads/zzaiv;

    .line 27
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzamf;IIZ)Z
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v2

    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v3

    const/4 v4, 0x1

    move/from16 v5, p2

    if-lt v3, v5, :cond_d

    const/4 v3, 0x3

    const/4 v6, 0x0

    if-lt v0, v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v7

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v8

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v10

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzr()I

    move-result v7

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzr()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v8, v8

    const/4 v10, 0x0

    :goto_1
    const-wide/16 v11, 0x0

    if-nez v7, :cond_2

    cmp-long v7, v8, v11

    if-nez v7, :cond_2

    if-eqz v10, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    return v4

    :cond_2
    :goto_2
    const/4 v7, 0x4

    if-ne v0, v7, :cond_4

    if-nez p3, :cond_4

    const-wide/32 v13, 0x808080

    and-long/2addr v13, v8

    cmp-long v15, v13, v11

    if-eqz v15, :cond_3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    return v6

    :cond_3
    const-wide/16 v11, 0xff

    and-long v13, v8, v11

    const/16 v15, 0x8

    shr-long v15, v8, v15

    and-long/2addr v15, v11

    const/16 v17, 0x7

    shl-long v15, v15, v17

    or-long/2addr v13, v15

    const/16 v15, 0x10

    shr-long v15, v8, v15

    and-long/2addr v11, v15

    const/16 v15, 0xe

    shl-long/2addr v11, v15

    or-long/2addr v11, v13

    const/16 v13, 0x18

    shr-long/2addr v8, v13

    const/16 v13, 0x15

    shl-long/2addr v8, v13

    or-long/2addr v8, v11

    :cond_4
    if-ne v0, v7, :cond_6

    and-int/lit8 v3, v10, 0x40

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    and-int/lit8 v3, v10, 0x1

    goto :goto_5

    :cond_6
    if-ne v0, v3, :cond_9

    and-int/lit8 v3, v10, 0x20

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    and-int/lit16 v7, v10, 0x80

    if-eqz v7, :cond_8

    move v4, v3

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    move v4, v3

    const/4 v3, 0x0

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_5
    if-eqz v3, :cond_a

    add-int/lit8 v4, v4, 0x4

    :cond_a
    int-to-long v3, v4

    cmp-long v7, v8, v3

    if-gez v7, :cond_b

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    return v6

    :cond_b
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v3, v3

    cmp-long v7, v3, v8

    if-gez v7, :cond_c

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    return v6

    :cond_c
    long-to-int v3, v8

    .line 6
    :try_start_2
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 7
    :cond_d
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    return v4

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 8
    throw v0

    :goto_6
    nop

    goto :goto_6
.end method

.method private static zzc(ILcom/google/android/gms/internal/ads/zzamf;ZILcom/google/android/gms/internal/ads/zzaju;)Lcom/google/android/gms/internal/ads/zzajx;
    .locals 32
    .param p4    # Lcom/google/android/gms/internal/ads/zzaju;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v4

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v5

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-lt v0, v7, :cond_0

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v9

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x4

    if-ne v0, v10, :cond_1

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v11

    if-nez v2, :cond_3

    and-int/lit16 v12, v11, 0xff

    shr-int/lit8 v13, v11, 0x8

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x7

    or-int/2addr v12, v13

    shr-int/lit8 v13, v11, 0x10

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0xe

    or-int/2addr v12, v13

    shr-int/lit8 v11, v11, 0x18

    shl-int/lit8 v11, v11, 0x15

    or-int/2addr v11, v12

    goto :goto_1

    :cond_1
    if-ne v0, v7, :cond_2

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v11

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzr()I

    move-result v11

    :cond_3
    :goto_1
    if-lt v0, v7, :cond_4

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v12

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    :goto_2
    const/4 v13, 0x0

    if-nez v4, :cond_6

    if-nez v5, :cond_6

    if-nez v6, :cond_6

    if-nez v9, :cond_6

    if-nez v11, :cond_6

    if-eqz v12, :cond_5

    goto :goto_3

    .line 132
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v0

    .line 133
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    return-object v13

    .line 8
    :cond_6
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v14

    add-int/2addr v14, v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v15

    if-le v14, v15, :cond_7

    const-string v0, "Id3Decoder"

    const-string v2, "Frame size exceeds remaining tag data"

    .line 9
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v0

    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    return-object v13

    :cond_7
    if-nez p4, :cond_40

    const/4 v15, 0x1

    if-ne v0, v7, :cond_b

    and-int/lit16 v7, v12, 0x80

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    :goto_4
    and-int/lit8 v17, v12, 0x40

    if-eqz v17, :cond_9

    const/16 v17, 0x1

    goto :goto_5

    :cond_9
    const/16 v17, 0x0

    :goto_5
    and-int/lit8 v12, v12, 0x20

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    goto :goto_6

    :cond_a
    const/4 v12, 0x0

    :goto_6
    move/from16 v18, v17

    const/16 v19, 0x0

    move/from16 v17, v7

    goto :goto_b

    :cond_b
    if-ne v0, v10, :cond_10

    and-int/lit8 v7, v12, 0x40

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    goto :goto_7

    :cond_c
    const/4 v7, 0x0

    :goto_7
    and-int/lit8 v17, v12, 0x8

    if-eqz v17, :cond_d

    const/16 v17, 0x1

    goto :goto_8

    :cond_d
    const/16 v17, 0x0

    :goto_8
    and-int/lit8 v18, v12, 0x4

    if-eqz v18, :cond_e

    const/16 v18, 0x1

    goto :goto_9

    :cond_e
    const/16 v18, 0x0

    :goto_9
    and-int/lit8 v19, v12, 0x2

    if-eqz v19, :cond_f

    const/16 v19, 0x1

    goto :goto_a

    :cond_f
    const/16 v19, 0x0

    :goto_a
    and-int/2addr v12, v15

    move/from16 v31, v12

    move v12, v7

    move/from16 v7, v31

    goto :goto_b

    :cond_10
    const/4 v7, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_b
    if-nez v17, :cond_3f

    if-eqz v18, :cond_11

    goto/16 :goto_1f

    :cond_11
    if-eqz v12, :cond_12

    add-int/lit8 v11, v11, -0x1

    .line 13
    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    :cond_12
    if-eqz v7, :cond_13

    add-int/lit8 v11, v11, -0x4

    .line 14
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    :cond_13
    if-eqz v19, :cond_14

    .line 15
    invoke-static {v1, v11}, Lcom/google/android/gms/internal/ads/zzajw;->zzd(Lcom/google/android/gms/internal/ads/zzamf;I)I

    move-result v11

    :cond_14
    const/16 v7, 0x54

    const/16 v12, 0x58

    const/4 v10, 0x2

    if-ne v4, v7, :cond_17

    if-ne v5, v12, :cond_17

    if-ne v6, v12, :cond_17

    if-eq v0, v10, :cond_15

    if-ne v9, v12, :cond_17

    :cond_15
    if-gtz v11, :cond_16

    goto :goto_c

    .line 120
    :cond_16
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzajw;->zze(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v7, v11, -0x1

    new-array v10, v7, [B

    .line 121
    invoke-virtual {v1, v10, v8, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 122
    invoke-static {v10, v8, v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzg([BII)I

    move-result v7

    new-instance v12, Ljava/lang/String;

    .line 123
    invoke-direct {v12, v10, v8, v7, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzi(I)I

    move-result v8

    add-int/2addr v7, v8

    .line 124
    invoke-static {v10, v7, v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzg([BII)I

    move-result v2

    .line 125
    invoke-static {v10, v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzajw;->zzk([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzakf;

    const-string v7, "TXXX"

    .line 126
    invoke-direct {v3, v7, v12, v2}, Lcom/google/android/gms/internal/ads/zzakf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_17
    if-ne v4, v7, :cond_19

    .line 16
    invoke-static {v0, v7, v5, v6, v9}, Lcom/google/android/gms/internal/ads/zzajw;->zzf(IIIII)Ljava/lang/String;

    move-result-object v2

    if-gtz v11, :cond_18

    :goto_c
    move/from16 v26, v4

    move v3, v5

    move v4, v6

    move v8, v9

    move/from16 v23, v14

    goto/16 :goto_1b

    .line 17
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzajw;->zze(I)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v10, v11, -0x1

    new-array v12, v10, [B

    .line 18
    invoke-virtual {v1, v12, v8, v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 19
    invoke-static {v12, v8, v3}, Lcom/google/android/gms/internal/ads/zzajw;->zzg([BII)I

    move-result v3

    new-instance v10, Ljava/lang/String;

    .line 20
    invoke-direct {v10, v12, v8, v3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzakf;

    .line 21
    invoke-direct {v3, v2, v13, v10}, Lcom/google/android/gms/internal/ads/zzakf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    move-object v13, v3

    goto :goto_c

    :catchall_0
    move-exception v0

    goto/16 :goto_1e

    :cond_19
    const/16 v7, 0x57

    if-ne v4, v7, :cond_1d

    if-ne v5, v12, :cond_1c

    if-ne v6, v12, :cond_1c

    if-eq v0, v10, :cond_1a

    if-ne v9, v12, :cond_1c

    :cond_1a
    if-gtz v11, :cond_1b

    goto :goto_c

    .line 113
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzajw;->zze(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v7, v11, -0x1

    new-array v10, v7, [B

    .line 114
    invoke-virtual {v1, v10, v8, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 115
    invoke-static {v10, v8, v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzg([BII)I

    move-result v7

    new-instance v12, Ljava/lang/String;

    .line 116
    invoke-direct {v12, v10, v8, v7, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzi(I)I

    move-result v2

    add-int/2addr v7, v2

    .line 117
    invoke-static {v10, v7}, Lcom/google/android/gms/internal/ads/zzajw;->zzh([BI)I

    move-result v2

    const-string v3, "ISO-8859-1"

    .line 118
    invoke-static {v10, v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzajw;->zzk([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzakh;

    const-string v7, "WXXX"

    .line 119
    invoke-direct {v3, v7, v12, v2}, Lcom/google/android/gms/internal/ads/zzakh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_1c
    const/16 v12, 0x57

    goto :goto_e

    :cond_1d
    move v12, v4

    :goto_e
    if-ne v12, v7, :cond_1e

    .line 22
    invoke-static {v0, v7, v5, v6, v9}, Lcom/google/android/gms/internal/ads/zzajw;->zzf(IIIII)Ljava/lang/String;

    move-result-object v2

    .line 23
    new-array v3, v11, [B

    .line 24
    invoke-virtual {v1, v3, v8, v11}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 25
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/ads/zzajw;->zzh([BI)I

    move-result v7

    new-instance v10, Ljava/lang/String;

    const-string v12, "ISO-8859-1"

    .line 26
    invoke-direct {v10, v3, v8, v7, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzakh;

    .line 27
    invoke-direct {v3, v2, v13, v10}, Lcom/google/android/gms/internal/ads/zzakh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_1e
    const/16 v7, 0x50

    if-ne v12, v7, :cond_20

    const/16 v12, 0x52

    if-ne v5, v12, :cond_1f

    const/16 v12, 0x49

    if-ne v6, v12, :cond_1f

    const/16 v12, 0x56

    if-ne v9, v12, :cond_1f

    .line 107
    new-array v2, v11, [B

    .line 108
    invoke-virtual {v1, v2, v8, v11}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 109
    invoke-static {v2, v8}, Lcom/google/android/gms/internal/ads/zzajw;->zzh([BI)I

    move-result v3

    new-instance v7, Ljava/lang/String;

    const-string v10, "ISO-8859-1"

    .line 110
    invoke-direct {v7, v2, v8, v3, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/2addr v3, v15

    array-length v8, v2

    .line 111
    invoke-static {v2, v3, v8}, Lcom/google/android/gms/internal/ads/zzajw;->zzj([BII)[B

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzakd;

    .line 112
    invoke-direct {v3, v7, v2}, Lcom/google/android/gms/internal/ads/zzakd;-><init>(Ljava/lang/String;[B)V

    goto/16 :goto_d

    :cond_1f
    const/16 v12, 0x50

    :cond_20
    const/16 v13, 0x47

    if-ne v12, v13, :cond_22

    const/16 v12, 0x45

    if-ne v5, v12, :cond_23

    const/16 v12, 0x4f

    if-ne v6, v12, :cond_23

    const/16 v12, 0x42

    if-eq v9, v12, :cond_21

    if-ne v0, v10, :cond_23

    .line 96
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzajw;->zze(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v7, v11, -0x1

    .line 97
    new-array v10, v7, [B

    .line 98
    invoke-virtual {v1, v10, v8, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 99
    invoke-static {v10, v8}, Lcom/google/android/gms/internal/ads/zzajw;->zzh([BI)I

    move-result v7

    new-instance v12, Ljava/lang/String;

    const-string v13, "ISO-8859-1"

    .line 100
    invoke-direct {v12, v10, v8, v7, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/2addr v7, v15

    .line 101
    invoke-static {v10, v7, v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzg([BII)I

    move-result v8

    .line 102
    invoke-static {v10, v7, v8, v3}, Lcom/google/android/gms/internal/ads/zzajw;->zzk([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzi(I)I

    move-result v13

    add-int/2addr v8, v13

    .line 103
    invoke-static {v10, v8, v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzg([BII)I

    move-result v13

    .line 104
    invoke-static {v10, v8, v13, v3}, Lcom/google/android/gms/internal/ads/zzajw;->zzk([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzi(I)I

    move-result v2

    add-int/2addr v13, v2

    array-length v2, v10

    .line 105
    invoke-static {v10, v13, v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzj([BII)[B

    move-result-object v2

    new-instance v13, Lcom/google/android/gms/internal/ads/zzajs;

    .line 106
    invoke-direct {v13, v12, v7, v3, v2}, Lcom/google/android/gms/internal/ads/zzajs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    goto/16 :goto_c

    :cond_22
    move v13, v12

    :cond_23
    const/16 v12, 0x43

    if-ne v0, v10, :cond_25

    if-ne v13, v7, :cond_24

    const/16 v15, 0x49

    if-ne v5, v15, :cond_24

    if-ne v6, v12, :cond_24

    goto :goto_f

    :cond_24
    move/from16 v23, v14

    goto/16 :goto_12

    :cond_25
    const/16 v15, 0x41

    if-ne v13, v15, :cond_24

    if-ne v5, v7, :cond_24

    const/16 v15, 0x49

    if-ne v6, v15, :cond_24

    if-ne v9, v12, :cond_24

    .line 82
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzajw;->zze(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v7, v11, -0x1

    .line 83
    new-array v12, v7, [B

    .line 84
    invoke-virtual {v1, v12, v8, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    if-ne v0, v10, :cond_28

    const-string v7, "image/"

    new-instance v13, Ljava/lang/String;

    const-string v15, "ISO-8859-1"

    const/4 v10, 0x3

    invoke-direct {v13, v12, v8, v10, v15}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 85
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzflf;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_26

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_10

    .line 95
    :cond_26
    new-instance v8, Ljava/lang/String;

    .line 85
    invoke-direct {v8, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    :goto_10
    const-string v8, "image/jpg"

    .line 86
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    const-string v7, "image/jpeg"

    :cond_27
    const/4 v10, 0x2

    goto :goto_11

    .line 87
    :cond_28
    invoke-static {v12, v8}, Lcom/google/android/gms/internal/ads/zzajw;->zzh([BI)I

    move-result v10

    new-instance v7, Ljava/lang/String;

    const-string v13, "ISO-8859-1"

    invoke-direct {v7, v12, v8, v10, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 88
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzflf;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2f

    .line 89
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v13, -0x1

    if-ne v8, v13, :cond_2a

    const-string v8, "image/"

    .line 90
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_29

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_11

    :cond_29
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_2a
    :goto_11
    add-int/lit8 v8, v10, 0x1

    .line 91
    aget-byte v8, v12, v8

    and-int/lit16 v8, v8, 0xff

    const/4 v13, 0x2

    add-int/2addr v10, v13

    .line 92
    invoke-static {v12, v10, v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzg([BII)I

    move-result v13

    new-instance v15, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v23, v14

    sub-int v14, v13, v10

    .line 93
    :try_start_1
    invoke-direct {v15, v12, v10, v14, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzi(I)I

    move-result v2

    add-int/2addr v13, v2

    array-length v2, v12

    .line 94
    invoke-static {v12, v13, v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzj([BII)[B

    move-result-object v2

    new-instance v13, Lcom/google/android/gms/internal/ads/zzaji;

    .line 95
    invoke-direct {v13, v7, v15, v8, v2}, Lcom/google/android/gms/internal/ads/zzaji;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    goto :goto_13

    :goto_12
    if-ne v13, v12, :cond_2d

    const/16 v10, 0x4f

    if-ne v5, v10, :cond_2d

    const/16 v10, 0x4d

    if-ne v6, v10, :cond_2d

    const/16 v10, 0x4d

    if-eq v9, v10, :cond_2b

    const/4 v10, 0x2

    if-ne v0, v10, :cond_2d

    :cond_2b
    const/4 v2, 0x4

    if-ge v11, v2, :cond_2c

    move/from16 v26, v4

    move v3, v5

    move v4, v6

    move v8, v9

    const/4 v13, 0x0

    goto/16 :goto_1b

    .line 73
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzajw;->zze(I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x3

    new-array v10, v7, [B

    .line 74
    invoke-virtual {v1, v10, v8, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    new-instance v12, Ljava/lang/String;

    .line 75
    invoke-direct {v12, v10, v8, v7}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v7, v11, -0x4

    new-array v10, v7, [B

    .line 76
    invoke-virtual {v1, v10, v8, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 77
    invoke-static {v10, v8, v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzg([BII)I

    move-result v7

    new-instance v13, Ljava/lang/String;

    .line 78
    invoke-direct {v13, v10, v8, v7, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzi(I)I

    move-result v8

    add-int/2addr v7, v8

    .line 79
    invoke-static {v10, v7, v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzg([BII)I

    move-result v2

    .line 80
    invoke-static {v10, v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzajw;->zzk([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzajq;

    .line 81
    invoke-direct {v3, v12, v13, v2}, Lcom/google/android/gms/internal/ads/zzajq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v3

    :goto_13
    move/from16 v26, v4

    move v3, v5

    move v4, v6

    move v8, v9

    goto/16 :goto_1b

    :cond_2d
    if-ne v13, v12, :cond_32

    const/16 v10, 0x48

    if-ne v5, v10, :cond_32

    const/16 v10, 0x41

    if-ne v6, v10, :cond_32

    if-ne v9, v7, :cond_32

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v10

    .line 61
    invoke-static {v10, v7}, Lcom/google/android/gms/internal/ads/zzajw;->zzh([BI)I

    move-result v10

    new-instance v13, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v12

    sub-int v14, v10, v7

    const-string v15, "ISO-8859-1"

    .line 62
    invoke-direct {v13, v12, v7, v14, v15}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/4 v12, 0x1

    add-int/2addr v10, v12

    .line 63
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v14

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v15

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v16

    const-wide v18, 0xffffffffL

    cmp-long v10, v16, v18

    if-nez v10, :cond_2e

    const-wide/16 v16, -0x1

    .line 67
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v18

    const-wide v20, 0xffffffffL

    cmp-long v10, v18, v20

    if-nez v10, :cond_2f

    const-wide/16 v18, -0x1

    :cond_2f
    new-instance v10, Ljava/util/ArrayList;

    .line 68
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr v7, v11

    :goto_14
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v12

    if-ge v12, v7, :cond_31

    const/4 v12, 0x0

    .line 69
    invoke-static {v0, v1, v2, v3, v12}, Lcom/google/android/gms/internal/ads/zzajw;->zzc(ILcom/google/android/gms/internal/ads/zzamf;ZILcom/google/android/gms/internal/ads/zzaju;)Lcom/google/android/gms/internal/ads/zzajx;

    move-result-object v8

    if-eqz v8, :cond_30

    .line 70
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    const/4 v8, 0x0

    goto :goto_14

    :cond_31
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzajx;

    .line 71
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, [Lcom/google/android/gms/internal/ads/zzajx;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzajm;

    move-object v12, v2

    .line 72
    invoke-direct/range {v12 .. v20}, Lcom/google/android/gms/internal/ads/zzajm;-><init>(Ljava/lang/String;IIJJ[Lcom/google/android/gms/internal/ads/zzajx;)V

    move-object v13, v2

    goto/16 :goto_13

    :cond_32
    if-ne v13, v12, :cond_38

    const/16 v7, 0x54

    if-ne v5, v7, :cond_38

    const/16 v7, 0x4f

    if-ne v6, v7, :cond_38

    if-ne v9, v12, :cond_38

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v8

    .line 48
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/ads/zzajw;->zzh([BI)I

    move-result v8

    new-instance v13, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v10

    sub-int v12, v8, v7

    const-string v14, "ISO-8859-1"

    .line 49
    invoke-direct {v13, v10, v7, v12, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/16 v22, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 50
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v8

    and-int/lit8 v10, v8, 0x2

    if-eqz v10, :cond_33

    const/4 v14, 0x1

    goto :goto_15

    :cond_33
    const/4 v14, 0x0

    :goto_15
    and-int/lit8 v8, v8, 0x1

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v10

    new-array v15, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    :goto_16
    if-ge v12, v10, :cond_34

    move/from16 v25, v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v10

    move/from16 v26, v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v4

    .line 53
    invoke-static {v4, v10}, Lcom/google/android/gms/internal/ads/zzajw;->zzh([BI)I

    move-result v4

    move/from16 v27, v9

    new-instance v9, Ljava/lang/String;

    move/from16 v28, v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v6

    move/from16 v29, v5

    sub-int v5, v4, v10

    move/from16 v30, v14

    const-string v14, "ISO-8859-1"

    invoke-direct {v9, v6, v10, v5, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 54
    aput-object v9, v15, v12

    add-int/lit8 v4, v4, 0x1

    .line 55
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    add-int/lit8 v12, v12, 0x1

    move/from16 v10, v25

    move/from16 v4, v26

    move/from16 v9, v27

    move/from16 v6, v28

    move/from16 v5, v29

    move/from16 v14, v30

    goto :goto_16

    :cond_34
    move/from16 v26, v4

    move/from16 v29, v5

    move/from16 v28, v6

    move/from16 v27, v9

    move/from16 v30, v14

    new-instance v4, Ljava/util/ArrayList;

    .line 56
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr v7, v11

    :cond_35
    :goto_17
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v5

    if-ge v5, v7, :cond_36

    const/4 v5, 0x0

    .line 57
    invoke-static {v0, v1, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzajw;->zzc(ILcom/google/android/gms/internal/ads/zzamf;ZILcom/google/android/gms/internal/ads/zzaju;)Lcom/google/android/gms/internal/ads/zzajx;

    move-result-object v6

    if-eqz v6, :cond_35

    .line 58
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_36
    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/android/gms/internal/ads/zzajx;

    .line 59
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, [Lcom/google/android/gms/internal/ads/zzajx;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzajo;

    const/4 v12, 0x1

    if-eq v12, v8, :cond_37

    const/16 v24, 0x0

    goto :goto_18

    :cond_37
    const/16 v24, 0x1

    :goto_18
    move-object v12, v2

    move/from16 v14, v30

    move-object v3, v15

    move/from16 v15, v24

    move-object/from16 v16, v3

    .line 60
    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzajo;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lcom/google/android/gms/internal/ads/zzajx;)V

    move-object v13, v2

    move/from16 v8, v27

    move/from16 v4, v28

    move/from16 v3, v29

    goto/16 :goto_1b

    :cond_38
    move/from16 v26, v4

    move/from16 v29, v5

    move/from16 v28, v6

    move/from16 v27, v9

    const/16 v2, 0x4d

    if-ne v13, v2, :cond_3c

    const/16 v2, 0x4c

    move/from16 v3, v29

    if-ne v3, v2, :cond_3b

    const/16 v2, 0x4c

    move/from16 v4, v28

    if-ne v4, v2, :cond_3a

    move/from16 v8, v27

    const/16 v2, 0x54

    if-ne v8, v2, :cond_3d

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v15

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzr()I

    move-result v16

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzr()I

    move-result v17

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v2

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzame;

    .line 37
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzame;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v9

    .line 38
    invoke-virtual {v6, v7, v9}, Lcom/google/android/gms/internal/ads/zzame;->zza([BI)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v7

    mul-int/lit8 v7, v7, 0x8

    .line 39
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzame;->zzd(I)V

    add-int/lit8 v7, v11, -0xa

    mul-int/lit8 v7, v7, 0x8

    add-int v9, v2, v5

    .line 40
    div-int/2addr v7, v9

    .line 41
    new-array v9, v7, [I

    .line 42
    new-array v10, v7, [I

    const/4 v12, 0x0

    :goto_19
    if-ge v12, v7, :cond_39

    .line 43
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v13

    .line 44
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v14

    .line 45
    aput v13, v9, v12

    .line 46
    aput v14, v10, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_19

    :cond_39
    new-instance v2, Lcom/google/android/gms/internal/ads/zzakb;

    move-object v14, v2

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    .line 47
    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/internal/ads/zzakb;-><init>(III[I[I)V

    move-object v13, v2

    goto :goto_1b

    :cond_3a
    move/from16 v8, v27

    goto :goto_1a

    :cond_3b
    move/from16 v8, v27

    move/from16 v4, v28

    goto :goto_1a

    :cond_3c
    move/from16 v8, v27

    move/from16 v4, v28

    move/from16 v3, v29

    .line 28
    :cond_3d
    :goto_1a
    invoke-static {v0, v13, v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzajw;->zzf(IIIII)Ljava/lang/String;

    move-result-object v2

    .line 29
    new-array v5, v11, [B

    const/4 v6, 0x0

    .line 30
    invoke-virtual {v1, v5, v6, v11}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    new-instance v13, Lcom/google/android/gms/internal/ads/zzajk;

    .line 31
    invoke-direct {v13, v2, v5}, Lcom/google/android/gms/internal/ads/zzajk;-><init>(Ljava/lang/String;[B)V

    :goto_1b
    if-nez v13, :cond_3e

    const-string v2, "Id3Decoder"

    move/from16 v5, v26

    .line 127
    invoke-static {v0, v5, v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzajw;->zzf(IIIII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to decode frame: id="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", frameSize="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1c

    :catchall_1
    move-exception v0

    move/from16 v14, v23

    goto :goto_1e

    :catch_0
    move/from16 v14, v23

    goto :goto_1d

    :cond_3e
    :goto_1c
    move/from16 v14, v23

    .line 130
    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    return-object v13

    :catch_1
    :goto_1d
    :try_start_2
    const-string v0, "Id3Decoder"

    const-string v2, "Unsupported character encoding"

    .line 129
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    const/4 v0, 0x0

    return-object v0

    :goto_1e
    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 131
    throw v0

    :cond_3f
    :goto_1f
    const-string v0, "Id3Decoder"

    const-string v2, "Skipping unsupported compressed or encrypted frame"

    .line 11
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    const/4 v0, 0x0

    return-object v0

    :cond_40
    move-object v0, v13

    .line 132
    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    return-object v0
.end method

.method private static zzd(Lcom/google/android/gms/internal/ads/zzamf;I)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result p0

    move v1, p1

    move p1, p0

    :goto_0
    add-int/lit8 v2, p1, 0x1

    add-int v3, p0, v1

    if-ge v2, v3, :cond_1

    aget-byte v3, v0, p1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    aget-byte v3, v0, v2

    if-nez v3, :cond_0

    add-int/lit8 v3, p1, 0x2

    sub-int/2addr p1, p0

    sub-int p1, v1, p1

    add-int/lit8 p1, p1, -0x2

    .line 2
    invoke-static {v0, v3, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, -0x1

    :cond_0
    move p1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static zze(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "ISO-8859-1"

    return-object p0

    :pswitch_0
    const-string p0, "UTF-8"

    return-object p0

    :pswitch_1
    const-string p0, "UTF-16BE"

    return-object p0

    :pswitch_2
    const-string p0, "UTF-16"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zzf(IIIII)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne p0, v3, :cond_0

    .line 1
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p4, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v3

    const-string p1, "%c%c%c"

    invoke-static {p0, p1, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    const-string p1, "%c%c%c%c"

    invoke-static {p0, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static zzg([BII)I
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzajw;->zzh([BI)I

    move-result v0

    if-eqz p2, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    .line 2
    :goto_0
    array-length p2, p0

    add-int/lit8 v1, p2, -0x1

    if-ge v0, v1, :cond_2

    sub-int p2, v0, p1

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_1

    add-int/lit8 p2, v0, 0x1

    .line 3
    aget-byte p2, p0, p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    return v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzajw;->zzh([BI)I

    move-result v0

    goto :goto_0

    :cond_2
    return p2

    :cond_3
    return v0
.end method

.method private static zzh([BI)I
    .locals 1

    .line 1
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 2
    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static zzi(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static zzj([BII)[B
    .locals 0

    if-gt p2, p1, :cond_0

    .line 1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzamq;->zzf:[B

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method private static zzk([BIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-le p2, p1, :cond_1

    .line 1
    array-length v0, p0

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method
