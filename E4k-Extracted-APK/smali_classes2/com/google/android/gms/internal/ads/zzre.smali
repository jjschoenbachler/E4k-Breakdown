.class final Lcom/google/android/gms/internal/ads/zzre;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static final zza:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OpusHead"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzamq;->zzs(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzre;->zza:[B

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzqv;Lcom/google/android/gms/internal/ads/zzoj;JLcom/google/android/gms/internal/ads/zzn;ZZLcom/google/android/gms/internal/ads/zzfln;)Ljava/util/List;
    .locals 76
    .param p4    # Lcom/google/android/gms/internal/ads/zzn;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzqv;",
            "Lcom/google/android/gms/internal/ads/zzoj;",
            "J",
            "Lcom/google/android/gms/internal/ads/zzn;",
            "ZZ",
            "Lcom/google/android/gms/internal/ads/zzfln<",
            "Lcom/google/android/gms/internal/ads/zzru;",
            "Lcom/google/android/gms/internal/ads/zzru;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzrx;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaha;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p4

    .line 1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    .line 2
    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqv;->zzc:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_9f

    .line 3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqv;->zzc:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/google/android/gms/internal/ads/zzqv;

    .line 4
    iget v2, v11, Lcom/google/android/gms/internal/ads/zzqv;->zzd:I

    const v3, 0x7472616b

    if-eq v2, v3, :cond_0

    move-object v0, v13

    move/from16 v32, v15

    goto/16 :goto_6e

    :cond_0
    const v2, 0x6d766864

    .line 5
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v2

    if-eqz v2, :cond_9e

    const v3, 0x6d646961

    .line 6
    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/ads/zzqv;->zzd(I)Lcom/google/android/gms/internal/ads/zzqv;

    move-result-object v3

    if-eqz v3, :cond_9d

    const v4, 0x68646c72    # 4.3148E24f

    .line 7
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v4

    if-eqz v4, :cond_9c

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzre;->zze(Lcom/google/android/gms/internal/ads/zzamf;)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzre;->zzf(I)I

    move-result v9

    const/4 v6, 0x4

    const/4 v14, -0x1

    if-ne v9, v14, :cond_1

    move-object/from16 v0, p7

    move-object v2, v11

    move-object/from16 v33, v13

    move/from16 v32, v15

    :goto_1
    const/4 v10, 0x0

    goto/16 :goto_41

    :cond_1
    const v7, 0x746b6864

    .line 8
    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v7

    if-eqz v7, :cond_9b

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v8, 0x8

    .line 9
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 10
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzqx;->zze(I)I

    move-result v16

    if-nez v16, :cond_2

    const/16 v10, 0x8

    goto :goto_2

    :cond_2
    const/16 v10, 0x10

    .line 11
    :goto_2
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 12
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v10

    .line 13
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v17

    if-nez v16, :cond_3

    goto :goto_3

    :cond_3
    const/16 v6, 0x8

    :goto_3
    const/4 v8, 0x0

    :goto_4
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v8, v6, :cond_6

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v20

    add-int v21, v17, v8

    .line 14
    aget-byte v4, v20, v21

    if-eq v4, v14, :cond_5

    if-nez v16, :cond_4

    .line 16
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v4

    :goto_5
    const-wide/16 v20, 0x0

    goto :goto_6

    :cond_4
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzD()J

    move-result-wide v4

    goto :goto_5

    :goto_6
    cmp-long v6, v4, v20

    if-nez v6, :cond_7

    goto :goto_7

    :cond_5
    const-wide/16 v20, 0x0

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    const-wide/16 v20, 0x0

    .line 15
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    :goto_7
    move-wide/from16 v4, v18

    :cond_7
    const/16 v8, 0x10

    .line 17
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 18
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v6

    .line 19
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v8

    const/4 v14, 0x4

    .line 20
    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 21
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v14

    .line 22
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v7

    const/high16 v0, 0x10000

    move/from16 v31, v9

    const/high16 v9, -0x10000

    if-nez v6, :cond_b

    if-ne v8, v0, :cond_a

    if-ne v14, v9, :cond_9

    if-nez v7, :cond_8

    const/16 v14, 0x5a

    goto :goto_b

    :cond_8
    const/high16 v6, -0x10000

    goto :goto_8

    :cond_9
    move v6, v14

    :goto_8
    const/high16 v8, 0x10000

    goto :goto_9

    :cond_a
    move v6, v14

    :goto_9
    const/4 v14, 0x0

    goto :goto_a

    :cond_b
    move/from16 v74, v14

    move v14, v6

    move/from16 v6, v74

    :goto_a
    if-nez v14, :cond_f

    if-ne v8, v9, :cond_e

    if-ne v6, v0, :cond_d

    if-nez v7, :cond_c

    const/16 v14, 0x10e

    goto :goto_b

    :cond_c
    const/high16 v6, 0x10000

    :cond_d
    const/high16 v8, -0x10000

    :cond_e
    const/4 v14, 0x0

    :cond_f
    if-ne v14, v9, :cond_10

    if-nez v8, :cond_10

    if-nez v6, :cond_10

    if-ne v7, v9, :cond_10

    const/16 v14, 0xb4

    goto :goto_b

    :cond_10
    const/4 v14, 0x0

    :goto_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzrd;

    .line 23
    invoke-direct {v0, v10, v4, v5, v14}, Lcom/google/android/gms/internal/ads/zzrd;-><init>(IJI)V

    cmp-long v4, p2, v18

    if-nez v4, :cond_11

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrd;->zzb(Lcom/google/android/gms/internal/ads/zzrd;)J

    move-result-wide v4

    move-wide/from16 v22, v4

    goto :goto_c

    :cond_11
    move-wide/from16 v22, p2

    :goto_c
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v4, 0x8

    .line 24
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzqx;->zze(I)I

    move-result v4

    if-nez v4, :cond_12

    const/16 v4, 0x8

    goto :goto_d

    :cond_12
    const/16 v4, 0x10

    .line 26
    :goto_d
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v28

    cmp-long v2, v22, v18

    if-nez v2, :cond_13

    move-wide/from16 v23, v18

    goto :goto_e

    :cond_13
    const-wide/32 v24, 0xf4240

    move-wide/from16 v26, v28

    .line 28
    invoke-static/range {v22 .. v27}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v4

    move-wide/from16 v23, v4

    :goto_e
    const v2, 0x6d696e66

    .line 29
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzqv;->zzd(I)Lcom/google/android/gms/internal/ads/zzqv;

    move-result-object v2

    if-eqz v2, :cond_9a

    const v4, 0x7374626c

    .line 30
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzqv;->zzd(I)Lcom/google/android/gms/internal/ads/zzqv;

    move-result-object v2

    if-eqz v2, :cond_99

    const v4, 0x6d646864

    .line 31
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v3

    if-eqz v3, :cond_98

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v8, 0x8

    .line 32
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 33
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzqx;->zze(I)I

    move-result v4

    if-nez v4, :cond_14

    const/16 v5, 0x8

    goto :goto_f

    :cond_14
    const/16 v5, 0x10

    .line 34
    :goto_f
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 35
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v5

    if-nez v4, :cond_15

    const/4 v4, 0x4

    goto :goto_10

    :cond_15
    const/16 v4, 0x8

    .line 36
    :goto_10
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 37
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v14, 0x3

    .line 38
    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    shr-int/lit8 v7, v3, 0xa

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v7, v3, 0x5

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0x1f

    add-int/lit8 v3, v3, 0x60

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    const v3, 0x73747364

    .line 40
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v2

    if-eqz v2, :cond_97

    iget-object v9, v2, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrd;->zza(Lcom/google/android/gms/internal/ads/zzrd;)I

    move-result v7

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrd;->zzc(Lcom/google/android/gms/internal/ads/zzrd;)I

    move-result v6

    iget-object v2, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    const/16 v4, 0xc

    .line 41
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 42
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v3

    new-instance v2, Lcom/google/android/gms/internal/ads/zzra;

    .line 43
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzra;-><init>(I)V

    const/4 v14, 0x0

    :goto_11
    if-ge v14, v3, :cond_49

    move/from16 v32, v15

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v15

    move-object/from16 v33, v13

    .line 44
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v13

    if-lez v13, :cond_16

    const/4 v4, 0x1

    goto :goto_12

    :cond_16
    const/4 v4, 0x0

    :goto_12
    const-string v8, "childAtomSize must be positive"

    .line 45
    invoke-static {v4, v8}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    .line 46
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v4

    const v8, 0x61766331

    if-eq v4, v8, :cond_22

    const v8, 0x61766333

    if-eq v4, v8, :cond_22

    const v8, 0x656e6376

    if-eq v4, v8, :cond_22

    const v8, 0x6d317620

    if-eq v4, v8, :cond_22

    const v8, 0x6d703476

    if-eq v4, v8, :cond_22

    const v8, 0x68766331

    if-eq v4, v8, :cond_22

    const v8, 0x68657631

    if-eq v4, v8, :cond_22

    const v8, 0x73323633

    if-eq v4, v8, :cond_22

    const v8, 0x48323633

    if-eq v4, v8, :cond_22

    const v8, 0x76703038

    if-eq v4, v8, :cond_22

    const v8, 0x76703039

    if-eq v4, v8, :cond_22

    const v8, 0x61763031

    if-eq v4, v8, :cond_22

    const v8, 0x64766176

    if-eq v4, v8, :cond_22

    const v8, 0x64766131

    if-eq v4, v8, :cond_22

    const v8, 0x64766865

    if-eq v4, v8, :cond_22

    const v8, 0x64766831

    if-ne v4, v8, :cond_17

    goto/16 :goto_19

    :cond_17
    const v8, 0x6d703461

    if-eq v4, v8, :cond_21

    const v8, 0x656e6361

    if-eq v4, v8, :cond_21

    const v8, 0x61632d33

    if-eq v4, v8, :cond_21

    const v8, 0x65632d33

    if-eq v4, v8, :cond_21

    const v8, 0x61632d34

    if-eq v4, v8, :cond_21

    const v8, 0x64747363

    if-eq v4, v8, :cond_21

    const v8, 0x64747365

    if-eq v4, v8, :cond_21

    const v8, 0x64747368

    if-eq v4, v8, :cond_21

    const v8, 0x6474736c

    if-eq v4, v8, :cond_21

    const v8, 0x64747378

    if-eq v4, v8, :cond_21

    const v8, 0x73616d72

    if-eq v4, v8, :cond_21

    const v8, 0x73617762

    if-eq v4, v8, :cond_21

    const v8, 0x6c70636d

    if-eq v4, v8, :cond_21

    const v8, 0x736f7774

    if-eq v4, v8, :cond_21

    const v8, 0x74776f73

    if-eq v4, v8, :cond_21

    const v8, 0x2e6d7032

    if-eq v4, v8, :cond_21

    const v8, 0x2e6d7033

    if-eq v4, v8, :cond_21

    const v8, 0x6d686131

    if-eq v4, v8, :cond_21

    const v8, 0x6d686d31

    if-eq v4, v8, :cond_21

    const v8, 0x616c6163

    if-eq v4, v8, :cond_21

    const v8, 0x616c6177

    if-eq v4, v8, :cond_21

    const v8, 0x756c6177

    if-eq v4, v8, :cond_21

    const v8, 0x4f707573

    if-eq v4, v8, :cond_21

    const v8, 0x664c6143

    if-ne v4, v8, :cond_18

    goto/16 :goto_18

    :cond_18
    const v8, 0x54544d4c

    if-eq v4, v8, :cond_1c

    const v8, 0x74783367

    if-eq v4, v8, :cond_1c

    const v8, 0x77767474

    if-eq v4, v8, :cond_1c

    const v8, 0x73747070

    if-eq v4, v8, :cond_1c

    const v8, 0x63363038

    if-ne v4, v8, :cond_19

    goto :goto_14

    :cond_19
    const v8, 0x6d657474

    if-ne v4, v8, :cond_1b

    add-int/lit8 v4, v15, 0x10

    .line 120
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    const/4 v4, 0x0

    .line 121
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzG(C)Ljava/lang/String;

    .line 122
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzG(C)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1a

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaft;

    .line 123
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzaft;->zzE(I)Lcom/google/android/gms/internal/ads/zzaft;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    :cond_1a
    :goto_13
    move-object/from16 v37, v0

    move-object v8, v2

    move/from16 v16, v3

    move-object/from16 v17, v5

    move v3, v6

    move v4, v7

    move-object v1, v9

    move-object/from16 v40, v10

    move-object/from16 v42, v11

    move/from16 v47, v13

    move/from16 v46, v14

    move/from16 v50, v15

    move/from16 v18, v31

    goto/16 :goto_3b

    :cond_1b
    const v8, 0x63616d6d

    if-ne v4, v8, :cond_1a

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaft;

    .line 124
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    .line 125
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzaft;->zzE(I)Lcom/google/android/gms/internal/ads/zzaft;

    const-string v8, "application/x-camera-motion"

    .line 126
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 127
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    goto :goto_13

    :cond_1c
    :goto_14
    add-int/lit8 v8, v15, 0x10

    .line 109
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    const v8, 0x54544d4c

    const-wide v16, 0x7fffffffffffffffL

    if-ne v4, v8, :cond_1d

    const-string v4, "application/ttml+xml"

    move/from16 v34, v3

    :goto_15
    move/from16 v36, v6

    move-object/from16 v35, v9

    move-wide/from16 v8, v16

    :goto_16
    const/4 v3, 0x0

    goto :goto_17

    :cond_1d
    const v8, 0x74783367

    if-ne v4, v8, :cond_1e

    add-int/lit8 v4, v13, -0x10

    .line 110
    new-array v8, v4, [B

    move/from16 v34, v3

    const/4 v3, 0x0

    .line 111
    invoke-virtual {v9, v8, v3, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 112
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfoj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v3

    const-string v4, "application/x-quicktime-tx3g"

    move/from16 v36, v6

    move-object/from16 v35, v9

    move-wide/from16 v8, v16

    goto :goto_17

    :cond_1e
    move/from16 v34, v3

    const v3, 0x77767474

    if-ne v4, v3, :cond_1f

    const-string v4, "application/x-mp4-vtt"

    goto :goto_15

    :cond_1f
    const v3, 0x73747070

    if-ne v4, v3, :cond_20

    const-string v4, "application/ttml+xml"

    move/from16 v36, v6

    move-object/from16 v35, v9

    move-wide/from16 v8, v20

    goto :goto_16

    :cond_20
    const/4 v8, 0x1

    iput v8, v2, Lcom/google/android/gms/internal/ads/zzra;->zzd:I

    const-string v4, "application/x-mp4-cea-608"

    goto :goto_15

    .line 109
    :goto_17
    new-instance v6, Lcom/google/android/gms/internal/ads/zzaft;

    .line 113
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    .line 114
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzaft;->zzE(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 115
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 116
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzaft;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 117
    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzaft;->zzR(J)Lcom/google/android/gms/internal/ads/zzaft;

    .line 118
    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzaft;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 119
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    move-object/from16 v37, v0

    move-object v8, v2

    move-object/from16 v17, v5

    move v4, v7

    move-object/from16 v40, v10

    move-object/from16 v42, v11

    move/from16 v47, v13

    move/from16 v46, v14

    move/from16 v50, v15

    move/from16 v18, v31

    move/from16 v16, v34

    move-object/from16 v1, v35

    move/from16 v3, v36

    goto/16 :goto_3b

    :cond_21
    :goto_18
    move/from16 v34, v3

    move/from16 v36, v6

    move-object/from16 v35, v9

    move-object v9, v2

    move-object/from16 v2, v35

    move/from16 v16, v34

    move v3, v4

    const/16 v8, 0xc

    move v4, v15

    move-object/from16 v17, v5

    move v5, v13

    move/from16 v1, v36

    move v6, v7

    move-object/from16 v37, v0

    move/from16 v38, v1

    move v0, v7

    const/4 v1, 0x2

    move-object/from16 v7, v17

    const/16 v1, 0x10

    move/from16 v8, p6

    move-object/from16 v39, v9

    move/from16 v18, v31

    move-object/from16 v1, v35

    move-object/from16 v9, p4

    move/from16 v41, v0

    move-object/from16 v40, v10

    const/4 v0, 0x0

    move-object/from16 v10, v39

    move-object/from16 v42, v11

    move v11, v14

    .line 108
    invoke-static/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/zzre;->zzg(Lcom/google/android/gms/internal/ads/zzamf;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzn;Lcom/google/android/gms/internal/ads/zzra;I)V

    move/from16 v47, v13

    move/from16 v46, v14

    move/from16 v50, v15

    move/from16 v3, v38

    move-object/from16 v8, v39

    goto/16 :goto_3a

    :cond_22
    :goto_19
    move-object/from16 v37, v0

    move-object/from16 v39, v2

    move/from16 v16, v3

    move-object/from16 v17, v5

    move/from16 v38, v6

    move/from16 v41, v7

    move-object v1, v9

    move-object/from16 v40, v10

    move-object/from16 v42, v11

    move/from16 v18, v31

    const/4 v0, 0x0

    add-int/lit8 v2, v15, 0x10

    .line 47
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    const/16 v2, 0x10

    .line 48
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v3

    .line 50
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v5

    const/16 v6, 0x32

    .line 51
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v6

    const v7, 0x656e6376

    if-ne v4, v7, :cond_25

    .line 52
    invoke-static {v1, v15, v13}, Lcom/google/android/gms/internal/ads/zzre;->zzi(Lcom/google/android/gms/internal/ads/zzamf;II)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 53
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v12, :cond_23

    move-object v9, v0

    :goto_1a
    move-object/from16 v8, v39

    goto :goto_1b

    .line 54
    :cond_23
    iget-object v8, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/ads/zzrv;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzrv;->zzb:Ljava/lang/String;

    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/ads/zzn;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzn;

    move-result-object v8

    move-object v9, v8

    goto :goto_1a

    .line 53
    :goto_1b
    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zzra;->zza:[Lcom/google/android/gms/internal/ads/zzrv;

    .line 55
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzrv;

    aput-object v4, v10, v14

    move v4, v7

    goto :goto_1c

    :cond_24
    move-object/from16 v8, v39

    const v4, 0x656e6376

    move-object v9, v12

    .line 56
    :goto_1c
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto :goto_1d

    :cond_25
    move-object/from16 v8, v39

    move-object v9, v12

    :goto_1d
    const v7, 0x6d317620

    if-ne v4, v7, :cond_26

    const-string v10, "video/mpeg"

    goto :goto_1e

    :cond_26
    const v7, 0x48323633

    if-ne v4, v7, :cond_27

    const-string v10, "video/3gpp"

    const v4, 0x48323633

    goto :goto_1e

    :cond_27
    move-object v10, v0

    :goto_1e
    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, v0

    move-object v7, v2

    move-object/from16 v44, v7

    move-object/from16 v45, v44

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v43, -0x1

    :goto_1f
    sub-int v0, v6, v15

    if-ge v0, v13, :cond_47

    .line 57
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v0

    .line 58
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v20

    if-nez v20, :cond_29

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v20

    sub-int v12, v20, v15

    if-ne v12, v13, :cond_28

    goto/16 :goto_39

    :cond_28
    const/4 v12, 0x0

    goto :goto_20

    :cond_29
    move/from16 v12, v20

    :goto_20
    if-lez v12, :cond_2a

    move/from16 v47, v13

    move/from16 v46, v14

    const/4 v14, 0x1

    goto :goto_21

    :cond_2a
    move/from16 v47, v13

    move/from16 v46, v14

    const/4 v14, 0x0

    :goto_21
    const-string v13, "childAtomSize must be positive"

    .line 59
    invoke-static {v14, v13}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    .line 60
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v13

    const v14, 0x61766343

    if-ne v13, v14, :cond_2d

    if-nez v10, :cond_2b

    const/4 v7, 0x1

    :goto_22
    const/4 v10, 0x0

    goto :goto_23

    :cond_2b
    const/4 v7, 0x0

    goto :goto_22

    .line 61
    :goto_23
    invoke-static {v7, v10}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    add-int/lit8 v0, v0, 0x8

    .line 62
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 63
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzne;->zza(Lcom/google/android/gms/internal/ads/zzamf;)Lcom/google/android/gms/internal/ads/zzne;

    move-result-object v0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzne;->zza:Ljava/util/List;

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzne;->zzb:I

    iput v10, v8, Lcom/google/android/gms/internal/ads/zzra;->zzc:I

    if-nez v19, :cond_2c

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzne;->zze:F

    :cond_2c
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzne;->zzf:Ljava/lang/String;

    const-string v10, "video/avc"

    :goto_24
    move/from16 v49, v4

    move-object/from16 v44, v7

    move/from16 v50, v15

    move-object v7, v0

    goto/16 :goto_38

    :cond_2d
    const v14, 0x68766343

    if-ne v13, v14, :cond_2f

    if-nez v10, :cond_2e

    const/4 v7, 0x1

    :goto_25
    const/4 v10, 0x0

    goto :goto_26

    :cond_2e
    const/4 v7, 0x0

    goto :goto_25

    .line 64
    :goto_26
    invoke-static {v7, v10}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    add-int/lit8 v0, v0, 0x8

    .line 65
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 66
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzok;->zza(Lcom/google/android/gms/internal/ads/zzamf;)Lcom/google/android/gms/internal/ads/zzok;

    move-result-object v0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzok;->zza:Ljava/util/List;

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzok;->zzb:I

    iput v10, v8, Lcom/google/android/gms/internal/ads/zzra;->zzc:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzok;->zzc:Ljava/lang/String;

    const-string v10, "video/hevc"

    goto :goto_24

    :cond_2f
    const v14, 0x64766343

    if-eq v13, v14, :cond_45

    const v14, 0x64767643

    if-ne v13, v14, :cond_30

    goto/16 :goto_37

    :cond_30
    const v14, 0x76706343

    if-ne v13, v14, :cond_33

    if-nez v10, :cond_31

    const/4 v0, 0x1

    :goto_27
    const/4 v10, 0x0

    goto :goto_28

    :cond_31
    const/4 v0, 0x0

    goto :goto_27

    .line 68
    :goto_28
    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    const v0, 0x76703038

    if-ne v4, v0, :cond_32

    const-string v0, "video/x-vnd.on2.vp8"

    goto :goto_2b

    :cond_32
    const-string v0, "video/x-vnd.on2.vp9"

    goto :goto_2b

    :cond_33
    const v14, 0x61763143

    if-ne v13, v14, :cond_36

    if-nez v10, :cond_34

    const/4 v0, 0x1

    :goto_29
    const/4 v14, 0x0

    goto :goto_2a

    :cond_34
    const/4 v0, 0x0

    goto :goto_29

    .line 69
    :goto_2a
    invoke-static {v0, v14}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    const-string v0, "video/av01"

    :goto_2b
    move-object v10, v0

    :cond_35
    :goto_2c
    move/from16 v49, v4

    move/from16 v50, v15

    goto/16 :goto_38

    :cond_36
    const v14, 0x64323633

    if-ne v13, v14, :cond_38

    if-nez v10, :cond_37

    const/4 v0, 0x1

    :goto_2d
    const/4 v14, 0x0

    goto :goto_2e

    :cond_37
    const/4 v0, 0x0

    goto :goto_2d

    .line 70
    :goto_2e
    invoke-static {v0, v14}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    const-string v0, "video/3gpp"

    goto :goto_2b

    :cond_38
    const v14, 0x65736473

    if-ne v13, v14, :cond_3a

    if-nez v10, :cond_39

    const/4 v10, 0x1

    :goto_2f
    const/4 v13, 0x0

    goto :goto_30

    :cond_39
    const/4 v10, 0x0

    goto :goto_2f

    .line 71
    :goto_30
    invoke-static {v10, v13}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    .line 72
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzre;->zzh(Lcom/google/android/gms/internal/ads/zzamf;I)Landroid/util/Pair;

    move-result-object v0

    .line 73
    iget-object v10, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 74
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    if-eqz v0, :cond_35

    .line 75
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfoj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v44

    goto :goto_2c

    :cond_3a
    const v14, 0x70617370

    if-ne v13, v14, :cond_3b

    add-int/lit8 v0, v0, 0x8

    .line 76
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 77
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v0

    int-to-float v0, v0

    .line 78
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v0, v11

    move v11, v0

    move/from16 v49, v4

    move/from16 v50, v15

    const/16 v19, 0x1

    goto/16 :goto_38

    :cond_3b
    const v14, 0x73763364

    if-ne v13, v14, :cond_3e

    add-int/lit8 v2, v0, 0x8

    :goto_31
    sub-int v13, v2, v0

    if-ge v13, v12, :cond_3d

    .line 79
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 80
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v13

    .line 81
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v14

    move/from16 v48, v0

    const v0, 0x70726f6a

    if-ne v14, v0, :cond_3c

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    add-int/2addr v13, v2

    .line 82
    invoke-static {v0, v2, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_32

    :cond_3c
    add-int/2addr v2, v13

    move/from16 v0, v48

    goto :goto_31

    :cond_3d
    const/4 v0, 0x0

    :goto_32
    move-object v2, v0

    goto/16 :goto_2c

    :cond_3e
    const v0, 0x73743364

    if-ne v13, v0, :cond_3f

    .line 83
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v0

    const/4 v14, 0x3

    .line 84
    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    if-nez v0, :cond_35

    .line 85
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2c

    :pswitch_0
    const/16 v43, 0x3

    goto/16 :goto_2c

    :pswitch_1
    const/16 v43, 0x2

    goto/16 :goto_2c

    :pswitch_2
    const/16 v43, 0x1

    goto/16 :goto_2c

    :pswitch_3
    const/16 v43, 0x0

    goto/16 :goto_2c

    :cond_3f
    const/4 v14, 0x3

    const v0, 0x636f6c72

    if-ne v13, v0, :cond_35

    .line 86
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v0

    const v13, 0x6e636c78

    if-eq v0, v13, :cond_42

    const v13, 0x6e636c63

    if-ne v0, v13, :cond_40

    goto :goto_34

    .line 92
    :cond_40
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqx;->zzf(I)Ljava/lang/String;

    move-result-object v0

    const-string v13, "Unsupported color type: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_41

    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 93
    :cond_41
    new-instance v0, Ljava/lang/String;

    .line 92
    invoke-direct {v0, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_33
    const-string v13, "AtomParsers"

    .line 93
    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 87
    :cond_42
    :goto_34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v13

    .line 88
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v20

    const/4 v14, 0x2

    .line 89
    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    const v14, 0x6e636c78

    if-ne v0, v14, :cond_43

    .line 90
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_43

    const/4 v0, 0x1

    goto :goto_35

    :cond_43
    const/4 v0, 0x0

    :goto_35
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzj;->zza(I)I

    move-result v13

    const/4 v14, 0x1

    if-eq v14, v0, :cond_44

    const/4 v0, 0x2

    goto :goto_36

    :cond_44
    const/4 v0, 0x1

    :goto_36
    new-instance v14, Lcom/google/android/gms/internal/ads/zzj;

    move/from16 v49, v4

    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzj;->zzb(I)I

    move-result v4

    move/from16 v50, v15

    const/4 v15, 0x0

    .line 91
    invoke-direct {v14, v13, v0, v4, v15}, Lcom/google/android/gms/internal/ads/zzj;-><init>(III[B)V

    move-object/from16 v45, v14

    goto :goto_38

    :cond_45
    :goto_37
    move/from16 v49, v4

    move/from16 v50, v15

    .line 67
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zznr;->zza(Lcom/google/android/gms/internal/ads/zzamf;)Lcom/google/android/gms/internal/ads/zznr;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zznr;->zza:Ljava/lang/String;

    const-string v10, "video/dolby-vision"

    :cond_46
    :goto_38
    add-int/2addr v6, v12

    move/from16 v14, v46

    move/from16 v13, v47

    move/from16 v4, v49

    move/from16 v15, v50

    move-object/from16 v12, p4

    goto/16 :goto_1f

    :cond_47
    :goto_39
    move/from16 v47, v13

    move/from16 v46, v14

    move/from16 v50, v15

    if-eqz v10, :cond_48

    .line 58
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaft;

    .line 94
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    move/from16 v4, v41

    .line 95
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzE(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 96
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 97
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzaft;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 98
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaft;->zzS(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 99
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzaft;->zzT(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 100
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzaft;->zzW(F)Lcom/google/android/gms/internal/ads/zzaft;

    move/from16 v3, v38

    .line 101
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaft;->zzV(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 102
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaft;->zzX([B)Lcom/google/android/gms/internal/ads/zzaft;

    move/from16 v2, v43

    .line 103
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaft;->zzY(I)Lcom/google/android/gms/internal/ads/zzaft;

    move-object/from16 v2, v44

    .line 104
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaft;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 105
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzaft;->zzQ(Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzaft;

    move-object/from16 v2, v45

    .line 106
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaft;->zzZ(Lcom/google/android/gms/internal/ads/zzj;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 107
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    goto :goto_3b

    :cond_48
    move/from16 v3, v38

    :goto_3a
    move/from16 v4, v41

    :goto_3b
    add-int v15, v50, v47

    .line 128
    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    add-int/lit8 v14, v46, 0x1

    move-object v9, v1

    move v6, v3

    move v7, v4

    move-object v2, v8

    move/from16 v3, v16

    move-object/from16 v5, v17

    move/from16 v31, v18

    move/from16 v15, v32

    move-object/from16 v13, v33

    move-object/from16 v0, v37

    move-object/from16 v10, v40

    move-object/from16 v11, v42

    move-object/from16 v1, p1

    const/16 v4, 0xc

    const/16 v8, 0x8

    move-object/from16 v12, p4

    const-wide/16 v20, 0x0

    goto/16 :goto_11

    :cond_49
    move-object/from16 v37, v0

    move-object v8, v2

    move-object/from16 v40, v10

    move-object/from16 v42, v11

    move-object/from16 v33, v13

    move/from16 v32, v15

    move/from16 v18, v31

    const v0, 0x65647473

    move-object/from16 v2, v42

    .line 129
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzqv;->zzd(I)Lcom/google/android/gms/internal/ads/zzqv;

    move-result-object v0

    if-eqz v0, :cond_4f

    const v1, 0x656c7374

    .line 130
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v0

    if-nez v0, :cond_4a

    const/4 v10, 0x0

    goto :goto_3f

    .line 142
    :cond_4a
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v1, 0x8

    .line 131
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 132
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzqx;->zze(I)I

    move-result v1

    .line 133
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v3

    new-array v4, v3, [J

    new-array v5, v3, [J

    const/4 v6, 0x0

    :goto_3c
    if-ge v6, v3, :cond_4e

    const/4 v7, 0x1

    if-ne v1, v7, :cond_4b

    .line 134
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzD()J

    move-result-wide v9

    goto :goto_3d

    :cond_4b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v9

    :goto_3d
    aput-wide v9, v4, v6

    if-ne v1, v7, :cond_4c

    .line 135
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzx()J

    move-result-wide v9

    goto :goto_3e

    :cond_4c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v9

    int-to-long v9, v9

    :goto_3e
    aput-wide v9, v5, v6

    .line 136
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzq()S

    move-result v9

    if-ne v9, v7, :cond_4d

    const/4 v7, 0x2

    .line 137
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 136
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    .line 268
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_4e
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    :goto_3f
    if-eqz v10, :cond_4f

    .line 139
    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [J

    .line 140
    iget-object v1, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, [J

    move-object/from16 v30, v10

    goto :goto_40

    :cond_4f
    const/4 v0, 0x0

    const/16 v30, 0x0

    :goto_40
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    if-nez v1, :cond_50

    move-object/from16 v0, p7

    goto/16 :goto_1

    :cond_50
    new-instance v1, Lcom/google/android/gms/internal/ads/zzru;

    invoke-static/range {v37 .. v37}, Lcom/google/android/gms/internal/ads/zzrd;->zza(Lcom/google/android/gms/internal/ads/zzrd;)I

    move-result v17

    move-object/from16 v3, v40

    .line 141
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 142
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    iget v4, v8, Lcom/google/android/gms/internal/ads/zzra;->zzd:I

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzra;->zza:[Lcom/google/android/gms/internal/ads/zzrv;

    iget v6, v8, Lcom/google/android/gms/internal/ads/zzra;->zzc:I

    move-object/from16 v16, v1

    move-wide/from16 v21, v28

    move-object/from16 v25, v3

    move/from16 v26, v4

    move-object/from16 v27, v5

    move/from16 v28, v6

    move-object/from16 v29, v0

    invoke-direct/range {v16 .. v30}, Lcom/google/android/gms/internal/ads/zzru;-><init>(IIJJJLcom/google/android/gms/internal/ads/zzafv;I[Lcom/google/android/gms/internal/ads/zzrv;I[J[J)V

    move-object/from16 v0, p7

    move-object v10, v1

    .line 143
    :goto_41
    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/ads/zzfln;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzru;

    if-eqz v4, :cond_96

    const v1, 0x6d646961

    .line 144
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzqv;->zzd(I)Lcom/google/android/gms/internal/ads/zzqv;

    move-result-object v1

    if-eqz v1, :cond_95

    const v2, 0x6d696e66

    .line 145
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzqv;->zzd(I)Lcom/google/android/gms/internal/ads/zzqv;

    move-result-object v1

    if-eqz v1, :cond_94

    const v2, 0x7374626c

    .line 146
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzqv;->zzd(I)Lcom/google/android/gms/internal/ads/zzqv;

    move-result-object v1

    if-eqz v1, :cond_93

    const v2, 0x7374737a

    .line 147
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v2

    if-eqz v2, :cond_51

    new-instance v3, Lcom/google/android/gms/internal/ads/zzrb;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzru;->zzf:Lcom/google/android/gms/internal/ads/zzafv;

    .line 148
    invoke-direct {v3, v2, v5}, Lcom/google/android/gms/internal/ads/zzrb;-><init>(Lcom/google/android/gms/internal/ads/zzqw;Lcom/google/android/gms/internal/ads/zzafv;)V

    goto :goto_42

    :cond_51
    const v2, 0x73747a32

    .line 149
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v2

    if-eqz v2, :cond_92

    .line 269
    new-instance v3, Lcom/google/android/gms/internal/ads/zzrc;

    .line 150
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzrc;-><init>(Lcom/google/android/gms/internal/ads/zzqw;)V

    .line 148
    :goto_42
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzqz;->zza()I

    move-result v2

    if-nez v2, :cond_52

    new-instance v1, Lcom/google/android/gms/internal/ads/zzrx;

    const/4 v2, 0x0

    new-array v5, v2, [J

    new-array v6, v2, [I

    const/4 v7, 0x0

    new-array v8, v2, [J

    new-array v9, v2, [I

    const-wide/16 v10, 0x0

    move-object v3, v1

    .line 151
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzrx;-><init>(Lcom/google/android/gms/internal/ads/zzru;[J[II[J[IJ)V

    :goto_43
    move-object/from16 v0, v33

    goto/16 :goto_6d

    :cond_52
    const v5, 0x7374636f

    .line 152
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v5

    if-nez v5, :cond_54

    const v5, 0x636f3634

    .line 153
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v5

    if-eqz v5, :cond_53

    const/4 v6, 0x1

    goto :goto_44

    :cond_53
    const/4 v5, 0x0

    .line 276
    throw v5

    :cond_54
    const/4 v6, 0x0

    .line 153
    :goto_44
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const v7, 0x73747363

    .line 154
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v7

    if-eqz v7, :cond_91

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const v8, 0x73747473

    .line 155
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v8

    if-eqz v8, :cond_90

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const v9, 0x73747373

    .line 156
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v9

    if-eqz v9, :cond_55

    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    goto :goto_45

    :cond_55
    const/4 v10, 0x0

    :goto_45
    const v9, 0x63747473

    .line 157
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v1

    if-eqz v1, :cond_56

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    goto :goto_46

    :cond_56
    const/4 v1, 0x0

    :goto_46
    new-instance v9, Lcom/google/android/gms/internal/ads/zzqy;

    .line 158
    invoke-direct {v9, v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzqy;-><init>(Lcom/google/android/gms/internal/ads/zzamf;Lcom/google/android/gms/internal/ads/zzamf;Z)V

    const/16 v5, 0xc

    .line 159
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 160
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v6

    const/4 v7, -0x1

    add-int/lit8 v14, v6, -0x1

    .line 161
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v6

    .line 162
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v7

    if-eqz v1, :cond_57

    .line 163
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 164
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v11

    goto :goto_47

    :cond_57
    const/4 v11, 0x0

    :goto_47
    if-eqz v10, :cond_59

    .line 165
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 166
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v5

    if-lez v5, :cond_58

    .line 167
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v12

    const/4 v13, -0x1

    add-int/2addr v12, v13

    goto :goto_49

    :cond_58
    const/4 v13, -0x1

    const/4 v10, 0x0

    goto :goto_48

    :cond_59
    const/4 v13, -0x1

    const/4 v5, 0x0

    :goto_48
    const/4 v12, -0x1

    :goto_49
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzqz;->zzb()I

    move-result v15

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzru;->zzf:Lcom/google/android/gms/internal/ads/zzafv;

    .line 168
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    if-eq v15, v13, :cond_60

    const-string v13, "audio/raw"

    .line 169
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5a

    const-string v13, "audio/g711-mlaw"

    .line 170
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5a

    const-string v13, "audio/g711-alaw"

    .line 171
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    :cond_5a
    if-nez v14, :cond_60

    if-nez v11, :cond_5f

    if-nez v5, :cond_5f

    iget v0, v9, Lcom/google/android/gms/internal/ads/zzqy;->zza:I

    new-array v1, v0, [J

    new-array v0, v0, [I

    .line 193
    :goto_4a
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzqy;->zza()Z

    move-result v3

    if-eqz v3, :cond_5b

    iget v3, v9, Lcom/google/android/gms/internal/ads/zzqy;->zzb:I

    iget-wide v5, v9, Lcom/google/android/gms/internal/ads/zzqy;->zzd:J

    .line 194
    aput-wide v5, v1, v3

    iget v5, v9, Lcom/google/android/gms/internal/ads/zzqy;->zzc:I

    .line 195
    aput v5, v0, v3

    goto :goto_4a

    :cond_5b
    int-to-long v5, v7

    const/16 v3, 0x2000

    .line 196
    div-int/2addr v3, v15

    array-length v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_4b
    if-ge v8, v7, :cond_5c

    .line 197
    aget v10, v0, v8

    .line 198
    invoke-static {v10, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzw(II)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_4b

    .line 199
    :cond_5c
    new-array v7, v9, [J

    .line 200
    new-array v8, v9, [I

    .line 201
    new-array v10, v9, [J

    .line 202
    new-array v9, v9, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v51, 0x0

    :goto_4c
    array-length v13, v0

    if-ge v11, v13, :cond_5e

    .line 203
    aget v13, v0, v11

    .line 204
    aget-wide v16, v1, v11

    :goto_4d
    if-lez v13, :cond_5d

    .line 205
    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 206
    aput-wide v16, v7, v51

    move-object/from16 v52, v0

    mul-int v0, v15, v18

    .line 207
    aput v0, v8, v51

    .line 208
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    move-object/from16 v53, v1

    int-to-long v0, v12

    mul-long v0, v0, v5

    .line 209
    aput-wide v0, v10, v51

    const/4 v0, 0x1

    .line 210
    aput v0, v9, v51

    .line 211
    aget v0, v8, v51

    int-to-long v0, v0

    add-long v16, v16, v0

    add-int v12, v12, v18

    sub-int v13, v13, v18

    add-int/lit8 v51, v51, 0x1

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    goto :goto_4d

    :cond_5d
    move-object/from16 v52, v0

    move-object/from16 v53, v1

    add-int/lit8 v11, v11, 0x1

    goto :goto_4c

    :cond_5e
    int-to-long v0, v12

    mul-long v5, v5, v0

    move-object v0, v9

    move-wide/from16 v74, v5

    move-object v5, v7

    move-object v6, v8

    move v7, v14

    move-wide/from16 v8, v74

    goto/16 :goto_5c

    :cond_5f
    const/4 v14, 0x0

    .line 256
    :cond_60
    new-array v0, v2, [J

    new-array v13, v2, [I

    new-array v15, v2, [J

    move/from16 v54, v5

    new-array v5, v2, [I

    move/from16 v21, v6

    move/from16 v18, v11

    move v11, v12

    move/from16 v20, v14

    const/4 v6, 0x0

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v55, 0x0

    const-wide/16 v56, 0x0

    move v12, v7

    const/4 v7, 0x0

    :goto_4e
    if-ge v6, v2, :cond_6d

    const/16 v22, 0x1

    :goto_4f
    if-nez v55, :cond_62

    .line 172
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzqy;->zza()Z

    move-result v22

    if-eqz v22, :cond_61

    move/from16 v58, v11

    move/from16 v59, v12

    iget-wide v11, v9, Lcom/google/android/gms/internal/ads/zzqy;->zzd:J

    move/from16 v60, v2

    iget v2, v9, Lcom/google/android/gms/internal/ads/zzqy;->zzc:I

    move/from16 v55, v2

    move-wide/from16 v56, v11

    move/from16 v11, v58

    move/from16 v12, v59

    move/from16 v2, v60

    goto :goto_4f

    :cond_61
    move/from16 v60, v2

    move/from16 v58, v11

    move/from16 v59, v12

    const/4 v2, 0x0

    goto :goto_50

    :cond_62
    move/from16 v60, v2

    move/from16 v58, v11

    move/from16 v59, v12

    move/from16 v2, v55

    :goto_50
    if-nez v22, :cond_63

    const-string v2, "AtomParsers"

    const-string v3, "Unexpected end of chunk data"

    .line 184
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 186
    invoke-static {v13, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v13

    .line 187
    invoke-static {v15, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v15

    .line 188
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    move v2, v6

    goto/16 :goto_56

    :cond_63
    if-eqz v1, :cond_66

    move v11, v14

    move/from16 v14, v19

    :goto_51
    if-nez v14, :cond_65

    if-lez v18, :cond_64

    .line 173
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v14

    .line 174
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v11

    add-int/lit8 v18, v18, -0x1

    goto :goto_51

    :cond_64
    const/4 v12, -0x1

    const/4 v14, 0x0

    goto :goto_52

    :cond_65
    const/4 v12, -0x1

    :goto_52
    add-int/2addr v14, v12

    move/from16 v19, v14

    move v14, v11

    .line 175
    :cond_66
    aput-wide v56, v0, v6

    .line 176
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzqz;->zzc()I

    move-result v11

    aput v11, v13, v6

    if-le v11, v7, :cond_67

    move v7, v11

    :cond_67
    int-to-long v11, v14

    add-long v11, v16, v11

    .line 177
    aput-wide v11, v15, v6

    if-nez v10, :cond_68

    const/4 v11, 0x1

    goto :goto_53

    :cond_68
    const/4 v11, 0x0

    .line 178
    :goto_53
    aput v11, v5, v6

    move/from16 v12, v58

    if-ne v6, v12, :cond_6a

    const/4 v11, 0x1

    .line 179
    aput v11, v5, v6

    add-int/lit8 v54, v54, -0x1

    if-lez v54, :cond_6a

    if-eqz v10, :cond_69

    .line 180
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v11

    const/4 v12, -0x1

    add-int/2addr v11, v12

    move-object/from16 v62, v9

    move-object/from16 v61, v10

    move v12, v11

    goto :goto_54

    :cond_69
    const/4 v11, 0x0

    .line 270
    throw v11

    :cond_6a
    move-object/from16 v62, v9

    move-object/from16 v61, v10

    :goto_54
    move/from16 v11, v59

    int-to-long v9, v11

    add-long v16, v16, v9

    add-int/lit8 v9, v21, -0x1

    if-nez v9, :cond_6c

    if-lez v20, :cond_6b

    .line 181
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v9

    .line 182
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v10

    add-int/lit8 v20, v20, -0x1

    move/from16 v21, v9

    move v11, v10

    goto :goto_55

    :cond_6b
    const/16 v21, 0x0

    goto :goto_55

    :cond_6c
    move/from16 v21, v9

    .line 183
    :goto_55
    aget v9, v13, v6

    int-to-long v9, v9

    add-long v56, v56, v9

    const/4 v9, -0x1

    add-int/lit8 v55, v2, -0x1

    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v60

    move-object/from16 v10, v61

    move-object/from16 v9, v62

    move/from16 v74, v12

    move v12, v11

    move/from16 v11, v74

    goto/16 :goto_4e

    :cond_6d
    move/from16 v60, v2

    :goto_56
    int-to-long v8, v14

    add-long v8, v16, v8

    if-eqz v1, :cond_6f

    :goto_57
    if-lez v18, :cond_6f

    .line 189
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v3

    if-eqz v3, :cond_6e

    const/4 v14, 0x0

    goto :goto_58

    .line 190
    :cond_6e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    add-int/lit8 v18, v18, -0x1

    goto :goto_57

    :cond_6f
    const/4 v14, 0x1

    :goto_58
    if-nez v54, :cond_75

    if-nez v21, :cond_74

    if-nez v55, :cond_73

    if-nez v20, :cond_72

    if-nez v19, :cond_71

    if-nez v14, :cond_70

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    goto :goto_59

    :cond_70
    move-object/from16 v63, v0

    move/from16 v64, v2

    goto/16 :goto_5b

    :cond_71
    move/from16 v11, v19

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    goto :goto_59

    :cond_72
    move/from16 v11, v19

    move/from16 v10, v20

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    goto :goto_59

    :cond_73
    move/from16 v11, v19

    move/from16 v10, v20

    move/from16 v6, v55

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_59

    :cond_74
    move/from16 v11, v19

    move/from16 v10, v20

    move/from16 v3, v21

    move/from16 v6, v55

    const/4 v1, 0x0

    goto :goto_59

    :cond_75
    move/from16 v11, v19

    move/from16 v10, v20

    move/from16 v3, v21

    move/from16 v1, v54

    move/from16 v6, v55

    .line 189
    :goto_59
    iget v12, v4, Lcom/google/android/gms/internal/ads/zzru;->zza:I

    move-object/from16 v63, v0

    const/4 v0, 0x1

    if-eq v0, v14, :cond_76

    const-string v0, ", ctts invalid"

    goto :goto_5a

    :cond_76
    const-string v0, ""

    :goto_5a
    new-instance v14, Ljava/lang/StringBuilder;

    move/from16 v64, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v2, v2, 0x106

    .line 191
    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Inconsistent stbl box for track "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": remainingSynchronizationSamples "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingSamplesInChunk "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingTimestampDeltaChanges "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "AtomParsers"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5b
    move-object v0, v5

    move-object v6, v13

    move-object v10, v15

    move-object/from16 v5, v63

    move/from16 v2, v64

    :goto_5c
    const-wide/32 v18, 0xf4240

    .line 211
    iget-wide v11, v4, Lcom/google/android/gms/internal/ads/zzru;->zzc:J

    move-wide/from16 v16, v8

    move-wide/from16 v20, v11

    .line 212
    invoke-static/range {v16 .. v21}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v11

    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzru;->zzh:[J

    if-nez v1, :cond_77

    const-wide/32 v1, 0xf4240

    iget-wide v8, v4, Lcom/google/android/gms/internal/ads/zzru;->zzc:J

    .line 213
    invoke-static {v10, v1, v2, v8, v9}, Lcom/google/android/gms/internal/ads/zzamq;->zzI([JJJ)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzrx;

    move-object v3, v1

    move-object v8, v10

    move-object v9, v0

    move-wide v10, v11

    .line 214
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzrx;-><init>(Lcom/google/android/gms/internal/ads/zzru;[J[II[J[IJ)V

    goto/16 :goto_43

    :cond_77
    array-length v3, v1

    const/4 v11, 0x1

    if-ne v3, v11, :cond_7b

    iget v3, v4, Lcom/google/android/gms/internal/ads/zzru;->zzb:I

    if-ne v3, v11, :cond_7b

    .line 215
    array-length v3, v10

    const/4 v11, 0x2

    if-lt v3, v11, :cond_7b

    iget-object v11, v4, Lcom/google/android/gms/internal/ads/zzru;->zzi:[J

    if-eqz v11, :cond_7a

    .line 216
    check-cast v11, [J

    const/4 v12, 0x0

    aget-wide v13, v11, v12

    .line 217
    aget-wide v15, v1, v12

    move-wide/from16 v65, v13

    iget-wide v12, v4, Lcom/google/android/gms/internal/ads/zzru;->zzc:J

    move/from16 v67, v2

    iget-wide v1, v4, Lcom/google/android/gms/internal/ads/zzru;->zzd:J

    move-wide/from16 v17, v12

    move-wide/from16 v19, v1

    .line 218
    invoke-static/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v1

    add-long v13, v65, v1

    add-int/lit8 v1, v3, -0x1

    const/4 v2, 0x0

    const/4 v11, 0x4

    .line 219
    invoke-static {v11, v2, v1}, Lcom/google/android/gms/internal/ads/zzamq;->zzx(III)I

    move-result v11

    add-int/lit8 v3, v3, -0x4

    .line 220
    invoke-static {v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzamq;->zzx(III)I

    move-result v1

    .line 221
    aget-wide v15, v10, v2

    cmp-long v3, v15, v65

    if-gtz v3, :cond_7c

    aget-wide v11, v10, v11

    cmp-long v3, v65, v11

    if-gez v3, :cond_7c

    aget-wide v11, v10, v1

    cmp-long v1, v11, v13

    if-gez v1, :cond_7c

    cmp-long v1, v13, v8

    if-gtz v1, :cond_7c

    .line 222
    aget-wide v11, v10, v2

    sub-long v15, v65, v11

    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzru;->zzf:Lcom/google/android/gms/internal/ads/zzafv;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzafv;->zzz:I

    int-to-long v1, v1

    iget-wide v11, v4, Lcom/google/android/gms/internal/ads/zzru;->zzc:J

    move-wide/from16 v17, v1

    move-wide/from16 v19, v11

    .line 223
    invoke-static/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v1

    sub-long v15, v8, v13

    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzru;->zzf:Lcom/google/android/gms/internal/ads/zzafv;

    .line 224
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzafv;->zzz:I

    int-to-long v11, v3

    iget-wide v13, v4, Lcom/google/android/gms/internal/ads/zzru;->zzc:J

    move-wide/from16 v17, v11

    move-wide/from16 v19, v13

    .line 225
    invoke-static/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v3, v1, v13

    if-nez v3, :cond_79

    cmp-long v3, v11, v13

    if-eqz v3, :cond_78

    goto :goto_5d

    :cond_78
    move-object/from16 v2, p1

    goto :goto_5e

    :cond_79
    :goto_5d
    const-wide/32 v15, 0x7fffffff

    cmp-long v3, v1, v15

    if-gtz v3, :cond_78

    const-wide/32 v15, 0x7fffffff

    cmp-long v3, v11, v15

    if-gtz v3, :cond_78

    long-to-int v1, v1

    move-object/from16 v2, p1

    iput v1, v2, Lcom/google/android/gms/internal/ads/zzoj;->zza:I

    long-to-int v1, v11

    iput v1, v2, Lcom/google/android/gms/internal/ads/zzoj;->zzb:I

    const-wide/32 v8, 0xf4240

    iget-wide v11, v4, Lcom/google/android/gms/internal/ads/zzru;->zzc:J

    .line 263
    invoke-static {v10, v8, v9, v11, v12}, Lcom/google/android/gms/internal/ads/zzamq;->zzI([JJJ)V

    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzru;->zzh:[J

    const/4 v3, 0x0

    .line 264
    aget-wide v11, v1, v3

    iget-wide v8, v4, Lcom/google/android/gms/internal/ads/zzru;->zzd:J

    const-wide/32 v13, 0xf4240

    move-wide v15, v8

    .line 265
    invoke-static/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v11

    new-instance v1, Lcom/google/android/gms/internal/ads/zzrx;

    move-object v3, v1

    move-object v8, v10

    move-object v9, v0

    move-wide v10, v11

    .line 266
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzrx;-><init>(Lcom/google/android/gms/internal/ads/zzru;[J[II[J[IJ)V

    goto/16 :goto_43

    :cond_7a
    const/4 v1, 0x0

    .line 271
    throw v1

    :cond_7b
    move/from16 v67, v2

    :cond_7c
    move-object/from16 v2, p1

    const-wide/16 v13, 0x0

    .line 266
    :goto_5e
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzru;->zzh:[J

    .line 226
    array-length v3, v1

    const/4 v11, 0x1

    if-ne v3, v11, :cond_80

    const/4 v11, 0x0

    aget-wide v15, v1, v11

    cmp-long v1, v15, v13

    if-nez v1, :cond_7f

    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzru;->zzi:[J

    if-eqz v1, :cond_7e

    .line 257
    check-cast v1, [J

    aget-wide v12, v1, v11

    const/4 v1, 0x0

    .line 258
    :goto_5f
    array-length v3, v10

    if-ge v1, v3, :cond_7d

    .line 259
    aget-wide v14, v10, v1

    sub-long v16, v14, v12

    const-wide/32 v18, 0xf4240

    iget-wide v14, v4, Lcom/google/android/gms/internal/ads/zzru;->zzc:J

    move-wide/from16 v20, v14

    .line 260
    invoke-static/range {v16 .. v21}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v14

    aput-wide v14, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    :cond_7d
    iget-wide v14, v4, Lcom/google/android/gms/internal/ads/zzru;->zzc:J

    sub-long/2addr v8, v12

    const-wide/32 v16, 0xf4240

    move-wide v11, v14

    move-wide v14, v8

    move-wide/from16 v18, v11

    .line 261
    invoke-static/range {v14 .. v19}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v11

    new-instance v1, Lcom/google/android/gms/internal/ads/zzrx;

    move-object v3, v1

    move-object v8, v10

    move-object v9, v0

    move-wide v10, v11

    .line 262
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzrx;-><init>(Lcom/google/android/gms/internal/ads/zzru;[J[II[J[IJ)V

    goto/16 :goto_43

    :cond_7e
    const/4 v0, 0x0

    .line 273
    throw v0

    :cond_7f
    const/4 v3, 0x1

    .line 262
    :cond_80
    iget v1, v4, Lcom/google/android/gms/internal/ads/zzru;->zzb:I

    const/4 v8, 0x1

    if-ne v1, v8, :cond_81

    const/4 v1, 0x1

    goto :goto_60

    :cond_81
    const/4 v1, 0x0

    :goto_60
    new-array v8, v3, [I

    new-array v3, v3, [I

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/zzru;->zzi:[J

    if-eqz v9, :cond_8f

    .line 227
    check-cast v9, [J

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_61
    iget-object v13, v4, Lcom/google/android/gms/internal/ads/zzru;->zzh:[J

    .line 228
    array-length v14, v13

    if-ge v11, v14, :cond_85

    move-object/from16 v68, v6

    move/from16 v69, v7

    .line 229
    aget-wide v6, v9, v11

    const-wide/16 v17, -0x1

    cmp-long v14, v6, v17

    if-eqz v14, :cond_84

    .line 230
    aget-wide v17, v13, v11

    iget-wide v13, v4, Lcom/google/android/gms/internal/ads/zzru;->zzc:J

    move-object/from16 v70, v3

    iget-wide v2, v4, Lcom/google/android/gms/internal/ads/zzru;->zzd:J

    move-wide/from16 v19, v13

    move-wide/from16 v21, v2

    .line 231
    invoke-static/range {v17 .. v22}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v2

    const/4 v13, 0x1

    .line 232
    invoke-static {v10, v6, v7, v13, v13}, Lcom/google/android/gms/internal/ads/zzamq;->zzD([JJZZ)I

    move-result v14

    aput v14, v8, v11

    add-long/2addr v6, v2

    const/4 v2, 0x0

    .line 233
    invoke-static {v10, v6, v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzamq;->zzE([JJZZ)I

    move-result v3

    aput v3, v70, v11

    .line 234
    :goto_62
    aget v3, v8, v11

    aget v6, v70, v11

    if-ge v3, v6, :cond_82

    aget v7, v0, v3

    and-int/2addr v7, v13

    if-nez v7, :cond_82

    add-int/lit8 v3, v3, 0x1

    .line 235
    aput v3, v8, v11

    const/4 v13, 0x1

    goto :goto_62

    :cond_82
    sub-int v7, v6, v3

    add-int/2addr v12, v7

    if-eq v15, v3, :cond_83

    const/4 v3, 0x1

    goto :goto_63

    :cond_83
    const/4 v3, 0x0

    :goto_63
    or-int v3, v16, v3

    move/from16 v16, v3

    move v15, v6

    goto :goto_64

    :cond_84
    move-object/from16 v70, v3

    const/4 v2, 0x0

    :goto_64
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v6, v68

    move/from16 v7, v69

    move-object/from16 v3, v70

    move-object/from16 v2, p1

    goto :goto_61

    :cond_85
    move-object/from16 v70, v3

    move-object/from16 v68, v6

    move/from16 v69, v7

    move/from16 v3, v67

    const/4 v2, 0x0

    if-eq v12, v3, :cond_86

    const/4 v1, 0x1

    goto :goto_65

    :cond_86
    const/4 v1, 0x0

    :goto_65
    or-int v1, v16, v1

    if-eqz v1, :cond_87

    .line 236
    new-array v3, v12, [J

    move-object v6, v3

    goto :goto_66

    :cond_87
    move-object v6, v5

    :goto_66
    if-eqz v1, :cond_88

    .line 237
    new-array v3, v12, [I

    move-object v7, v3

    :goto_67
    const/4 v3, 0x1

    goto :goto_68

    :cond_88
    move-object/from16 v7, v68

    goto :goto_67

    :goto_68
    if-ne v3, v1, :cond_89

    const/16 v69, 0x0

    :cond_89
    if-eqz v1, :cond_8a

    .line 238
    new-array v3, v12, [I

    move-object v9, v3

    goto :goto_69

    :cond_8a
    move-object v9, v0

    .line 239
    :goto_69
    new-array v11, v12, [J

    const/4 v3, 0x0

    const/4 v12, 0x0

    const-wide/16 v18, 0x0

    :goto_6a
    iget-object v13, v4, Lcom/google/android/gms/internal/ads/zzru;->zzh:[J

    .line 240
    array-length v13, v13

    if-ge v3, v13, :cond_8e

    iget-object v13, v4, Lcom/google/android/gms/internal/ads/zzru;->zzi:[J

    .line 241
    aget-wide v20, v13, v3

    .line 242
    aget v13, v8, v3

    .line 243
    aget v14, v70, v3

    if-eqz v1, :cond_8b

    sub-int v15, v14, v13

    .line 244
    invoke-static {v5, v13, v6, v12, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v2, v68

    .line 245
    invoke-static {v2, v13, v7, v12, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    invoke-static {v0, v13, v9, v12, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6b

    :cond_8b
    move-object/from16 v2, v68

    :goto_6b
    move/from16 v22, v12

    move v15, v13

    move/from16 v12, v69

    :goto_6c
    if-ge v15, v14, :cond_8d

    const-wide/32 v16, 0xf4240

    move-object/from16 v71, v8

    move-object/from16 v72, v9

    iget-wide v8, v4, Lcom/google/android/gms/internal/ads/zzru;->zzd:J

    move-object/from16 v73, v0

    move v0, v12

    move-wide/from16 v12, v18

    move/from16 v23, v14

    move/from16 v24, v15

    move-wide/from16 v14, v16

    move-wide/from16 v16, v8

    .line 247
    invoke-static/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v8

    .line 248
    aget-wide v12, v10, v24

    sub-long v12, v12, v20

    const-wide/16 v14, 0x0

    .line 249
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v25

    const-wide/32 v27, 0xf4240

    iget-wide v12, v4, Lcom/google/android/gms/internal/ads/zzru;->zzc:J

    move-wide/from16 v29, v12

    .line 250
    invoke-static/range {v25 .. v30}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v12

    add-long/2addr v8, v12

    .line 251
    aput-wide v8, v11, v22

    if-eqz v1, :cond_8c

    .line 252
    aget v8, v7, v22

    if-le v8, v0, :cond_8c

    .line 253
    aget v0, v2, v24

    :cond_8c
    move v12, v0

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v0, v24, 0x1

    move v15, v0

    move/from16 v14, v23

    move-object/from16 v8, v71

    move-object/from16 v9, v72

    move-object/from16 v0, v73

    goto :goto_6c

    :cond_8d
    move-object/from16 v73, v0

    move-object/from16 v71, v8

    move-object/from16 v72, v9

    move v0, v12

    const-wide/16 v14, 0x0

    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zzru;->zzh:[J

    .line 254
    aget-wide v12, v8, v3

    add-long v18, v18, v12

    add-int/lit8 v3, v3, 0x1

    move/from16 v69, v0

    move-object/from16 v68, v2

    move/from16 v12, v22

    move-object/from16 v8, v71

    move-object/from16 v0, v73

    const/4 v2, 0x0

    goto/16 :goto_6a

    :cond_8e
    move-object/from16 v72, v9

    iget-wide v0, v4, Lcom/google/android/gms/internal/ads/zzru;->zzd:J

    const-wide/32 v14, 0xf4240

    move-wide/from16 v12, v18

    move-wide/from16 v16, v0

    .line 255
    invoke-static/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzrx;

    move-object v3, v2

    move-object v5, v6

    move-object v6, v7

    move/from16 v7, v69

    move-object v8, v11

    move-wide v10, v0

    .line 256
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzrx;-><init>(Lcom/google/android/gms/internal/ads/zzru;[J[II[J[IJ)V

    move-object v1, v2

    goto/16 :goto_43

    .line 267
    :goto_6d
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_8f
    const/4 v1, 0x0

    .line 272
    throw v1

    :cond_90
    const/4 v1, 0x0

    .line 274
    throw v1

    :cond_91
    const/4 v1, 0x0

    .line 275
    throw v1

    :cond_92
    const/4 v1, 0x0

    const-string v0, "Track has no sample table size information"

    .line 269
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v0

    throw v0

    :cond_93
    const/4 v1, 0x0

    .line 277
    throw v1

    :cond_94
    const/4 v1, 0x0

    .line 278
    throw v1

    :cond_95
    const/4 v1, 0x0

    .line 279
    throw v1

    :cond_96
    move-object/from16 v0, v33

    :goto_6e
    add-int/lit8 v15, v32, 0x1

    move-object v13, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p4

    goto/16 :goto_0

    :cond_97
    const/4 v1, 0x0

    .line 280
    throw v1

    :cond_98
    const/4 v1, 0x0

    .line 281
    throw v1

    :cond_99
    const/4 v1, 0x0

    .line 282
    throw v1

    :cond_9a
    const/4 v1, 0x0

    .line 283
    throw v1

    :cond_9b
    const/4 v1, 0x0

    .line 284
    throw v1

    :cond_9c
    const/4 v1, 0x0

    .line 285
    throw v1

    :cond_9d
    const/4 v1, 0x0

    .line 286
    throw v1

    :cond_9e
    const/4 v1, 0x0

    .line 287
    throw v1

    :cond_9f
    move-object v0, v13

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzqw;)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzqw;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/internal/ads/zzaiv;",
            "Lcom/google/android/gms/internal/ads/zzaiv;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v4

    if-lt v4, v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v4

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v5

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v6

    const v7, 0x6d657461

    if-ne v6, v7, :cond_5

    .line 4
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    add-int v2, v4, v5

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzre;->zzd(Lcom/google/android/gms/internal/ads/zzamf;)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v6

    if-ge v6, v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v6

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v7

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v8

    const v9, 0x696c7374

    if-ne v8, v9, :cond_3

    .line 10
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    add-int/2addr v6, v7

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    new-instance v2, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v7

    if-ge v7, v6, :cond_1

    .line 13
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzrl;->zza(Lcom/google/android/gms/internal/ads/zzamf;)Lcom/google/android/gms/internal/ads/zzaiu;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 14
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    .line 26
    :cond_2
    new-instance v6, Lcom/google/android/gms/internal/ads/zzaiv;

    .line 15
    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>(Ljava/util/List;)V

    goto :goto_4

    :cond_3
    add-int/2addr v6, v7

    .line 9
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto :goto_1

    :cond_4
    :goto_3
    move-object v6, v1

    :goto_4
    move-object v2, v6

    goto :goto_7

    :cond_5
    const v7, 0x736d7461

    if-ne v6, v7, :cond_b

    .line 16
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    add-int v3, v4, v5

    const/16 v6, 0xc

    .line 17
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v7

    if-ge v7, v3, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v7

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v8

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v9

    const v10, 0x73617574

    if-ne v9, v10, :cond_9

    const/16 v3, 0xe

    if-ge v8, v3, :cond_6

    goto :goto_6

    :cond_6
    const/4 v3, 0x5

    .line 21
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v3

    const/high16 v7, 0x42f00000    # 120.0f

    if-eq v3, v6, :cond_7

    const/16 v6, 0xd

    if-eq v3, v6, :cond_8

    goto :goto_6

    :cond_7
    if-ne v3, v6, :cond_8

    const/high16 v7, 0x43700000    # 240.0f

    :cond_8
    const/4 v3, 0x1

    .line 23
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v6

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaiv;

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/zzaiu;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzakq;

    .line 25
    invoke-direct {v9, v7, v6}, Lcom/google/android/gms/internal/ads/zzakq;-><init>(FI)V

    const/4 v6, 0x0

    aput-object v9, v3, v6

    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>([Lcom/google/android/gms/internal/ads/zzaiu;)V

    move-object v3, v8

    goto :goto_7

    :cond_9
    add-int/2addr v7, v8

    .line 20
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto :goto_5

    :cond_a
    :goto_6
    move-object v3, v1

    :cond_b
    :goto_7
    add-int/2addr v4, v5

    .line 26
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto/16 :goto_0

    .line 27
    :cond_c
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzqv;)Lcom/google/android/gms/internal/ads/zzaiv;
    .locals 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const v0, 0x68646c72    # 4.3148E24f

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v0

    const v1, 0x6b657973

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v1

    const v2, 0x696c7374

    .line 3
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    if-eqz p0, :cond_8

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzre;->zze(Lcom/google/android/gms/internal/ads/zzamf;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v1, 0xc

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v1

    .line 7
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v6

    const/4 v7, 0x4

    .line 9
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    add-int/lit8 v6, v6, -0x8

    .line 10
    sget-object v7, Lcom/google/android/gms/internal/ads/zzfll;->zzc:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzE(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 11
    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v0, 0x8

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    new-instance v1, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v5

    if-le v5, v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v5

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v6

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_4

    array-length v8, v3

    if-ge v7, v8, :cond_4

    .line 18
    aget-object v7, v3, v7

    add-int v8, v5, v6

    .line 19
    sget v9, Lcom/google/android/gms/internal/ads/zzrl;->zzb:I

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v9

    if-ge v9, v8, :cond_3

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v10

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v11

    const v12, 0x64617461

    if-ne v11, v12, :cond_2

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v8

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v9

    add-int/lit8 v10, v10, -0x10

    .line 25
    new-array v11, v10, [B

    .line 26
    invoke-virtual {p0, v11, v4, v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    new-instance v10, Lcom/google/android/gms/internal/ads/zzakk;

    .line 27
    invoke-direct {v10, v7, v11, v9, v8}, Lcom/google/android/gms/internal/ads/zzakk;-><init>(Ljava/lang/String;[BII)V

    goto :goto_3

    :cond_2
    add-int/2addr v9, v10

    .line 22
    invoke-virtual {p0, v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto :goto_2

    :cond_3
    move-object v10, v2

    :goto_3
    if-eqz v10, :cond_5

    .line 28
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 22
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x34

    .line 16
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Skipped metadata with unknown key index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "AtomParsers"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 17
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_4
    add-int/2addr v5, v6

    .line 29
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto :goto_1

    .line 30
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    return-object v2

    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/ads/zzaiv;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_8
    :goto_5
    return-object v2
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzamf;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    return-void
.end method

.method private static zze(Lcom/google/android/gms/internal/ads/zzamf;)I
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result p0

    return p0
.end method

.method private static zzf(I)I
    .locals 1

    const v0, 0x736f756e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const v0, 0x76696465

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const v0, 0x74657874

    if-eq p0, v0, :cond_4

    const v0, 0x7362746c

    if-eq p0, v0, :cond_4

    const v0, 0x73756274

    if-eq p0, v0, :cond_4

    const v0, 0x636c6370

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x6d657461

    if-ne p0, v0, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zzamf;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzn;Lcom/google/android/gms/internal/ads/zzra;I)V
    .locals 19
    .param p7    # Lcom/google/android/gms/internal/ads/zzn;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaha;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    add-int/lit8 v8, v1, 0x10

    .line 1
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    const/4 v8, 0x6

    if-eqz p6, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v10

    .line 3
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    goto :goto_0

    :cond_0
    const/16 v10, 0x8

    .line 4
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x14

    const/16 v12, 0x10

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v10, :cond_3

    if-ne v10, v14, :cond_1

    goto :goto_1

    :cond_1
    if-ne v10, v13, :cond_2

    .line 9
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzx()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v15

    .line 11
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v8, v9

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v9

    .line 13
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    goto :goto_2

    :cond_2
    return-void

    .line 5
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v9

    .line 6
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzz()I

    move-result v8

    if-ne v10, v14, :cond_4

    .line 8
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v10

    const v12, 0x656e6361

    move/from16 v15, p1

    if-ne v15, v12, :cond_7

    .line 14
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzre;->zzi(Lcom/google/android/gms/internal/ads/zzamf;II)Landroid/util/Pair;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 15
    iget-object v12, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-nez v6, :cond_5

    const/4 v6, 0x0

    goto :goto_3

    .line 16
    :cond_5
    iget-object v11, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/gms/internal/ads/zzrv;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzrv;->zzb:Ljava/lang/String;

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/zzn;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzn;

    move-result-object v6

    .line 15
    :goto_3
    iget-object v11, v7, Lcom/google/android/gms/internal/ads/zzra;->zza:[Lcom/google/android/gms/internal/ads/zzrv;

    .line 17
    iget-object v15, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Lcom/google/android/gms/internal/ads/zzrv;

    aput-object v15, v11, p9

    .line 18
    :cond_6
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto :goto_4

    :cond_7
    move v12, v15

    :goto_4
    const v11, 0x61632d33

    const v15, 0x616c6163

    if-ne v12, v11, :cond_8

    const-string v11, "audio/ac3"

    :goto_5
    const/4 v12, -0x1

    goto/16 :goto_9

    :cond_8
    const v11, 0x65632d33

    if-ne v12, v11, :cond_9

    const-string v11, "audio/eac3"

    goto :goto_5

    :cond_9
    const v11, 0x61632d34

    if-ne v12, v11, :cond_a

    const-string v11, "audio/ac4"

    goto :goto_5

    :cond_a
    const v11, 0x64747363

    if-ne v12, v11, :cond_b

    const-string v11, "audio/vnd.dts"

    goto :goto_5

    :cond_b
    const v11, 0x64747368

    if-eq v12, v11, :cond_1d

    const v11, 0x6474736c

    if-ne v12, v11, :cond_c

    goto/16 :goto_8

    :cond_c
    const v11, 0x64747365

    if-ne v12, v11, :cond_d

    const-string v11, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_5

    :cond_d
    const v11, 0x64747378

    if-ne v12, v11, :cond_e

    const-string v11, "audio/vnd.dts.uhd"

    goto :goto_5

    :cond_e
    const v11, 0x73616d72

    if-ne v12, v11, :cond_f

    const-string v11, "audio/3gpp"

    goto :goto_5

    :cond_f
    const v11, 0x73617762

    if-ne v12, v11, :cond_10

    const-string v11, "audio/amr-wb"

    goto :goto_5

    :cond_10
    const v11, 0x6c70636d

    if-eq v12, v11, :cond_1c

    const v11, 0x736f7774

    if-ne v12, v11, :cond_11

    goto :goto_7

    :cond_11
    const v11, 0x74776f73

    if-ne v12, v11, :cond_12

    const-string v11, "audio/raw"

    const/high16 v12, 0x10000000

    goto :goto_9

    :cond_12
    const v11, 0x2e6d7032

    if-eq v12, v11, :cond_1b

    const v11, 0x2e6d7033

    if-ne v12, v11, :cond_13

    goto :goto_6

    :cond_13
    const v11, 0x6d686131

    if-ne v12, v11, :cond_14

    const-string v11, "audio/mha1"

    goto :goto_5

    :cond_14
    const v11, 0x6d686d31

    if-ne v12, v11, :cond_15

    const-string v11, "audio/mhm1"

    goto :goto_5

    :cond_15
    if-ne v12, v15, :cond_16

    const-string v11, "audio/alac"

    goto :goto_5

    :cond_16
    const v11, 0x616c6177

    if-ne v12, v11, :cond_17

    const-string v11, "audio/g711-alaw"

    goto/16 :goto_5

    :cond_17
    const v11, 0x756c6177

    if-ne v12, v11, :cond_18

    const-string v11, "audio/g711-mlaw"

    goto/16 :goto_5

    :cond_18
    const v11, 0x4f707573

    if-ne v12, v11, :cond_19

    const-string v11, "audio/opus"

    goto/16 :goto_5

    :cond_19
    const v11, 0x664c6143

    if-ne v12, v11, :cond_1a

    const-string v11, "audio/flac"

    goto/16 :goto_5

    :cond_1a
    const/4 v11, 0x0

    goto/16 :goto_5

    :cond_1b
    :goto_6
    const-string v11, "audio/mpeg"

    goto/16 :goto_5

    :cond_1c
    :goto_7
    const-string v11, "audio/raw"

    const/4 v12, 0x2

    goto :goto_9

    :cond_1d
    :goto_8
    const-string v11, "audio/vnd.dts.hd"

    goto/16 :goto_5

    :goto_9
    move v13, v8

    const/4 v8, 0x0

    const/16 v18, 0x0

    :goto_a
    sub-int v15, v10, v1

    if-ge v15, v2, :cond_2f

    .line 19
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v15

    if-lez v15, :cond_1e

    goto :goto_b

    :cond_1e
    const/4 v14, 0x0

    :goto_b
    const-string v1, "childAtomSize must be positive"

    .line 21
    invoke-static {v14, v1}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v1

    const v14, 0x6d686143

    if-ne v1, v14, :cond_1f

    add-int/lit8 v1, v15, -0xd

    .line 23
    new-array v14, v1, [B

    add-int/lit8 v2, v10, 0xd

    .line 24
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 26
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzfoj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v1

    :goto_c
    move-object/from16 v18, v1

    :goto_d
    const/16 v2, 0x14

    const/4 v14, 0x1

    const/16 v16, 0x2

    goto/16 :goto_15

    :cond_1f
    const v2, 0x65736473

    if-eq v1, v2, :cond_2c

    if-eqz p6, :cond_23

    const v14, 0x77617665

    if-ne v1, v14, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v1

    :goto_e
    sub-int v14, v1, v10

    if-ge v14, v15, :cond_22

    .line 76
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v14

    if-lez v14, :cond_20

    const/4 v2, 0x1

    goto :goto_f

    :cond_20
    const/4 v2, 0x0

    :goto_f
    const-string v5, "childAtomSize must be positive"

    .line 78
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v2

    const v5, 0x65736473

    if-eq v2, v5, :cond_21

    add-int/2addr v1, v14

    const v2, 0x65736473

    goto :goto_e

    :cond_21
    move v5, v1

    const/4 v1, -0x1

    const/16 v2, 0x14

    goto :goto_10

    :cond_22
    const/4 v1, -0x1

    const/16 v2, 0x14

    const/4 v5, -0x1

    :goto_10
    const/4 v14, 0x1

    const/16 v16, 0x2

    goto/16 :goto_14

    :cond_23
    const v2, 0x64616333

    if-ne v1, v2, :cond_24

    add-int/lit8 v1, v10, 0x8

    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 28
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v6}, Lcom/google/android/gms/internal/ads/zzna;->zza(Lcom/google/android/gms/internal/ads/zzamf;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v1

    iput-object v1, v7, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    :goto_11
    const/4 v1, 0x0

    goto :goto_d

    :cond_24
    const v2, 0x64656333

    if-ne v1, v2, :cond_25

    add-int/lit8 v1, v10, 0x8

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 30
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v6}, Lcom/google/android/gms/internal/ads/zzna;->zzb(Lcom/google/android/gms/internal/ads/zzamf;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v1

    iput-object v1, v7, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    goto :goto_11

    :cond_25
    const v2, 0x64616334

    if-ne v1, v2, :cond_27

    add-int/lit8 v1, v10, 0x8

    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 32
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/ads/zznd;->zza:I

    const/4 v5, 0x1

    .line 33
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    shr-int/lit8 v2, v2, 0x5

    if-eq v5, v2, :cond_26

    const v2, 0xac44

    goto :goto_12

    :cond_26
    const v2, 0xbb80

    :goto_12
    new-instance v5, Lcom/google/android/gms/internal/ads/zzaft;

    .line 35
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    .line 36
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    const-string v1, "audio/ac4"

    .line 37
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    const/4 v1, 0x2

    .line 38
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzaa(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 39
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzaft;->zzab(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 40
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzaft;->zzQ(Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 41
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 42
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v1

    iput-object v1, v7, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    goto :goto_11

    :cond_27
    const v2, 0x64647473

    if-ne v1, v2, :cond_28

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaft;

    .line 43
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    .line 44
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzaft;->zzE(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 45
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 46
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzaft;->zzaa(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 47
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzaft;->zzab(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 48
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzaft;->zzQ(Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 49
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 50
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v1

    iput-object v1, v7, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    goto :goto_11

    :cond_28
    const v2, 0x644f7073

    if-ne v1, v2, :cond_29

    add-int/lit8 v1, v15, -0x8

    sget-object v2, Lcom/google/android/gms/internal/ads/zzre;->zza:[B

    sget-object v5, Lcom/google/android/gms/internal/ads/zzre;->zza:[B

    .line 51
    array-length v5, v5

    add-int/2addr v5, v1

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    add-int/lit8 v5, v10, 0x8

    .line 52
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    sget-object v5, Lcom/google/android/gms/internal/ads/zzre;->zza:[B

    .line 53
    array-length v5, v5

    invoke-virtual {v0, v2, v5, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 54
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzop;->zza([B)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_c

    :cond_29
    const v2, 0x64664c61

    if-ne v1, v2, :cond_2a

    add-int/lit8 v1, v15, -0xc

    add-int/lit8 v2, v1, 0x4

    .line 55
    new-array v2, v2, [B

    const/16 v5, 0x66

    const/4 v14, 0x0

    .line 56
    aput-byte v5, v2, v14

    const/16 v5, 0x4c

    const/4 v14, 0x1

    .line 57
    aput-byte v5, v2, v14

    const/16 v5, 0x61

    const/16 v16, 0x2

    .line 58
    aput-byte v5, v2, v16

    const/4 v5, 0x3

    const/16 v17, 0x43

    .line 59
    aput-byte v17, v2, v5

    add-int/lit8 v5, v10, 0xc

    .line 60
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    const/4 v5, 0x4

    .line 61
    invoke-virtual {v0, v2, v5, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 62
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfoj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v1

    move-object/from16 v18, v1

    :goto_13
    const/16 v2, 0x14

    goto/16 :goto_15

    :cond_2a
    const v2, 0x616c6163

    const/4 v14, 0x1

    const/16 v16, 0x2

    if-ne v1, v2, :cond_2b

    add-int/lit8 v1, v15, -0xc

    .line 63
    new-array v5, v1, [B

    add-int/lit8 v9, v10, 0xc

    .line 64
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    const/4 v9, 0x0

    .line 65
    invoke-virtual {v0, v5, v9, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 66
    new-instance v1, Lcom/google/android/gms/internal/ads/zzamf;

    .line 67
    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/zzamf;-><init>([B)V

    const/16 v13, 0x9

    .line 68
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v13

    const/16 v2, 0x14

    .line 70
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v1

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v1, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 73
    iget-object v13, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 74
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 75
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfoj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v5

    move v9, v1

    move-object/from16 v18, v5

    goto :goto_15

    :cond_2b
    const/4 v1, 0x0

    goto :goto_13

    :cond_2c
    const/16 v2, 0x14

    const/4 v14, 0x1

    const/16 v16, 0x2

    move v5, v10

    const/4 v1, -0x1

    :goto_14
    if-eq v5, v1, :cond_2e

    .line 80
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzre;->zzh(Lcom/google/android/gms/internal/ads/zzamf;I)Landroid/util/Pair;

    move-result-object v5

    .line 81
    iget-object v11, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 82
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [B

    if-eqz v5, :cond_2e

    const-string v1, "audio/mp4a-latm"

    .line 83
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 84
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzmx;->zza([B)Lcom/google/android/gms/internal/ads/zzmv;

    move-result-object v1

    iget v13, v1, Lcom/google/android/gms/internal/ads/zzmv;->zza:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzmv;->zzb:I

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzmv;->zzc:Ljava/lang/String;

    .line 85
    :cond_2d
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfoj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v18

    :cond_2e
    :goto_15
    add-int/2addr v10, v15

    move/from16 v1, p2

    move/from16 v2, p3

    goto/16 :goto_a

    .line 75
    :cond_2f
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    if-nez v0, :cond_30

    if-eqz v11, :cond_30

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaft;

    .line 86
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    .line 87
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaft;->zzE(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 88
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 89
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzaft;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 90
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzaft;->zzaa(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 91
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzaft;->zzab(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 92
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzaft;->zzac(I)Lcom/google/android/gms/internal/ads/zzaft;

    move-object/from16 v1, v18

    .line 93
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 94
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzaft;->zzQ(Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 95
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 96
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    :cond_30
    return-void
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzamf;I)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzamf;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    const/16 v0, 0xc

    add-int/2addr p1, v0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzre;->zzj(Lcom/google/android/gms/internal/ads/zzamf;)I

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v2

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    :cond_0
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    :cond_1
    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzre;->zzj(Lcom/google/android/gms/internal/ads/zzamf;)I

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v1

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzalt;->zze(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio/mpeg"

    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "audio/vnd.dts"

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "audio/vnd.dts.hd"

    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 19
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzre;->zzj(Lcom/google/android/gms/internal/ads/zzamf;)I

    move-result p1

    .line 20
    new-array v0, p1, [B

    const/4 v2, 0x0

    .line 21
    invoke-virtual {p0, v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 22
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 16
    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzamf;II)Landroid/util/Pair;
    .locals 19
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzamf;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/ads/zzrv;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaha;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v1

    move v2, v1

    :goto_0
    sub-int v3, v2, p1

    move/from16 v5, p2

    if-ge v3, v5, :cond_11

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v3

    const/4 v6, 0x1

    if-lez v3, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    const-string v9, "childAtomSize must be positive"

    .line 3
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v8

    const v9, 0x73696e66

    if-ne v8, v9, :cond_10

    add-int/lit8 v8, v2, 0x8

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_2
    sub-int v13, v8, v2

    const/4 v14, 0x4

    if-ge v13, v3, :cond_4

    .line 5
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v13

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v4

    const v7, 0x66726d61

    if-ne v4, v7, :cond_1

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v15, v4

    goto :goto_3

    :cond_1
    const v7, 0x7363686d

    if-ne v4, v7, :cond_2

    .line 9
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 10
    sget-object v4, Lcom/google/android/gms/internal/ads/zzfll;->zzc:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v14, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzE(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    goto :goto_3

    :cond_2
    const v7, 0x73636869

    if-ne v4, v7, :cond_3

    move v10, v8

    move v11, v13

    :cond_3
    :goto_3
    add-int/2addr v8, v13

    goto :goto_2

    :cond_4
    const-string v4, "cenc"

    .line 11
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "cbc1"

    .line 12
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "cens"

    .line 13
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "cbcs"

    .line 14
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_d

    :cond_6
    :goto_4
    if-eqz v15, :cond_7

    const/4 v4, 0x1

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    :goto_5
    const-string v7, "frma atom is mandatory"

    .line 15
    invoke-static {v4, v7}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    if-eq v10, v9, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :goto_6
    const-string v7, "schi atom is mandatory"

    .line 16
    invoke-static {v4, v7}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    add-int/lit8 v4, v10, 0x8

    :goto_7
    sub-int v7, v4, v10

    if-ge v7, v11, :cond_d

    .line 17
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v7

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v8

    const v9, 0x74656e63

    if-ne v8, v9, :cond_c

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v4

    .line 21
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzqx;->zze(I)I

    move-result v4

    if-nez v4, :cond_9

    .line 22
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    const/4 v7, 0x0

    const/16 v16, 0x0

    goto :goto_8

    .line 23
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v4

    and-int/lit16 v7, v4, 0xf0

    shr-int/2addr v7, v14

    and-int/lit8 v4, v4, 0xf

    move/from16 v16, v4

    .line 24
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v4

    if-ne v4, v6, :cond_a

    const/4 v11, 0x1

    goto :goto_9

    :cond_a
    const/4 v11, 0x0

    .line 25
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v13

    const/16 v4, 0x10

    new-array v14, v4, [B

    const/4 v8, 0x0

    .line 26
    invoke-virtual {v0, v14, v8, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    if-eqz v11, :cond_b

    if-nez v13, :cond_b

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v4

    new-array v9, v4, [B

    .line 28
    invoke-virtual {v0, v9, v8, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    move-object/from16 v17, v9

    goto :goto_a

    :cond_b
    const/16 v17, 0x0

    :goto_a
    new-instance v4, Lcom/google/android/gms/internal/ads/zzrv;

    move-object v10, v4

    move-object v9, v15

    move v15, v7

    .line 29
    invoke-direct/range {v10 .. v17}, Lcom/google/android/gms/internal/ads/zzrv;-><init>(ZLjava/lang/String;I[BII[B)V

    goto :goto_b

    :cond_c
    move-object v9, v15

    const/4 v8, 0x0

    add-int/2addr v4, v7

    goto :goto_7

    :cond_d
    move-object v9, v15

    const/4 v8, 0x0

    const/4 v4, 0x0

    :goto_b
    if-eqz v4, :cond_e

    goto :goto_c

    :cond_e
    const/4 v6, 0x0

    :goto_c
    const-string v7, "tenc atom is mandatory"

    .line 30
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    .line 31
    sget v6, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-static {v9, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    move-object/from16 v18, v4

    :goto_d
    if-nez v18, :cond_f

    goto :goto_e

    :cond_f
    return-object v18

    :cond_10
    :goto_e
    add-int/2addr v2, v3

    goto/16 :goto_0

    :cond_11
    const/4 v2, 0x0

    return-object v2
.end method

.method private static zzj(Lcom/google/android/gms/internal/ads/zzamf;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method
