.class public final Lcom/google/android/gms/internal/ads/zzpk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznu;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzoa;


# instance fields
.field private final zzb:[B

.field private final zzc:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzob;

.field private zze:Lcom/google/android/gms/internal/ads/zznx;

.field private zzf:Lcom/google/android/gms/internal/ads/zzox;

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/ads/zzaiv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzi:Lcom/google/android/gms/internal/ads/zzoh;

.field private zzj:I

.field private zzk:I

.field private zzl:Lcom/google/android/gms/internal/ads/zzpi;

.field private zzm:I

.field private zzn:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzpj;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzpk;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzpk;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x2a

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzb:[B

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    const v0, 0x8000

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzob;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzob;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzd:Lcom/google/android/gms/internal/ads/zzob;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzg:I

    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zzamf;Z)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzi:Lcom/google/android/gms/internal/ads/zzoh;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    if-gt v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzi:Lcom/google/android/gms/internal/ads/zzoh;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzk:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzd:Lcom/google/android/gms/internal/ads/zzob;

    .line 2
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzoc;->zza(Lcom/google/android/gms/internal/ads/zzamf;Lcom/google/android/gms/internal/ads/zzoh;ILcom/google/android/gms/internal/ads/zzob;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzd:Lcom/google/android/gms/internal/ads/zzob;

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzob;->zza:J

    return-wide p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result p2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzj:I

    sub-int/2addr p2, v1

    if-gt v0, p2, :cond_4

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzi:Lcom/google/android/gms/internal/ads/zzoh;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzk:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzd:Lcom/google/android/gms/internal/ads/zzob;

    .line 5
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzoc;->zza(Lcom/google/android/gms/internal/ads/zzamf;Lcom/google/android/gms/internal/ads/zzoh;ILcom/google/android/gms/internal/ads/zzob;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v2

    if-le v1, v2, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzd:Lcom/google/android/gms/internal/ads/zzob;

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzob;->zza:J

    return-wide p1

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result p2

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto :goto_4

    .line 8
    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    :goto_4
    const-wide/16 p1, -0x1

    return-wide p1

    :cond_6
    const/4 p1, 0x0

    .line 9
    throw p1

    :goto_5
    nop

    goto :goto_5
.end method

.method private final zzf()V
    .locals 11

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzn:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzi:Lcom/google/android/gms/internal/ads/zzoh;

    sget v3, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzoh;->zze:I

    const-wide/32 v3, 0xf4240

    mul-long v0, v0, v3

    int-to-long v2, v2

    div-long v5, v0, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzf:Lcom/google/android/gms/internal/ads/zzox;

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzm:I

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 2
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzox;->zzv(JIIILcom/google/android/gms/internal/ads/zzow;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zznv;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzoe;->zza(Lcom/google/android/gms/internal/ads/zznv;Z)Lcom/google/android/gms/internal/ads/zzaiv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v2, 0x4

    .line 2
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v3

    check-cast p1, Lcom/google/android/gms/internal/ads/zznp;

    .line 3
    invoke-virtual {p1, v3, v0, v2, v0}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v1

    const-wide/32 v3, 0x664c6143

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zznx;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zze:Lcom/google/android/gms/internal/ads/zznx;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzf:Lcom/google/android/gms/internal/ads/zzox;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznx;->zzC()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zznv;Lcom/google/android/gms/internal/ads/zzoq;)I
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 78
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzg:I

    const/4 v3, 0x3

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    packed-switch v2, :pswitch_data_0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzf:Lcom/google/android/gms/internal/ads/zzox;

    if-eqz v2, :cond_16

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzi:Lcom/google/android/gms/internal/ads/zzoh;

    if-eqz v2, :cond_15

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzl:Lcom/google/android/gms/internal/ads/zzpi;

    const/4 v3, -0x1

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zznl;->zzc()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzl:Lcom/google/android/gms/internal/ads/zzpi;

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zznl;->zzd(Lcom/google/android/gms/internal/ads/zznv;Lcom/google/android/gms/internal/ads/zzoq;)I

    move-result v10

    goto/16 :goto_4

    .line 51
    :pswitch_0
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzamf;

    .line 52
    invoke-direct {v2, v7}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v3

    move-object v6, v1

    check-cast v6, Lcom/google/android/gms/internal/ads/zznp;

    .line 53
    invoke-virtual {v6, v3, v10, v7, v10}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    .line 54
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v2

    shr-int/lit8 v3, v2, 0x2

    const/16 v6, 0x3ffe

    if-ne v3, v6, :cond_3

    .line 57
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzk:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zze:Lcom/google/android/gms/internal/ads/zznx;

    .line 58
    sget v3, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v14

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzo()J

    move-result-wide v16

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzi:Lcom/google/android/gms/internal/ads/zzoh;

    if-eqz v12, :cond_2

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzoh;->zzk:Lcom/google/android/gms/internal/ads/zzog;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzof;

    .line 59
    invoke-direct {v1, v12, v14, v15}, Lcom/google/android/gms/internal/ads/zzof;-><init>(Lcom/google/android/gms/internal/ads/zzoh;J)V

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v1, v16, v4

    if-eqz v1, :cond_1

    .line 64
    iget-wide v3, v12, Lcom/google/android/gms/internal/ads/zzoh;->zzj:J

    cmp-long v1, v3, v6

    if-lez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzpi;

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzk:I

    move-object v11, v1

    .line 62
    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzpi;-><init>(Lcom/google/android/gms/internal/ads/zzoh;IJJ)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzl:Lcom/google/android/gms/internal/ads/zzpi;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzl:Lcom/google/android/gms/internal/ads/zzpi;

    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zznl;->zza()Lcom/google/android/gms/internal/ads/zzot;

    move-result-object v1

    goto :goto_0

    .line 79
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzos;

    .line 60
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzoh;->zza()J

    move-result-wide v3

    .line 61
    invoke-direct {v1, v3, v4, v6, v7}, Lcom/google/android/gms/internal/ads/zzos;-><init>(JJ)V

    .line 64
    :goto_0
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zznx;->zzD(Lcom/google/android/gms/internal/ads/zzot;)V

    const/4 v1, 0x5

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzg:I

    return v10

    .line 65
    :cond_2
    throw v8

    .line 55
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    const-string v1, "First frame does not start with sync code."

    .line 56
    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v1

    throw v1

    .line 9
    :pswitch_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzod;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzi:Lcom/google/android/gms/internal/ads/zzoh;

    .line 10
    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/zzod;-><init>(Lcom/google/android/gms/internal/ads/zzoh;)V

    .line 11
    :cond_4
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzame;

    new-array v5, v9, [B

    .line 12
    invoke-direct {v4, v5, v9}, Lcom/google/android/gms/internal/ads/zzame;-><init>([BI)V

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzame;->zza:[B

    move-object v6, v1

    check-cast v6, Lcom/google/android/gms/internal/ads/zznp;

    .line 13
    invoke-virtual {v6, v5, v10, v9, v10}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    .line 14
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v5

    const/4 v7, 0x7

    .line 15
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v7

    const/16 v11, 0x18

    .line 16
    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v4

    add-int/2addr v4, v9

    const/4 v11, 0x6

    if-nez v7, :cond_5

    const/16 v4, 0x26

    new-array v7, v4, [B

    .line 17
    invoke-virtual {v6, v7, v10, v4, v10}, Lcom/google/android/gms/internal/ads/zznp;->zza([BIIZ)Z

    new-instance v4, Lcom/google/android/gms/internal/ads/zzoh;

    .line 18
    invoke-direct {v4, v7, v9}, Lcom/google/android/gms/internal/ads/zzoh;-><init>([BI)V

    iput-object v4, v2, Lcom/google/android/gms/internal/ads/zzod;->zza:Lcom/google/android/gms/internal/ads/zzoh;

    goto/16 :goto_1

    .line 49
    :cond_5
    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzod;->zza:Lcom/google/android/gms/internal/ads/zzoh;

    if-eqz v12, :cond_a

    if-ne v7, v3, :cond_6

    .line 47
    new-instance v7, Lcom/google/android/gms/internal/ads/zzamf;

    .line 19
    invoke-direct {v7, v4}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v13

    .line 20
    invoke-virtual {v6, v13, v10, v4, v10}, Lcom/google/android/gms/internal/ads/zznp;->zza([BIIZ)Z

    .line 21
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzoe;->zzb(Lcom/google/android/gms/internal/ads/zzamf;)Lcom/google/android/gms/internal/ads/zzog;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/zzoh;->zze(Lcom/google/android/gms/internal/ads/zzog;)Lcom/google/android/gms/internal/ads/zzoh;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/internal/ads/zzod;->zza:Lcom/google/android/gms/internal/ads/zzoh;

    goto/16 :goto_1

    :cond_6
    if-ne v7, v9, :cond_7

    new-instance v7, Lcom/google/android/gms/internal/ads/zzamf;

    .line 22
    invoke-direct {v7, v4}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v13

    .line 23
    invoke-virtual {v6, v13, v10, v4, v10}, Lcom/google/android/gms/internal/ads/zznp;->zza([BIIZ)Z

    .line 24
    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 25
    invoke-static {v7, v10, v10}, Lcom/google/android/gms/internal/ads/zzpc;->zzb(Lcom/google/android/gms/internal/ads/zzamf;ZZ)Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzoz;->zzb:[Ljava/lang/String;

    .line 26
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 27
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/zzoh;->zzf(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzoh;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/internal/ads/zzod;->zza:Lcom/google/android/gms/internal/ads/zzoh;

    goto :goto_1

    :cond_7
    if-ne v7, v11, :cond_8

    new-instance v7, Lcom/google/android/gms/internal/ads/zzamf;

    .line 29
    invoke-direct {v7, v4}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v13

    .line 30
    invoke-virtual {v6, v13, v10, v4, v10}, Lcom/google/android/gms/internal/ads/zznp;->zza([BIIZ)Z

    .line 31
    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 32
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v15

    .line 33
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v4

    .line 34
    sget-object v6, Lcom/google/android/gms/internal/ads/zzfll;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v4, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzE(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v16

    .line 35
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v4

    sget-object v6, Lcom/google/android/gms/internal/ads/zzfll;->zzc:Ljava/nio/charset/Charset;

    .line 36
    invoke-virtual {v7, v4, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzE(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v17

    .line 37
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v18

    .line 38
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v19

    .line 39
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v20

    .line 40
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v21

    .line 41
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v4

    .line 42
    new-array v6, v4, [B

    .line 43
    invoke-virtual {v7, v6, v10, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzajc;

    move-object v14, v4

    move-object/from16 v22, v6

    .line 44
    invoke-direct/range {v14 .. v22}, Lcom/google/android/gms/internal/ads/zzajc;-><init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V

    .line 45
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/zzoh;->zzg(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzoh;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/internal/ads/zzod;->zza:Lcom/google/android/gms/internal/ads/zzoh;

    goto :goto_1

    .line 28
    :cond_8
    invoke-virtual {v6, v4, v10}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    .line 18
    :goto_1
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzod;->zza:Lcom/google/android/gms/internal/ads/zzoh;

    .line 46
    sget v6, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzi:Lcom/google/android/gms/internal/ads/zzoh;

    if-eqz v5, :cond_4

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzi:Lcom/google/android/gms/internal/ads/zzoh;

    if-eqz v1, :cond_9

    .line 50
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzoh;->zzc:I

    .line 48
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzj:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzf:Lcom/google/android/gms/internal/ads/zzox;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzi:Lcom/google/android/gms/internal/ads/zzoh;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzb:[B

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzh:Lcom/google/android/gms/internal/ads/zzaiv;

    .line 49
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzoh;->zzc([BLcom/google/android/gms/internal/ads/zzaiv;)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzg:I

    return v10

    .line 50
    :cond_9
    throw v8

    .line 49
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 47
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 5
    :pswitch_2
    new-instance v2, Lcom/google/android/gms/internal/ads/zzamf;

    .line 6
    invoke-direct {v2, v9}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v4

    check-cast v1, Lcom/google/android/gms/internal/ads/zznp;

    .line 7
    invoke-virtual {v1, v4, v10, v9, v10}, Lcom/google/android/gms/internal/ads/zznp;->zza([BIIZ)Z

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v1

    const-wide/32 v4, 0x664c6143

    cmp-long v6, v1, v4

    if-nez v6, :cond_b

    .line 9
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzg:I

    return v10

    :cond_b
    const-string v1, "Failed to read FLAC stream marker."

    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v1

    throw v1

    .line 3
    :pswitch_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzb:[B

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zznp;

    const/16 v4, 0x2a

    .line 4
    invoke-virtual {v3, v2, v10, v4, v10}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    .line 5
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzg:I

    return v10

    .line 1
    :pswitch_4
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzm()J

    move-result-wide v2

    .line 2
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzoe;->zza(Lcom/google/android/gms/internal/ads/zznv;Z)Lcom/google/android/gms/internal/ads/zzaiv;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzm()J

    move-result-wide v7

    check-cast v1, Lcom/google/android/gms/internal/ads/zznp;

    sub-long/2addr v7, v2

    long-to-int v2, v7

    .line 3
    invoke-virtual {v1, v2, v10}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzh:Lcom/google/android/gms/internal/ads/zzaiv;

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzg:I

    return v10

    .line 78
    :cond_c
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzn:J

    cmp-long v2, v7, v4

    if-nez v2, :cond_d

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzi:Lcom/google/android/gms/internal/ads/zzoh;

    .line 66
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzoc;->zzb(Lcom/google/android/gms/internal/ads/zznv;Lcom/google/android/gms/internal/ads/zzoh;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzn:J

    goto/16 :goto_4

    :cond_d
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v2

    const v7, 0x8000

    if-ge v2, v7, :cond_10

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v8

    sub-int/2addr v7, v2

    .line 67
    invoke-interface {v1, v8, v2, v7}, Lcom/google/android/gms/internal/ads/zznv;->zzg([BII)I

    move-result v1

    if-ne v1, v3, :cond_e

    goto :goto_2

    :cond_e
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_f

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    add-int/2addr v2, v1

    .line 68
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzf(I)V

    goto :goto_3

    .line 76
    :cond_f
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v1

    if-nez v1, :cond_11

    .line 77
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpk;->zzf()V

    const/4 v10, -0x1

    goto :goto_4

    :cond_10
    const/4 v6, 0x0

    .line 68
    :cond_11
    :goto_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzm:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzj:I

    if-ge v2, v3, :cond_12

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    sub-int/2addr v3, v2

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v2

    .line 69
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    :cond_12
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 70
    invoke-direct {v0, v2, v6}, Lcom/google/android/gms/internal/ads/zzpk;->zze(Lcom/google/android/gms/internal/ads/zzamf;Z)J

    move-result-wide v2

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v6

    sub-int/2addr v6, v1

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 71
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzf:Lcom/google/android/gms/internal/ads/zzox;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 72
    invoke-static {v1, v7, v6}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzamf;I)V

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzm:I

    add-int/2addr v1, v6

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzm:I

    cmp-long v1, v2, v4

    if-eqz v1, :cond_13

    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzpk;->zzf()V

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzm:I

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzn:J

    :cond_13
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_14

    :goto_4
    return v10

    :cond_14
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v4

    .line 74
    invoke-static {v2, v3, v4, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 75
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 76
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzf(I)V

    return v10

    .line 79
    :cond_15
    throw v8

    .line 80
    :cond_16
    throw v8

    :goto_5
    nop

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzd(JJ)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzg:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzl:Lcom/google/android/gms/internal/ads/zzpi;

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zznl;->zzb(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v1, -0x1

    .line 2
    :goto_1
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzn:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzm:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    return-void
.end method
