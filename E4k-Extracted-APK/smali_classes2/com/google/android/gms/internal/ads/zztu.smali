.class final Lcom/google/android/gms/internal/ads/zztu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzamn;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzamf;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzamn;Lcom/google/android/gms/internal/ads/zztt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztu;->zza:Lcom/google/android/gms/internal/ads/zzamn;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztu;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zznv;J)Lcom/google/android/gms/internal/ads/zznj;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v3

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzo()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v7, 0x4e20

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zztu;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    .line 2
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zztu;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v6

    move-object/from16 v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zznp;

    const/4 v8, 0x0

    .line 3
    invoke-virtual {v7, v6, v8, v5, v8}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zztu;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v6, -0x1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v9, v7

    const/4 v11, -0x1

    :goto_0
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v12

    const/4 v13, 0x4

    if-lt v12, v13, :cond_c

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v12

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v14

    .line 4
    invoke-static {v12, v14}, Lcom/google/android/gms/internal/ads/zztv;->zzh([BI)I

    move-result v12

    const/4 v14, 0x1

    const/16 v15, 0x1ba

    if-eq v12, v15, :cond_0

    .line 5
    invoke-virtual {v5, v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v5, v13}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 7
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zztw;->zze(Lcom/google/android/gms/internal/ads/zzamf;)J

    move-result-wide v14

    cmp-long v6, v14, v7

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zztu;->zza:Lcom/google/android/gms/internal/ads/zzamn;

    .line 8
    invoke-virtual {v6, v14, v15}, Lcom/google/android/gms/internal/ads/zzamn;->zze(J)J

    move-result-wide v14

    cmp-long v6, v14, p2

    if-lez v6, :cond_2

    cmp-long v1, v9, v7

    if-nez v1, :cond_1

    invoke-static {v14, v15, v3, v4}, Lcom/google/android/gms/internal/ads/zznj;->zzd(JJ)Lcom/google/android/gms/internal/ads/zznj;

    move-result-object v1

    goto/16 :goto_4

    :cond_1
    int-to-long v1, v11

    :goto_1
    add-long/2addr v3, v1

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zznj;->zzf(J)Lcom/google/android/gms/internal/ads/zznj;

    move-result-object v1

    goto/16 :goto_4

    :cond_2
    const-wide/32 v9, 0x186a0

    add-long/2addr v9, v14

    cmp-long v6, v9, p2

    if-lez v6, :cond_3

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v1

    int-to-long v1, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v6

    move v11, v6

    move-wide v9, v14

    :cond_4
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v12

    const/16 v14, 0xa

    if-ge v12, v14, :cond_5

    .line 9
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto/16 :goto_3

    :cond_5
    const/16 v12, 0x9

    .line 10
    invoke-virtual {v5, v12}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 11
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v12

    and-int/lit8 v12, v12, 0x7

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v14

    if-ge v14, v12, :cond_6

    .line 12
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto/16 :goto_3

    .line 13
    :cond_6
    invoke-virtual {v5, v12}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v12

    if-ge v12, v13, :cond_7

    .line 14
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto :goto_3

    :cond_7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v12

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v14

    .line 15
    invoke-static {v12, v14}, Lcom/google/android/gms/internal/ads/zztv;->zzh([BI)I

    move-result v12

    const/16 v14, 0x1bb

    if-eq v12, v14, :cond_8

    goto :goto_2

    .line 16
    :cond_8
    invoke-virtual {v5, v13}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 17
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v12

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v14

    if-ge v14, v12, :cond_9

    .line 18
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto :goto_3

    .line 19
    :cond_9
    invoke-virtual {v5, v12}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 15
    :goto_2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v12

    if-lt v12, v13, :cond_b

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v12

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v14

    .line 20
    invoke-static {v12, v14}, Lcom/google/android/gms/internal/ads/zztv;->zzh([BI)I

    move-result v12

    const/16 v14, 0x1ba

    if-eq v12, v14, :cond_b

    const/16 v15, 0x1b9

    if-eq v12, v15, :cond_b

    ushr-int/lit8 v12, v12, 0x8

    const/4 v15, 0x1

    if-ne v12, v15, :cond_b

    .line 21
    invoke-virtual {v5, v13}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_a

    .line 25
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto :goto_3

    .line 22
    :cond_a
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v12

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v13

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v16

    add-int v12, v16, v12

    .line 23
    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 24
    invoke-virtual {v5, v12}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    const/4 v13, 0x4

    goto :goto_2

    .line 9
    :cond_b
    :goto_3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v6

    goto/16 :goto_0

    :cond_c
    cmp-long v1, v9, v7

    if-eqz v1, :cond_d

    int-to-long v1, v6

    add-long/2addr v3, v1

    .line 19
    invoke-static {v9, v10, v3, v4}, Lcom/google/android/gms/internal/ads/zznj;->zze(JJ)Lcom/google/android/gms/internal/ads/zznj;

    move-result-object v1

    goto :goto_4

    :cond_d
    sget-object v1, Lcom/google/android/gms/internal/ads/zznj;->zza:Lcom/google/android/gms/internal/ads/zznj;

    :goto_4
    return-object v1
.end method

.method public final zzb()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztu;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzamq;->zzf:[B

    .line 2
    array-length v2, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzb([BI)V

    return-void
.end method
