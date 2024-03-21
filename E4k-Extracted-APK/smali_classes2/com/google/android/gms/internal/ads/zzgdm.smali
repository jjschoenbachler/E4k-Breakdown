.class final Lcom/google/android/gms/internal/ads/zzgdm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method static zza([B[B)[B
    .locals 54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/ads/zzgdm;->zzc([BII)J

    move-result-wide v3

    const/4 v5, 0x2

    const/4 v6, 0x3

    .line 2
    invoke-static {v0, v6, v5}, Lcom/google/android/gms/internal/ads/zzgdm;->zzc([BII)J

    move-result-wide v7

    const-wide/32 v9, 0x3ffff03

    and-long/2addr v7, v9

    const/4 v9, 0x4

    const/4 v10, 0x6

    .line 3
    invoke-static {v0, v10, v9}, Lcom/google/android/gms/internal/ads/zzgdm;->zzc([BII)J

    move-result-wide v11

    const-wide/32 v13, 0x3ffc0ff

    and-long/2addr v11, v13

    const/16 v13, 0x9

    .line 4
    invoke-static {v0, v13, v10}, Lcom/google/android/gms/internal/ads/zzgdm;->zzc([BII)J

    move-result-wide v14

    const-wide/32 v16, 0x3f03fff

    and-long v14, v14, v16

    const/16 v13, 0x8

    const/16 v9, 0xc

    .line 5
    invoke-static {v0, v9, v13}, Lcom/google/android/gms/internal/ads/zzgdm;->zzc([BII)J

    move-result-wide v16

    const-wide/32 v19, 0xfffff

    and-long v16, v16, v19

    const-wide/16 v19, 0x5

    mul-long v21, v7, v19

    mul-long v23, v11, v19

    mul-long v25, v14, v19

    mul-long v27, v16, v19

    const/16 v9, 0x11

    new-array v9, v9, [B

    const-wide/16 v29, 0x0

    move-wide/from16 v31, v29

    move-wide/from16 v33, v31

    move-wide/from16 v35, v33

    move-wide/from16 v37, v35

    const/4 v13, 0x0

    .line 6
    :goto_0
    array-length v10, v1

    const/16 v5, 0x10

    const-wide/32 v41, 0x3ffffff

    const/16 v43, 0x1a

    if-ge v13, v10, :cond_1

    sub-int/2addr v10, v13

    .line 7
    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 8
    invoke-static {v1, v13, v9, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v44, 0x1

    .line 9
    aput-byte v44, v9, v10

    if-eq v10, v5, :cond_0

    add-int/lit8 v10, v10, 0x1

    const/16 v5, 0x11

    .line 10
    invoke-static {v9, v10, v5, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 11
    :cond_0
    invoke-static {v9, v2, v2}, Lcom/google/android/gms/internal/ads/zzgdm;->zzc([BII)J

    move-result-wide v46

    add-long v37, v37, v46

    const/4 v5, 0x2

    .line 12
    invoke-static {v9, v6, v5}, Lcom/google/android/gms/internal/ads/zzgdm;->zzc([BII)J

    move-result-wide v46

    add-long v31, v31, v46

    const/4 v5, 0x4

    const/4 v10, 0x6

    .line 13
    invoke-static {v9, v10, v5}, Lcom/google/android/gms/internal/ads/zzgdm;->zzc([BII)J

    move-result-wide v39

    add-long v29, v29, v39

    const/16 v5, 0x9

    .line 14
    invoke-static {v9, v5, v10}, Lcom/google/android/gms/internal/ads/zzgdm;->zzc([BII)J

    move-result-wide v46

    add-long v33, v33, v46

    const/16 v5, 0x8

    const/16 v10, 0xc

    .line 15
    invoke-static {v9, v10, v5}, Lcom/google/android/gms/internal/ads/zzgdm;->zzc([BII)J

    move-result-wide v46

    const/16 v5, 0x10

    aget-byte v5, v9, v5

    shl-int/lit8 v5, v5, 0x18

    move-wide/from16 v48, v7

    int-to-long v6, v5

    or-long v6, v46, v6

    add-long v35, v35, v6

    mul-long v5, v37, v3

    mul-long v7, v31, v27

    add-long/2addr v5, v7

    mul-long v7, v29, v25

    add-long/2addr v5, v7

    mul-long v7, v33, v23

    add-long/2addr v5, v7

    mul-long v7, v35, v21

    add-long/2addr v5, v7

    mul-long v7, v37, v48

    mul-long v44, v31, v3

    add-long v7, v7, v44

    mul-long v44, v29, v27

    add-long v7, v7, v44

    mul-long v44, v33, v25

    add-long v7, v7, v44

    mul-long v44, v35, v23

    add-long v7, v7, v44

    shr-long v44, v5, v43

    add-long v7, v7, v44

    mul-long v44, v37, v11

    mul-long v46, v31, v48

    add-long v44, v44, v46

    mul-long v46, v29, v3

    add-long v44, v44, v46

    mul-long v46, v33, v27

    add-long v44, v44, v46

    mul-long v46, v35, v25

    add-long v44, v44, v46

    shr-long v46, v7, v43

    add-long v44, v44, v46

    and-long v46, v44, v41

    mul-long v50, v37, v14

    mul-long v52, v31, v11

    add-long v50, v50, v52

    mul-long v52, v29, v48

    add-long v50, v50, v52

    mul-long v52, v33, v3

    add-long v50, v50, v52

    mul-long v52, v35, v27

    add-long v50, v50, v52

    shr-long v44, v44, v43

    add-long v50, v50, v44

    and-long v44, v50, v41

    mul-long v37, v37, v16

    mul-long v31, v31, v14

    add-long v37, v37, v31

    mul-long v29, v29, v11

    add-long v37, v37, v29

    mul-long v33, v33, v48

    add-long v37, v37, v33

    mul-long v35, v35, v3

    add-long v37, v37, v35

    shr-long v29, v50, v43

    add-long v37, v37, v29

    and-long v35, v37, v41

    and-long v5, v5, v41

    shr-long v29, v37, v43

    mul-long v29, v29, v19

    add-long v5, v5, v29

    and-long v37, v5, v41

    and-long v7, v7, v41

    shr-long v5, v5, v43

    add-long v31, v7, v5

    add-int/lit8 v13, v13, 0x10

    move-wide/from16 v33, v44

    move-wide/from16 v29, v46

    move-wide/from16 v7, v48

    const/4 v5, 0x2

    const/4 v6, 0x3

    goto/16 :goto_0

    :cond_1
    shr-long v3, v31, v43

    add-long v29, v29, v3

    and-long v3, v29, v41

    shr-long v5, v29, v43

    add-long v33, v33, v5

    and-long v5, v33, v41

    shr-long v7, v33, v43

    add-long v35, v35, v7

    and-long v7, v35, v41

    shr-long v9, v35, v43

    mul-long v9, v9, v19

    add-long v37, v37, v9

    and-long v9, v37, v41

    and-long v11, v31, v41

    shr-long v13, v37, v43

    add-long/2addr v11, v13

    add-long v19, v9, v19

    shr-long v13, v19, v43

    add-long/2addr v13, v11

    shr-long v15, v13, v43

    add-long/2addr v15, v3

    shr-long v17, v15, v43

    add-long v17, v5, v17

    shr-long v21, v17, v43

    add-long v21, v7, v21

    const-wide/32 v23, -0x4000000

    add-long v21, v21, v23

    const/16 v1, 0x3f

    shr-long v23, v21, v1

    const-wide/16 v25, -0x1

    xor-long v25, v23, v25

    and-long v11, v11, v23

    and-long v13, v13, v41

    and-long v13, v13, v25

    or-long/2addr v11, v13

    and-long v3, v3, v23

    and-long v13, v15, v41

    and-long v13, v13, v25

    or-long/2addr v3, v13

    and-long v5, v5, v23

    and-long v13, v17, v41

    and-long v13, v13, v25

    or-long/2addr v5, v13

    and-long v9, v9, v23

    and-long v13, v19, v41

    and-long v13, v13, v25

    or-long/2addr v9, v13

    shl-long v13, v11, v43

    or-long/2addr v9, v13

    const-wide v13, 0xffffffffL

    and-long/2addr v9, v13

    const/16 v1, 0x10

    .line 16
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdm;->zzb([BI)J

    move-result-wide v15

    add-long/2addr v9, v15

    const/4 v1, 0x6

    shr-long/2addr v11, v1

    const/16 v1, 0x14

    shl-long v15, v3, v1

    or-long/2addr v11, v15

    and-long/2addr v11, v13

    .line 17
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdm;->zzb([BI)J

    move-result-wide v15

    add-long/2addr v11, v15

    const/16 v1, 0x20

    shr-long v15, v9, v1

    add-long/2addr v11, v15

    const/16 v15, 0xc

    shr-long/2addr v3, v15

    const/16 v15, 0xe

    shl-long v15, v5, v15

    or-long/2addr v3, v15

    and-long/2addr v3, v13

    const/16 v15, 0x18

    .line 18
    invoke-static {v0, v15}, Lcom/google/android/gms/internal/ads/zzgdm;->zzb([BI)J

    move-result-wide v15

    add-long/2addr v3, v15

    shr-long v15, v11, v1

    add-long/2addr v3, v15

    const/16 v15, 0x1c

    .line 19
    invoke-static {v0, v15}, Lcom/google/android/gms/internal/ads/zzgdm;->zzb([BI)J

    move-result-wide v15

    const/16 v0, 0x10

    new-array v0, v0, [B

    and-long/2addr v9, v13

    .line 20
    invoke-static {v0, v9, v10, v2}, Lcom/google/android/gms/internal/ads/zzgdm;->zzd([BJI)V

    and-long v9, v11, v13

    const/4 v2, 0x4

    .line 21
    invoke-static {v0, v9, v10, v2}, Lcom/google/android/gms/internal/ads/zzgdm;->zzd([BJI)V

    and-long v9, v3, v13

    const/16 v2, 0x8

    .line 22
    invoke-static {v0, v9, v10, v2}, Lcom/google/android/gms/internal/ads/zzgdm;->zzd([BJI)V

    const/16 v9, 0x12

    shr-long/2addr v5, v9

    and-long v7, v7, v23

    and-long v9, v21, v25

    or-long/2addr v7, v9

    shl-long/2addr v7, v2

    or-long/2addr v5, v7

    and-long/2addr v5, v13

    add-long/2addr v5, v15

    shr-long v1, v3, v1

    add-long/2addr v5, v1

    and-long v1, v5, v13

    const/16 v3, 0xc

    .line 23
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgdm;->zzd([BJI)V

    return-object v0
.end method

.method private static zzb([BI)J
    .locals 2

    .line 1
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method private static zzc([BII)J
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzgdm;->zzb([BI)J

    move-result-wide p0

    shr-long/2addr p0, p2

    const-wide/32 v0, 0x3ffffff

    and-long/2addr p0, v0

    return-wide p0
.end method

.method private static zzd([BJI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p3, v0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 1
    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    shr-long/2addr p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method
