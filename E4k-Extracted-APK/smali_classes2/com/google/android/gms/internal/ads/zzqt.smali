.class final Lcom/google/android/gms/internal/ads/zzqt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqs;


# instance fields
.field private final zza:[J

.field private final zzb:[J

.field private final zzc:J

.field private final zzd:J


# direct methods
.method private constructor <init>([J[JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zza:[J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzb:[J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzc:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzd:J

    return-void
.end method

.method public static zza(JJLcom/google/android/gms/internal/ads/zzon;Lcom/google/android/gms/internal/ads/zzamf;)Lcom/google/android/gms/internal/ads/zzqt;
    .locals 21
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/16 v4, 0xa

    .line 1
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 2
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v4

    const/4 v5, 0x0

    if-gtz v4, :cond_0

    return-object v5

    :cond_0
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzon;->zzd:I

    int-to-long v7, v4

    const/16 v4, 0x7d00

    if-lt v6, v4, :cond_1

    const/16 v4, 0x480

    goto :goto_0

    :cond_1
    const/16 v4, 0x240

    :goto_0
    int-to-long v9, v4

    const-wide/32 v11, 0xf4240

    mul-long v9, v9, v11

    int-to-long v11, v6

    .line 3
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v16

    .line 4
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v4

    .line 5
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v6

    .line 6
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v7

    const/4 v8, 0x2

    .line 7
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzon;->zzc:I

    int-to-long v8, v2

    add-long v8, p2, v8

    new-array v14, v4, [J

    new-array v15, v4, [J

    const/4 v2, 0x0

    move-wide/from16 v10, p2

    :goto_1
    if-ge v2, v4, :cond_2

    int-to-long v12, v2

    mul-long v12, v12, v16

    move/from16 v20, v6

    int-to-long v5, v4

    .line 8
    div-long/2addr v12, v5

    aput-wide v12, v14, v2

    .line 9
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    aput-wide v5, v15, v2

    packed-switch v7, :pswitch_data_0

    const/4 v2, 0x0

    return-object v2

    .line 10
    :pswitch_0
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v5

    goto :goto_2

    .line 11
    :pswitch_1
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzamf;->zzr()I

    move-result v5

    goto :goto_2

    .line 12
    :pswitch_2
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v5

    goto :goto_2

    .line 13
    :pswitch_3
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v5

    :goto_2
    mul-int v5, v5, v20

    int-to-long v5, v5

    add-long/2addr v10, v5

    add-int/lit8 v2, v2, 0x1

    move/from16 v6, v20

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    cmp-long v2, v0, v10

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x43

    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "VBRI data size mismatch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "VbriSeeker"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqt;

    move-object v13, v0

    move-wide/from16 v18, v10

    .line 16
    invoke-direct/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/zzqt;-><init>([J[JJJ)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final zzb(J)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zza:[J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzb:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2, v2}, Lcom/google/android/gms/internal/ads/zzamq;->zzD([JJZZ)I

    move-result p1

    aget-wide p1, v0, p1

    return-wide p1
.end method

.method public final zzc()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzd:J

    return-wide v0
.end method

.method public final zze()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzf(J)Lcom/google/android/gms/internal/ads/zzor;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zza:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/ads/zzamq;->zzD([JJZZ)I

    move-result v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzou;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqt;->zza:[J

    .line 2
    aget-wide v4, v3, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzb:[J

    aget-wide v6, v3, v0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzou;-><init>(JJ)V

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzou;->zzb:J

    cmp-long v5, v3, p1

    if-gez v5, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zza:[J

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v0, v1

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/ads/zzou;

    .line 4
    aget-wide v3, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzb:[J

    aget-wide v0, p1, v0

    invoke-direct {p2, v3, v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzou;-><init>(JJ)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzor;

    .line 5
    invoke-direct {p1, v2, p2}, Lcom/google/android/gms/internal/ads/zzor;-><init>(Lcom/google/android/gms/internal/ads/zzou;Lcom/google/android/gms/internal/ads/zzou;)V

    return-object p1

    .line 2
    :cond_1
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzor;

    .line 3
    invoke-direct {p1, v2, v2}, Lcom/google/android/gms/internal/ads/zzor;-><init>(Lcom/google/android/gms/internal/ads/zzou;Lcom/google/android/gms/internal/ads/zzou;)V

    return-object p1
.end method

.method public final zzg()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzc:J

    return-wide v0
.end method
