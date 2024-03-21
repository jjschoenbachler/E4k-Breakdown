.class public final Lcom/google/android/gms/internal/ads/zzatm;
.super Lcom/google/android/gms/internal/ads/zzatq;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zza:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzatl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzatm;-><init>(Lcom/google/android/gms/internal/ads/zzatr;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzatr;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatq;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzatl;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzatl;-><init>()V

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatm;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method protected static zza(IZ)Z
    .locals 3

    const/4 v0, 0x3

    and-int/2addr p0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method private static zzh(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    sub-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method protected final zzb([Lcom/google/android/gms/internal/ads/zzans;[Lcom/google/android/gms/internal/ads/zzatg;[[[I)[Lcom/google/android/gms/internal/ads/zzatk;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    const/4 v2, 0x2

    .line 1
    new-array v3, v2, [Lcom/google/android/gms/internal/ads/zzatk;

    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzatm;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzatl;

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/4 v11, 0x1

    if-ge v7, v2, :cond_11

    .line 2
    aget-object v12, p1, v7

    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzans;->zza()I

    move-result v12

    if-ne v12, v2, :cond_10

    if-nez v8, :cond_f

    .line 3
    aget-object v8, p1, v7

    aget-object v8, p2, v7

    aget-object v12, p3, v7

    iget v13, v5, Lcom/google/android/gms/internal/ads/zzatl;->zzd:I

    iget v13, v5, Lcom/google/android/gms/internal/ads/zzatl;->zze:I

    iget v13, v5, Lcom/google/android/gms/internal/ads/zzatl;->zzf:I

    iget-boolean v13, v5, Lcom/google/android/gms/internal/ads/zzatl;->zzc:Z

    iget-boolean v13, v5, Lcom/google/android/gms/internal/ads/zzatl;->zzb:Z

    iget v13, v5, Lcom/google/android/gms/internal/ads/zzatl;->zzi:I

    iget v13, v5, Lcom/google/android/gms/internal/ads/zzatl;->zzj:I

    iget-boolean v13, v5, Lcom/google/android/gms/internal/ads/zzatl;->zzk:Z

    iget-boolean v13, v5, Lcom/google/android/gms/internal/ads/zzatl;->zzg:Z

    iget-boolean v13, v5, Lcom/google/android/gms/internal/ads/zzatl;->zzh:Z

    const/4 v2, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    .line 4
    :goto_1
    iget v9, v8, Lcom/google/android/gms/internal/ads/zzatg;->zzb:I

    if-ge v13, v9, :cond_c

    .line 5
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zzatg;->zza(I)Lcom/google/android/gms/internal/ads/zzatf;

    move-result-object v9

    new-instance v6, Ljava/util/ArrayList;

    .line 6
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzatf;->zza:I

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    .line 7
    :goto_2
    iget v11, v9, Lcom/google/android/gms/internal/ads/zzatf;->zza:I

    if-gtz v10, :cond_0

    .line 8
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 9
    :cond_0
    aget-object v10, v12, v13

    move/from16 v21, v2

    move-object/from16 v20, v8

    move/from16 v4, v16

    move/from16 v8, v17

    const/4 v2, 0x0

    move/from16 v26, v15

    move-object v15, v14

    move/from16 v14, v26

    .line 10
    :goto_3
    iget v11, v9, Lcom/google/android/gms/internal/ads/zzatf;->zza:I

    if-gtz v2, :cond_b

    .line 11
    aget v11, v10, v2

    move-object/from16 v22, v12

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zzatm;->zza(IZ)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 12
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/ads/zzatf;->zza(I)Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v11

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    iget v12, v11, Lcom/google/android/gms/internal/ads/zzanm;->zzj:I

    iget v12, v11, Lcom/google/android/gms/internal/ads/zzanm;->zzk:I

    iget v12, v11, Lcom/google/android/gms/internal/ads/zzanm;->zzb:I

    move-object/from16 v23, v6

    const/4 v6, -0x1

    const/4 v6, 0x1

    goto :goto_4

    :cond_1
    move-object/from16 v23, v6

    const/4 v6, 0x0

    :goto_4
    const/4 v12, 0x1

    if-eq v12, v6, :cond_2

    move-object/from16 v24, v9

    const/4 v12, 0x1

    goto :goto_5

    :cond_2
    move-object/from16 v24, v9

    const/4 v12, 0x2

    .line 14
    :goto_5
    aget v9, v10, v2

    move-object/from16 v25, v10

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzatm;->zza(IZ)Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit16 v12, v12, 0x3e8

    :cond_3
    if-le v12, v14, :cond_4

    const/4 v10, 0x1

    goto :goto_6

    :cond_4
    const/4 v10, 0x0

    :goto_6
    if-ne v12, v14, :cond_8

    .line 15
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzanm;->zzk()I

    move-result v10

    if-eq v10, v8, :cond_5

    .line 16
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzanm;->zzk()I

    move-result v10

    invoke-static {v10, v8}, Lcom/google/android/gms/internal/ads/zzatm;->zzh(II)I

    move-result v10

    goto :goto_7

    .line 17
    :cond_5
    iget v10, v11, Lcom/google/android/gms/internal/ads/zzanm;->zzb:I

    invoke-static {v10, v4}, Lcom/google/android/gms/internal/ads/zzatm;->zzh(II)I

    move-result v10

    :goto_7
    if-eqz v9, :cond_6

    if-eqz v6, :cond_6

    if-lez v10, :cond_7

    goto :goto_8

    :cond_6
    if-gez v10, :cond_7

    :goto_8
    const/4 v10, 0x1

    goto :goto_9

    :cond_7
    const/4 v10, 0x0

    :cond_8
    :goto_9
    if-eqz v10, :cond_a

    .line 18
    iget v4, v11, Lcom/google/android/gms/internal/ads/zzanm;->zzb:I

    .line 19
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzanm;->zzk()I

    move-result v8

    move/from16 v21, v2

    move v14, v12

    move-object/from16 v15, v24

    goto :goto_a

    :cond_9
    move-object/from16 v23, v6

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    :cond_a
    :goto_a
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v12, v22

    move-object/from16 v6, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    goto/16 :goto_3

    :cond_b
    move-object/from16 v22, v12

    add-int/lit8 v13, v13, 0x1

    move/from16 v16, v4

    move/from16 v17, v8

    move-object/from16 v8, v20

    move/from16 v2, v21

    move-object/from16 v4, p0

    const/4 v11, 0x1

    move-object/from16 v26, v15

    move v15, v14

    move-object/from16 v14, v26

    goto/16 :goto_1

    :cond_c
    if-nez v14, :cond_d

    const/16 v18, 0x0

    goto :goto_b

    .line 21
    :cond_d
    new-instance v9, Lcom/google/android/gms/internal/ads/zzatn;

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 20
    invoke-direct {v9, v14, v2, v4, v6}, Lcom/google/android/gms/internal/ads/zzatn;-><init>(Lcom/google/android/gms/internal/ads/zzatf;IILjava/lang/Object;)V

    move-object/from16 v18, v9

    .line 3
    :goto_b
    aput-object v18, v3, v7

    if-eqz v18, :cond_e

    const/16 v19, 0x1

    goto :goto_c

    :cond_e
    const/16 v19, 0x0

    goto :goto_c

    :cond_f
    move/from16 v19, v8

    .line 21
    :goto_c
    aget-object v2, p2, v7

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzatg;->zzb:I

    move/from16 v8, v19

    :cond_10
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x2

    move-object/from16 v4, p0

    goto/16 :goto_0

    :cond_11
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_d
    const/4 v6, 0x2

    if-ge v2, v6, :cond_1b

    .line 22
    aget-object v7, p1, v2

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzans;->zza()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_13

    :cond_12
    const/4 v0, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_12

    :cond_13
    if-nez v4, :cond_12

    .line 23
    aget-object v4, p2, v2

    aget-object v7, p3, v2

    iget-object v8, v5, Lcom/google/android/gms/internal/ads/zzatl;->zza:Ljava/lang/String;

    iget-boolean v8, v5, Lcom/google/android/gms/internal/ads/zzatl;->zzh:Z

    iget-boolean v8, v5, Lcom/google/android/gms/internal/ads/zzatl;->zzb:Z

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 24
    :goto_e
    iget v12, v4, Lcom/google/android/gms/internal/ads/zzatg;->zzb:I

    if-ge v8, v12, :cond_18

    .line 25
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzatg;->zza(I)Lcom/google/android/gms/internal/ads/zzatf;

    move-result-object v12

    .line 26
    aget-object v13, v7, v8

    move v14, v11

    move v11, v10

    move v10, v9

    const/4 v9, 0x0

    .line 27
    :goto_f
    iget v6, v12, Lcom/google/android/gms/internal/ads/zzatf;->zza:I

    if-gtz v9, :cond_17

    .line 28
    aget v6, v13, v9

    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzatm;->zza(IZ)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 29
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzatf;->zza(I)Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v6

    .line 30
    aget v1, v13, v9

    .line 31
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzanm;->zzx:I

    and-int/2addr v6, v0

    if-eq v0, v6, :cond_14

    const/4 v0, 0x0

    const/4 v6, 0x1

    goto :goto_10

    :cond_14
    const/4 v0, 0x0

    const/4 v6, 0x2

    :goto_10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzatm;->zza(IZ)Z

    move-result v1

    if-eqz v1, :cond_15

    add-int/lit16 v6, v6, 0x3e8

    :cond_15
    if-le v6, v11, :cond_16

    move v11, v6

    move v14, v8

    move v10, v9

    :cond_16
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_17
    add-int/lit8 v8, v8, 0x1

    move v9, v10

    move v10, v11

    move v11, v14

    const/4 v6, 0x2

    goto :goto_e

    :cond_18
    const/4 v0, -0x1

    if-ne v11, v0, :cond_19

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v18, 0x0

    goto :goto_11

    .line 32
    :cond_19
    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/zzatg;->zza(I)Lcom/google/android/gms/internal/ads/zzatf;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/internal/ads/zzatn;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 33
    invoke-direct {v4, v1, v9, v6, v7}, Lcom/google/android/gms/internal/ads/zzatn;-><init>(Lcom/google/android/gms/internal/ads/zzatf;IILjava/lang/Object;)V

    move-object/from16 v18, v4

    .line 23
    :goto_11
    aput-object v18, v3, v2

    if-eqz v18, :cond_1a

    const/4 v4, 0x1

    goto :goto_12

    :cond_1a
    const/4 v4, 0x0

    :goto_12
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    :cond_1b
    return-object v3
.end method
