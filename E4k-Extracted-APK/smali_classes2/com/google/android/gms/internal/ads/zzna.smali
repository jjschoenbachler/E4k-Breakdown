.class public final Lcom/google/android/gms/internal/ads/zzna;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:[I

.field private static final zzc:[I

.field private static final zzd:[I

.field private static final zze:[I

.field private static final zzf:[I

.field private static final zzg:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzna;->zzb:[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzna;->zzc:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/gms/internal/ads/zzna;->zzd:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/gms/internal/ads/zzna;->zze:[I

    const/16 v0, 0x13

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lcom/google/android/gms/internal/ads/zzna;->zzf:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/android/gms/internal/ads/zzna;->zzg:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x6
    .end array-data

    :array_1
    .array-data 4
        0xbb80
        0xac44
        0x7d00
    .end array-data

    :array_2
    .array-data 4
        0x5dc0
        0x5622
        0x3e80
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_4
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_5
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzamf;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzafv;
    .locals 3
    .param p3    # Lcom/google/android/gms/internal/ads/zzn;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzna;->zzc:[I

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 2
    aget v0, v1, v0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result p0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzna;->zze:[I

    and-int/lit8 v2, p0, 0x38

    shr-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzaft;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    const-string p1, "audio/ac3"

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 7
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzaa(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzab(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 9
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzaft;->zzQ(Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 10
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzaft;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzamf;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzafv;
    .locals 5
    .param p3    # Lcom/google/android/gms/internal/ads/zzn;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzna;->zzc:[I

    and-int/lit16 v1, v1, 0xc0

    shr-int/lit8 v1, v1, 0x6

    .line 3
    aget v1, v2, v1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzna;->zze:[I

    and-int/lit8 v4, v2, 0xe

    shr-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v2

    and-int/lit8 v2, v2, 0x1e

    shr-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    add-int/lit8 v3, v3, 0x2

    :cond_1
    const-string v0, "audio/eac3"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v2

    if-lez v2, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    const-string v0, "audio/eac3-joc"

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzaft;

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 11
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzaft;->zzaa(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 12
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzab(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 13
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzaft;->zzQ(Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 14
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzaft;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object p0

    return-object p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzame;)Lcom/google/android/gms/internal/ads/zzmz;
    .locals 27

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzc()I

    move-result v1

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    const/4 v2, 0x5

    .line 2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v3

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzame;->zzd(I)V

    const/16 v1, 0xa

    const/4 v4, -0x1

    const/16 v5, 0x8

    const/4 v6, 0x6

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-le v3, v1, :cond_29

    const/16 v3, 0x10

    .line 4
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 5
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v4, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v4, 0x0

    .line 6
    :goto_0
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    const/16 v10, 0xb

    .line 7
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v10

    add-int/2addr v10, v8

    add-int/2addr v10, v10

    .line 8
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v12

    if-ne v12, v7, :cond_0

    sget-object v13, Lcom/google/android/gms/internal/ads/zzna;->zzd:[I

    .line 9
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v14

    aget v13, v13, v14

    move v15, v13

    const/4 v13, 0x3

    const/4 v14, 0x6

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v13

    sget-object v14, Lcom/google/android/gms/internal/ads/zzna;->zzb:[I

    .line 11
    aget v14, v14, v13

    sget-object v15, Lcom/google/android/gms/internal/ads/zzna;->zzc:[I

    .line 12
    aget v15, v15, v12

    :goto_1
    mul-int/lit16 v11, v14, 0x100

    .line 13
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v16

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v17

    sget-object v18, Lcom/google/android/gms/internal/ads/zzna;->zze:[I

    .line 15
    aget v18, v18, v16

    add-int v18, v18, v17

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    :cond_1
    if-nez v16, :cond_3

    .line 19
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    :cond_2
    const/4 v1, 0x0

    const/16 v16, 0x0

    goto :goto_2

    :cond_3
    move/from16 v1, v16

    :goto_2
    if-ne v4, v8, :cond_5

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 23
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    :cond_4
    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    move v3, v4

    .line 24
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v19

    const/4 v5, 0x4

    if-eqz v19, :cond_1f

    if-le v1, v9, :cond_6

    .line 25
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    :cond_6
    and-int/lit8 v19, v1, 0x1

    if-eqz v19, :cond_7

    if-le v1, v9, :cond_7

    .line 26
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    :cond_7
    and-int/lit8 v19, v1, 0x4

    if-eqz v19, :cond_8

    .line 27
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    :cond_8
    if-eqz v17, :cond_9

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 29
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    :cond_9
    if-nez v3, :cond_1f

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 31
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    :cond_a
    if-nez v1, :cond_b

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 33
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 34
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 35
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 36
    :cond_c
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v3

    if-ne v3, v8, :cond_d

    .line 37
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    goto/16 :goto_5

    :cond_d
    if-ne v3, v9, :cond_e

    const/16 v3, 0xc

    .line 38
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    goto/16 :goto_5

    :cond_e
    if-ne v3, v7, :cond_19

    .line 39
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v3

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v17

    if-eqz v17, :cond_17

    .line 41
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 43
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 44
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v17

    if-eqz v17, :cond_10

    .line 45
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 46
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v17

    if-eqz v17, :cond_11

    .line 47
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 48
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 49
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 50
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v17

    if-eqz v17, :cond_13

    .line 51
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 52
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 53
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 54
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v17

    if-eqz v17, :cond_15

    .line 55
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 56
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v17

    if-eqz v17, :cond_17

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v17

    if-eqz v17, :cond_16

    .line 58
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 59
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v17

    if-eqz v17, :cond_17

    .line 60
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 61
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v17

    if-eqz v17, :cond_18

    .line 62
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v17

    if-eqz v17, :cond_18

    const/4 v8, 0x7

    .line 64
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v8

    if-eqz v8, :cond_18

    const/16 v8, 0x8

    .line 66
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    goto :goto_4

    :cond_18
    const/16 v8, 0x8

    :goto_4
    add-int/2addr v3, v9

    mul-int/lit8 v3, v3, 0x8

    .line 67
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzj()V

    :cond_19
    :goto_5
    if-ge v1, v9, :cond_1b

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v3

    const/16 v8, 0xe

    if-eqz v3, :cond_1a

    .line 70
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    :cond_1a
    if-nez v16, :cond_1b

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 72
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 73
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v3

    if-eqz v3, :cond_1e

    if-nez v13, :cond_1c

    .line 76
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    const/4 v3, 0x0

    const/4 v13, 0x0

    goto :goto_7

    :cond_1c
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v14, :cond_1e

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 75
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_1e
    const/4 v3, 0x0

    .line 77
    :cond_1f
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v8

    if-eqz v8, :cond_24

    .line 78
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    if-ne v1, v9, :cond_20

    .line 79
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    const/4 v1, 0x2

    :cond_20
    if-lt v1, v6, :cond_21

    .line 80
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 81
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v2

    if-eqz v2, :cond_22

    const/16 v2, 0x8

    .line 82
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    goto :goto_8

    :cond_22
    const/16 v2, 0x8

    :goto_8
    if-nez v1, :cond_23

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 84
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    :cond_23
    if-ge v12, v7, :cond_24

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zze()V

    :cond_24
    if-nez v3, :cond_25

    if-eq v13, v7, :cond_25

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zze()V

    :cond_25
    if-ne v3, v9, :cond_27

    if-eq v13, v7, :cond_26

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 88
    :cond_26
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    :cond_27
    const-string v1, "audio/eac3"

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 90
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    const/16 v2, 0x8

    .line 91
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v0

    if-ne v0, v3, :cond_28

    const-string v1, "audio/eac3-joc"

    :cond_28
    move-object/from16 v20, v1

    move/from16 v21, v4

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v23, v15

    move/from16 v22, v18

    goto :goto_b

    :cond_29
    const/16 v1, 0x20

    .line 92
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 93
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v1

    if-ne v1, v7, :cond_2a

    const/4 v2, 0x0

    goto :goto_9

    :cond_2a
    const-string v2, "audio/ac3"

    .line 94
    :goto_9
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v3

    .line 95
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzna;->zze(II)I

    move-result v10

    const/16 v3, 0x8

    .line 96
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 97
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v3

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_2b

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2b

    .line 98
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    :cond_2b
    and-int/lit8 v5, v3, 0x4

    if-eqz v5, :cond_2c

    .line 99
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    :cond_2c
    if-ne v3, v9, :cond_2d

    .line 100
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    :cond_2d
    if-ge v1, v7, :cond_2e

    sget-object v5, Lcom/google/android/gms/internal/ads/zzna;->zzc:[I

    .line 101
    aget v1, v5, v1

    move v15, v1

    goto :goto_a

    :cond_2e
    const/4 v15, -0x1

    .line 102
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzna;->zze:[I

    .line 103
    aget v1, v1, v3

    add-int v18, v1, v0

    const/16 v11, 0x600

    move-object/from16 v20, v2

    move/from16 v24, v10

    move/from16 v23, v15

    move/from16 v22, v18

    const/16 v21, -0x1

    const/16 v25, 0x600

    .line 91
    :goto_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzmz;

    const/16 v26, 0x0

    move-object/from16 v19, v0

    .line 104
    invoke-direct/range {v19 .. v26}, Lcom/google/android/gms/internal/ads/zzmz;-><init>(Ljava/lang/String;IIIIILcom/google/android/gms/internal/ads/zzmy;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzd([B)I
    .locals 4

    .line 1
    array-length v0, p0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x5

    .line 2
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xf8

    const/4 v2, 0x3

    shr-int/2addr v0, v2

    const/16 v3, 0xa

    if-le v0, v3, :cond_1

    const/4 v0, 0x2

    .line 3
    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x8

    .line 4
    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    add-int/2addr p0, p0

    return p0

    :cond_1
    const/4 v0, 0x4

    .line 5
    aget-byte p0, p0, v0

    and-int/lit16 v0, p0, 0xc0

    shr-int/2addr v0, v1

    and-int/lit8 p0, p0, 0x3f

    .line 6
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzna;->zze(II)I

    move-result p0

    return p0
.end method

.method private static zze(II)I
    .locals 2

    .line 1
    div-int/lit8 v0, p1, 0x2

    if-ltz p0, :cond_3

    const/4 v1, 0x3

    if-ge p0, v1, :cond_3

    if-ltz p1, :cond_3

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzna;->zzc:[I

    aget p0, v1, p0

    const v1, 0xac44

    if-ne p0, v1, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/ads/zzna;->zzg:[I

    aget p0, p0, v0

    and-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p1

    add-int/2addr p0, p0

    return p0

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzna;->zzf:[I

    .line 2
    aget p1, p1, v0

    const/16 v0, 0x7d00

    if-ne p0, v0, :cond_2

    mul-int/lit8 p1, p1, 0x6

    return p1

    :cond_2
    mul-int/lit8 p1, p1, 0x4

    return p1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    return p0
.end method
