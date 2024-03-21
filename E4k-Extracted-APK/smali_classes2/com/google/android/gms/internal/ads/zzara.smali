.class public final Lcom/google/android/gms/internal/ads/zzara;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzapo;
.implements Lcom/google/android/gms/internal/ads/zzapv;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzapq;

.field private static final zzb:I


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzaux;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzaux;

.field private final zze:Lcom/google/android/gms/internal/ads/zzaux;

.field private final zzf:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/gms/internal/ads/zzaqi;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:I

.field private zzh:I

.field private zzi:J

.field private zzj:I

.field private zzk:Lcom/google/android/gms/internal/ads/zzaux;

.field private zzl:I

.field private zzm:I

.field private zzn:Lcom/google/android/gms/internal/ads/zzapp;

.field private zzo:[Lcom/google/android/gms/internal/ads/zzaqz;

.field private zzp:J

.field private zzq:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaqy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzara;->zza:Lcom/google/android/gms/internal/ads/zzapq;

    const-string v0, "qt  "

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzave;->zzl(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzara;->zzb:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaux;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaux;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzara;->zze:Lcom/google/android/gms/internal/ads/zzaux;

    new-instance v0, Ljava/util/Stack;

    .line 2
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzara;->zzf:Ljava/util/Stack;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaux;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzauv;->zza:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaux;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzara;->zzc:Lcom/google/android/gms/internal/ads/zzaux;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaux;

    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaux;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzara;->zzd:Lcom/google/android/gms/internal/ads/zzaux;

    return-void
.end method

.method private final zzh()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzara;->zzg:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzara;->zzj:I

    return-void
.end method

.method private final zzi(J)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzanp;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzara;->zzf:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzara;->zzf:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaqi;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzaqi;->zza:J

    cmp-long v1, v3, p1

    if-nez v1, :cond_b

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzara;->zzf:Ljava/util/Stack;

    .line 2
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaqi;

    .line 3
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzaqi;->zzaR:I

    sget v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzE:I

    if-ne v3, v4, :cond_a

    new-instance v3, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaps;

    .line 5
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzaps;-><init>()V

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzaC:I

    .line 6
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzaqi;->zzc(I)Lcom/google/android/gms/internal/ads/zzaqj;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzara;->zzq:Z

    .line 7
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzaqr;->zzc(Lcom/google/android/gms/internal/ads/zzaqj;Z)Lcom/google/android/gms/internal/ads/zzaru;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 8
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzaps;->zza(Lcom/google/android/gms/internal/ads/zzaru;)Z

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :cond_2
    :goto_1
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v10, 0x7fffffffffffffffL

    move-wide v13, v10

    move-wide v9, v8

    const/4 v8, 0x0

    .line 9
    :goto_2
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzaqi;->zzc:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_9

    .line 10
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzaqi;->zzc:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzaqi;

    .line 11
    iget v15, v11, Lcom/google/android/gms/internal/ads/zzaqi;->zzaR:I

    sget v2, Lcom/google/android/gms/internal/ads/zzaqk;->zzG:I

    if-eq v15, v2, :cond_3

    goto :goto_3

    :cond_3
    sget v2, Lcom/google/android/gms/internal/ads/zzaqk;->zzF:I

    .line 12
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaqi;->zzc(I)Lcom/google/android/gms/internal/ads/zzaqj;

    move-result-object v16

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v19, 0x0

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzara;->zzq:Z

    move-object v15, v11

    move/from16 v20, v2

    invoke-static/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzaqr;->zza(Lcom/google/android/gms/internal/ads/zzaqi;Lcom/google/android/gms/internal/ads/zzaqj;JLcom/google/android/gms/internal/ads/zzapk;Z)Lcom/google/android/gms/internal/ads/zzarc;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    sget v15, Lcom/google/android/gms/internal/ads/zzaqk;->zzH:I

    .line 13
    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/ads/zzaqi;->zzd(I)Lcom/google/android/gms/internal/ads/zzaqi;

    move-result-object v11

    sget v15, Lcom/google/android/gms/internal/ads/zzaqk;->zzI:I

    .line 14
    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/ads/zzaqi;->zzd(I)Lcom/google/android/gms/internal/ads/zzaqi;

    move-result-object v11

    sget v15, Lcom/google/android/gms/internal/ads/zzaqk;->zzJ:I

    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/ads/zzaqi;->zzd(I)Lcom/google/android/gms/internal/ads/zzaqi;

    move-result-object v11

    .line 15
    invoke-static {v2, v11, v4}, Lcom/google/android/gms/internal/ads/zzaqr;->zzb(Lcom/google/android/gms/internal/ads/zzarc;Lcom/google/android/gms/internal/ads/zzaqi;Lcom/google/android/gms/internal/ads/zzaps;)Lcom/google/android/gms/internal/ads/zzarf;

    move-result-object v11

    iget v15, v11, Lcom/google/android/gms/internal/ads/zzarf;->zza:I

    if-nez v15, :cond_5

    :goto_3
    const/4 v11, 0x0

    goto :goto_4

    :cond_5
    new-instance v15, Lcom/google/android/gms/internal/ads/zzaqz;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzara;->zzn:Lcom/google/android/gms/internal/ads/zzapp;

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzarc;->zzb:I

    .line 16
    invoke-interface {v12, v8, v5}, Lcom/google/android/gms/internal/ads/zzapp;->zzbf(II)Lcom/google/android/gms/internal/ads/zzapx;

    move-result-object v5

    invoke-direct {v15, v2, v11, v5}, Lcom/google/android/gms/internal/ads/zzaqz;-><init>(Lcom/google/android/gms/internal/ads/zzarc;Lcom/google/android/gms/internal/ads/zzarf;Lcom/google/android/gms/internal/ads/zzapx;)V

    iget v5, v11, Lcom/google/android/gms/internal/ads/zzarf;->zzd:I

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzarc;->zzf:Lcom/google/android/gms/internal/ads/zzanm;

    add-int/lit8 v5, v5, 0x1e

    .line 17
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzanm;->zzg(I)Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v5

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzarc;->zzb:I

    const/4 v12, 0x1

    if-ne v6, v12, :cond_7

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaps;->zzb()Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzaps;->zzb:I

    iget v12, v4, Lcom/google/android/gms/internal/ads/zzaps;->zzc:I

    .line 18
    invoke-virtual {v5, v6, v12}, Lcom/google/android/gms/internal/ads/zzanm;->zzh(II)Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v5

    :cond_6
    if-eqz v7, :cond_7

    .line 19
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzanm;->zzj(Lcom/google/android/gms/internal/ads/zzaru;)Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v5

    :cond_7
    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzaqz;->zzc:Lcom/google/android/gms/internal/ads/zzapx;

    .line 20
    invoke-interface {v6, v5}, Lcom/google/android/gms/internal/ads/zzapx;->zza(Lcom/google/android/gms/internal/ads/zzanm;)V

    iget-wide v5, v2, Lcom/google/android/gms/internal/ads/zzarc;->zze:J

    .line 21
    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 22
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzarf;->zzb:[J

    const/4 v11, 0x0

    .line 23
    aget-wide v9, v2, v11

    cmp-long v2, v9, v13

    if-gez v2, :cond_8

    move-wide v13, v9

    :cond_8
    move-wide v9, v5

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_9
    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzara;->zzp:J

    .line 24
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzaqz;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzaqz;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzara;->zzo:[Lcom/google/android/gms/internal/ads/zzaqz;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzara;->zzn:Lcom/google/android/gms/internal/ads/zzapp;

    .line 25
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzapp;->zzbg()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzara;->zzn:Lcom/google/android/gms/internal/ads/zzapp;

    .line 26
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzapp;->zzc(Lcom/google/android/gms/internal/ads/zzapv;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzara;->zzf:Ljava/util/Stack;

    .line 27
    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzara;->zzg:I

    goto/16 :goto_0

    :cond_a
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzara;->zzf:Ljava/util/Stack;

    .line 28
    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzara;->zzf:Ljava/util/Stack;

    .line 29
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaqi;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaqi;->zzb(Lcom/google/android/gms/internal/ads/zzaqi;)V

    goto/16 :goto_0

    :cond_b
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzara;->zzg:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    .line 30
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzara;->zzh()V

    :cond_c
    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzb()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzara;->zzp:J

    return-wide v0
.end method

.method public final zzc(J)J
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzara;->zzo:[Lcom/google/android/gms/internal/ads/zzaqz;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    .line 2
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaqz;->zzb:Lcom/google/android/gms/internal/ads/zzarf;

    .line 3
    invoke-virtual {v5, p1, p2}, Lcom/google/android/gms/internal/ads/zzarf;->zza(J)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 4
    invoke-virtual {v5, p1, p2}, Lcom/google/android/gms/internal/ads/zzarf;->zzb(J)I

    move-result v6

    :cond_0
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzarf;->zzb:[J

    .line 5
    aget-wide v6, v5, v6

    cmp-long v5, v6, v2

    if-gez v5, :cond_1

    move-wide v2, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-wide v2
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzapp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzara;->zzn:Lcom/google/android/gms/internal/ads/zzapp;

    return-void
.end method

.method public final zze(JJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzara;->zzf:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzara;->zzj:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzara;->zzl:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzara;->zzm:I

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzara;->zzh()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzara;->zzo:[Lcom/google/android/gms/internal/ads/zzaqz;

    if-eqz p1, :cond_2

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_2

    .line 3
    aget-object v1, p1, v0

    .line 4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaqz;->zzb:Lcom/google/android/gms/internal/ads/zzarf;

    .line 5
    invoke-virtual {v2, p3, p4}, Lcom/google/android/gms/internal/ads/zzarf;->zza(J)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 6
    invoke-virtual {v2, p3, p4}, Lcom/google/android/gms/internal/ads/zzarf;->zzb(J)I

    move-result v3

    .line 7
    :cond_1
    iput v3, v1, Lcom/google/android/gms/internal/ads/zzaqz;->zzd:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzapn;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzarb;->zzb(Lcom/google/android/gms/internal/ads/zzapn;)Z

    move-result p1

    return p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzapn;Lcom/google/android/gms/internal/ads/zzapt;)I
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 26
    :cond_0
    :goto_0
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zzg:I

    const/4 v4, 0x2

    const-wide/32 v5, 0x40000

    const/4 v7, 0x4

    const/4 v8, -0x1

    const/16 v9, 0x8

    const/4 v10, 0x1

    const/4 v11, 0x0

    packed-switch v3, :pswitch_data_0

    const-wide v12, 0x7fffffffffffffffL

    const/4 v3, 0x0

    const/4 v9, -0x1

    goto/16 :goto_9

    .line 48
    :pswitch_0
    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzara;->zzi:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zzj:I

    int-to-long v14, v3

    sub-long/2addr v12, v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzapn;->zzh()J

    move-result-wide v14

    add-long/2addr v14, v12

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zzk:Lcom/google/android/gms/internal/ads/zzaux;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzara;->zzj:I

    long-to-int v6, v12

    .line 15
    invoke-virtual {v1, v3, v5, v6, v11}, Lcom/google/android/gms/internal/ads/zzapn;->zzb([BIIZ)Z

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zzh:I

    .line 16
    sget v5, Lcom/google/android/gms/internal/ads/zzaqk;->zzd:I

    if-ne v3, v5, :cond_4

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zzk:Lcom/google/android/gms/internal/ads/zzaux;

    .line 17
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v5

    sget v6, Lcom/google/android/gms/internal/ads/zzara;->zzb:I

    if-ne v5, v6, :cond_1

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    .line 19
    :cond_1
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 20
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaux;->zzd()I

    move-result v5

    if-lez v5, :cond_3

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v5

    sget v6, Lcom/google/android/gms/internal/ads/zzara;->zzb:I

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 18
    :goto_2
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zzq:Z

    goto :goto_3

    .line 21
    :cond_4
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zzf:Ljava/util/Stack;

    .line 22
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zzf:Ljava/util/Stack;

    .line 23
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaqi;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzaqj;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzara;->zzh:I

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzara;->zzk:Lcom/google/android/gms/internal/ads/zzaux;

    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzaqj;-><init>(ILcom/google/android/gms/internal/ads/zzaux;)V

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzaqi;->zza(Lcom/google/android/gms/internal/ads/zzaqj;)V

    goto :goto_3

    :cond_5
    cmp-long v3, v12, v5

    if-gez v3, :cond_6

    long-to-int v3, v12

    .line 24
    invoke-virtual {v1, v3, v11}, Lcom/google/android/gms/internal/ads/zzapn;->zzd(IZ)Z

    goto :goto_3

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzapn;->zzh()J

    move-result-wide v5

    add-long/2addr v5, v12

    iput-wide v5, v2, Lcom/google/android/gms/internal/ads/zzapt;->zza:J

    const/4 v11, 0x1

    .line 25
    :cond_7
    :goto_3
    invoke-direct {v0, v14, v15}, Lcom/google/android/gms/internal/ads/zzara;->zzi(J)V

    if-eqz v11, :cond_0

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zzg:I

    if-eq v3, v4, :cond_0

    return v10

    .line 24
    :pswitch_1
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zzj:I

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zze:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    .line 1
    invoke-virtual {v1, v3, v11, v9, v10}, Lcom/google/android/gms/internal/ads/zzapn;->zzb([BIIZ)Z

    move-result v3

    if-nez v3, :cond_8

    return v8

    :cond_8
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzara;->zzj:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zze:Lcom/google/android/gms/internal/ads/zzaux;

    .line 2
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zze:Lcom/google/android/gms/internal/ads/zzaux;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaux;->zzp()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zzi:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zze:Lcom/google/android/gms/internal/ads/zzaux;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zzh:I

    :cond_9
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zzi:J

    const-wide/16 v5, 0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_a

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zze:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    .line 5
    invoke-virtual {v1, v3, v9, v9, v11}, Lcom/google/android/gms/internal/ads/zzapn;->zzb([BIIZ)Z

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zzj:I

    add-int/2addr v3, v9

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zzj:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zze:Lcom/google/android/gms/internal/ads/zzaux;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaux;->zzv()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zzi:J

    :cond_a
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zzh:I

    .line 7
    sget v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzE:I

    if-eq v3, v4, :cond_10

    sget v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzG:I

    if-eq v3, v4, :cond_10

    sget v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzH:I

    if-eq v3, v4, :cond_10

    sget v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzI:I

    if-eq v3, v4, :cond_10

    sget v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzJ:I

    if-eq v3, v4, :cond_10

    sget v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzS:I

    if-ne v3, v4, :cond_b

    goto/16 :goto_8

    .line 10
    :cond_b
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zzh:I

    sget v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzU:I

    if-eq v3, v4, :cond_d

    sget v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzF:I

    if-eq v3, v4, :cond_d

    sget v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzV:I

    if-eq v3, v4, :cond_d

    sget v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzW:I

    if-eq v3, v4, :cond_d

    sget v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzao:I

    if-eq v3, v4, :cond_d

    sget v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzap:I

    if-eq v3, v4, :cond_d

    sget v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzaq:I

    if-eq v3, v4, :cond_d

    sget v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzT:I

    if-eq v3, v4, :cond_d

    sget v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzar:I

    if-eq v3, v4, :cond_d

    sget v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzas:I

    if-eq v3, v4, :cond_d

    sget v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzat:I

    if-eq v3, v4, :cond_d

    sget v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzau:I

    if-eq v3, v4, :cond_d

    sget v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzav:I

    if-eq v3, v4, :cond_d

    sget v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzR:I

    if-eq v3, v4, :cond_d

    sget v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzd:I

    if-eq v3, v4, :cond_d

    sget v4, Lcom/google/android/gms/internal/ads/zzaqk;->zzaC:I

    if-ne v3, v4, :cond_c

    goto :goto_4

    :cond_c
    const/4 v3, 0x0

    .line 14
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zzk:Lcom/google/android/gms/internal/ads/zzaux;

    goto :goto_7

    .line 10
    :cond_d
    :goto_4
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zzj:I

    if-ne v3, v9, :cond_e

    const/4 v3, 0x1

    goto :goto_5

    :cond_e
    const/4 v3, 0x0

    .line 11
    :goto_5
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaup;->zzd(Z)V

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zzi:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v3, v5

    if-gtz v7, :cond_f

    const/4 v3, 0x1

    goto :goto_6

    :cond_f
    const/4 v3, 0x0

    .line 12
    :goto_6
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaup;->zzd(Z)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaux;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzara;->zzi:J

    long-to-int v4, v4

    .line 13
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzaux;-><init>(I)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zzk:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzara;->zze:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzara;->zzk:Lcom/google/android/gms/internal/ads/zzaux;

    .line 14
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    invoke-static {v3, v11, v4, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_7
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzara;->zzg:I

    goto/16 :goto_0

    .line 7
    :cond_10
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzapn;->zzh()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzara;->zzi:J

    add-long/2addr v3, v5

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzara;->zzj:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzara;->zzf:Ljava/util/Stack;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaqi;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzara;->zzh:I

    .line 8
    invoke-direct {v6, v7, v3, v4}, Lcom/google/android/gms/internal/ads/zzaqi;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzara;->zzi:J

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzara;->zzj:I

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_11

    .line 9
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzara;->zzi(J)V

    goto/16 :goto_0

    .line 10
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzara;->zzh()V

    goto/16 :goto_0

    .line 26
    :goto_9
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzara;->zzo:[Lcom/google/android/gms/internal/ads/zzaqz;

    array-length v15, v14

    if-ge v3, v15, :cond_14

    .line 27
    aget-object v14, v14, v3

    .line 28
    iget v15, v14, Lcom/google/android/gms/internal/ads/zzaqz;->zzd:I

    .line 29
    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzaqz;->zzb:Lcom/google/android/gms/internal/ads/zzarf;

    iget v7, v14, Lcom/google/android/gms/internal/ads/zzarf;->zza:I

    if-ne v15, v7, :cond_12

    goto :goto_a

    :cond_12
    iget-object v7, v14, Lcom/google/android/gms/internal/ads/zzarf;->zzb:[J

    .line 30
    aget-wide v14, v7, v15

    cmp-long v7, v14, v12

    if-gez v7, :cond_13

    move v9, v3

    move-wide v12, v14

    :cond_13
    :goto_a
    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x4

    goto :goto_9

    :cond_14
    if-ne v9, v8, :cond_15

    const/4 v4, -0x1

    goto/16 :goto_f

    .line 31
    :cond_15
    aget-object v3, v14, v9

    .line 32
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzaqz;->zzc:Lcom/google/android/gms/internal/ads/zzapx;

    .line 33
    iget v8, v3, Lcom/google/android/gms/internal/ads/zzaqz;->zzd:I

    .line 34
    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzaqz;->zzb:Lcom/google/android/gms/internal/ads/zzarf;

    iget-object v12, v9, Lcom/google/android/gms/internal/ads/zzarf;->zzb:[J

    aget-wide v13, v12, v8

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzarf;->zzc:[I

    .line 35
    aget v9, v9, v8

    .line 36
    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzaqz;->zza:Lcom/google/android/gms/internal/ads/zzarc;

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzarc;->zzg:I

    if-ne v12, v10, :cond_16

    const-wide/16 v16, 0x8

    add-long v13, v13, v16

    add-int/lit8 v9, v9, -0x8

    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzapn;->zzh()J

    move-result-wide v16

    sub-long v16, v13, v16

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzara;->zzl:I

    int-to-long v10, v12

    add-long v10, v16, v10

    const-wide/16 v16, 0x0

    cmp-long v12, v10, v16

    if-ltz v12, :cond_1b

    cmp-long v12, v10, v5

    if-ltz v12, :cond_17

    goto/16 :goto_e

    :cond_17
    long-to-int v2, v10

    const/4 v5, 0x0

    .line 37
    invoke-virtual {v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzapn;->zzd(IZ)Z

    .line 38
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzaqz;->zza:Lcom/google/android/gms/internal/ads/zzarc;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzarc;->zzk:I

    if-nez v2, :cond_19

    :goto_b
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzara;->zzl:I

    if-ge v2, v9, :cond_18

    sub-int v2, v9, v2

    .line 39
    invoke-interface {v7, v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzapx;->zzd(Lcom/google/android/gms/internal/ads/zzapn;IZ)I

    move-result v2

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzara;->zzl:I

    add-int/2addr v4, v2

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzara;->zzl:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzara;->zzm:I

    sub-int/2addr v4, v2

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzara;->zzm:I

    goto :goto_b

    :cond_18
    move/from16 v20, v9

    goto :goto_d

    .line 50
    :cond_19
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzara;->zzd:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    .line 40
    aput-byte v5, v6, v5

    const/4 v10, 0x1

    .line 41
    aput-byte v5, v6, v10

    .line 42
    aput-byte v5, v6, v4

    const/4 v4, 0x4

    rsub-int/lit8 v6, v2, 0x4

    :goto_c
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzara;->zzl:I

    if-ge v4, v9, :cond_18

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzara;->zzm:I

    if-nez v4, :cond_1a

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzara;->zzd:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    .line 43
    invoke-virtual {v1, v4, v6, v2, v5}, Lcom/google/android/gms/internal/ads/zzapn;->zzb([BIIZ)Z

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzara;->zzd:Lcom/google/android/gms/internal/ads/zzaux;

    .line 44
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzara;->zzd:Lcom/google/android/gms/internal/ads/zzaux;

    .line 45
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v4

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzara;->zzm:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzara;->zzc:Lcom/google/android/gms/internal/ads/zzaux;

    .line 46
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzara;->zzc:Lcom/google/android/gms/internal/ads/zzaux;

    const/4 v10, 0x4

    .line 47
    invoke-interface {v7, v4, v10}, Lcom/google/android/gms/internal/ads/zzapx;->zzb(Lcom/google/android/gms/internal/ads/zzaux;I)V

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzara;->zzl:I

    add-int/2addr v4, v10

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzara;->zzl:I

    add-int/2addr v9, v6

    goto :goto_c

    :cond_1a
    const/4 v10, 0x4

    .line 48
    invoke-interface {v7, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzapx;->zzd(Lcom/google/android/gms/internal/ads/zzapn;IZ)I

    move-result v4

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzara;->zzl:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzara;->zzl:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzara;->zzm:I

    sub-int/2addr v5, v4

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzara;->zzm:I

    const/4 v5, 0x0

    goto :goto_c

    .line 49
    :goto_d
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzaqz;->zzb:Lcom/google/android/gms/internal/ads/zzarf;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzarf;->zze:[J

    aget-wide v17, v2, v8

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzarf;->zzf:[I

    aget v19, v1, v8

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v7

    invoke-interface/range {v16 .. v22}, Lcom/google/android/gms/internal/ads/zzapx;->zzc(JIIILcom/google/android/gms/internal/ads/zzapw;)V

    .line 50
    iget v1, v3, Lcom/google/android/gms/internal/ads/zzaqz;->zzd:I

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, v3, Lcom/google/android/gms/internal/ads/zzaqz;->zzd:I

    const/4 v5, 0x0

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzara;->zzl:I

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzara;->zzm:I

    const/4 v4, 0x0

    goto :goto_f

    :cond_1b
    :goto_e
    const/4 v4, 0x1

    .line 36
    iput-wide v13, v2, Lcom/google/android/gms/internal/ads/zzapt;->zza:J

    :goto_f
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
