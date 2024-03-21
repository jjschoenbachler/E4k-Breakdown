.class final Lcom/google/android/gms/internal/ads/zzud;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzamn;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zzc:I


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzamn;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzud;->zzc:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzud;->zza:Lcom/google/android/gms/internal/ads/zzamn;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzud;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zznv;J)Lcom/google/android/gms/internal/ads/zznj;
    .locals 18
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

    const-wide/32 v7, 0x1b8a0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzud;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    .line 2
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzud;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v6

    move-object/from16 v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zznp;

    const/4 v8, 0x0

    .line 3
    invoke-virtual {v7, v6, v8, v5, v8}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzud;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v6

    const-wide/16 v7, -0x1

    move-wide v11, v7

    move-wide v13, v11

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v15

    const/16 v9, 0xbc

    if-lt v15, v9, :cond_5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v9

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v10

    .line 4
    invoke-static {v9, v10, v6}, Lcom/google/android/gms/internal/ads/zzup;->zza([BII)I

    move-result v9

    add-int/lit16 v10, v9, 0xbc

    if-le v10, v6, :cond_0

    goto :goto_2

    :cond_0
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzud;->zzc:I

    .line 5
    invoke-static {v5, v9, v11}, Lcom/google/android/gms/internal/ads/zzup;->zzb(Lcom/google/android/gms/internal/ads/zzamf;II)J

    move-result-wide v11

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v17, v11, v15

    if-eqz v17, :cond_4

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzud;->zza:Lcom/google/android/gms/internal/ads/zzamn;

    .line 6
    invoke-virtual {v15, v11, v12}, Lcom/google/android/gms/internal/ads/zzamn;->zze(J)J

    move-result-wide v11

    cmp-long v15, v11, p2

    if-lez v15, :cond_2

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v7, v15

    if-nez v1, :cond_1

    invoke-static {v11, v12, v3, v4}, Lcom/google/android/gms/internal/ads/zznj;->zzd(JJ)Lcom/google/android/gms/internal/ads/zznj;

    move-result-object v1

    goto :goto_3

    :cond_1
    const/4 v1, 0x0

    add-long/2addr v3, v13

    :goto_1
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zznj;->zzf(J)Lcom/google/android/gms/internal/ads/zznj;

    move-result-object v1

    goto :goto_3

    :cond_2
    const-wide/32 v7, 0x186a0

    add-long/2addr v7, v11

    cmp-long v13, v7, p2

    if-lez v13, :cond_3

    int-to-long v1, v9

    add-long/2addr v3, v1

    goto :goto_1

    :cond_3
    int-to-long v7, v9

    move-wide v13, v7

    move-wide v7, v11

    .line 7
    :cond_4
    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    int-to-long v11, v10

    goto :goto_0

    :cond_5
    :goto_2
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v7, v1

    if-eqz v5, :cond_6

    add-long/2addr v3, v11

    .line 4
    invoke-static {v7, v8, v3, v4}, Lcom/google/android/gms/internal/ads/zznj;->zze(JJ)Lcom/google/android/gms/internal/ads/zznj;

    move-result-object v1

    goto :goto_3

    :cond_6
    sget-object v1, Lcom/google/android/gms/internal/ads/zznj;->zza:Lcom/google/android/gms/internal/ads/zznj;

    :goto_3
    return-object v1
.end method

.method public final zzb()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzud;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzamq;->zzf:[B

    .line 2
    array-length v2, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzb([BI)V

    return-void
.end method
