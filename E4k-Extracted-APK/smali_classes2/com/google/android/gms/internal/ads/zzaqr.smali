.class final Lcom/google/android/gms/internal/ads/zzaqr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static final zza:I

.field private static final zzb:I

.field private static final zzc:I

.field private static final zzd:I

.field private static final zze:I

.field private static final zzf:I

.field private static final zzg:I

.field private static final zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "vide"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzave;->zzl(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzaqr;->zza:I

    const-string v0, "soun"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzave;->zzl(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzaqr;->zzb:I

    const-string v0, "text"

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzave;->zzl(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzaqr;->zzc:I

    const-string v0, "sbtl"

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzave;->zzl(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzaqr;->zzd:I

    const-string v0, "subt"

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzave;->zzl(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzaqr;->zze:I

    const-string v0, "clcp"

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzave;->zzl(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzaqr;->zzf:I

    const-string v0, "cenc"

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzave;->zzl(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzaqr;->zzg:I

    const-string v0, "meta"

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzave;->zzl(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzaqr;->zzh:I

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzaqi;Lcom/google/android/gms/internal/ads/zzaqj;JLcom/google/android/gms/internal/ads/zzapk;Z)Lcom/google/android/gms/internal/ads/zzarc;
    .locals 51
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzanp;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p4

    .line 1
    sget v1, Lcom/google/android/gms/internal/ads/zzaqk;->zzH:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqi;->zzd(I)Lcom/google/android/gms/internal/ads/zzaqi;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/ads/zzaqk;->zzV:I

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaqi;->zzc(I)Lcom/google/android/gms/internal/ads/zzaqj;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    const/16 v14, 0x10

    .line 3
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v2

    sget v3, Lcom/google/android/gms/internal/ads/zzaqr;->zzb:I

    const/4 v4, 0x4

    const/4 v12, 0x3

    const/4 v11, -0x1

    if-ne v2, v3, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    .line 13
    :cond_0
    sget v3, Lcom/google/android/gms/internal/ads/zzaqr;->zza:I

    if-ne v2, v3, :cond_1

    const/4 v10, 0x2

    goto :goto_1

    :cond_1
    sget v3, Lcom/google/android/gms/internal/ads/zzaqr;->zzc:I

    if-eq v2, v3, :cond_4

    sget v3, Lcom/google/android/gms/internal/ads/zzaqr;->zzd:I

    if-eq v2, v3, :cond_4

    sget v3, Lcom/google/android/gms/internal/ads/zzaqr;->zze:I

    if-eq v2, v3, :cond_4

    sget v3, Lcom/google/android/gms/internal/ads/zzaqr;->zzf:I

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    sget v3, Lcom/google/android/gms/internal/ads/zzaqr;->zzh:I

    if-ne v2, v3, :cond_3

    const/4 v10, 0x4

    goto :goto_1

    :cond_3
    const/4 v10, -0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v10, 0x3

    :goto_1
    const/4 v8, 0x0

    if-ne v10, v11, :cond_5

    return-object v8

    .line 4
    :cond_5
    sget v2, Lcom/google/android/gms/internal/ads/zzaqk;->zzR:I

    .line 5
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaqi;->zzc(I)Lcom/google/android/gms/internal/ads/zzaqj;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    const/16 v7, 0x8

    .line 6
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaqk;->zze(I)I

    move-result v3

    if-nez v3, :cond_6

    const/16 v5, 0x8

    goto :goto_2

    :cond_6
    const/16 v5, 0x10

    .line 8
    :goto_2
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v5

    .line 10
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzg()I

    move-result v6

    if-nez v3, :cond_7

    const/4 v13, 0x4

    goto :goto_3

    :cond_7
    const/16 v13, 0x8

    :goto_3
    const/4 v9, 0x0

    :goto_4
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v9, v13, :cond_a

    .line 12
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    add-int v19, v6, v9

    aget-byte v8, v8, v19

    if-eq v8, v11, :cond_9

    if-nez v3, :cond_8

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzp()J

    move-result-wide v8

    goto :goto_5

    :cond_8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzv()J

    move-result-wide v8

    :goto_5
    const-wide/16 v19, 0x0

    cmp-long v3, v8, v19

    if-nez v3, :cond_b

    goto :goto_6

    :cond_9
    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x0

    goto :goto_4

    .line 13
    :cond_a
    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    :goto_6
    move-wide/from16 v8, v17

    .line 15
    :cond_b
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v3

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v6

    .line 18
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v13

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v2

    const/high16 v4, 0x10000

    const/high16 v14, -0x10000

    if-nez v3, :cond_f

    if-ne v6, v4, :cond_e

    if-ne v13, v14, :cond_d

    if-nez v2, :cond_c

    const/16 v2, 0x5a

    goto :goto_9

    :cond_c
    const/4 v3, 0x0

    const/high16 v6, 0x10000

    const/high16 v13, -0x10000

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    const/high16 v6, 0x10000

    goto :goto_7

    :cond_e
    const/4 v3, 0x0

    :cond_f
    :goto_7
    if-nez v3, :cond_13

    if-ne v6, v14, :cond_12

    if-ne v13, v4, :cond_11

    if-nez v2, :cond_10

    const/16 v2, 0x10e

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    const/high16 v6, -0x10000

    const/high16 v13, 0x10000

    goto :goto_8

    :cond_11
    const/4 v3, 0x0

    const/high16 v6, -0x10000

    goto :goto_8

    :cond_12
    const/4 v3, 0x0

    :cond_13
    :goto_8
    if-ne v3, v14, :cond_14

    if-nez v6, :cond_14

    if-nez v13, :cond_14

    if-ne v2, v14, :cond_14

    const/16 v2, 0xb4

    goto :goto_9

    :cond_14
    const/4 v2, 0x0

    :goto_9
    new-instance v14, Lcom/google/android/gms/internal/ads/zzaqq;

    .line 21
    invoke-direct {v14, v5, v8, v9, v2}, Lcom/google/android/gms/internal/ads/zzaqq;-><init>(IJI)V

    cmp-long v4, p2, v17

    if-nez v4, :cond_15

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzaqq;->zzb(Lcom/google/android/gms/internal/ads/zzaqq;)J

    move-result-wide v2

    move-wide/from16 v19, v2

    move-object/from16 v2, p1

    goto :goto_a

    :cond_15
    move-object/from16 v2, p1

    move-wide/from16 v19, p2

    .line 22
    :goto_a
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    .line 23
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaqk;->zze(I)I

    move-result v3

    if-nez v3, :cond_16

    const/16 v3, 0x8

    goto :goto_b

    :cond_16
    const/16 v3, 0x10

    .line 25
    :goto_b
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzp()J

    move-result-wide v25

    cmp-long v2, v19, v17

    if-nez v2, :cond_17

    move-wide/from16 v22, v17

    goto :goto_c

    :cond_17
    const-wide/32 v21, 0xf4240

    move-wide/from16 v23, v25

    .line 27
    invoke-static/range {v19 .. v24}, Lcom/google/android/gms/internal/ads/zzave;->zzj(JJJ)J

    move-result-wide v2

    move-wide/from16 v22, v2

    .line 26
    :goto_c
    sget v2, Lcom/google/android/gms/internal/ads/zzaqk;->zzI:I

    .line 28
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaqi;->zzd(I)Lcom/google/android/gms/internal/ads/zzaqi;

    move-result-object v2

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzJ:I

    .line 29
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzaqi;->zzd(I)Lcom/google/android/gms/internal/ads/zzaqi;

    move-result-object v2

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzU:I

    .line 30
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzaqi;->zzc(I)Lcom/google/android/gms/internal/ads/zzaqj;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    .line 31
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaqk;->zze(I)I

    move-result v3

    if-nez v3, :cond_18

    const/16 v4, 0x8

    goto :goto_d

    :cond_18
    const/16 v4, 0x10

    .line 33
    :goto_d
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzp()J

    move-result-wide v4

    if-nez v3, :cond_19

    const/4 v3, 0x4

    goto :goto_e

    :cond_19
    const/16 v3, 0x8

    .line 35
    :goto_e
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzm()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    shr-int/lit8 v6, v1, 0xa

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v6, v1, 0x5

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    sget v1, Lcom/google/android/gms/internal/ads/zzaqk;->zzW:I

    .line 39
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaqi;->zzc(I)Lcom/google/android/gms/internal/ads/zzaqj;

    move-result-object v1

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzaqq;->zza(Lcom/google/android/gms/internal/ads/zzaqq;)I

    move-result v17

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzaqq;->zzc(Lcom/google/android/gms/internal/ads/zzaqq;)I

    move-result v18

    iget-object v1, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    const/16 v1, 0xc

    .line 40
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 41
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v6

    new-instance v5, Lcom/google/android/gms/internal/ads/zzaqn;

    .line 42
    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/zzaqn;-><init>(I)V

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v6, :cond_62

    .line 43
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaux;->zzg()I

    move-result v3

    .line 44
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v2

    if-lez v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_10

    :cond_1a
    const/4 v1, 0x0

    :goto_10
    const-string v7, "childAtomSize should be positive"

    .line 45
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzaup;->zzb(ZLjava/lang/Object;)V

    .line 46
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v1

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zze:I

    if-eq v1, v7, :cond_49

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzf:I

    if-eq v1, v7, :cond_49

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzac:I

    if-eq v1, v7, :cond_49

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzan:I

    if-eq v1, v7, :cond_49

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzg:I

    if-eq v1, v7, :cond_49

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzh:I

    if-eq v1, v7, :cond_49

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzi:I

    if-eq v1, v7, :cond_49

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzaM:I

    if-eq v1, v7, :cond_49

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzaN:I

    if-ne v1, v7, :cond_1b

    goto/16 :goto_2e

    .line 82
    :cond_1b
    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzl:I

    if-eq v1, v7, :cond_25

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzad:I

    if-eq v1, v7, :cond_25

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzq:I

    if-eq v1, v7, :cond_25

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzs:I

    if-eq v1, v7, :cond_25

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzu:I

    if-eq v1, v7, :cond_25

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzx:I

    if-eq v1, v7, :cond_25

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzv:I

    if-eq v1, v7, :cond_25

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzw:I

    if-eq v1, v7, :cond_25

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzaA:I

    if-eq v1, v7, :cond_25

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzaB:I

    if-eq v1, v7, :cond_25

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzo:I

    if-eq v1, v7, :cond_25

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzp:I

    if-eq v1, v7, :cond_25

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzm:I

    if-eq v1, v7, :cond_25

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzaQ:I

    if-ne v1, v7, :cond_1c

    goto/16 :goto_15

    .line 87
    :cond_1c
    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzam:I

    if-eq v1, v7, :cond_1f

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzaw:I

    if-eq v1, v7, :cond_1f

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzax:I

    if-eq v1, v7, :cond_1f

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzay:I

    if-eq v1, v7, :cond_1f

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzaz:I

    if-ne v1, v7, :cond_1d

    goto :goto_11

    .line 131
    :cond_1d
    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzaP:I

    if-ne v1, v7, :cond_1e

    .line 133
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v7, "application/x-camera-motion"

    const/4 v12, 0x0

    invoke-static {v1, v7, v12, v11, v15}, Lcom/google/android/gms/internal/ads/zzanm;->zzf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzapk;)Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v1

    iput-object v1, v5, Lcom/google/android/gms/internal/ads/zzaqn;->zzb:Lcom/google/android/gms/internal/ads/zzanm;

    :cond_1e
    move/from16 v33, v2

    move/from16 v31, v3

    move/from16 v29, v4

    move-object v0, v5

    move/from16 v19, v6

    move-object/from16 v24, v8

    move-object/from16 v50, v9

    move/from16 v27, v10

    move-object/from16 v45, v13

    move-object/from16 v21, v14

    goto/16 :goto_18

    :cond_1f
    :goto_11
    const/4 v12, 0x0

    add-int/lit8 v7, v3, 0x10

    .line 128
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzam:I

    const-wide v19, 0x7fffffffffffffffL

    if-ne v1, v7, :cond_20

    const-string v1, "application/ttml+xml"

    move-object/from16 v24, v12

    move-wide/from16 v20, v19

    const/4 v7, 0x1

    const/4 v11, 0x0

    :goto_12
    move-object/from16 v19, v1

    goto :goto_14

    .line 132
    :cond_20
    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzaw:I

    if-ne v1, v7, :cond_21

    add-int/lit8 v1, v2, -0x10

    .line 129
    new-array v7, v1, [B

    const/4 v11, 0x0

    .line 130
    invoke-virtual {v9, v7, v11, v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzk([BII)V

    .line 131
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v7, "application/x-quicktime-tx3g"

    move-object/from16 v24, v1

    move-wide/from16 v20, v19

    move-object/from16 v19, v7

    const/4 v7, 0x1

    goto :goto_14

    :cond_21
    const/4 v11, 0x0

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzax:I

    if-ne v1, v7, :cond_22

    const-string v1, "application/x-mp4-vtt"

    :goto_13
    move-object/from16 v24, v12

    move-wide/from16 v20, v19

    const/4 v7, 0x1

    goto :goto_12

    :cond_22
    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzay:I

    if-ne v1, v7, :cond_23

    const-string v1, "application/ttml+xml"

    const-wide/16 v19, 0x0

    goto :goto_13

    :cond_23
    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzaz:I

    if-ne v1, v7, :cond_24

    const/4 v7, 0x1

    iput v7, v5, Lcom/google/android/gms/internal/ads/zzaqn;->zzd:I

    const-string v1, "application/x-mp4-cea-608"

    move-object/from16 v24, v12

    move-wide/from16 v20, v19

    goto :goto_12

    .line 132
    :goto_14
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v27, 0x0

    const/16 v28, -0x1

    const/16 v29, 0x0

    const/16 v31, -0x1

    move-object/from16 v35, v13

    move v13, v2

    move-object/from16 v2, v19

    move/from16 v36, v3

    move-object/from16 v3, v27

    move/from16 v37, v4

    move/from16 v4, v28

    move-object/from16 v38, v5

    move/from16 v5, v29

    move/from16 v19, v6

    move-object v6, v8

    const/16 v27, 0x1

    move/from16 v7, v31

    move-object v12, v8

    move-object/from16 v8, p4

    move-object v11, v9

    move/from16 v27, v10

    move-wide/from16 v9, v20

    move-object v0, v11

    move-object/from16 v39, v14

    const/4 v14, -0x1

    move-object/from16 v11, v24

    invoke-static/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzanm;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/gms/internal/ads/zzapk;JLjava/util/List;)Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v1

    move-object/from16 v11, v38

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzaqn;->zzb:Lcom/google/android/gms/internal/ads/zzanm;

    move-object/from16 v50, v0

    move-object v0, v11

    move-object/from16 v24, v12

    move/from16 v33, v13

    move-object/from16 v45, v35

    move/from16 v31, v36

    goto/16 :goto_17

    .line 13
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 148
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_25
    :goto_15
    move/from16 v36, v3

    move/from16 v37, v4

    move-object v11, v5

    move/from16 v19, v6

    move-object v12, v8

    move-object v0, v9

    move/from16 v27, v10

    move-object/from16 v35, v13

    move-object/from16 v39, v14

    const/4 v14, -0x1

    move v13, v2

    move/from16 v10, v36

    add-int/lit8 v3, v10, 0x10

    .line 84
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    if-eqz p5, :cond_26

    .line 85
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzm()I

    move-result v9

    const/4 v2, 0x6

    .line 86
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    move v2, v9

    const/16 v9, 0x8

    goto :goto_16

    :cond_26
    const/16 v9, 0x8

    .line 87
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    const/4 v2, 0x0

    :goto_16
    if-eqz v2, :cond_29

    const/4 v8, 0x1

    if-ne v2, v8, :cond_27

    const/4 v7, 0x2

    goto :goto_19

    :cond_27
    const/4 v7, 0x2

    if-ne v2, v7, :cond_28

    const/16 v2, 0x10

    .line 92
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 93
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzs()J

    move-result-wide v2

    .line 94
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 93
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 95
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v3

    const/16 v4, 0x14

    .line 96
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    const/16 v6, 0x10

    goto :goto_1b

    :cond_28
    move-object/from16 v50, v0

    move/from16 v31, v10

    move-object v0, v11

    move-object/from16 v24, v12

    move/from16 v33, v13

    move-object/from16 v45, v35

    :goto_17
    move/from16 v29, v37

    move-object/from16 v21, v39

    :goto_18
    const/16 v20, 0x0

    const/16 v28, -0x1

    goto/16 :goto_3e

    :cond_29
    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 88
    :goto_19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzm()I

    move-result v3

    const/4 v4, 0x6

    .line 89
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 90
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzt()I

    move-result v4

    if-ne v2, v8, :cond_2a

    const/16 v6, 0x10

    .line 91
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    goto :goto_1a

    :cond_2a
    const/16 v6, 0x10

    :goto_1a
    move v2, v4

    .line 97
    :goto_1b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzg()I

    move-result v4

    sget v5, Lcom/google/android/gms/internal/ads/zzaqk;->zzad:I

    if-ne v1, v5, :cond_2b

    move/from16 v5, v37

    .line 98
    invoke-static {v0, v10, v13, v11, v5}, Lcom/google/android/gms/internal/ads/zzaqr;->zze(Lcom/google/android/gms/internal/ads/zzaux;IILcom/google/android/gms/internal/ads/zzaqn;I)I

    move-result v1

    .line 99
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    goto :goto_1c

    :cond_2b
    move/from16 v5, v37

    :goto_1c
    sget v6, Lcom/google/android/gms/internal/ads/zzaqk;->zzq:I

    if-ne v1, v6, :cond_2c

    const-string v1, "audio/ac3"

    goto :goto_1f

    .line 126
    :cond_2c
    sget v6, Lcom/google/android/gms/internal/ads/zzaqk;->zzs:I

    if-ne v1, v6, :cond_2d

    const-string v1, "audio/eac3"

    goto :goto_1f

    :cond_2d
    sget v6, Lcom/google/android/gms/internal/ads/zzaqk;->zzu:I

    if-ne v1, v6, :cond_2e

    const-string v1, "audio/vnd.dts"

    goto :goto_1f

    :cond_2e
    sget v6, Lcom/google/android/gms/internal/ads/zzaqk;->zzv:I

    if-eq v1, v6, :cond_37

    sget v6, Lcom/google/android/gms/internal/ads/zzaqk;->zzw:I

    if-ne v1, v6, :cond_2f

    goto :goto_1e

    :cond_2f
    sget v6, Lcom/google/android/gms/internal/ads/zzaqk;->zzx:I

    if-ne v1, v6, :cond_30

    const-string v1, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_1f

    :cond_30
    sget v6, Lcom/google/android/gms/internal/ads/zzaqk;->zzaA:I

    if-ne v1, v6, :cond_31

    const-string v1, "audio/3gpp"

    goto :goto_1f

    :cond_31
    sget v6, Lcom/google/android/gms/internal/ads/zzaqk;->zzaB:I

    if-ne v1, v6, :cond_32

    const-string v1, "audio/amr-wb"

    goto :goto_1f

    :cond_32
    sget v6, Lcom/google/android/gms/internal/ads/zzaqk;->zzo:I

    if-eq v1, v6, :cond_36

    sget v6, Lcom/google/android/gms/internal/ads/zzaqk;->zzp:I

    if-ne v1, v6, :cond_33

    goto :goto_1d

    :cond_33
    sget v6, Lcom/google/android/gms/internal/ads/zzaqk;->zzm:I

    if-ne v1, v6, :cond_34

    const-string v1, "audio/mpeg"

    goto :goto_1f

    :cond_34
    sget v6, Lcom/google/android/gms/internal/ads/zzaqk;->zzaQ:I

    if-ne v1, v6, :cond_35

    const-string v1, "audio/alac"

    goto :goto_1f

    :cond_35
    const/4 v1, 0x0

    goto :goto_1f

    :cond_36
    :goto_1d
    const-string v1, "audio/raw"

    goto :goto_1f

    :cond_37
    :goto_1e
    const-string v1, "audio/vnd.dts.hd"

    :goto_1f
    move/from16 v21, v2

    move/from16 v24, v3

    move v6, v4

    const/16 v20, 0x0

    move-object v4, v1

    :goto_20
    sub-int v1, v6, v10

    if-ge v1, v13, :cond_45

    .line 100
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v3

    if-lez v3, :cond_38

    const/4 v1, 0x1

    goto :goto_21

    :cond_38
    const/4 v1, 0x0

    :goto_21
    const-string v2, "childAtomSize should be positive"

    .line 102
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaup;->zzb(ZLjava/lang/Object;)V

    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/ads/zzaqk;->zzM:I

    if-eq v1, v2, :cond_3e

    if-eqz p5, :cond_39

    sget v2, Lcom/google/android/gms/internal/ads/zzaqk;->zzn:I

    if-ne v1, v2, :cond_39

    goto/16 :goto_25

    .line 116
    :cond_39
    sget v2, Lcom/google/android/gms/internal/ads/zzaqk;->zzr:I

    if-ne v1, v2, :cond_3a

    add-int/lit8 v1, v6, 0x8

    .line 104
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 105
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v12, v15}, Lcom/google/android/gms/internal/ads/zzany;->zza(Lcom/google/android/gms/internal/ads/zzaux;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzapk;)Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzaqn;->zzb:Lcom/google/android/gms/internal/ads/zzanm;

    :goto_22
    move v14, v3

    move-object/from16 v40, v4

    move/from16 v41, v5

    move v4, v6

    move/from16 v43, v10

    move/from16 v44, v13

    const/4 v15, 0x1

    const/16 v28, 0x10

    const/16 v29, 0x2

    move-object v13, v11

    :goto_23
    const/4 v11, 0x0

    goto/16 :goto_24

    :cond_3a
    sget v2, Lcom/google/android/gms/internal/ads/zzaqk;->zzt:I

    if-ne v1, v2, :cond_3b

    add-int/lit8 v1, v6, 0x8

    .line 106
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 107
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v12, v15}, Lcom/google/android/gms/internal/ads/zzany;->zzb(Lcom/google/android/gms/internal/ads/zzaux;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzapk;)Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzaqn;->zzb:Lcom/google/android/gms/internal/ads/zzanm;

    goto :goto_22

    :cond_3b
    sget v2, Lcom/google/android/gms/internal/ads/zzaqk;->zzy:I

    if-ne v1, v2, :cond_3d

    .line 108
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object v2, v4

    move v14, v3

    move-object/from16 v3, v28

    move-object/from16 v40, v4

    move/from16 v4, v29

    move/from16 v41, v5

    move/from16 v5, v30

    move/from16 v42, v6

    const/16 v28, 0x10

    move/from16 v6, v24

    const/16 v29, 0x2

    move/from16 v7, v21

    const/4 v15, 0x1

    move-object/from16 v8, v31

    move-object/from16 v9, p4

    move/from16 v43, v10

    move/from16 v10, v32

    move/from16 v44, v13

    move-object v13, v11

    move-object v11, v12

    invoke-static/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzanm;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/gms/internal/ads/zzapk;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v1

    iput-object v1, v13, Lcom/google/android/gms/internal/ads/zzaqn;->zzb:Lcom/google/android/gms/internal/ads/zzanm;

    :cond_3c
    move/from16 v4, v42

    goto :goto_23

    :cond_3d
    move v14, v3

    move-object/from16 v40, v4

    move/from16 v41, v5

    move/from16 v42, v6

    move/from16 v43, v10

    move/from16 v44, v13

    const/4 v15, 0x1

    const/16 v28, 0x10

    const/16 v29, 0x2

    move-object v13, v11

    sget v2, Lcom/google/android/gms/internal/ads/zzaqk;->zzaQ:I

    if-ne v1, v2, :cond_3c

    .line 109
    new-array v1, v14, [B

    move/from16 v4, v42

    .line 110
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    const/4 v11, 0x0

    .line 111
    invoke-virtual {v0, v1, v11, v14}, Lcom/google/android/gms/internal/ads/zzaux;->zzk([BII)V

    move-object/from16 v20, v1

    :goto_24
    const/4 v10, -0x1

    goto/16 :goto_2b

    :cond_3e
    :goto_25
    move v14, v3

    move-object/from16 v40, v4

    move/from16 v41, v5

    move v4, v6

    move/from16 v43, v10

    move/from16 v44, v13

    const/4 v15, 0x1

    const/16 v28, 0x10

    const/16 v29, 0x2

    move-object v13, v11

    const/4 v11, 0x0

    .line 103
    sget v2, Lcom/google/android/gms/internal/ads/zzaqk;->zzM:I

    if-ne v1, v2, :cond_40

    move v1, v4

    :cond_3f
    :goto_26
    const/4 v10, -0x1

    goto :goto_29

    .line 112
    :cond_40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzg()I

    move-result v1

    :goto_27
    sub-int v2, v1, v4

    if-ge v2, v14, :cond_42

    .line 113
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 114
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v2

    if-lez v2, :cond_41

    const/4 v3, 0x1

    goto :goto_28

    :cond_41
    const/4 v3, 0x0

    :goto_28
    const-string v5, "childAtomSize should be positive"

    .line 115
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzaup;->zzb(ZLjava/lang/Object;)V

    .line 116
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v3

    sget v5, Lcom/google/android/gms/internal/ads/zzaqk;->zzM:I

    if-eq v3, v5, :cond_3f

    add-int/2addr v1, v2

    goto :goto_27

    :cond_42
    const/4 v1, -0x1

    goto :goto_26

    :goto_29
    if-eq v1, v10, :cond_43

    .line 117
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqr;->zzd(Lcom/google/android/gms/internal/ads/zzaux;I)Landroid/util/Pair;

    move-result-object v1

    .line 118
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 119
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v20, v1

    check-cast v20, [B

    const-string v1, "audio/mp4a-latm"

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 121
    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzauq;->zza([B)Landroid/util/Pair;

    move-result-object v1

    .line 122
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 123
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v24, v1

    move/from16 v21, v3

    goto :goto_2a

    :cond_43
    move-object/from16 v2, v40

    :cond_44
    :goto_2a
    move-object/from16 v40, v2

    :goto_2b
    add-int v6, v4, v14

    move-object v11, v13

    move-object/from16 v4, v40

    move/from16 v5, v41

    move/from16 v10, v43

    move/from16 v13, v44

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/16 v9, 0x8

    const/4 v14, -0x1

    move-object/from16 v15, p4

    goto/16 :goto_20

    :cond_45
    move-object/from16 v40, v4

    move/from16 v41, v5

    move/from16 v43, v10

    move/from16 v44, v13

    const/4 v10, -0x1

    const/4 v15, 0x1

    const/16 v28, 0x10

    const/16 v29, 0x2

    move-object v13, v11

    const/4 v11, 0x0

    .line 111
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/zzaqn;->zzb:Lcom/google/android/gms/internal/ads/zzanm;

    if-nez v1, :cond_48

    move-object/from16 v2, v40

    if-eqz v2, :cond_48

    const-string v1, "audio/raw"

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v15, v1, :cond_46

    const/4 v8, -0x1

    goto :goto_2c

    :cond_46
    const/4 v8, 0x2

    .line 125
    :goto_2c
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v20, :cond_47

    const/4 v14, 0x0

    goto :goto_2d

    .line 126
    :cond_47
    invoke-static/range {v20 .. v20}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v14, v3

    :goto_2d
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v9, -0x1

    const/16 v20, -0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, v24

    move/from16 v7, v21

    const/16 v21, -0x1

    move/from16 v10, v20

    const/16 v20, 0x0

    move-object v11, v14

    move-object/from16 v24, v12

    const/4 v14, 0x3

    move-object/from16 v12, p4

    move-object/from16 v46, v13

    move-object/from16 v45, v35

    move/from16 v47, v44

    move/from16 v13, v30

    move-object/from16 v21, v39

    const/16 v28, -0x1

    move-object/from16 v14, v24

    move-object/from16 v15, v31

    .line 127
    invoke-static/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzanm;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/google/android/gms/internal/ads/zzapk;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzaru;)Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v1

    move-object/from16 v15, v46

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzaqn;->zzb:Lcom/google/android/gms/internal/ads/zzanm;

    move-object/from16 v50, v0

    move-object v0, v15

    move/from16 v29, v41

    move/from16 v31, v43

    move/from16 v33, v47

    goto/16 :goto_3e

    :cond_48
    move-object/from16 v24, v12

    move-object/from16 v45, v35

    move-object/from16 v21, v39

    const/16 v20, 0x0

    const/16 v28, -0x1

    move-object/from16 v50, v0

    move-object v0, v13

    move/from16 v29, v41

    move/from16 v31, v43

    move/from16 v33, v44

    goto/16 :goto_3e

    :cond_49
    :goto_2e
    move/from16 v47, v2

    move/from16 v43, v3

    move/from16 v41, v4

    move-object v15, v5

    move/from16 v19, v6

    move-object/from16 v24, v8

    move-object v0, v9

    move/from16 v27, v10

    move-object/from16 v45, v13

    move-object/from16 v21, v14

    const/16 v20, 0x0

    const/16 v28, -0x1

    move/from16 v14, v43

    add-int/lit8 v3, v14, 0x10

    .line 47
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    const/16 v13, 0x10

    .line 48
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzm()I

    move-result v6

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzm()I

    move-result v7

    const/16 v2, 0x32

    .line 51
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzg()I

    move-result v2

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzac:I

    if-ne v1, v3, :cond_4a

    move/from16 v12, v41

    move/from16 v11, v47

    .line 53
    invoke-static {v0, v14, v11, v15, v12}, Lcom/google/android/gms/internal/ads/zzaqr;->zze(Lcom/google/android/gms/internal/ads/zzaux;IILcom/google/android/gms/internal/ads/zzaqn;I)I

    move-result v1

    .line 54
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    goto :goto_2f

    :cond_4a
    move/from16 v12, v41

    move/from16 v11, v47

    :goto_2f
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/high16 v29, 0x3f800000    # 1.0f

    const/16 v30, 0x0

    const/16 v31, -0x1

    :goto_30
    sub-int v5, v2, v14

    if-ge v5, v11, :cond_60

    .line 55
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzg()I

    move-result v5

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v8

    if-nez v8, :cond_4c

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzg()I

    move-result v8

    sub-int/2addr v8, v14

    if-ne v8, v11, :cond_4b

    goto/16 :goto_3d

    :cond_4b
    const/4 v8, 0x0

    :cond_4c
    if-lez v8, :cond_4d

    const/4 v10, 0x1

    goto :goto_31

    :cond_4d
    const/4 v10, 0x0

    :goto_31
    const-string v13, "childAtomSize should be positive"

    .line 59
    invoke-static {v10, v13}, Lcom/google/android/gms/internal/ads/zzaup;->zzb(ZLjava/lang/Object;)V

    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v10

    sget v13, Lcom/google/android/gms/internal/ads/zzaqk;->zzK:I

    if-ne v10, v13, :cond_50

    if-nez v3, :cond_4e

    const/4 v3, 0x1

    goto :goto_32

    :cond_4e
    const/4 v3, 0x0

    .line 61
    :goto_32
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaup;->zzd(Z)V

    add-int/lit8 v5, v5, 0x8

    .line 62
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 63
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzavf;->zza(Lcom/google/android/gms/internal/ads/zzaux;)Lcom/google/android/gms/internal/ads/zzavf;

    move-result-object v3

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzavf;->zza:Ljava/util/List;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzavf;->zzb:I

    iput v5, v15, Lcom/google/android/gms/internal/ads/zzaqn;->zzc:I

    if-nez v4, :cond_4f

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzavf;->zzc:F

    move/from16 v29, v3

    :cond_4f
    const-string v3, "video/avc"

    :goto_33
    move/from16 v48, v1

    :goto_34
    const/4 v13, 0x3

    goto/16 :goto_3c

    :cond_50
    sget v13, Lcom/google/android/gms/internal/ads/zzaqk;->zzL:I

    if-ne v10, v13, :cond_52

    if-nez v3, :cond_51

    const/4 v3, 0x1

    goto :goto_35

    :cond_51
    const/4 v3, 0x0

    .line 64
    :goto_35
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaup;->zzd(Z)V

    add-int/lit8 v5, v5, 0x8

    .line 65
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 66
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzavl;->zza(Lcom/google/android/gms/internal/ads/zzaux;)Lcom/google/android/gms/internal/ads/zzavl;

    move-result-object v3

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzavl;->zza:Ljava/util/List;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzavl;->zzb:I

    iput v3, v15, Lcom/google/android/gms/internal/ads/zzaqn;->zzc:I

    const-string v3, "video/hevc"

    goto :goto_33

    :cond_52
    sget v13, Lcom/google/android/gms/internal/ads/zzaqk;->zzaO:I

    if-ne v10, v13, :cond_55

    if-nez v3, :cond_53

    const/4 v3, 0x1

    goto :goto_36

    :cond_53
    const/4 v3, 0x0

    .line 67
    :goto_36
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaup;->zzd(Z)V

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzaM:I

    if-ne v1, v3, :cond_54

    const-string v3, "video/x-vnd.on2.vp8"

    goto :goto_33

    :cond_54
    const-string v3, "video/x-vnd.on2.vp9"

    goto :goto_33

    :cond_55
    sget v13, Lcom/google/android/gms/internal/ads/zzaqk;->zzj:I

    if-ne v10, v13, :cond_57

    if-nez v3, :cond_56

    const/4 v3, 0x1

    goto :goto_37

    :cond_56
    const/4 v3, 0x0

    .line 68
    :goto_37
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaup;->zzd(Z)V

    const-string v3, "video/3gpp"

    goto :goto_33

    :cond_57
    sget v13, Lcom/google/android/gms/internal/ads/zzaqk;->zzM:I

    if-ne v10, v13, :cond_59

    if-nez v3, :cond_58

    const/4 v3, 0x1

    goto :goto_38

    :cond_58
    const/4 v3, 0x0

    .line 69
    :goto_38
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaup;->zzd(Z)V

    .line 70
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzaqr;->zzd(Lcom/google/android/gms/internal/ads/zzaux;I)Landroid/util/Pair;

    move-result-object v3

    .line 71
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 72
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [B

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    move/from16 v48, v1

    move-object v3, v5

    goto :goto_34

    :cond_59
    sget v13, Lcom/google/android/gms/internal/ads/zzaqk;->zzal:I

    if-ne v10, v13, :cond_5a

    add-int/lit8 v5, v5, 0x8

    .line 73
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v4

    int-to-float v4, v4

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v5

    int-to-float v5, v5

    div-float v29, v4, v5

    move/from16 v48, v1

    const/4 v4, 0x1

    goto :goto_34

    :cond_5a
    sget v13, Lcom/google/android/gms/internal/ads/zzaqk;->zzaK:I

    if-ne v10, v13, :cond_5d

    add-int/lit8 v10, v5, 0x8

    :goto_39
    sub-int v13, v10, v5

    if-ge v13, v8, :cond_5c

    .line 76
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 77
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v13

    move/from16 v48, v1

    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v1

    move/from16 v49, v4

    sget v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzaL:I

    if-ne v1, v4, :cond_5b

    .line 79
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    add-int/2addr v13, v10

    invoke-static {v1, v10, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    move-object/from16 v30, v1

    goto :goto_3a

    :cond_5b
    add-int/2addr v10, v13

    move/from16 v1, v48

    move/from16 v4, v49

    goto :goto_39

    :cond_5c
    move/from16 v48, v1

    move/from16 v49, v4

    const/16 v30, 0x0

    :goto_3a
    move/from16 v4, v49

    goto/16 :goto_34

    :cond_5d
    move/from16 v48, v1

    move/from16 v49, v4

    sget v1, Lcom/google/android/gms/internal/ads/zzaqk;->zzaJ:I

    if-ne v10, v1, :cond_5e

    .line 80
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzl()I

    move-result v1

    const/4 v13, 0x3

    .line 81
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    if-nez v1, :cond_5f

    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzl()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_3b

    :pswitch_0
    move/from16 v4, v49

    const/16 v31, 0x3

    goto :goto_3c

    :pswitch_1
    move/from16 v4, v49

    const/16 v31, 0x2

    goto :goto_3c

    :pswitch_2
    move/from16 v4, v49

    const/16 v31, 0x1

    goto :goto_3c

    :pswitch_3
    move/from16 v4, v49

    const/16 v31, 0x0

    goto :goto_3c

    :cond_5e
    const/4 v13, 0x3

    :cond_5f
    :goto_3b
    move/from16 v4, v49

    :goto_3c
    add-int/2addr v2, v8

    move/from16 v1, v48

    const/16 v13, 0x10

    goto/16 :goto_30

    :cond_60
    :goto_3d
    const/4 v13, 0x3

    if-eqz v3, :cond_61

    .line 83
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v8, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/16 v32, 0x0

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v8

    move v8, v10

    move/from16 v10, v18

    move/from16 v33, v11

    move/from16 v11, v29

    move/from16 v29, v12

    move-object/from16 v12, v30

    const/16 v30, 0x10

    const/16 v34, 0x3

    move/from16 v13, v31

    move/from16 v31, v14

    move-object/from16 v14, v32

    move-object/from16 v50, v0

    move-object v0, v15

    move-object/from16 v15, p4

    invoke-static/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzanm;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/gms/internal/ads/zzavh;Lcom/google/android/gms/internal/ads/zzapk;)Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzb:Lcom/google/android/gms/internal/ads/zzanm;

    goto :goto_3f

    :cond_61
    move-object/from16 v50, v0

    move/from16 v33, v11

    move/from16 v29, v12

    move/from16 v31, v14

    move-object v0, v15

    :goto_3e
    const/16 v30, 0x10

    const/16 v34, 0x3

    :goto_3f
    add-int v3, v31, v33

    move-object/from16 v1, v50

    .line 134
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    add-int/lit8 v4, v29, 0x1

    move-object/from16 v15, p4

    move-object v5, v0

    move-object v9, v1

    move/from16 v6, v19

    move-object/from16 v14, v21

    move-object/from16 v8, v24

    move/from16 v10, v27

    move-object/from16 v13, v45

    move-object/from16 v0, p0

    const/16 v7, 0x8

    const/4 v11, -0x1

    const/4 v12, 0x3

    goto/16 :goto_f

    :cond_62
    move-object v0, v5

    move/from16 v27, v10

    move-object/from16 v45, v13

    move-object/from16 v21, v14

    const/16 v20, 0x0

    .line 133
    sget v1, Lcom/google/android/gms/internal/ads/zzaqk;->zzS:I

    move-object/from16 v2, p0

    .line 135
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaqi;->zzd(I)Lcom/google/android/gms/internal/ads/zzaqi;

    move-result-object v1

    if-eqz v1, :cond_68

    sget v2, Lcom/google/android/gms/internal/ads/zzaqk;->zzT:I

    .line 136
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaqi;->zzc(I)Lcom/google/android/gms/internal/ads/zzaqj;

    move-result-object v1

    if-nez v1, :cond_63

    goto :goto_43

    .line 147
    :cond_63
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    const/16 v2, 0x8

    .line 138
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 139
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaqk;->zze(I)I

    move-result v2

    .line 140
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v3

    new-array v4, v3, [J

    new-array v5, v3, [J

    const/4 v6, 0x0

    :goto_40
    if-ge v6, v3, :cond_67

    const/4 v7, 0x1

    if-ne v2, v7, :cond_64

    .line 141
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzv()J

    move-result-wide v8

    goto :goto_41

    :cond_64
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzp()J

    move-result-wide v8

    :goto_41
    aput-wide v8, v4, v6

    if-ne v2, v7, :cond_65

    .line 142
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzs()J

    move-result-wide v8

    goto :goto_42

    :cond_65
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v8

    int-to-long v8, v8

    :goto_42
    aput-wide v8, v5, v6

    .line 143
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzo()S

    move-result v8

    if-ne v8, v7, :cond_66

    const/4 v8, 0x2

    .line 144
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 143
    :cond_66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    .line 145
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_67
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    move-object v2, v1

    const/4 v1, 0x0

    goto :goto_44

    :cond_68
    :goto_43
    const/4 v1, 0x0

    .line 137
    invoke-static {v1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    :goto_44
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzb:Lcom/google/android/gms/internal/ads/zzanm;

    if-nez v3, :cond_69

    return-object v1

    :cond_69
    new-instance v1, Lcom/google/android/gms/internal/ads/zzarc;

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzaqq;->zza(Lcom/google/android/gms/internal/ads/zzaqq;)I

    move-result v16

    move-object/from16 v3, v45

    .line 147
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzb:Lcom/google/android/gms/internal/ads/zzanm;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzd:I

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zza:[Lcom/google/android/gms/internal/ads/zzard;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaqn;->zzc:I

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v28, v6

    check-cast v28, [J

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v29, v2

    check-cast v29, [J

    move-object v15, v1

    move/from16 v17, v27

    move-wide/from16 v20, v25

    move-object/from16 v24, v3

    move/from16 v25, v4

    move-object/from16 v26, v5

    move/from16 v27, v0

    invoke-direct/range {v15 .. v29}, Lcom/google/android/gms/internal/ads/zzarc;-><init>(IIJJJLcom/google/android/gms/internal/ads/zzanm;I[Lcom/google/android/gms/internal/ads/zzard;I[J[J)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzarc;Lcom/google/android/gms/internal/ads/zzaqi;Lcom/google/android/gms/internal/ads/zzaps;)Lcom/google/android/gms/internal/ads/zzarf;
    .locals 50
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzanp;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzas:I

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzaqi;->zzc(I)Lcom/google/android/gms/internal/ads/zzaqj;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaqo;

    .line 2
    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzaqo;-><init>(Lcom/google/android/gms/internal/ads/zzaqj;)V

    goto :goto_0

    .line 41
    :cond_0
    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzat:I

    .line 3
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzaqi;->zzc(I)Lcom/google/android/gms/internal/ads/zzaqj;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 4
    new-instance v4, Lcom/google/android/gms/internal/ads/zzaqp;

    .line 5
    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzaqp;-><init>(Lcom/google/android/gms/internal/ads/zzaqj;)V

    .line 2
    :goto_0
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzaqm;->zza()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzarf;

    new-array v7, v5, [J

    new-array v8, v5, [I

    const/4 v9, 0x0

    new-array v10, v5, [J

    new-array v11, v5, [I

    move-object v6, v0

    .line 6
    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzarf;-><init>([J[II[J[I)V

    return-object v0

    :cond_1
    sget v6, Lcom/google/android/gms/internal/ads/zzaqk;->zzau:I

    .line 7
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzaqi;->zzc(I)Lcom/google/android/gms/internal/ads/zzaqj;

    move-result-object v6

    if-nez v6, :cond_2

    sget v6, Lcom/google/android/gms/internal/ads/zzaqk;->zzav:I

    .line 8
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzaqi;->zzc(I)Lcom/google/android/gms/internal/ads/zzaqj;

    move-result-object v6

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 9
    :goto_1
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    sget v9, Lcom/google/android/gms/internal/ads/zzaqk;->zzar:I

    .line 10
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzaqi;->zzc(I)Lcom/google/android/gms/internal/ads/zzaqj;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    sget v10, Lcom/google/android/gms/internal/ads/zzaqk;->zzao:I

    .line 11
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzaqi;->zzc(I)Lcom/google/android/gms/internal/ads/zzaqj;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    sget v11, Lcom/google/android/gms/internal/ads/zzaqk;->zzap:I

    .line 12
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/zzaqi;->zzc(I)Lcom/google/android/gms/internal/ads/zzaqj;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_3

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    goto :goto_2

    :cond_3
    move-object v11, v12

    :goto_2
    sget v13, Lcom/google/android/gms/internal/ads/zzaqk;->zzaq:I

    .line 13
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzaqi;->zzc(I)Lcom/google/android/gms/internal/ads/zzaqj;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    goto :goto_3

    :cond_4
    move-object v1, v12

    :goto_3
    new-instance v13, Lcom/google/android/gms/internal/ads/zzaql;

    .line 14
    invoke-direct {v13, v9, v6, v8}, Lcom/google/android/gms/internal/ads/zzaql;-><init>(Lcom/google/android/gms/internal/ads/zzaux;Lcom/google/android/gms/internal/ads/zzaux;Z)V

    const/16 v6, 0xc

    .line 15
    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 16
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v8

    const/4 v9, -0x1

    add-int/2addr v8, v9

    .line 17
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v14

    .line 18
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v15

    if-eqz v1, :cond_5

    .line 19
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v16

    goto :goto_4

    :cond_5
    const/16 v16, 0x0

    :goto_4
    if-eqz v11, :cond_7

    .line 21
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 22
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v6

    if-lez v6, :cond_6

    .line 23
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v12

    add-int/2addr v12, v9

    goto :goto_6

    :cond_6
    move-object v11, v12

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    :goto_5
    const/4 v12, -0x1

    :goto_6
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzaqm;->zzc()Z

    move-result v17

    const-wide/16 v18, 0x0

    if-eqz v17, :cond_d

    const-string v5, "audio/raw"

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzf:Lcom/google/android/gms/internal/ads/zzanm;

    .line 24
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzanm;->zzf:Ljava/lang/String;

    .line 25
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    if-nez v8, :cond_d

    if-nez v16, :cond_c

    if-nez v6, :cond_c

    iget v1, v13, Lcom/google/android/gms/internal/ads/zzaql;->zza:I

    new-array v5, v1, [J

    new-array v1, v1, [I

    .line 42
    :goto_7
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzaql;->zza()Z

    move-result v6

    if-eqz v6, :cond_8

    iget v6, v13, Lcom/google/android/gms/internal/ads/zzaql;->zzb:I

    iget-wide v8, v13, Lcom/google/android/gms/internal/ads/zzaql;->zzd:J

    .line 43
    aput-wide v8, v5, v6

    iget v8, v13, Lcom/google/android/gms/internal/ads/zzaql;->zzc:I

    .line 44
    aput v8, v1, v6

    goto :goto_7

    .line 45
    :cond_8
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzaqm;->zzb()I

    move-result v4

    int-to-long v8, v15

    const/16 v6, 0x2000

    .line 46
    div-int/2addr v6, v4

    array-length v10, v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_8
    if-ge v11, v10, :cond_9

    .line 47
    aget v13, v1, v11

    .line 48
    invoke-static {v13, v6}, Lcom/google/android/gms/internal/ads/zzave;->zze(II)I

    move-result v13

    add-int/2addr v12, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 49
    :cond_9
    new-array v10, v12, [J

    .line 50
    new-array v11, v12, [I

    .line 51
    new-array v13, v12, [J

    .line 52
    new-array v12, v12, [I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_9
    array-length v7, v1

    if-ge v14, v7, :cond_b

    .line 53
    aget v7, v1, v14

    .line 54
    aget-wide v21, v5, v14

    move-object/from16 v23, v1

    move v1, v15

    move/from16 v15, v17

    :goto_a
    if-lez v7, :cond_a

    .line 55
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 56
    aput-wide v21, v10, v16

    move-object/from16 v24, v5

    mul-int v5, v4, v17

    .line 57
    aput v5, v11, v16

    .line 58
    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v25, v4

    int-to-long v4, v1

    mul-long v4, v4, v8

    .line 59
    aput-wide v4, v13, v16

    const/4 v4, 0x1

    .line 60
    aput v4, v12, v16

    .line 61
    aget v4, v11, v16

    int-to-long v4, v4

    add-long v21, v21, v4

    add-int v1, v1, v17

    sub-int v7, v7, v17

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v5, v24

    move/from16 v4, v25

    goto :goto_a

    :cond_a
    move/from16 v25, v4

    move-object/from16 v24, v5

    add-int/lit8 v14, v14, 0x1

    move/from16 v17, v15

    move v15, v1

    move-object/from16 v1, v23

    goto :goto_9

    :cond_b
    move/from16 v30, v3

    move-object v5, v10

    move-object v7, v11

    move-object v6, v12

    move/from16 v27, v17

    move-wide/from16 v22, v18

    goto/16 :goto_17

    :cond_c
    const/4 v8, 0x0

    .line 100
    :cond_d
    new-array v5, v3, [J

    new-array v7, v3, [I

    new-array v9, v3, [J

    move/from16 v26, v6

    new-array v6, v3, [I

    move v0, v8

    move v2, v12

    move v12, v15

    move/from16 v17, v16

    move-wide/from16 v22, v18

    move-wide/from16 v27, v22

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v29, 0x0

    move v15, v14

    const/4 v14, 0x0

    :goto_b
    if-ge v8, v3, :cond_17

    :goto_c
    if-nez v29, :cond_e

    .line 26
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzaql;->zza()Z

    move-result v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/gms/internal/ads/zzaup;->zzd(Z)V

    move/from16 v31, v2

    move/from16 v30, v3

    iget-wide v2, v13, Lcom/google/android/gms/internal/ads/zzaql;->zzd:J

    move-wide/from16 v32, v2

    iget v2, v13, Lcom/google/android/gms/internal/ads/zzaql;->zzc:I

    move/from16 v29, v2

    move/from16 v3, v30

    move/from16 v2, v31

    move-wide/from16 v27, v32

    goto :goto_c

    :cond_e
    move/from16 v31, v2

    move/from16 v30, v3

    if-eqz v1, :cond_11

    :goto_d
    if-nez v16, :cond_10

    if-lez v17, :cond_f

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v16

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v21

    add-int/lit8 v17, v17, -0x1

    goto :goto_d

    :cond_f
    const/4 v2, -0x1

    const/16 v16, 0x0

    goto :goto_e

    :cond_10
    const/4 v2, -0x1

    :goto_e
    add-int/lit8 v16, v16, -0x1

    :cond_11
    move/from16 v2, v21

    .line 29
    aput-wide v27, v5, v8

    .line 30
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzaqm;->zzb()I

    move-result v3

    aput v3, v7, v8

    if-le v3, v14, :cond_12

    move v14, v3

    :cond_12
    move-object/from16 v34, v4

    int-to-long v3, v2

    add-long v3, v22, v3

    .line 31
    aput-wide v3, v9, v8

    if-nez v11, :cond_13

    const/4 v3, 0x1

    goto :goto_f

    :cond_13
    const/4 v3, 0x0

    .line 32
    :goto_f
    aput v3, v6, v8

    move/from16 v3, v31

    if-ne v8, v3, :cond_14

    const/4 v4, 0x1

    .line 33
    aput v4, v6, v8

    add-int/lit8 v26, v26, -0x1

    if-lez v26, :cond_14

    .line 34
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v3

    const/4 v4, -0x1

    add-int/2addr v3, v4

    :cond_14
    move/from16 v35, v2

    move/from16 v36, v3

    int-to-long v2, v12

    add-long v22, v22, v2

    add-int/lit8 v2, v15, -0x1

    if-nez v2, :cond_16

    if-lez v0, :cond_15

    .line 35
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v2

    .line 36
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v3

    add-int/lit8 v0, v0, -0x1

    move v15, v2

    move v12, v3

    goto :goto_10

    :cond_15
    const/4 v15, 0x0

    goto :goto_10

    :cond_16
    move v15, v2

    .line 37
    :goto_10
    aget v2, v7, v8

    int-to-long v2, v2

    add-long v27, v27, v2

    add-int/lit8 v29, v29, -0x1

    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v30

    move-object/from16 v4, v34

    move/from16 v21, v35

    move/from16 v2, v36

    goto/16 :goto_b

    :cond_17
    move/from16 v30, v3

    if-nez v16, :cond_18

    const/4 v2, 0x1

    goto :goto_11

    :cond_18
    const/4 v2, 0x0

    .line 38
    :goto_11
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaup;->zza(Z)V

    :goto_12
    if-lez v17, :cond_1a

    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v2

    if-nez v2, :cond_19

    const/4 v2, 0x1

    goto :goto_13

    :cond_19
    const/4 v2, 0x0

    :goto_13
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaup;->zza(Z)V

    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    add-int/lit8 v17, v17, -0x1

    goto :goto_12

    :cond_1a
    if-nez v26, :cond_1e

    if-nez v15, :cond_1d

    if-nez v29, :cond_1c

    if-eqz v0, :cond_1b

    move v8, v0

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_14

    :cond_1b
    move-object/from16 v0, p0

    goto :goto_16

    :cond_1c
    move v8, v0

    move/from16 v2, v29

    move-object/from16 v0, p0

    const/4 v1, 0x0

    :goto_14
    const/4 v15, 0x0

    goto :goto_15

    :cond_1d
    move v8, v0

    move/from16 v2, v29

    move-object/from16 v0, p0

    const/4 v1, 0x0

    goto :goto_15

    :cond_1e
    move v8, v0

    move/from16 v1, v26

    move/from16 v2, v29

    move-object/from16 v0, p0

    :goto_15
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzarc;->zza:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v10, 0xd7

    .line 41
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Inconsistent stbl box for track "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": remainingSynchronizationSamples "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingSamplesInChunk "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingTimestampDeltaChanges "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "AtomParsers"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    move-object v13, v9

    move/from16 v27, v14

    .line 61
    :goto_17
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzi:[J

    if-eqz v1, :cond_36

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzaps;->zzb()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto/16 :goto_27

    .line 63
    :cond_1f
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzi:[J

    .line 64
    array-length v4, v1

    const/4 v8, 0x1

    if-ne v4, v8, :cond_22

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzb:I

    if-ne v4, v8, :cond_22

    array-length v4, v13

    const/4 v8, 0x2

    if-lt v4, v8, :cond_22

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzj:[J

    const/4 v9, 0x0

    .line 65
    aget-wide v10, v8, v9

    .line 66
    aget-wide v31, v1, v9

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzc:J

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzd:J

    move-wide/from16 v33, v14

    move-wide/from16 v35, v2

    invoke-static/range {v31 .. v36}, Lcom/google/android/gms/internal/ads/zzave;->zzj(JJJ)J

    move-result-wide v1

    add-long/2addr v1, v10

    .line 67
    aget-wide v14, v13, v9

    cmp-long v3, v14, v10

    if-gtz v3, :cond_22

    const/4 v3, 0x1

    aget-wide v8, v13, v3

    cmp-long v3, v10, v8

    if-gez v3, :cond_22

    const/4 v3, -0x1

    add-int/2addr v4, v3

    aget-wide v3, v13, v4

    cmp-long v8, v3, v1

    if-gez v8, :cond_22

    cmp-long v3, v1, v22

    if-gtz v3, :cond_22

    sub-long v31, v10, v14

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzf:Lcom/google/android/gms/internal/ads/zzanm;

    .line 68
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzanm;->zzs:I

    int-to-long v3, v3

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzc:J

    move-wide/from16 v33, v3

    move-wide/from16 v35, v8

    invoke-static/range {v31 .. v36}, Lcom/google/android/gms/internal/ads/zzave;->zzj(JJJ)J

    move-result-wide v3

    sub-long v31, v22, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzf:Lcom/google/android/gms/internal/ads/zzanm;

    .line 69
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzanm;->zzs:I

    int-to-long v1, v1

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzc:J

    move-wide/from16 v33, v1

    move-wide/from16 v35, v8

    invoke-static/range {v31 .. v36}, Lcom/google/android/gms/internal/ads/zzave;->zzj(JJJ)J

    move-result-wide v1

    cmp-long v8, v3, v18

    if-nez v8, :cond_20

    cmp-long v8, v1, v18

    if-eqz v8, :cond_22

    :cond_20
    const-wide/32 v8, 0x7fffffff

    cmp-long v10, v3, v8

    if-gtz v10, :cond_22

    cmp-long v10, v1, v8

    if-lez v10, :cond_21

    goto :goto_18

    :cond_21
    long-to-int v3, v3

    move-object/from16 v4, p2

    .line 95
    iput v3, v4, Lcom/google/android/gms/internal/ads/zzaps;->zzb:I

    long-to-int v1, v1

    iput v1, v4, Lcom/google/android/gms/internal/ads/zzaps;->zzc:I

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzc:J

    const-wide/32 v2, 0xf4240

    .line 99
    invoke-static {v13, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzave;->zzk([JJJ)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzarf;

    move-object/from16 v24, v0

    move-object/from16 v25, v5

    move-object/from16 v26, v7

    move-object/from16 v28, v13

    move-object/from16 v29, v6

    .line 100
    invoke-direct/range {v24 .. v29}, Lcom/google/android/gms/internal/ads/zzarf;-><init>([J[II[J[I)V

    return-object v0

    .line 69
    :cond_22
    :goto_18
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzi:[J

    .line 70
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    const/16 v20, 0x0

    aget-wide v2, v1, v20

    cmp-long v1, v2, v18

    if-nez v1, :cond_24

    const/4 v1, 0x0

    :goto_19
    array-length v2, v13

    if-ge v1, v2, :cond_23

    .line 97
    aget-wide v2, v13, v1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzj:[J

    aget-wide v8, v4, v20

    sub-long v14, v2, v8

    const-wide/32 v16, 0xf4240

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzc:J

    move-wide/from16 v18, v2

    invoke-static/range {v14 .. v19}, Lcom/google/android/gms/internal/ads/zzave;->zzj(JJJ)J

    move-result-wide v2

    aput-wide v2, v13, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v20, 0x0

    goto :goto_19

    :cond_23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzarf;

    move-object/from16 v24, v0

    move-object/from16 v25, v5

    move-object/from16 v26, v7

    move-object/from16 v28, v13

    move-object/from16 v29, v6

    .line 98
    invoke-direct/range {v24 .. v29}, Lcom/google/android/gms/internal/ads/zzarf;-><init>([J[II[J[I)V

    return-object v0

    :cond_24
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzb:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    const/4 v1, 0x1

    goto :goto_1a

    :cond_25
    const/4 v1, 0x0

    :goto_1a
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_1b
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzi:[J

    .line 71
    array-length v10, v9

    const-wide/16 v11, -0x1

    if-ge v2, v10, :cond_28

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzj:[J

    .line 72
    aget-wide v14, v10, v2

    cmp-long v10, v14, v11

    if-eqz v10, :cond_27

    .line 73
    aget-wide v21, v9, v2

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzc:J

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzd:J

    move-wide/from16 v23, v9

    move-wide/from16 v25, v11

    invoke-static/range {v21 .. v26}, Lcom/google/android/gms/internal/ads/zzave;->zzj(JJJ)J

    move-result-wide v9

    const/4 v11, 0x1

    .line 74
    invoke-static {v13, v14, v15, v11, v11}, Lcom/google/android/gms/internal/ads/zzave;->zzi([JJZZ)I

    move-result v12

    add-long/2addr v14, v9

    const/4 v9, 0x0

    .line 75
    invoke-static {v13, v14, v15, v1, v9}, Lcom/google/android/gms/internal/ads/zzave;->zzi([JJZZ)I

    move-result v10

    sub-int v9, v10, v12

    add-int/2addr v3, v9

    if-eq v4, v12, :cond_26

    const/4 v4, 0x1

    goto :goto_1c

    :cond_26
    const/4 v4, 0x0

    :goto_1c
    or-int/2addr v4, v8

    move v8, v4

    move v4, v10

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_28
    move/from16 v2, v30

    if-eq v3, v2, :cond_29

    const/4 v2, 0x1

    goto :goto_1d

    :cond_29
    const/4 v2, 0x0

    :goto_1d
    or-int/2addr v2, v8

    if-eqz v2, :cond_2a

    .line 76
    new-array v4, v3, [J

    goto :goto_1e

    :cond_2a
    move-object v4, v5

    :goto_1e
    if-eqz v2, :cond_2b

    .line 77
    new-array v8, v3, [I

    :goto_1f
    const/4 v9, 0x1

    goto :goto_20

    :cond_2b
    move-object v8, v7

    goto :goto_1f

    :goto_20
    if-ne v9, v2, :cond_2c

    const/16 v27, 0x0

    :cond_2c
    if-eqz v2, :cond_2d

    .line 78
    new-array v9, v3, [I

    goto :goto_21

    :cond_2d
    move-object v9, v6

    .line 79
    :goto_21
    new-array v3, v3, [J

    move/from16 v24, v27

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_22
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzi:[J

    .line 80
    array-length v11, v15

    if-ge v10, v11, :cond_32

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzj:[J

    move-object/from16 v38, v6

    move-object/from16 v37, v7

    .line 81
    aget-wide v6, v11, v10

    .line 82
    aget-wide v11, v15, v10

    const-wide/16 v15, -0x1

    cmp-long v17, v6, v15

    if-eqz v17, :cond_31

    move-object/from16 v39, v9

    move/from16 v40, v10

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzc:J

    move-object/from16 v42, v3

    move-object/from16 v41, v4

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzd:J

    move-wide/from16 v25, v11

    move-wide/from16 v27, v9

    move-wide/from16 v29, v3

    .line 83
    invoke-static/range {v25 .. v30}, Lcom/google/android/gms/internal/ads/zzave;->zzj(JJJ)J

    move-result-wide v3

    const/4 v9, 0x1

    .line 84
    invoke-static {v13, v6, v7, v9, v9}, Lcom/google/android/gms/internal/ads/zzave;->zzi([JJZZ)I

    move-result v10

    add-long/2addr v3, v6

    const/4 v9, 0x0

    .line 85
    invoke-static {v13, v3, v4, v1, v9}, Lcom/google/android/gms/internal/ads/zzave;->zzi([JJZZ)I

    move-result v3

    if-eqz v2, :cond_2e

    sub-int v4, v3, v10

    move-object/from16 v9, v41

    .line 86
    invoke-static {v5, v10, v9, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v15, v37

    .line 87
    invoke-static {v15, v10, v8, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v44, v1

    move-object/from16 v45, v5

    move-object/from16 v1, v38

    move-object/from16 v5, v39

    .line 88
    invoke-static {v1, v10, v5, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_23

    :cond_2e
    move/from16 v44, v1

    move-object/from16 v45, v5

    move-object/from16 v15, v37

    move-object/from16 v1, v38

    move-object/from16 v5, v39

    move-object/from16 v9, v41

    :goto_23
    move/from16 v4, v24

    :goto_24
    if-ge v10, v3, :cond_30

    const-wide/32 v27, 0xf4240

    move-wide/from16 v46, v11

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzd:J

    move-wide/from16 v25, v18

    move-wide/from16 v29, v11

    .line 89
    invoke-static/range {v25 .. v30}, Lcom/google/android/gms/internal/ads/zzave;->zzj(JJJ)J

    move-result-wide v11

    .line 90
    aget-wide v16, v13, v10

    sub-long v21, v16, v6

    const-wide/32 v23, 0xf4240

    move-wide/from16 v48, v6

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzc:J

    move-wide/from16 v25, v6

    invoke-static/range {v21 .. v26}, Lcom/google/android/gms/internal/ads/zzave;->zzj(JJJ)J

    move-result-wide v6

    add-long/2addr v11, v6

    .line 91
    aput-wide v11, v42, v14

    if-eqz v2, :cond_2f

    .line 92
    aget v6, v8, v14

    if-le v6, v4, :cond_2f

    .line 93
    aget v4, v15, v10

    :cond_2f
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v11, v46

    move-wide/from16 v6, v48

    goto :goto_24

    :cond_30
    move-wide/from16 v46, v11

    move/from16 v24, v4

    goto :goto_25

    :cond_31
    move/from16 v44, v1

    move-object/from16 v42, v3

    move-object/from16 v45, v5

    move-object v5, v9

    move/from16 v40, v10

    move-wide/from16 v46, v11

    move-object/from16 v15, v37

    move-object/from16 v1, v38

    move-object v9, v4

    :goto_25
    const/4 v3, 0x0

    add-long v18, v18, v46

    add-int/lit8 v10, v40, 0x1

    move-object v6, v1

    move-object v4, v9

    move-object v7, v15

    move-object/from16 v3, v42

    move/from16 v1, v44

    const-wide/16 v11, -0x1

    move-object v9, v5

    move-object/from16 v5, v45

    goto/16 :goto_22

    :cond_32
    move-object/from16 v42, v3

    move-object v5, v9

    move-object v9, v4

    const/4 v0, 0x0

    const/16 v43, 0x0

    :goto_26
    array-length v1, v5

    if-ge v0, v1, :cond_33

    if-nez v43, :cond_34

    .line 94
    aget v1, v5, v0

    const/4 v2, 0x1

    and-int/lit8 v43, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_33
    if-eqz v43, :cond_35

    :cond_34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzarf;

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move-object/from16 v23, v8

    move-object/from16 v25, v42

    move-object/from16 v26, v5

    .line 96
    invoke-direct/range {v21 .. v26}, Lcom/google/android/gms/internal/ads/zzarf;-><init>([J[II[J[I)V

    return-object v0

    :cond_35
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanp;

    const-string v1, "The edited sample sequence does not contain a sync sample."

    .line 95
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    :goto_27
    move-object/from16 v45, v5

    move-object v1, v6

    move-object v15, v7

    .line 61
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzarc;->zzc:J

    const-wide/32 v4, 0xf4240

    .line 62
    invoke-static {v13, v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzave;->zzk([JJJ)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzarf;

    move-object/from16 v24, v0

    move-object/from16 v25, v45

    move-object/from16 v26, v15

    move-object/from16 v28, v13

    move-object/from16 v29, v1

    .line 63
    invoke-direct/range {v24 .. v29}, Lcom/google/android/gms/internal/ads/zzarf;-><init>([J[II[J[I)V

    return-object v0

    .line 3
    :cond_37
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanp;

    const-string v1, "Track has no sample table size information"

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_28
    nop

    goto :goto_28
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzaqj;Z)Lcom/google/android/gms/internal/ads/zzaru;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzd()I

    move-result v1

    if-lt v1, p1, :cond_7

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzg()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v3

    sget v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzaD:I

    if-ne v3, v4, :cond_6

    .line 7
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    add-int/2addr v1, v2

    const/16 v2, 0xc

    .line 8
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 9
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzg()I

    move-result v2

    if-ge v2, v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzg()I

    move-result v2

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v3

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v4

    sget v5, Lcom/google/android/gms/internal/ads/zzaqk;->zzaE:I

    if-ne v4, v5, :cond_4

    .line 14
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    add-int/2addr v2, v3

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    new-instance p1, Ljava/util/ArrayList;

    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzg()I

    move-result v1

    if-ge v1, v2, :cond_2

    .line 18
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaqx;->zza(Lcom/google/android/gms/internal/ads/zzaux;)Lcom/google/android/gms/internal/ads/zzart;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 20
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaru;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzaru;-><init>(Ljava/util/List;)V

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, -0x8

    .line 13
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    goto :goto_1

    :cond_5
    :goto_3
    return-object v0

    :cond_6
    add-int/lit8 v2, v2, -0x8

    .line 6
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method private static zzd(Lcom/google/android/gms/internal/ads/zzaux;I)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaux;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    const/16 v0, 0xc

    add-int/2addr p1, v0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaqr;->zzf(Lcom/google/android/gms/internal/ads/zzaux;)I

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzl()I

    move-result v2

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    :cond_0
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzm()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    :cond_1
    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaqr;->zzf(Lcom/google/android/gms/internal/ads/zzaux;)I

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzl()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "audio/vnd.dts.hd"

    .line 12
    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :sswitch_1
    const-string p0, "audio/vnd.dts"

    .line 13
    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :sswitch_2
    const-string v2, "audio/eac3"

    goto :goto_0

    :sswitch_3
    const-string v2, "audio/ac3"

    goto :goto_0

    :sswitch_4
    const-string p0, "audio/mpeg"

    .line 14
    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :sswitch_5
    const-string v2, "audio/mp4a-latm"

    goto :goto_0

    :sswitch_6
    const-string v2, "video/hevc"

    goto :goto_0

    :sswitch_7
    const-string v2, "video/avc"

    goto :goto_0

    :sswitch_8
    const-string v2, "video/mp4v-es"

    .line 15
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 17
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaqr;->zzf(Lcom/google/android/gms/internal/ads/zzaux;)I

    move-result p1

    .line 18
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzaux;->zzk([BII)V

    .line 20
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_8
        0x21 -> :sswitch_7
        0x23 -> :sswitch_6
        0x40 -> :sswitch_5
        0x66 -> :sswitch_5
        0x67 -> :sswitch_5
        0x68 -> :sswitch_5
        0x6b -> :sswitch_4
        0xa5 -> :sswitch_3
        0xa6 -> :sswitch_2
        0xa9 -> :sswitch_1
        0xaa -> :sswitch_0
        0xab -> :sswitch_0
        0xac -> :sswitch_1
    .end sparse-switch
.end method

.method private static zze(Lcom/google/android/gms/internal/ads/zzaux;IILcom/google/android/gms/internal/ads/zzaqn;I)I
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzg()I

    move-result v1

    move v2, v1

    :goto_0
    sub-int v3, v2, p1

    const/4 v4, 0x0

    move/from16 v5, p2

    if-ge v3, v5, :cond_e

    .line 2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v3

    const/4 v6, 0x1

    if-lez v3, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    const-string v8, "childAtomSize should be positive"

    .line 4
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzaup;->zzb(ZLjava/lang/Object;)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v7

    .line 6
    sget v8, Lcom/google/android/gms/internal/ads/zzaqk;->zzY:I

    if-ne v7, v8, :cond_d

    add-int/lit8 v7, v2, 0x8

    const/4 v8, 0x0

    move-object v10, v8

    move-object v11, v10

    const/4 v9, 0x0

    :goto_2
    sub-int v12, v7, v2

    if-ge v12, v3, :cond_8

    .line 7
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v12

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v13

    sget v14, Lcom/google/android/gms/internal/ads/zzaqk;->zzae:I

    if-ne v13, v14, :cond_1

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_6

    :cond_1
    sget v14, Lcom/google/android/gms/internal/ads/zzaqk;->zzZ:I

    if-ne v13, v14, :cond_3

    const/4 v9, 0x4

    .line 11
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v9

    sget v13, Lcom/google/android/gms/internal/ads/zzaqr;->zzg:I

    if-ne v9, v13, :cond_2

    const/4 v9, 0x1

    goto :goto_6

    :cond_2
    const/4 v9, 0x0

    goto :goto_6

    :cond_3
    sget v14, Lcom/google/android/gms/internal/ads/zzaqk;->zzaa:I

    if-ne v13, v14, :cond_7

    add-int/lit8 v10, v7, 0x8

    :goto_3
    sub-int v13, v10, v7

    if-ge v13, v12, :cond_6

    .line 13
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v13

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v14

    sget v15, Lcom/google/android/gms/internal/ads/zzaqk;->zzab:I

    if-ne v14, v15, :cond_5

    const/4 v10, 0x6

    .line 16
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzl()I

    move-result v10

    if-ne v10, v6, :cond_4

    const/4 v10, 0x1

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    .line 18
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzl()I

    move-result v13

    const/16 v14, 0x10

    new-array v15, v14, [B

    .line 19
    invoke-virtual {v0, v15, v4, v14}, Lcom/google/android/gms/internal/ads/zzaux;->zzk([BII)V

    new-instance v14, Lcom/google/android/gms/internal/ads/zzard;

    .line 20
    invoke-direct {v14, v10, v13, v15}, Lcom/google/android/gms/internal/ads/zzard;-><init>(ZI[B)V

    goto :goto_5

    :cond_5
    add-int/2addr v10, v13

    goto :goto_3

    :cond_6
    move-object v14, v8

    :goto_5
    move-object v10, v14

    :cond_7
    :goto_6
    add-int/2addr v7, v12

    goto :goto_2

    :cond_8
    if-eqz v9, :cond_b

    if-eqz v11, :cond_9

    const/4 v7, 0x1

    goto :goto_7

    :cond_9
    const/4 v7, 0x0

    :goto_7
    const-string v8, "frma atom is mandatory"

    .line 21
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzaup;->zzb(ZLjava/lang/Object;)V

    if-eqz v10, :cond_a

    const/4 v4, 0x1

    :cond_a
    const-string v6, "schi->tenc atom is mandatory"

    .line 22
    invoke-static {v4, v6}, Lcom/google/android/gms/internal/ads/zzaup;->zzb(ZLjava/lang/Object;)V

    .line 23
    invoke-static {v11, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    :cond_b
    if-nez v8, :cond_c

    goto :goto_8

    :cond_c
    move-object/from16 v6, p3

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzaqn;->zza:[Lcom/google/android/gms/internal/ads/zzard;

    .line 24
    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzard;

    aput-object v1, v0, p4

    .line 25
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_d
    :goto_8
    move-object/from16 v6, p3

    add-int/2addr v2, v3

    goto/16 :goto_0

    :cond_e
    return v4
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zzaux;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzl()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzl()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method
