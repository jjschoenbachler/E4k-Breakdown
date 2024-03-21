.class public final Lcom/google/android/gms/internal/ads/zzje;
.super Lcom/google/android/gms/internal/ads/zzjg;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final zzd:Lcom/google/android/gms/internal/ads/zzki;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Lcom/google/android/gms/internal/ads/zzjc;",
            ">;"
        }
    .end annotation
.end field

.field private final zzf:Lcom/google/android/gms/internal/ads/zzaku;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzq;[IILcom/google/android/gms/internal/ads/zzki;JJJFFLjava/util/List;Lcom/google/android/gms/internal/ads/zzaku;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzq;",
            "[II",
            "Lcom/google/android/gms/internal/ads/zzki;",
            "JJJFF",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzjc;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzaku;",
            ")V"
        }
    .end annotation

    const/4 p3, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzjg;-><init>(Lcom/google/android/gms/internal/ads/zzq;[II)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzje;->zzd:Lcom/google/android/gms/internal/ads/zzki;

    .line 2
    invoke-static {p13}, Lcom/google/android/gms/internal/ads/zzfoj;->zzp(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzje;->zze:Lcom/google/android/gms/internal/ads/zzfoj;

    iput-object p14, p0, Lcom/google/android/gms/internal/ads/zzje;->zzf:Lcom/google/android/gms/internal/ads/zzaku;

    return-void
.end method

.method static synthetic zza([Lcom/google/android/gms/internal/ads/zzju;)Lcom/google/android/gms/internal/ads/zzfoj;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/internal/ads/zzju;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Lcom/google/android/gms/internal/ads/zzjc;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v3, v6, :cond_1

    .line 2
    aget-object v6, p0, v3

    if-eqz v6, :cond_0

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzju;->zzb:[I

    array-length v6, v6

    if-le v6, v7, :cond_0

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzu()Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/zzjc;

    .line 5
    invoke-direct {v7, v4, v5, v4, v5}, Lcom/google/android/gms/internal/ads/zzjc;-><init>(JJ)V

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzfog;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfog;

    .line 6
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 3
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v3, v6, [[J

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_4

    .line 7
    aget-object v9, p0, v8

    if-nez v9, :cond_2

    new-array v9, v2, [J

    .line 8
    aput-object v9, v3, v8

    goto :goto_4

    :cond_2
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzju;->zzb:[I

    .line 9
    array-length v10, v10

    new-array v10, v10, [J

    aput-object v10, v3, v8

    const/4 v10, 0x0

    :goto_3
    iget-object v11, v9, Lcom/google/android/gms/internal/ads/zzju;->zzb:[I

    .line 10
    array-length v12, v11

    if-ge v10, v12, :cond_3

    .line 11
    aget-object v12, v3, v8

    iget-object v13, v9, Lcom/google/android/gms/internal/ads/zzju;->zza:Lcom/google/android/gms/internal/ads/zzq;

    aget v11, v11, v10

    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v11

    iget v11, v11, Lcom/google/android/gms/internal/ads/zzafv;->zzh:I

    int-to-long v13, v11

    aput-wide v13, v12, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 12
    :cond_3
    aget-object v9, v3, v8

    invoke-static {v9}, Ljava/util/Arrays;->sort([J)V

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    new-array v0, v6, [I

    new-array v8, v6, [J

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v6, :cond_6

    .line 13
    aget-object v10, v3, v9

    array-length v11, v10

    if-nez v11, :cond_5

    move-wide v11, v4

    goto :goto_6

    :cond_5
    aget-wide v11, v10, v2

    :goto_6
    aput-wide v11, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 14
    :cond_6
    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/zzje;->zzf(Ljava/util/List;[J)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpw;->zzb()Lcom/google/android/gms/internal/ads/zzfpw;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfpr;->zzc(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfpp;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzfpp;->zzb(I)Lcom/google/android/gms/internal/ads/zzfpn;

    move-result-object v4

    .line 15
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfpn;->zza()Lcom/google/android/gms/internal/ads/zzfoy;

    move-result-object v4

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v6, :cond_c

    .line 16
    aget-object v9, v3, v5

    array-length v9, v9

    if-gt v9, v7, :cond_7

    goto :goto_c

    :cond_7
    new-array v9, v9, [D

    const/4 v10, 0x0

    .line 17
    :goto_8
    aget-object v11, v3, v5

    array-length v12, v11

    const-wide/16 v13, 0x0

    if-ge v10, v12, :cond_9

    .line 18
    aget-wide v6, v11, v10

    const-wide/16 v11, -0x1

    cmp-long v15, v6, v11

    if-nez v15, :cond_8

    goto :goto_9

    :cond_8
    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    :goto_9
    aput-wide v13, v9, v10

    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    goto :goto_8

    :cond_9
    array-length v6, v9

    add-int/lit8 v6, v6, -0x1

    .line 19
    aget-wide v6, v9, v6

    aget-wide v10, v9, v2

    sub-double/2addr v6, v10

    const/4 v10, 0x0

    :goto_a
    array-length v11, v9

    add-int/lit8 v11, v11, -0x1

    if-ge v10, v11, :cond_b

    add-int/lit8 v11, v10, 0x1

    .line 20
    aget-wide v15, v9, v10

    aget-wide v17, v9, v11

    add-double v15, v15, v17

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    mul-double v15, v15, v17

    cmpl-double v10, v6, v13

    if-nez v10, :cond_a

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    goto :goto_b

    .line 21
    :cond_a
    aget-wide v17, v9, v2

    sub-double v15, v15, v17

    div-double/2addr v15, v6

    :goto_b
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, v10, v12}, Lcom/google/android/gms/internal/ads/zzfpj;->zzh(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v10, v11

    goto :goto_a

    :cond_b
    :goto_c
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    goto :goto_7

    .line 22
    :cond_c
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzfpj;->zzt()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfoj;->zzp(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v4

    const/4 v5, 0x0

    .line 23
    :goto_d
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfoj;->size()I

    move-result v6

    if-ge v5, v6, :cond_d

    .line 24
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzfoj;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 25
    aget v7, v0, v6

    const/4 v9, 0x1

    add-int/2addr v7, v9

    aput v7, v0, v6

    .line 26
    aget-object v10, v3, v6

    aget-wide v11, v10, v7

    aput-wide v11, v8, v6

    .line 27
    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/zzje;->zzf(Ljava/util/List;[J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_d
    const/4 v0, 0x0

    const/4 v3, 0x2

    :goto_e
    if-ge v0, v3, :cond_f

    .line 28
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 29
    aget-wide v4, v8, v0

    add-long/2addr v4, v4

    aput-wide v4, v8, v0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 30
    :cond_f
    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/zzje;->zzf(Ljava/util/List;[J)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzu()Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object v0

    .line 31
    :goto_f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_11

    .line 32
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfog;

    if-nez v3, :cond_10

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v3

    goto :goto_10

    :cond_10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfog;->zzf()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v3

    :goto_10
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfog;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfog;

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 34
    :cond_11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfog;->zzf()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v0

    return-object v0
.end method

.method private static zzf(Ljava/util/List;[J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzfog<",
            "Lcom/google/android/gms/internal/ads/zzjc;",
            ">;>;[J)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v2, v1

    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v1, v4, :cond_0

    .line 1
    aget-wide v4, p1, v1

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfog;

    if-eqz v1, :cond_1

    new-instance v4, Lcom/google/android/gms/internal/ads/zzjc;

    .line 4
    aget-wide v5, p1, v0

    invoke-direct {v4, v2, v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzjc;-><init>(JJ)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzfog;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfog;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
