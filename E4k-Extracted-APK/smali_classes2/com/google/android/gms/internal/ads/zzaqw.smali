.class public final Lcom/google/android/gms/internal/ads/zzaqw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzapo;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzapq;

.field private static final zzb:I

.field private static final zzc:[B


# instance fields
.field private final zzd:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/zzaqv;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/ads/zzaux;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzaux;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzaux;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzaux;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzaux;

.field private final zzj:[B

.field private final zzk:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/gms/internal/ads/zzaqi;",
            ">;"
        }
    .end annotation
.end field

.field private final zzl:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/zzaqu;",
            ">;"
        }
    .end annotation
.end field

.field private zzm:I

.field private zzn:I

.field private zzo:J

.field private zzp:I

.field private zzq:Lcom/google/android/gms/internal/ads/zzaux;

.field private zzr:J

.field private zzs:J

.field private zzt:Lcom/google/android/gms/internal/ads/zzaqv;

.field private zzu:I

.field private zzv:I

.field private zzw:I

.field private zzx:Lcom/google/android/gms/internal/ads/zzapp;

.field private zzy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaqt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaqw;->zza:Lcom/google/android/gms/internal/ads/zzapq;

    const-string v0, "seig"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzave;->zzl(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzb:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzc:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v1, v0, v0}, Lcom/google/android/gms/internal/ads/zzaqw;-><init>(ILcom/google/android/gms/internal/ads/zzavb;Lcom/google/android/gms/internal/ads/zzarc;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzavb;Lcom/google/android/gms/internal/ads/zzarc;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaux;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaux;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzi:Lcom/google/android/gms/internal/ads/zzaux;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaux;

    .line 3
    sget-object p3, Lcom/google/android/gms/internal/ads/zzauv;->zza:[B

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzaux;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zze:Lcom/google/android/gms/internal/ads/zzaux;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaux;

    const/4 p3, 0x5

    .line 4
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzaux;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzf:Lcom/google/android/gms/internal/ads/zzaux;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaux;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaux;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzg:Lcom/google/android/gms/internal/ads/zzaux;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaux;

    const/4 p3, 0x1

    .line 5
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzaux;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzh:Lcom/google/android/gms/internal/ads/zzaux;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzj:[B

    new-instance p1, Ljava/util/Stack;

    .line 6
    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzk:Ljava/util/Stack;

    new-instance p1, Ljava/util/LinkedList;

    .line 7
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzl:Ljava/util/LinkedList;

    new-instance p1, Landroid/util/SparseArray;

    .line 8
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzd:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzs:J

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zza()V

    return-void
.end method

.method private final zza()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzm:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzp:I

    return-void
.end method

.method private final zzb(J)V
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzanp;
        }
    .end annotation

    :cond_0
    move-object/from16 v0, p0

    .line 1
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzk:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_48

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzk:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaqi;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzaqi;->zza:J

    cmp-long v5, v1, p1

    if-nez v5, :cond_48

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzk:Ljava/util/Stack;

    .line 2
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaqi;

    .line 3
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaqi;->zzaR:I

    sget v5, Lcom/google/android/gms/internal/ads/zzaqk;->zzE:I

    const/16 v6, 0xc

    const/16 v7, 0x8

    if-ne v2, v5, :cond_c

    .line 4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaqi;->zzb:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaqw;->zzh(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzapk;

    move-result-object v2

    sget v5, Lcom/google/android/gms/internal/ads/zzaqk;->zzP:I

    .line 5
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzaqi;->zzd(I)Lcom/google/android/gms/internal/ads/zzaqi;

    move-result-object v5

    new-instance v15, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    .line 7
    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzaqi;->zzb:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v16, v11

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_5

    .line 8
    iget-object v12, v5, Lcom/google/android/gms/internal/ads/zzaqi;->zzb:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zzaqj;

    .line 9
    iget v13, v12, Lcom/google/android/gms/internal/ads/zzaqj;->zzaR:I

    sget v14, Lcom/google/android/gms/internal/ads/zzaqk;->zzB:I

    if-ne v13, v14, :cond_2

    .line 10
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    .line 11
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 12
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v13

    .line 13
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v14

    .line 14
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v8

    .line 15
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v6

    .line 16
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v12

    .line 17
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v9, Lcom/google/android/gms/internal/ads/zzaqs;

    add-int/lit8 v14, v14, -0x1

    invoke-direct {v9, v14, v8, v6, v12}, Lcom/google/android/gms/internal/ads/zzaqs;-><init>(IIII)V

    invoke-static {v13, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 18
    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/ads/zzaqs;

    invoke-virtual {v15, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 19
    :cond_2
    iget v6, v12, Lcom/google/android/gms/internal/ads/zzaqj;->zzaR:I

    sget v8, Lcom/google/android/gms/internal/ads/zzaqk;->zzQ:I

    if-ne v6, v8, :cond_4

    .line 20
    iget-object v6, v12, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    .line 21
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 22
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzaqk;->zze(I)I

    move-result v8

    if-nez v8, :cond_3

    .line 23
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzp()J

    move-result-wide v8

    :goto_2
    move-wide/from16 v16, v8

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzv()J

    move-result-wide v8

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v11, v11, 0x1

    const/16 v6, 0xc

    goto :goto_1

    :cond_5
    new-instance v5, Landroid/util/SparseArray;

    .line 24
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 25
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzaqi;->zzc:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_8

    .line 26
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaqi;->zzc:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lcom/google/android/gms/internal/ads/zzaqi;

    .line 27
    iget v8, v10, Lcom/google/android/gms/internal/ads/zzaqi;->zzaR:I

    sget v9, Lcom/google/android/gms/internal/ads/zzaqk;->zzG:I

    if-ne v8, v9, :cond_6

    sget v8, Lcom/google/android/gms/internal/ads/zzaqk;->zzF:I

    .line 28
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzaqi;->zzc(I)Lcom/google/android/gms/internal/ads/zzaqj;

    move-result-object v11

    const/4 v8, 0x0

    move-wide/from16 v12, v16

    move-object v14, v2

    move-object v9, v15

    move v15, v8

    invoke-static/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzaqr;->zza(Lcom/google/android/gms/internal/ads/zzaqi;Lcom/google/android/gms/internal/ads/zzaqj;JLcom/google/android/gms/internal/ads/zzapk;Z)Lcom/google/android/gms/internal/ads/zzarc;

    move-result-object v8

    if-eqz v8, :cond_7

    iget v10, v8, Lcom/google/android/gms/internal/ads/zzarc;->zza:I

    .line 29
    invoke-virtual {v5, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    :cond_6
    move-object v9, v15

    :cond_7
    :goto_5
    add-int/lit8 v7, v7, 0x1

    move-object v15, v9

    goto :goto_4

    :cond_8
    move-object v9, v15

    .line 30
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzd:Landroid/util/SparseArray;

    .line 31
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_9

    .line 32
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzarc;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzaqv;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzx:Lcom/google/android/gms/internal/ads/zzapp;

    .line 33
    iget v10, v6, Lcom/google/android/gms/internal/ads/zzarc;->zzb:I

    invoke-interface {v8, v2, v10}, Lcom/google/android/gms/internal/ads/zzapp;->zzbf(II)Lcom/google/android/gms/internal/ads/zzapx;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/ads/zzaqv;-><init>(Lcom/google/android/gms/internal/ads/zzapx;)V

    .line 34
    iget v8, v6, Lcom/google/android/gms/internal/ads/zzarc;->zza:I

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzaqs;

    invoke-virtual {v7, v6, v8}, Lcom/google/android/gms/internal/ads/zzaqv;->zza(Lcom/google/android/gms/internal/ads/zzarc;Lcom/google/android/gms/internal/ads/zzaqs;)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzd:Landroid/util/SparseArray;

    .line 35
    iget v10, v6, Lcom/google/android/gms/internal/ads/zzarc;->zza:I

    invoke-virtual {v8, v10, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzs:J

    .line 36
    iget-wide v10, v6, Lcom/google/android/gms/internal/ads/zzarc;->zze:J

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzs:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzx:Lcom/google/android/gms/internal/ads/zzapp;

    .line 37
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzapp;->zzbg()V

    goto/16 :goto_0

    :cond_a
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzd:Landroid/util/SparseArray;

    .line 38
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v1, :cond_b

    const/16 v20, 0x1

    goto :goto_7

    :cond_b
    const/16 v20, 0x0

    :goto_7
    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzaup;->zzd(Z)V

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1

    .line 39
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzarc;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzd:Landroid/util/SparseArray;

    .line 40
    iget v8, v6, Lcom/google/android/gms/internal/ads/zzarc;->zza:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzaqv;

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzarc;->zza:I

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzaqs;

    invoke-virtual {v7, v6, v8}, Lcom/google/android/gms/internal/ads/zzaqv;->zza(Lcom/google/android/gms/internal/ads/zzarc;Lcom/google/android/gms/internal/ads/zzaqs;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 41
    :cond_c
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaqi;->zzaR:I

    sget v5, Lcom/google/android/gms/internal/ads/zzaqk;->zzN:I

    if-ne v2, v5, :cond_46

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzd:Landroid/util/SparseArray;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzj:[B

    .line 42
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzaqi;->zzc:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v6, :cond_45

    .line 43
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzaqi;->zzc:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzaqi;

    .line 44
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzaqi;->zzaR:I

    sget v11, Lcom/google/android/gms/internal/ads/zzaqk;->zzO:I

    if-ne v10, v11, :cond_44

    sget v10, Lcom/google/android/gms/internal/ads/zzaqk;->zzA:I

    .line 45
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzaqi;->zzc(I)Lcom/google/android/gms/internal/ads/zzaqj;

    move-result-object v10

    .line 46
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    .line 47
    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 48
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v11

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzaqk;->zzf(I)I

    move-result v11

    .line 49
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v12

    .line 50
    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zzaqv;

    if-nez v12, :cond_d

    const/4 v12, 0x0

    goto :goto_e

    :cond_d
    and-int/lit8 v13, v11, 0x1

    if-eqz v13, :cond_e

    .line 51
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaux;->zzv()J

    move-result-wide v13

    iget-object v15, v12, Lcom/google/android/gms/internal/ads/zzaqv;->zza:Lcom/google/android/gms/internal/ads/zzare;

    iput-wide v13, v15, Lcom/google/android/gms/internal/ads/zzare;->zzb:J

    iput-wide v13, v15, Lcom/google/android/gms/internal/ads/zzare;->zzc:J

    :cond_e
    iget-object v13, v12, Lcom/google/android/gms/internal/ads/zzaqv;->zzd:Lcom/google/android/gms/internal/ads/zzaqs;

    and-int/lit8 v14, v11, 0x2

    if-eqz v14, :cond_f

    .line 52
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    goto :goto_a

    :cond_f
    iget v14, v13, Lcom/google/android/gms/internal/ads/zzaqs;->zza:I

    :goto_a
    and-int/lit8 v15, v11, 0x8

    if-eqz v15, :cond_10

    .line 53
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v15

    goto :goto_b

    :cond_10
    iget v15, v13, Lcom/google/android/gms/internal/ads/zzaqs;->zzb:I

    :goto_b
    and-int/lit8 v16, v11, 0x10

    if-eqz v16, :cond_11

    .line 54
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v16

    move/from16 v7, v16

    goto :goto_c

    :cond_11
    iget v7, v13, Lcom/google/android/gms/internal/ads/zzaqs;->zzc:I

    :goto_c
    and-int/lit8 v11, v11, 0x20

    if-eqz v11, :cond_12

    .line 55
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v10

    goto :goto_d

    :cond_12
    iget v10, v13, Lcom/google/android/gms/internal/ads/zzaqs;->zzd:I

    :goto_d
    iget-object v11, v12, Lcom/google/android/gms/internal/ads/zzaqv;->zza:Lcom/google/android/gms/internal/ads/zzare;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzaqs;

    .line 56
    invoke-direct {v13, v14, v15, v7, v10}, Lcom/google/android/gms/internal/ads/zzaqs;-><init>(IIII)V

    iput-object v13, v11, Lcom/google/android/gms/internal/ads/zzare;->zza:Lcom/google/android/gms/internal/ads/zzaqs;

    :goto_e
    if-nez v12, :cond_13

    goto/16 :goto_29

    .line 50
    :cond_13
    iget-object v7, v12, Lcom/google/android/gms/internal/ads/zzaqv;->zza:Lcom/google/android/gms/internal/ads/zzare;

    iget-wide v10, v7, Lcom/google/android/gms/internal/ads/zzare;->zzr:J

    .line 57
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzaqv;->zzb()V

    sget v13, Lcom/google/android/gms/internal/ads/zzaqk;->zzz:I

    .line 58
    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/ads/zzaqi;->zzc(I)Lcom/google/android/gms/internal/ads/zzaqj;

    move-result-object v13

    if-eqz v13, :cond_15

    sget v10, Lcom/google/android/gms/internal/ads/zzaqk;->zzz:I

    .line 59
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzaqi;->zzc(I)Lcom/google/android/gms/internal/ads/zzaqj;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    const/16 v11, 0x8

    .line 60
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 61
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v11

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzaqk;->zze(I)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_14

    .line 62
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaux;->zzv()J

    move-result-wide v10

    goto :goto_f

    :cond_14
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaux;->zzp()J

    move-result-wide v10

    .line 63
    :cond_15
    :goto_f
    iget-object v13, v9, Lcom/google/android/gms/internal/ads/zzaqi;->zzb:Ljava/util/List;

    .line 64
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    move-object/from16 v21, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_10
    if-ge v15, v14, :cond_18

    .line 65
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzaqj;

    move/from16 v22, v6

    .line 66
    iget v6, v4, Lcom/google/android/gms/internal/ads/zzaqj;->zzaR:I

    move-wide/from16 v23, v10

    sget v10, Lcom/google/android/gms/internal/ads/zzaqk;->zzC:I

    if-ne v6, v10, :cond_16

    .line 67
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    const/16 v6, 0xc

    .line 68
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 69
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v4

    if-lez v4, :cond_17

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_16
    const/16 v6, 0xc

    :cond_17
    :goto_11
    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v22

    move-wide/from16 v10, v23

    goto :goto_10

    :cond_18
    move/from16 v22, v6

    move-wide/from16 v23, v10

    const/4 v4, 0x0

    const/16 v6, 0xc

    iput v4, v12, Lcom/google/android/gms/internal/ads/zzaqv;->zzg:I

    iput v4, v12, Lcom/google/android/gms/internal/ads/zzaqv;->zzf:I

    iput v4, v12, Lcom/google/android/gms/internal/ads/zzaqv;->zze:I

    iget-object v4, v12, Lcom/google/android/gms/internal/ads/zzaqv;->zza:Lcom/google/android/gms/internal/ads/zzare;

    iput v2, v4, Lcom/google/android/gms/internal/ads/zzare;->zzd:I

    iput v3, v4, Lcom/google/android/gms/internal/ads/zzare;->zze:I

    iget-object v10, v4, Lcom/google/android/gms/internal/ads/zzare;->zzg:[I

    if-eqz v10, :cond_19

    array-length v10, v10

    if-ge v10, v2, :cond_1a

    .line 70
    :cond_19
    new-array v10, v2, [J

    iput-object v10, v4, Lcom/google/android/gms/internal/ads/zzare;->zzf:[J

    .line 71
    new-array v2, v2, [I

    iput-object v2, v4, Lcom/google/android/gms/internal/ads/zzare;->zzg:[I

    :cond_1a
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzare;->zzh:[I

    if-eqz v2, :cond_1b

    array-length v2, v2

    if-ge v2, v3, :cond_1c

    :cond_1b
    mul-int/lit8 v3, v3, 0x7d

    div-int/lit8 v3, v3, 0x64

    .line 72
    new-array v2, v3, [I

    iput-object v2, v4, Lcom/google/android/gms/internal/ads/zzare;->zzh:[I

    .line 73
    new-array v2, v3, [I

    iput-object v2, v4, Lcom/google/android/gms/internal/ads/zzare;->zzi:[I

    .line 74
    new-array v2, v3, [J

    iput-object v2, v4, Lcom/google/android/gms/internal/ads/zzare;->zzj:[J

    .line 75
    new-array v2, v3, [Z

    iput-object v2, v4, Lcom/google/android/gms/internal/ads/zzare;->zzk:[Z

    .line 76
    new-array v2, v3, [Z

    iput-object v2, v4, Lcom/google/android/gms/internal/ads/zzare;->zzm:[Z

    :cond_1c
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    if-ge v2, v14, :cond_2b

    .line 77
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/google/android/gms/internal/ads/zzaqj;

    .line 78
    iget v15, v6, Lcom/google/android/gms/internal/ads/zzaqj;->zzaR:I

    sget v10, Lcom/google/android/gms/internal/ads/zzaqk;->zzC:I

    if-ne v15, v10, :cond_2a

    add-int/lit8 v10, v3, 0x1

    .line 79
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    const/16 v11, 0x8

    .line 80
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 81
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v11

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzaqk;->zzf(I)I

    move-result v11

    iget-object v15, v12, Lcom/google/android/gms/internal/ads/zzaqv;->zzc:Lcom/google/android/gms/internal/ads/zzarc;

    move/from16 v27, v10

    iget-object v10, v12, Lcom/google/android/gms/internal/ads/zzaqv;->zza:Lcom/google/android/gms/internal/ads/zzare;

    move-object/from16 v28, v13

    iget-object v13, v10, Lcom/google/android/gms/internal/ads/zzare;->zza:Lcom/google/android/gms/internal/ads/zzaqs;

    move/from16 v29, v14

    iget-object v14, v10, Lcom/google/android/gms/internal/ads/zzare;->zzg:[I

    .line 82
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v16

    aput v16, v14, v3

    iget-object v14, v10, Lcom/google/android/gms/internal/ads/zzare;->zzf:[J

    move-object/from16 v30, v1

    iget-wide v0, v10, Lcom/google/android/gms/internal/ads/zzare;->zzb:J

    .line 83
    aput-wide v0, v14, v3

    and-int/lit8 v16, v11, 0x1

    if-eqz v16, :cond_1d

    move/from16 v31, v8

    .line 84
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v8

    move-object/from16 v32, v7

    int-to-long v7, v8

    add-long/2addr v0, v7

    aput-wide v0, v14, v3

    goto :goto_13

    :cond_1d
    move-object/from16 v32, v7

    move/from16 v31, v8

    :goto_13
    and-int/lit8 v0, v11, 0x4

    .line 85
    iget v1, v13, Lcom/google/android/gms/internal/ads/zzaqs;->zzd:I

    if-eqz v0, :cond_1e

    .line 86
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v1

    :cond_1e
    and-int/lit16 v7, v11, 0x100

    and-int/lit16 v8, v11, 0x200

    and-int/lit16 v14, v11, 0x400

    and-int/lit16 v11, v11, 0x800

    move/from16 v33, v1

    .line 87
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzarc;->zzi:[J

    if-eqz v1, :cond_20

    move-object/from16 v34, v5

    array-length v5, v1

    move-object/from16 v35, v12

    const/4 v12, 0x1

    if-ne v5, v12, :cond_1f

    const/4 v5, 0x0

    aget-wide v16, v1, v5

    const-wide/16 v18, 0x0

    cmp-long v1, v16, v18

    if-nez v1, :cond_1f

    .line 88
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzarc;->zzj:[J

    aget-wide v36, v1, v5

    const-wide/16 v38, 0x3e8

    move/from16 v42, v2

    iget-wide v1, v15, Lcom/google/android/gms/internal/ads/zzarc;->zzc:J

    move-wide/from16 v40, v1

    invoke-static/range {v36 .. v41}, Lcom/google/android/gms/internal/ads/zzave;->zzj(JJJ)J

    move-result-wide v1

    move-wide/from16 v25, v1

    goto :goto_15

    :cond_1f
    move/from16 v42, v2

    goto :goto_14

    :cond_20
    move/from16 v42, v2

    move-object/from16 v34, v5

    move-object/from16 v35, v12

    :goto_14
    const-wide/16 v25, 0x0

    :goto_15
    iget-object v1, v10, Lcom/google/android/gms/internal/ads/zzare;->zzh:[I

    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zzare;->zzi:[I

    iget-object v5, v10, Lcom/google/android/gms/internal/ads/zzare;->zzj:[J

    iget-object v12, v10, Lcom/google/android/gms/internal/ads/zzare;->zzk:[Z

    move-object/from16 v43, v9

    .line 89
    iget v9, v15, Lcom/google/android/gms/internal/ads/zzarc;->zzb:I

    iget-object v9, v10, Lcom/google/android/gms/internal/ads/zzare;->zzg:[I

    .line 90
    aget v9, v9, v3

    add-int/2addr v9, v4

    move/from16 v44, v4

    move-object/from16 v45, v5

    .line 91
    iget-wide v4, v15, Lcom/google/android/gms/internal/ads/zzarc;->zzc:J

    if-lez v3, :cond_21

    move-object/from16 v46, v1

    move-object/from16 v47, v2

    iget-wide v1, v10, Lcom/google/android/gms/internal/ads/zzare;->zzr:J

    goto :goto_16

    :cond_21
    move-object/from16 v46, v1

    move-object/from16 v47, v2

    move-wide/from16 v1, v23

    :goto_16
    move-wide v2, v1

    move/from16 v1, v44

    :goto_17
    if-ge v1, v9, :cond_29

    if-eqz v7, :cond_22

    .line 92
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v15

    goto :goto_18

    .line 93
    :cond_22
    iget v15, v13, Lcom/google/android/gms/internal/ads/zzaqs;->zzb:I

    :goto_18
    if-eqz v8, :cond_23

    .line 94
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v16

    move/from16 v48, v7

    goto :goto_19

    :cond_23
    move/from16 v48, v7

    iget v7, v13, Lcom/google/android/gms/internal/ads/zzaqs;->zzc:I

    move/from16 v16, v7

    :goto_19
    if-nez v1, :cond_25

    if-eqz v0, :cond_24

    move/from16 v7, v33

    const/4 v1, 0x0

    goto :goto_1a

    :cond_24
    const/4 v1, 0x0

    :cond_25
    if-eqz v14, :cond_26

    .line 95
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v7

    goto :goto_1a

    :cond_26
    iget v7, v13, Lcom/google/android/gms/internal/ads/zzaqs;->zzd:I

    :goto_1a
    if-eqz v11, :cond_27

    move/from16 v49, v0

    .line 96
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v50, v8

    move/from16 v51, v9

    int-to-long v8, v0

    .line 97
    div-long/2addr v8, v4

    long-to-int v0, v8

    aput v0, v47, v1

    goto :goto_1b

    :cond_27
    move/from16 v49, v0

    move/from16 v50, v8

    move/from16 v51, v9

    const/4 v0, 0x0

    .line 98
    aput v0, v47, v1

    :goto_1b
    const-wide/16 v38, 0x3e8

    move-wide/from16 v36, v2

    move-wide/from16 v40, v4

    .line 99
    invoke-static/range {v36 .. v41}, Lcom/google/android/gms/internal/ads/zzave;->zzj(JJJ)J

    move-result-wide v8

    sub-long v8, v8, v25

    aput-wide v8, v45, v1

    .line 100
    aput v16, v46, v1

    const/16 v0, 0x10

    shr-int/2addr v7, v0

    const/4 v0, 0x1

    and-int/2addr v7, v0

    xor-int/2addr v7, v0

    if-eq v0, v7, :cond_28

    const/4 v0, 0x0

    goto :goto_1c

    :cond_28
    const/4 v0, 0x1

    .line 101
    :goto_1c
    aput-boolean v0, v12, v1

    int-to-long v7, v15

    add-long/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    move/from16 v7, v48

    move/from16 v0, v49

    move/from16 v8, v50

    move/from16 v9, v51

    goto :goto_17

    :cond_29
    move/from16 v51, v9

    .line 93
    iput-wide v2, v10, Lcom/google/android/gms/internal/ads/zzare;->zzr:J

    move/from16 v3, v27

    move/from16 v4, v51

    goto :goto_1d

    :cond_2a
    move-object/from16 v30, v1

    move/from16 v42, v2

    move/from16 v44, v4

    move-object/from16 v34, v5

    move-object/from16 v32, v7

    move/from16 v31, v8

    move-object/from16 v43, v9

    move-object/from16 v35, v12

    move-object/from16 v28, v13

    move/from16 v29, v14

    :goto_1d
    add-int/lit8 v2, v42, 0x1

    move-object/from16 v13, v28

    move/from16 v14, v29

    move-object/from16 v1, v30

    move/from16 v8, v31

    move-object/from16 v7, v32

    move-object/from16 v5, v34

    move-object/from16 v12, v35

    move-object/from16 v9, v43

    move-object/from16 v0, p0

    const/16 v6, 0xc

    goto/16 :goto_12

    :cond_2b
    move-object/from16 v30, v1

    move-object/from16 v34, v5

    move-object/from16 v32, v7

    move/from16 v31, v8

    move-object/from16 v43, v9

    move-object/from16 v35, v12

    sget v0, Lcom/google/android/gms/internal/ads/zzaqk;->zzaf:I

    .line 102
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzaqi;->zzc(I)Lcom/google/android/gms/internal/ads/zzaqj;

    move-result-object v0

    if-eqz v0, :cond_32

    move-object/from16 v12, v35

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzaqv;->zzc:Lcom/google/android/gms/internal/ads/zzarc;

    .line 103
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzarc;->zzh:[Lcom/google/android/gms/internal/ads/zzard;

    move-object/from16 v2, v32

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzare;->zza:Lcom/google/android/gms/internal/ads/zzaqs;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzaqs;->zza:I

    aget-object v1, v1, v3

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    .line 104
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzard;->zza:I

    const/16 v3, 0x8

    .line 105
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaqk;->zzf(I)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2c

    .line 107
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 108
    :cond_2c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzl()I

    move-result v3

    .line 109
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v4

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzare;->zze:I

    if-ne v4, v5, :cond_31

    if-nez v3, :cond_2e

    .line 155
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzare;->zzm:[Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1e
    if-ge v5, v4, :cond_30

    .line 110
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzl()I

    move-result v7

    add-int/2addr v6, v7

    if-le v7, v1, :cond_2d

    const/4 v7, 0x1

    goto :goto_1f

    :cond_2d
    const/4 v7, 0x0

    .line 111
    :goto_1f
    aput-boolean v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_2e
    if-le v3, v1, :cond_2f

    const/4 v0, 0x1

    goto :goto_20

    :cond_2f
    const/4 v0, 0x0

    :goto_20
    mul-int v6, v3, v4

    .line 119
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzare;->zzm:[Z

    const/4 v3, 0x0

    .line 112
    invoke-static {v1, v3, v4, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 113
    :cond_30
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzare;->zza(I)V

    goto :goto_21

    .line 109
    :cond_31
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanp;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    .line 155
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Length mismatch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    move-object/from16 v2, v32

    .line 113
    :goto_21
    sget v0, Lcom/google/android/gms/internal/ads/zzaqk;->zzag:I

    .line 114
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzaqi;->zzc(I)Lcom/google/android/gms/internal/ads/zzaqj;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    const/16 v1, 0x8

    .line 115
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 116
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaqk;->zzf(I)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_33

    .line 117
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 118
    :cond_33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v1

    if-ne v1, v5, :cond_35

    .line 156
    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzare;->zzc:J

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaqk;->zze(I)I

    move-result v1

    if-nez v1, :cond_34

    .line 119
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzp()J

    move-result-wide v0

    goto :goto_22

    :cond_34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzv()J

    move-result-wide v0

    :goto_22
    const/4 v3, 0x0

    add-long/2addr v4, v0

    iput-wide v4, v2, Lcom/google/android/gms/internal/ads/zzare;->zzc:J

    goto :goto_23

    .line 118
    :cond_35
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanp;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    .line 156
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected saio entry count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_36
    :goto_23
    sget v0, Lcom/google/android/gms/internal/ads/zzaqk;->zzak:I

    .line 120
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzaqi;->zzc(I)Lcom/google/android/gms/internal/ads/zzaqj;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    const/4 v1, 0x0

    .line 121
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaqw;->zzc(Lcom/google/android/gms/internal/ads/zzaux;ILcom/google/android/gms/internal/ads/zzare;)V

    :cond_37
    sget v0, Lcom/google/android/gms/internal/ads/zzaqk;->zzah:I

    .line 122
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzaqi;->zzc(I)Lcom/google/android/gms/internal/ads/zzaqj;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/ads/zzaqk;->zzai:I

    .line 123
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/zzaqi;->zzc(I)Lcom/google/android/gms/internal/ads/zzaqj;

    move-result-object v1

    if-eqz v0, :cond_3f

    if-eqz v1, :cond_3f

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    const/16 v3, 0x8

    .line 124
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 125
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v3

    .line 126
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v4

    sget v5, Lcom/google/android/gms/internal/ads/zzaqw;->zzb:I

    if-eq v4, v5, :cond_38

    goto/16 :goto_25

    .line 147
    :cond_38
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaqk;->zze(I)I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ne v3, v5, :cond_39

    .line 127
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 128
    :cond_39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v0

    if-ne v0, v5, :cond_3e

    const/16 v0, 0x8

    .line 129
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 130
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v0

    .line 131
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v3

    sget v6, Lcom/google/android/gms/internal/ads/zzaqw;->zzb:I

    if-ne v3, v6, :cond_3f

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaqk;->zze(I)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v5, :cond_3b

    .line 132
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzp()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3a

    goto :goto_24

    .line 153
    :cond_3a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanp;

    const-string v1, "Variable length decription in sgpd found (unsupported)"

    .line 158
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    if-lt v0, v3, :cond_3c

    .line 133
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 134
    :cond_3c
    :goto_24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzp()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3d

    .line 135
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 136
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzl()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_40

    .line 137
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzl()I

    move-result v0

    const/16 v4, 0x10

    new-array v5, v4, [B

    const/4 v6, 0x0

    .line 138
    invoke-virtual {v1, v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzaux;->zzk([BII)V

    iput-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzare;->zzl:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/zzard;

    .line 139
    invoke-direct {v1, v3, v0, v5}, Lcom/google/android/gms/internal/ads/zzard;-><init>(ZI[B)V

    iput-object v1, v2, Lcom/google/android/gms/internal/ads/zzare;->zzn:Lcom/google/android/gms/internal/ads/zzard;

    goto :goto_26

    .line 134
    :cond_3d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanp;

    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    .line 159
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_3e
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanp;

    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    .line 157
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    :goto_25
    const/4 v3, 0x1

    .line 140
    :cond_40
    :goto_26
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzaqi;->zzb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_27
    if-ge v1, v0, :cond_43

    .line 141
    iget-object v4, v9, Lcom/google/android/gms/internal/ads/zzaqi;->zzb:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzaqj;

    .line 142
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzaqj;->zzaR:I

    sget v6, Lcom/google/android/gms/internal/ads/zzaqk;->zzaj:I

    if-ne v5, v6, :cond_41

    .line 143
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    const/16 v5, 0x8

    .line 144
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    move-object/from16 v6, v34

    const/4 v7, 0x0

    const/16 v8, 0x10

    .line 145
    invoke-virtual {v4, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzaux;->zzk([BII)V

    sget-object v10, Lcom/google/android/gms/internal/ads/zzaqw;->zzc:[B

    .line 146
    invoke-static {v6, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_42

    .line 147
    invoke-static {v4, v8, v2}, Lcom/google/android/gms/internal/ads/zzaqw;->zzc(Lcom/google/android/gms/internal/ads/zzaux;ILcom/google/android/gms/internal/ads/zzare;)V

    goto :goto_28

    :cond_41
    move-object/from16 v6, v34

    const/16 v5, 0x8

    const/4 v7, 0x0

    const/16 v8, 0x10

    :cond_42
    :goto_28
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v34, v6

    goto :goto_27

    :cond_43
    move-object/from16 v6, v34

    const/16 v5, 0x8

    const/4 v7, 0x0

    goto :goto_2a

    :cond_44
    :goto_29
    move-object/from16 v30, v1

    move-object/from16 v21, v2

    move/from16 v22, v6

    move/from16 v31, v8

    const/4 v3, 0x1

    const/4 v7, 0x0

    move-object v6, v5

    const/16 v5, 0x8

    :goto_2a
    add-int/lit8 v8, v31, 0x1

    move-object v5, v6

    move-object/from16 v2, v21

    move/from16 v6, v22

    move-object/from16 v1, v30

    move-object/from16 v0, p0

    const/16 v7, 0x8

    goto/16 :goto_9

    :cond_45
    const/4 v7, 0x0

    .line 148
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaqi;->zzb:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzh(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzapk;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object/from16 v2, p0

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzaqw;->zzd:Landroid/util/SparseArray;

    .line 149
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_2b
    if-ge v7, v1, :cond_47

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaqw;->zzd:Landroid/util/SparseArray;

    .line 150
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaqv;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzaqv;->zzb:Lcom/google/android/gms/internal/ads/zzapx;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaqv;->zzc:Lcom/google/android/gms/internal/ads/zzarc;

    .line 151
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzarc;->zzf:Lcom/google/android/gms/internal/ads/zzanm;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzanm;->zzi(Lcom/google/android/gms/internal/ads/zzapk;)Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzapx;->zza(Lcom/google/android/gms/internal/ads/zzanm;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    :cond_46
    move-object v2, v0

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaqw;->zzk:Ljava/util/Stack;

    .line 152
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzaqw;->zzk:Ljava/util/Stack;

    .line 153
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaqi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqi;->zzb(Lcom/google/android/gms/internal/ads/zzaqi;)V

    :cond_47
    move-object v0, v2

    goto/16 :goto_0

    :cond_48
    move-object v2, v0

    .line 154
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zza()V

    return-void
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzaux;ILcom/google/android/gms/internal/ads/zzare;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzanp;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaqk;->zzf(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v1

    iget v2, p2, Lcom/google/android/gms/internal/ads/zzare;->zze:I

    if-ne v1, v2, :cond_1

    .line 6
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzare;->zzm:[Z

    .line 7
    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaux;->zzd()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzare;->zza(I)V

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzare;->zzp:Lcom/google/android/gms/internal/ads/zzaux;

    .line 9
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzare;->zzo:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzk([BII)V

    iget-object p0, p2, Lcom/google/android/gms/internal/ads/zzare;->zzp:Lcom/google/android/gms/internal/ads/zzaux;

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    iput-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzare;->zzq:Z

    return-void

    .line 5
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzanp;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    .line 6
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Length mismatch: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzanp;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzh(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzapk;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaqj;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzapk;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_a

    .line 2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzaqj;

    .line 3
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzaqj;->zzaR:I

    sget v7, Lcom/google/android/gms/internal/ads/zzaqk;->zzX:I

    if-ne v6, v7, :cond_9

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_0
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaux;

    .line 6
    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/ads/zzaux;-><init>([B)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaux;->zze()I

    move-result v7

    const/16 v8, 0x20

    if-ge v7, v8, :cond_1

    :goto_1
    move-object v6, v2

    goto :goto_2

    .line 7
    :cond_1
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 8
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v7

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzd()I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    if-eq v7, v8, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v7

    sget v8, Lcom/google/android/gms/internal/ads/zzaqk;->zzX:I

    if-eq v7, v8, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzaqk;->zze(I)I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v8, 0x25

    .line 11
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Unsupported pssh version: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "PsshAtomUtil"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    new-instance v9, Ljava/util/UUID;

    .line 12
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzs()J

    move-result-wide v10

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzs()J

    move-result-wide v12

    invoke-direct {v9, v10, v11, v12, v13}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v7, v8, :cond_5

    .line 13
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v7

    mul-int/lit8 v7, v7, 0x10

    .line 14
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 15
    :cond_5
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v7

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzd()I

    move-result v8

    if-eq v7, v8, :cond_6

    goto :goto_1

    :cond_6
    new-array v8, v7, [B

    .line 16
    invoke-virtual {v6, v8, v1, v7}, Lcom/google/android/gms/internal/ads/zzaux;->zzk([BII)V

    .line 17
    invoke-static {v9, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    :goto_2
    if-nez v6, :cond_7

    move-object v6, v2

    goto :goto_3

    .line 18
    :cond_7
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/UUID;

    :goto_3
    if-nez v6, :cond_8

    const-string v5, "FragmentedMp4Extractor"

    const-string v6, "Skipped pssh atom (failed to extract uuid)"

    .line 19
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    new-instance v7, Lcom/google/android/gms/internal/ads/zzapj;

    const-string v8, "video/mp4"

    .line 20
    invoke-direct {v7, v6, v8, v5, v1}, Lcom/google/android/gms/internal/ads/zzapj;-><init>(Ljava/util/UUID;Ljava/lang/String;[BZ)V

    .line 21
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    if-nez v4, :cond_b

    return-object v2

    .line 17
    :cond_b
    new-instance p0, Lcom/google/android/gms/internal/ads/zzapk;

    .line 22
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzapk;-><init>(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/ads/zzapp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzx:Lcom/google/android/gms/internal/ads/zzapp;

    return-void
.end method

.method public final zze(JJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzd:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzd:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzaqv;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzaqv;->zzb()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzl:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqw;->zzk:Ljava/util/Stack;

    .line 4
    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zza()V

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
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzarb;->zza(Lcom/google/android/gms/internal/ads/zzapn;)Z

    move-result p1

    return p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzapn;Lcom/google/android/gms/internal/ads/zzapt;)I
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :goto_0
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzm:I

    const/4 v3, -0x1

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v12, 0x0

    packed-switch v2, :pswitch_data_0

    if-ne v2, v6, :cond_25

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzt:Lcom/google/android/gms/internal/ads/zzaqv;

    if-nez v2, :cond_1f

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzd:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v11

    move-wide v12, v4

    move-object v5, v9

    const/4 v4, 0x0

    goto/16 :goto_8

    .line 64
    :pswitch_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzd:Landroid/util/SparseArray;

    .line 51
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzd:Landroid/util/SparseArray;

    .line 52
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzaqv;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzaqv;->zza:Lcom/google/android/gms/internal/ads/zzare;

    iget-boolean v8, v7, Lcom/google/android/gms/internal/ads/zzare;->zzq:Z

    if-eqz v8, :cond_0

    iget-wide v7, v7, Lcom/google/android/gms/internal/ads/zzare;->zzc:J

    cmp-long v10, v7, v4

    if-gez v10, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzd:Landroid/util/SparseArray;

    .line 53
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzaqv;

    move-object v9, v4

    move-wide v4, v7

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-nez v9, :cond_2

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzm:I

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzapn;->zzh()J

    move-result-wide v2

    sub-long/2addr v4, v2

    long-to-int v2, v4

    if-ltz v2, :cond_3

    .line 54
    invoke-virtual {v1, v2, v12}, Lcom/google/android/gms/internal/ads/zzapn;->zzd(IZ)Z

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzaqv;->zza:Lcom/google/android/gms/internal/ads/zzare;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzare;->zzp:Lcom/google/android/gms/internal/ads/zzaux;

    .line 55
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzare;->zzo:I

    .line 56
    invoke-virtual {v1, v3, v12, v4, v12}, Lcom/google/android/gms/internal/ads/zzapn;->zzb([BIIZ)Z

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzare;->zzp:Lcom/google/android/gms/internal/ads/zzaux;

    .line 57
    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    iput-boolean v12, v2, Lcom/google/android/gms/internal/ads/zzare;->zzq:Z

    goto :goto_0

    .line 53
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzanp;

    const-string v2, "Offset to encryption data was negative."

    .line 116
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :pswitch_1
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzo:J

    long-to-int v2, v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzp:I

    sub-int/2addr v2, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzq:Lcom/google/android/gms/internal/ads/zzaux;

    if-eqz v3, :cond_8

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    .line 23
    invoke-virtual {v1, v3, v10, v2, v12}, Lcom/google/android/gms/internal/ads/zzapn;->zzb([BIIZ)Z

    .line 24
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaqj;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzn:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzq:Lcom/google/android/gms/internal/ads/zzaux;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaqj;-><init>(ILcom/google/android/gms/internal/ads/zzaux;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzapn;->zzh()J

    move-result-wide v3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzk:Ljava/util/Stack;

    .line 25
    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzk:Ljava/util/Stack;

    .line 26
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaqi;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzaqi;->zza(Lcom/google/android/gms/internal/ads/zzaqj;)V

    goto/16 :goto_4

    .line 50
    :cond_4
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzaqj;->zzaR:I

    sget v6, Lcom/google/android/gms/internal/ads/zzaqk;->zzD:I

    if-ne v5, v6, :cond_9

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaux;

    .line 27
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v5

    .line 29
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzp()J

    move-result-wide v9

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaqk;->zze(I)I

    move-result v5

    if-nez v5, :cond_5

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzp()J

    move-result-wide v5

    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzp()J

    move-result-wide v13

    add-long/2addr v3, v13

    goto :goto_2

    .line 33
    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzv()J

    move-result-wide v5

    .line 34
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzv()J

    move-result-wide v13

    add-long/2addr v3, v13

    :goto_2
    const-wide/32 v15, 0xf4240

    move-wide v13, v5

    move-wide/from16 v17, v9

    .line 35
    invoke-static/range {v13 .. v18}, Lcom/google/android/gms/internal/ads/zzave;->zzj(JJJ)J

    move-result-wide v19

    .line 36
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzm()I

    move-result v7

    new-array v15, v7, [I

    new-array v13, v7, [J

    new-array v14, v7, [J

    new-array v12, v7, [J

    move-wide/from16 v21, v5

    move-wide/from16 v16, v19

    move-wide v4, v3

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v7, :cond_7

    .line 38
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v6

    const/high16 v18, -0x80000000

    and-int v18, v6, v18

    if-nez v18, :cond_6

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzp()J

    move-result-wide v23

    const v18, 0x7fffffff

    and-int v6, v6, v18

    .line 40
    aput v6, v15, v3

    .line 41
    aput-wide v4, v13, v3

    .line 42
    aput-wide v16, v12, v3

    add-long v21, v21, v23

    const-wide/32 v16, 0xf4240

    move-object v6, v13

    move-object v11, v14

    move-wide/from16 v13, v21

    move-object/from16 v25, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v9

    .line 43
    invoke-static/range {v13 .. v18}, Lcom/google/android/gms/internal/ads/zzave;->zzj(JJJ)J

    move-result-wide v16

    .line 44
    aget-wide v13, v12, v3

    sub-long v13, v16, v13

    aput-wide v13, v11, v3

    .line 45
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    move-object/from16 v13, v25

    .line 46
    aget v14, v13, v3

    int-to-long v14, v14

    add-long/2addr v4, v14

    add-int/lit8 v3, v3, 0x1

    move-object v14, v11

    move-object v15, v13

    move-object v13, v6

    goto :goto_3

    .line 38
    :cond_6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzanp;

    const-string v2, "Unhandled indirect reference"

    .line 115
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move-object v6, v13

    move-object v11, v14

    move-object v13, v15

    .line 47
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzapm;

    invoke-direct {v3, v13, v6, v11, v12}, Lcom/google/android/gms/internal/ads/zzapm;-><init>([I[J[J[J)V

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 48
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzx:Lcom/google/android/gms/internal/ads/zzapp;

    .line 49
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzapv;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzapp;->zzc(Lcom/google/android/gms/internal/ads/zzapv;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzy:Z

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    .line 22
    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzapn;->zzd(IZ)Z

    .line 26
    :cond_9
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzapn;->zzh()J

    move-result-wide v2

    .line 50
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaqw;->zzb(J)V

    goto/16 :goto_0

    :pswitch_2
    const/4 v4, 0x0

    .line 57
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzp:I

    if-nez v2, :cond_b

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzi:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    const/4 v5, 0x1

    .line 7
    invoke-virtual {v1, v2, v4, v10, v5}, Lcom/google/android/gms/internal/ads/zzapn;->zzb([BIIZ)Z

    move-result v2

    if-nez v2, :cond_a

    return v3

    :cond_a
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzp:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzi:Lcom/google/android/gms/internal/ads/zzaux;

    .line 8
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzi:Lcom/google/android/gms/internal/ads/zzaux;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzp()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzo:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzi:Lcom/google/android/gms/internal/ads/zzaux;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzr()I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzn:I

    :cond_b
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzo:J

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_c

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzi:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, v10, v10, v3}, Lcom/google/android/gms/internal/ads/zzapn;->zzb([BIIZ)Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzp:I

    add-int/2addr v2, v10

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzp:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzi:Lcom/google/android/gms/internal/ads/zzaux;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaux;->zzv()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzo:J

    :cond_c
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzp:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_18

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzapn;->zzh()J

    move-result-wide v2

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzp:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzn:I

    .line 13
    sget v5, Lcom/google/android/gms/internal/ads/zzaqk;->zzN:I

    if-ne v4, v5, :cond_d

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzd:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_d

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzd:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzaqv;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzaqv;->zza:Lcom/google/android/gms/internal/ads/zzare;

    iput-wide v2, v6, Lcom/google/android/gms/internal/ads/zzare;->zzc:J

    iput-wide v2, v6, Lcom/google/android/gms/internal/ads/zzare;->zzb:J

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_d
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzn:I

    sget v5, Lcom/google/android/gms/internal/ads/zzaqk;->zzk:I

    if-ne v4, v5, :cond_f

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzt:Lcom/google/android/gms/internal/ads/zzaqv;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzo:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzr:J

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzy:Z

    if-nez v2, :cond_e

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzx:Lcom/google/android/gms/internal/ads/zzapp;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzapu;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzs:J

    .line 16
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzapu;-><init>(J)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzapp;->zzc(Lcom/google/android/gms/internal/ads/zzapv;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzy:Z

    :cond_e
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzm:I

    goto/16 :goto_0

    :cond_f
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzn:I

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzE:I

    if-eq v2, v3, :cond_16

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzG:I

    if-eq v2, v3, :cond_16

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzH:I

    if-eq v2, v3, :cond_16

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzI:I

    if-eq v2, v3, :cond_16

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzJ:I

    if-eq v2, v3, :cond_16

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzN:I

    if-eq v2, v3, :cond_16

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzO:I

    if-eq v2, v3, :cond_16

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzP:I

    if-eq v2, v3, :cond_16

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzS:I

    if-ne v2, v3, :cond_10

    goto/16 :goto_7

    .line 19
    :cond_10
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzn:I

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzV:I

    const-wide/32 v4, 0x7fffffff

    if-eq v2, v3, :cond_13

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzU:I

    if-eq v2, v3, :cond_13

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzF:I

    if-eq v2, v3, :cond_13

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzD:I

    if-eq v2, v3, :cond_13

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzW:I

    if-eq v2, v3, :cond_13

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzz:I

    if-eq v2, v3, :cond_13

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzA:I

    if-eq v2, v3, :cond_13

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzR:I

    if-eq v2, v3, :cond_13

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzB:I

    if-eq v2, v3, :cond_13

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzC:I

    if-eq v2, v3, :cond_13

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzX:I

    if-eq v2, v3, :cond_13

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzaf:I

    if-eq v2, v3, :cond_13

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzag:I

    if-eq v2, v3, :cond_13

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzak:I

    if-eq v2, v3, :cond_13

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzaj:I

    if-eq v2, v3, :cond_13

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzah:I

    if-eq v2, v3, :cond_13

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzai:I

    if-eq v2, v3, :cond_13

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzT:I

    if-eq v2, v3, :cond_13

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzQ:I

    if-eq v2, v3, :cond_13

    sget v3, Lcom/google/android/gms/internal/ads/zzaqk;->zzaI:I

    if-ne v2, v3, :cond_11

    goto :goto_6

    .line 21
    :cond_11
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzo:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_12

    .line 114
    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzq:Lcom/google/android/gms/internal/ads/zzaux;

    const/4 v2, 0x1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzm:I

    goto/16 :goto_0

    .line 21
    :cond_12
    new-instance v1, Lcom/google/android/gms/internal/ads/zzanp;

    const-string v2, "Skipping atom with length > 2147483647 (unsupported)."

    .line 114
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_13
    :goto_6
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzp:I

    if-ne v2, v10, :cond_15

    .line 112
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzo:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_14

    .line 113
    new-instance v4, Lcom/google/android/gms/internal/ads/zzaux;

    long-to-int v2, v2

    .line 20
    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzaux;-><init>(I)V

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzq:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzi:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzq:Lcom/google/android/gms/internal/ads/zzaux;

    .line 21
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzm:I

    goto/16 :goto_0

    .line 112
    :cond_14
    new-instance v1, Lcom/google/android/gms/internal/ads/zzanp;

    const-string v2, "Leaf atom with length > 2147483647 (unsupported)."

    .line 113
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_15
    new-instance v1, Lcom/google/android/gms/internal/ads/zzanp;

    const-string v2, "Leaf atom defines extended atom size (unsupported)."

    .line 112
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_16
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzapn;->zzh()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzo:J

    add-long/2addr v2, v4

    const-wide/16 v4, -0x8

    add-long/2addr v2, v4

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzk:Ljava/util/Stack;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzaqi;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzn:I

    .line 17
    invoke-direct {v5, v6, v2, v3}, Lcom/google/android/gms/internal/ads/zzaqi;-><init>(IJ)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzo:J

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzp:I

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_17

    .line 18
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaqw;->zzb(J)V

    goto/16 :goto_0

    .line 19
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zza()V

    goto/16 :goto_0

    .line 12
    :cond_18
    new-instance v1, Lcom/google/android/gms/internal/ads/zzanp;

    const-string v2, "Atom size less than header length (unsupported)."

    .line 111
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_8
    if-ge v4, v11, :cond_1b

    .line 2
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzaqv;

    .line 3
    iget v15, v14, Lcom/google/android/gms/internal/ads/zzaqv;->zzg:I

    iget-object v6, v14, Lcom/google/android/gms/internal/ads/zzaqv;->zza:Lcom/google/android/gms/internal/ads/zzare;

    iget v9, v6, Lcom/google/android/gms/internal/ads/zzare;->zzd:I

    if-ne v15, v9, :cond_19

    goto :goto_9

    :cond_19
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzare;->zzf:[J

    .line 4
    aget-wide v15, v6, v15

    cmp-long v6, v15, v12

    if-gez v6, :cond_1a

    move-object v5, v14

    move-wide v12, v15

    :cond_1a
    :goto_9
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x3

    const/4 v9, 0x0

    goto :goto_8

    :cond_1b
    if-nez v5, :cond_1d

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzr:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzapn;->zzh()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    if-ltz v2, :cond_1c

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzapn;->zzd(IZ)Z

    .line 6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zza()V

    goto/16 :goto_0

    .line 4
    :cond_1c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzanp;

    const-string v2, "Offset to end of mdat was negative."

    .line 58
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_1d
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzaqv;->zza:Lcom/google/android/gms/internal/ads/zzare;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzare;->zzf:[J

    iget v4, v5, Lcom/google/android/gms/internal/ads/zzaqv;->zzg:I

    .line 59
    aget-wide v11, v2, v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzapn;->zzh()J

    move-result-wide v13

    sub-long/2addr v11, v13

    long-to-int v12, v11

    if-gez v12, :cond_1e

    const-string v2, "FragmentedMp4Extractor"

    const-string v4, "Ignoring negative offset to sample data."

    .line 60
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v12, 0x0

    goto :goto_a

    :cond_1e
    const/4 v2, 0x0

    .line 61
    :goto_a
    invoke-virtual {v1, v12, v2}, Lcom/google/android/gms/internal/ads/zzapn;->zzd(IZ)Z

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzt:Lcom/google/android/gms/internal/ads/zzaqv;

    :cond_1f
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzt:Lcom/google/android/gms/internal/ads/zzaqv;

    .line 62
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzaqv;->zza:Lcom/google/android/gms/internal/ads/zzare;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzare;->zzh:[I

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzaqv;->zze:I

    aget v5, v5, v6

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzu:I

    iget-boolean v9, v4, Lcom/google/android/gms/internal/ads/zzare;->zzl:Z

    if-eqz v9, :cond_23

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzare;->zzp:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/zzare;->zza:Lcom/google/android/gms/internal/ads/zzaqs;

    .line 63
    iget v9, v9, Lcom/google/android/gms/internal/ads/zzaqs;->zza:I

    iget-object v11, v4, Lcom/google/android/gms/internal/ads/zzare;->zzn:Lcom/google/android/gms/internal/ads/zzard;

    if-eqz v11, :cond_20

    goto :goto_b

    .line 64
    :cond_20
    iget-object v11, v2, Lcom/google/android/gms/internal/ads/zzaqv;->zzc:Lcom/google/android/gms/internal/ads/zzarc;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzarc;->zzh:[Lcom/google/android/gms/internal/ads/zzard;

    aget-object v11, v11, v9

    .line 65
    :goto_b
    iget v9, v11, Lcom/google/android/gms/internal/ads/zzard;->zza:I

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzare;->zzm:[Z

    .line 66
    aget-boolean v4, v4, v6

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzh:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v11, v6, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    const/4 v12, 0x1

    if-eq v12, v4, :cond_21

    const/4 v13, 0x0

    goto :goto_c

    :cond_21
    const/16 v13, 0x80

    :goto_c
    or-int/2addr v13, v9

    int-to-byte v13, v13

    const/4 v14, 0x0

    .line 67
    aput-byte v13, v11, v14

    .line 68
    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    .line 69
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaqv;->zzb:Lcom/google/android/gms/internal/ads/zzapx;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzh:Lcom/google/android/gms/internal/ads/zzaux;

    .line 70
    invoke-interface {v2, v6, v12}, Lcom/google/android/gms/internal/ads/zzapx;->zzb(Lcom/google/android/gms/internal/ads/zzaux;I)V

    .line 71
    invoke-interface {v2, v5, v9}, Lcom/google/android/gms/internal/ads/zzapx;->zzb(Lcom/google/android/gms/internal/ads/zzaux;I)V

    if-nez v4, :cond_22

    add-int/2addr v9, v12

    goto :goto_d

    .line 72
    :cond_22
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaux;->zzm()I

    move-result v4

    const/4 v6, -0x2

    .line 73
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    mul-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v7

    .line 74
    invoke-interface {v2, v5, v4}, Lcom/google/android/gms/internal/ads/zzapx;->zzb(Lcom/google/android/gms/internal/ads/zzaux;I)V

    add-int/2addr v9, v12

    add-int/2addr v9, v4

    .line 71
    :goto_d
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzv:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzu:I

    add-int v5, v2, v9

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzu:I

    const/4 v2, 0x0

    goto :goto_e

    :cond_23
    const/4 v2, 0x0

    .line 64
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzv:I

    .line 71
    :goto_e
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzt:Lcom/google/android/gms/internal/ads/zzaqv;

    .line 75
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzaqv;->zzc:Lcom/google/android/gms/internal/ads/zzarc;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzarc;->zzg:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_24

    add-int/lit8 v5, v5, -0x8

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzu:I

    .line 76
    invoke-virtual {v1, v10, v2}, Lcom/google/android/gms/internal/ads/zzapn;->zzd(IZ)Z

    :cond_24
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzm:I

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzw:I

    :cond_25
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzt:Lcom/google/android/gms/internal/ads/zzaqv;

    .line 77
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzaqv;->zza:Lcom/google/android/gms/internal/ads/zzare;

    .line 78
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzaqv;->zzc:Lcom/google/android/gms/internal/ads/zzarc;

    .line 79
    iget-object v9, v2, Lcom/google/android/gms/internal/ads/zzaqv;->zzb:Lcom/google/android/gms/internal/ads/zzapx;

    .line 80
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaqv;->zze:I

    .line 81
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzarc;->zzk:I

    if-nez v6, :cond_26

    :goto_f
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzv:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzu:I

    if-ge v3, v6, :cond_28

    sub-int/2addr v6, v3

    const/4 v10, 0x0

    .line 82
    invoke-interface {v9, v1, v6, v10}, Lcom/google/android/gms/internal/ads/zzapx;->zzd(Lcom/google/android/gms/internal/ads/zzapn;IZ)I

    move-result v3

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzv:I

    add-int/2addr v6, v3

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzv:I

    goto :goto_f

    :cond_26
    const/4 v10, 0x0

    .line 98
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzf:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    .line 83
    aput-byte v10, v11, v10

    const/4 v12, 0x1

    .line 84
    aput-byte v10, v11, v12

    .line 85
    aput-byte v10, v11, v7

    add-int/lit8 v7, v6, 0x1

    rsub-int/lit8 v6, v6, 0x4

    :goto_10
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzv:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzu:I

    if-ge v12, v13, :cond_28

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzw:I

    if-nez v12, :cond_27

    .line 86
    invoke-virtual {v1, v11, v6, v7, v10}, Lcom/google/android/gms/internal/ads/zzapn;->zzb([BIIZ)Z

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzf:Lcom/google/android/gms/internal/ads/zzaux;

    .line 87
    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzf:Lcom/google/android/gms/internal/ads/zzaux;

    .line 88
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v12

    add-int/2addr v12, v3

    iput v12, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzw:I

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zze:Lcom/google/android/gms/internal/ads/zzaux;

    .line 89
    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zze:Lcom/google/android/gms/internal/ads/zzaux;

    .line 90
    invoke-interface {v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzapx;->zzb(Lcom/google/android/gms/internal/ads/zzaux;I)V

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzf:Lcom/google/android/gms/internal/ads/zzaux;

    const/4 v12, 0x1

    .line 91
    invoke-interface {v9, v10, v12}, Lcom/google/android/gms/internal/ads/zzapx;->zzb(Lcom/google/android/gms/internal/ads/zzaux;I)V

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzv:I

    add-int/lit8 v10, v10, 0x5

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzv:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzu:I

    add-int/2addr v10, v6

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzu:I

    :goto_11
    const/4 v10, 0x0

    goto :goto_10

    .line 92
    :cond_27
    invoke-interface {v9, v1, v12, v10}, Lcom/google/android/gms/internal/ads/zzapx;->zzd(Lcom/google/android/gms/internal/ads/zzapn;IZ)I

    move-result v12

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzv:I

    add-int/2addr v10, v12

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzv:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzw:I

    sub-int/2addr v10, v12

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzw:I

    goto :goto_11

    .line 82
    :cond_28
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzare;->zzj:[J

    .line 93
    aget-wide v6, v1, v2

    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzare;->zzi:[I

    aget v1, v1, v2

    int-to-long v10, v1

    add-long/2addr v6, v10

    const-wide/16 v10, 0x3e8

    mul-long v10, v10, v6

    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zzare;->zzl:Z

    const/4 v3, 0x1

    if-eq v3, v1, :cond_29

    const/4 v12, 0x0

    goto :goto_12

    :cond_29
    const/high16 v12, 0x40000000    # 2.0f

    :goto_12
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzare;->zzk:[Z

    .line 94
    aget-boolean v2, v3, v2

    or-int/2addr v12, v2

    if-eqz v1, :cond_2c

    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzare;->zzn:Lcom/google/android/gms/internal/ads/zzard;

    if-nez v1, :cond_2a

    .line 95
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzarc;->zzh:[Lcom/google/android/gms/internal/ads/zzard;

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzare;->zza:Lcom/google/android/gms/internal/ads/zzaqs;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaqs;->zza:I

    aget-object v1, v1, v2

    :cond_2a
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzt:Lcom/google/android/gms/internal/ads/zzaqv;

    .line 96
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaqv;->zzi:Lcom/google/android/gms/internal/ads/zzard;

    if-eq v1, v3, :cond_2b

    new-instance v2, Lcom/google/android/gms/internal/ads/zzapw;

    .line 97
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzard;->zzb:[B

    const/4 v5, 0x1

    invoke-direct {v2, v5, v3}, Lcom/google/android/gms/internal/ads/zzapw;-><init>(I[B)V

    :goto_13
    move-object v15, v2

    goto :goto_14

    .line 98
    :cond_2b
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaqv;->zzh:Lcom/google/android/gms/internal/ads/zzapw;

    goto :goto_13

    :cond_2c
    const/4 v1, 0x0

    const/4 v15, 0x0

    .line 97
    :goto_14
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzt:Lcom/google/android/gms/internal/ads/zzaqv;

    .line 99
    iput-object v15, v2, Lcom/google/android/gms/internal/ads/zzaqv;->zzh:Lcom/google/android/gms/internal/ads/zzapw;

    .line 100
    iput-object v1, v2, Lcom/google/android/gms/internal/ads/zzaqv;->zzi:Lcom/google/android/gms/internal/ads/zzard;

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzu:I

    const/4 v14, 0x0

    .line 101
    invoke-interface/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzapx;->zzc(JIIILcom/google/android/gms/internal/ads/zzapw;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzl:Ljava/util/LinkedList;

    .line 102
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 105
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzt:Lcom/google/android/gms/internal/ads/zzaqv;

    .line 106
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaqv;->zze:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzaqv;->zze:I

    .line 107
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaqv;->zzf:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzaqv;->zzf:I

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzare;->zzg:[I

    .line 108
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzaqv;->zzg:I

    aget v4, v4, v5

    if-ne v2, v4, :cond_2d

    add-int/2addr v5, v3

    .line 109
    iput v5, v1, Lcom/google/android/gms/internal/ads/zzaqv;->zzg:I

    const/4 v2, 0x0

    .line 110
    iput v2, v1, Lcom/google/android/gms/internal/ads/zzaqv;->zzf:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzt:Lcom/google/android/gms/internal/ads/zzaqv;

    goto :goto_15

    :cond_2d
    const/4 v2, 0x0

    :goto_15
    const/4 v1, 0x3

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzm:I

    return v2

    :cond_2e
    const/4 v1, 0x0

    .line 102
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqw;->zzl:Ljava/util/LinkedList;

    .line 103
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaqu;

    .line 104
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzaqu;->zzb:I

    .line 105
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzaqu;->zza:J

    throw v1

    :goto_16
    nop

    goto :goto_16

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
