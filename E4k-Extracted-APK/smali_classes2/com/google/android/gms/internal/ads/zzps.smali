.class public final Lcom/google/android/gms/internal/ads/zzps;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzamf;

.field private zzb:Lcom/google/android/gms/internal/ads/zznx;

.field private zzc:I

.field private zzd:I

.field private zze:I

.field private zzf:J

.field private zzg:Lcom/google/android/gms/internal/ads/zzakn;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzh:Lcom/google/android/gms/internal/ads/zznv;

.field private zzi:Lcom/google/android/gms/internal/ads/zzpv;

.field private zzj:Lcom/google/android/gms/internal/ads/zzrp;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zzf:J

    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zznv;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zznp;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result p1

    return p1
.end method

.method private final zzf()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzaiu;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzps;->zzg([Lcom/google/android/gms/internal/ads/zzaiu;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zzb:Lcom/google/android/gms/internal/ads/zznx;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznx;->zzC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zzb:Lcom/google/android/gms/internal/ads/zznx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzos;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    .line 3
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzos;-><init>(JJ)V

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zznx;->zzD(Lcom/google/android/gms/internal/ads/zzot;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zzc:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0
.end method

.method private final varargs zzg([Lcom/google/android/gms/internal/ads/zzaiu;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zzb:Lcom/google/android/gms/internal/ads/zznx;

    if-eqz v0, :cond_0

    const/16 v1, 0x400

    const/4 v2, 0x4

    .line 1
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaft;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    const-string v2, "image/jpeg"

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaft;->zzM(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaiv;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>([Lcom/google/android/gms/internal/ads/zzaiu;)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaft;->zzL(Lcom/google/android/gms/internal/ads/zzaiv;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object p1

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zznv;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzps;->zze(Lcom/google/android/gms/internal/ads/zznv;)I

    move-result v0

    const/4 v1, 0x0

    const v2, 0xffd8

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzps;->zze(Lcom/google/android/gms/internal/ads/zznv;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zzd:I

    const v2, 0xffe0

    const/4 v3, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zznp;

    .line 4
    invoke-virtual {v2, v0, v1, v3, v1}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 6
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zznp;->zzj(IZ)Z

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzps;->zze(Lcom/google/android/gms/internal/ads/zznv;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zzd:I

    :cond_1
    const v2, 0xffe1

    if-ne v0, v2, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/ads/zznp;

    .line 8
    invoke-virtual {p1, v3, v1}, Lcom/google/android/gms/internal/ads/zznp;->zzj(IZ)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v2, 0x6

    .line 9
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    .line 10
    invoke-virtual {p1, v0, v1, v2, v1}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v2

    const-wide/32 v4, 0x45786966    # 5.758429993E-315

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zznx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzps;->zzb:Lcom/google/android/gms/internal/ads/zznx;

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zznv;Lcom/google/android/gms/internal/ads/zzoq;)I
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzps;->zzc:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    packed-switch v3, :pswitch_data_0

    .line 24
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 38
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :pswitch_1
    return v4

    .line 21
    :pswitch_2
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzps;->zzi:Lcom/google/android/gms/internal/ads/zzpv;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzps;->zzh:Lcom/google/android/gms/internal/ads/zznv;

    if-eq v1, v3, :cond_1

    :cond_0
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzps;->zzh:Lcom/google/android/gms/internal/ads/zznv;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzpv;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzps;->zzf:J

    .line 22
    invoke-direct {v3, v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzpv;-><init>(Lcom/google/android/gms/internal/ads/zznv;J)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzps;->zzi:Lcom/google/android/gms/internal/ads/zzpv;

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzps;->zzj:Lcom/google/android/gms/internal/ads/zzrp;

    if-eqz v1, :cond_3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzps;->zzi:Lcom/google/android/gms/internal/ads/zzpv;

    .line 23
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzrp;->zzc(Lcom/google/android/gms/internal/ads/zznv;Lcom/google/android/gms/internal/ads/zzoq;)I

    move-result v1

    if-ne v1, v5, :cond_2

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzoq;->zza:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzps;->zzf:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzoq;->zza:J

    :cond_2
    return v1

    .line 24
    :cond_3
    throw v7

    .line 7
    :pswitch_3
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v3

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzps;->zzf:J

    cmp-long v6, v3, v8

    if-nez v6, :cond_9

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v2

    .line 25
    invoke-interface {v1, v2, v10, v5, v5}, Lcom/google/android/gms/internal/ads/zznv;->zzh([BIIZ)Z

    move-result v2

    if-nez v2, :cond_4

    .line 26
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzps;->zzf()V

    goto :goto_0

    .line 27
    :cond_4
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzps;->zzj:Lcom/google/android/gms/internal/ads/zzrp;

    if-nez v2, :cond_5

    .line 28
    new-instance v2, Lcom/google/android/gms/internal/ads/zzrp;

    .line 29
    invoke-direct {v2, v10}, Lcom/google/android/gms/internal/ads/zzrp;-><init>(I)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzps;->zzj:Lcom/google/android/gms/internal/ads/zzrp;

    :cond_5
    new-instance v2, Lcom/google/android/gms/internal/ads/zzpv;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzps;->zzf:J

    .line 30
    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzpv;-><init>(Lcom/google/android/gms/internal/ads/zznv;J)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzps;->zzi:Lcom/google/android/gms/internal/ads/zzpv;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzps;->zzj:Lcom/google/android/gms/internal/ads/zzrp;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzps;->zzi:Lcom/google/android/gms/internal/ads/zzpv;

    .line 31
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzrp;->zza(Lcom/google/android/gms/internal/ads/zznv;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzps;->zzj:Lcom/google/android/gms/internal/ads/zzrp;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzpx;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzps;->zzf:J

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzps;->zzb:Lcom/google/android/gms/internal/ads/zznx;

    if-eqz v6, :cond_7

    .line 32
    invoke-direct {v2, v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzpx;-><init>(JLcom/google/android/gms/internal/ads/zznx;)V

    .line 33
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzrp;->zzb(Lcom/google/android/gms/internal/ads/zznx;)V

    new-array v1, v5, [Lcom/google/android/gms/internal/ads/zzaiu;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzps;->zzg:Lcom/google/android/gms/internal/ads/zzakn;

    if-eqz v2, :cond_6

    aput-object v2, v1, v10

    .line 34
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzps;->zzg([Lcom/google/android/gms/internal/ads/zzaiu;)V

    const/4 v1, 0x5

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzps;->zzc:I

    goto :goto_0

    .line 35
    :cond_6
    throw v7

    .line 36
    :cond_7
    throw v7

    .line 37
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzps;->zzf()V

    :goto_0
    return v10

    :cond_9
    iput-wide v8, v2, Lcom/google/android/gms/internal/ads/zzoq;->zza:J

    return v5

    :pswitch_4
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzps;->zzd:I

    const v3, 0xffe1

    if-ne v2, v3, :cond_14

    new-instance v2, Lcom/google/android/gms/internal/ads/zzamf;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzps;->zze:I

    .line 8
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v3

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzps;->zze:I

    move-object v11, v1

    check-cast v11, Lcom/google/android/gms/internal/ads/zznp;

    .line 9
    invoke-virtual {v11, v3, v10, v5, v10}, Lcom/google/android/gms/internal/ads/zznp;->zza([BIIZ)Z

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzps;->zzg:Lcom/google/android/gms/internal/ads/zzakn;

    if-nez v3, :cond_15

    const-string v3, "http://ns.adobe.com/xap/1.0/"

    .line 10
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzG(C)Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 12
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzG(C)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzo()J

    move-result-wide v11

    cmp-long v1, v11, v8

    if-nez v1, :cond_a

    goto/16 :goto_5

    .line 13
    :cond_a
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzpy;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzpu;

    move-result-object v1

    if-nez v1, :cond_b

    goto/16 :goto_5

    :cond_b
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzpu;->zzb:Ljava/util/List;

    .line 14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v6, :cond_c

    goto/16 :goto_5

    :cond_c
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzpu;->zzb:Ljava/util/List;

    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v4

    move-wide v4, v8

    move-wide v14, v4

    move-wide/from16 v18, v14

    move-wide/from16 v20, v18

    const/4 v3, 0x0

    :goto_1
    if-ltz v2, :cond_11

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzpu;->zzb:Ljava/util/List;

    .line 16
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzpt;

    const-string v13, "video/mp4"

    .line 17
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzpt;->zza:Ljava/lang/String;

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v3, v7

    if-nez v2, :cond_d

    .line 18
    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/zzpt;->zzd:J

    sub-long/2addr v11, v6

    const-wide/16 v6, 0x0

    :goto_2
    move-wide/from16 v22, v6

    move-wide v6, v11

    move-wide/from16 v11, v22

    goto :goto_3

    .line 19
    :cond_d
    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/zzpt;->zzc:J

    sub-long v6, v11, v6

    goto :goto_2

    :goto_3
    if-eqz v3, :cond_e

    cmp-long v13, v11, v6

    if-eqz v13, :cond_e

    sub-long v16, v6, v11

    move-wide/from16 v18, v11

    move-wide/from16 v20, v16

    const/4 v3, 0x0

    :cond_e
    if-nez v2, :cond_f

    move-wide v14, v6

    :cond_f
    if-nez v2, :cond_10

    move-wide v4, v11

    :cond_10
    add-int/lit8 v2, v2, -0x1

    const/4 v7, 0x0

    goto :goto_1

    :cond_11
    cmp-long v2, v18, v8

    if-eqz v2, :cond_13

    cmp-long v2, v20, v8

    if-eqz v2, :cond_13

    cmp-long v2, v4, v8

    if-eqz v2, :cond_13

    cmp-long v2, v14, v8

    if-nez v2, :cond_12

    goto :goto_4

    :cond_12
    new-instance v2, Lcom/google/android/gms/internal/ads/zzakn;

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzpu;->zza:J

    move-object v11, v2

    move-wide v12, v4

    move-wide/from16 v16, v6

    .line 20
    invoke-direct/range {v11 .. v21}, Lcom/google/android/gms/internal/ads/zzakn;-><init>(JJJJJ)V

    move-object v7, v2

    goto :goto_5

    :cond_13
    :goto_4
    const/4 v7, 0x0

    .line 12
    :goto_5
    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzps;->zzg:Lcom/google/android/gms/internal/ads/zzakn;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzps;->zzg:Lcom/google/android/gms/internal/ads/zzakn;

    if-eqz v1, :cond_15

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzakn;->zzd:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzps;->zzf:J

    goto :goto_6

    .line 20
    :cond_14
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzps;->zze:I

    check-cast v1, Lcom/google/android/gms/internal/ads/zznp;

    .line 21
    invoke-virtual {v1, v2, v10}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    .line 12
    :cond_15
    :goto_6
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzps;->zzc:I

    return v10

    .line 4
    :pswitch_5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 5
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v2

    check-cast v1, Lcom/google/android/gms/internal/ads/zznp;

    .line 6
    invoke-virtual {v1, v2, v10, v6, v10}, Lcom/google/android/gms/internal/ads/zznp;->zza([BIIZ)Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzps;->zze:I

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzps;->zzc:I

    return v10

    .line 1
    :pswitch_6
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v2

    check-cast v1, Lcom/google/android/gms/internal/ads/zznp;

    .line 2
    invoke-virtual {v1, v2, v10, v6, v10}, Lcom/google/android/gms/internal/ads/zznp;->zza([BIIZ)Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzps;->zzd:I

    const v2, 0xffda

    if-ne v1, v2, :cond_17

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzps;->zzf:J

    cmp-long v3, v1, v8

    if-eqz v3, :cond_16

    const/4 v1, 0x4

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzps;->zzc:I

    goto :goto_7

    .line 4
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzps;->zzf()V

    goto :goto_7

    :cond_17
    const v2, 0xffd0

    if-lt v1, v2, :cond_18

    const v2, 0xffd9

    if-le v1, v2, :cond_19

    :cond_18
    const v2, 0xff01

    if-eq v1, v2, :cond_19

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzps;->zzc:I

    :cond_19
    :goto_7
    return v10

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final zzd(JJ)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzps;->zzc:I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zzj:Lcom/google/android/gms/internal/ads/zzrp;

    return-void

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzps;->zzc:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzps;->zzj:Lcom/google/android/gms/internal/ads/zzrp;

    if-eqz v1, :cond_1

    .line 1
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzrp;->zzd(JJ)V

    return-void

    .line 2
    :cond_1
    throw v0

    :cond_2
    return-void
.end method
