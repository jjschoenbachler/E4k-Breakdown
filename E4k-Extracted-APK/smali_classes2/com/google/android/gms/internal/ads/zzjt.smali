.class public final Lcom/google/android/gms/internal/ads/zzjt;
.super Lcom/google/android/gms/internal/ads/zzjx;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzfpw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfpw<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzfpw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfpw<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzd:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzjn;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/ads/zzjd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzjh;->zza:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfpw;->zzc(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfpw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzjt;->zzb:Lcom/google/android/gms/internal/ads/zzfpw;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzji;->zza:Ljava/util/Comparator;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfpw;->zzc(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfpw;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzjt;->zzc:Lcom/google/android/gms/internal/ads/zzfpw;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzjn;->zzA:Lcom/google/android/gms/internal/ads/zzjn;

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzjd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzjd;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzjn;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzjn;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjt;->zze:Lcom/google/android/gms/internal/ads/zzjd;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjt;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/ads/zzfpw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzjt;->zzb:Lcom/google/android/gms/internal/ads/zzfpw;

    return-object v0
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/ads/zzfpw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzjt;->zzc:Lcom/google/android/gms/internal/ads/zzfpw;

    return-object v0
.end method

.method protected static zzf(IZ)Z
    .locals 3

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq p0, v2, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method protected static zzg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static zzh(Lcom/google/android/gms/internal/ads/zzafv;Ljava/lang/String;Z)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    return p0

    .line 2
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzjt;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzafv;->zzc:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzjt;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const-string p2, "-"

    .line 5
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzamq;->zzu(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    const-string p2, "-"

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzamq;->zzu(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    return p0

    :cond_4
    return v0

    :cond_5
    :goto_1
    const/4 p0, 0x3

    return p0

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    if-nez p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    return v0
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/ads/zzjn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjt;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzjn;

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzjo;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzjn;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzjn;-><init>(Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzjk;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjt;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzjn;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzw;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjz;->zzl()V

    :cond_0
    return-void
.end method

.method protected final zze(Lcom/google/android/gms/internal/ads/zzjw;[[[I[ILcom/google/android/gms/internal/ads/zzhf;Lcom/google/android/gms/internal/ads/zzaiq;)Landroid/util/Pair;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzjw;",
            "[[[I[I",
            "Lcom/google/android/gms/internal/ads/zzhf;",
            "Lcom/google/android/gms/internal/ads/zzaiq;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Lcom/google/android/gms/internal/ads/zzahx;",
            "[",
            "Lcom/google/android/gms/internal/ads/zzjg;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzjt;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzjn;

    const/4 v5, 0x2

    new-array v6, v5, [Lcom/google/android/gms/internal/ads/zzju;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v8, v5, :cond_1a

    .line 2
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzjw;->zza(I)I

    move-result v14

    if-ne v14, v5, :cond_19

    if-nez v9, :cond_17

    .line 3
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzjw;->zzb(I)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v9

    aget-object v14, p2, v8

    aget v15, p3, v8

    .line 4
    iget-boolean v15, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzx:Z

    iget-boolean v15, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzw:Z

    .line 5
    iget-boolean v15, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzF:Z

    .line 6
    iget-boolean v15, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzE:Z

    const/4 v15, 0x0

    .line 7
    :goto_1
    iget v12, v9, Lcom/google/android/gms/internal/ads/zzs;->zzb:I

    if-ge v15, v12, :cond_0

    .line 8
    invoke-virtual {v9, v15}, Lcom/google/android/gms/internal/ads/zzs;->zza(I)Lcom/google/android/gms/internal/ads/zzq;

    move-result-object v12

    .line 9
    aget-object v17, v14, v15

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzc:I

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzd:I

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzjn;->zze:I

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzf:I

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzg:I

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzh:I

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzi:I

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzj:I

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzk:I

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzl:I

    iget-boolean v5, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzm:Z

    .line 10
    iget v5, v12, Lcom/google/android/gms/internal/ads/zzq;->zza:I

    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x2

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v15, -0x1

    const/16 v17, 0x0

    .line 11
    :goto_2
    iget v7, v9, Lcom/google/android/gms/internal/ads/zzs;->zzb:I

    if-ge v5, v7, :cond_14

    .line 12
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzs;->zza(I)Lcom/google/android/gms/internal/ads/zzq;

    move-result-object v7

    .line 13
    iget v11, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzk:I

    iget v13, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzl:I

    move-object/from16 v20, v9

    iget-boolean v9, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzm:Z

    new-instance v0, Ljava/util/ArrayList;

    .line 14
    iget v3, v7, Lcom/google/android/gms/internal/ads/zzq;->zza:I

    move/from16 v21, v3

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    .line 15
    :goto_3
    iget v2, v7, Lcom/google/android/gms/internal/ads/zzq;->zza:I

    if-gtz v3, :cond_1

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_1
    const v2, 0x7fffffff

    if-eq v11, v2, :cond_e

    if-ne v13, v2, :cond_2

    goto/16 :goto_b

    :cond_2
    move/from16 v23, v10

    const/4 v3, 0x0

    .line 17
    :goto_4
    iget v10, v7, Lcom/google/android/gms/internal/ads/zzq;->zza:I

    if-gtz v3, :cond_b

    .line 18
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v10

    .line 19
    iget v1, v10, Lcom/google/android/gms/internal/ads/zzafv;->zzq:I

    if-lez v1, :cond_8

    move-object/from16 v24, v6

    iget v6, v10, Lcom/google/android/gms/internal/ads/zzafv;->zzr:I

    if-lez v6, :cond_9

    if-eqz v9, :cond_5

    if-gt v1, v6, :cond_3

    move/from16 v25, v9

    const/4 v9, 0x0

    goto :goto_5

    :cond_3
    move/from16 v25, v9

    const/4 v9, 0x1

    :goto_5
    if-gt v11, v13, :cond_4

    move/from16 v26, v11

    const/4 v11, 0x0

    goto :goto_6

    :cond_4
    move/from16 v26, v11

    const/4 v11, 0x1

    :goto_6
    if-eq v9, v11, :cond_6

    move v11, v13

    move/from16 v27, v11

    move/from16 v9, v26

    goto :goto_7

    :cond_5
    move/from16 v25, v9

    move/from16 v26, v11

    :cond_6
    move v9, v13

    move/from16 v27, v9

    move/from16 v11, v26

    :goto_7
    mul-int v13, v1, v9

    move/from16 v28, v8

    mul-int v8, v6, v11

    if-lt v13, v8, :cond_7

    new-instance v6, Landroid/graphics/Point;

    .line 20
    invoke-static {v8, v1}, Lcom/google/android/gms/internal/ads/zzamq;->zzw(II)I

    move-result v1

    invoke-direct {v6, v11, v1}, Landroid/graphics/Point;-><init>(II)V

    move-object v1, v6

    goto :goto_8

    .line 23
    :cond_7
    new-instance v1, Landroid/graphics/Point;

    .line 21
    invoke-static {v13, v6}, Lcom/google/android/gms/internal/ads/zzamq;->zzw(II)I

    move-result v6

    invoke-direct {v1, v6, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 22
    :goto_8
    iget v6, v10, Lcom/google/android/gms/internal/ads/zzafv;->zzq:I

    iget v8, v10, Lcom/google/android/gms/internal/ads/zzafv;->zzr:I

    mul-int v8, v8, v6

    .line 23
    iget v9, v1, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    const v11, 0x3f7ae148    # 0.98f

    mul-float v9, v9, v11

    float-to-int v9, v9

    if-lt v6, v9, :cond_a

    iget v6, v10, Lcom/google/android/gms/internal/ads/zzafv;->zzr:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float v1, v1, v11

    float-to-int v1, v1

    if-lt v6, v1, :cond_a

    if-ge v8, v2, :cond_a

    move v2, v8

    goto :goto_9

    :cond_8
    move-object/from16 v24, v6

    :cond_9
    move/from16 v28, v8

    move/from16 v25, v9

    move/from16 v26, v11

    move/from16 v27, v13

    :cond_a
    :goto_9
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v6, v24

    move/from16 v9, v25

    move/from16 v11, v26

    move/from16 v13, v27

    move/from16 v8, v28

    move-object/from16 v1, p1

    goto/16 :goto_4

    :cond_b
    move-object/from16 v24, v6

    move/from16 v28, v8

    const v1, 0x7fffffff

    if-eq v2, v1, :cond_f

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, -0x1

    add-int/2addr v1, v3

    :goto_a
    if-ltz v1, :cond_f

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v6

    .line 26
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzafv;->zzc()I

    move-result v6

    if-eq v6, v3, :cond_c

    if-le v6, v2, :cond_d

    .line 27
    :cond_c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_d
    add-int/lit8 v1, v1, -0x1

    const/4 v3, -0x1

    goto :goto_a

    :cond_e
    :goto_b
    move-object/from16 v24, v6

    move/from16 v28, v8

    move/from16 v23, v10

    .line 28
    :cond_f
    aget-object v1, v14, v5

    move-object/from16 v3, v17

    const/4 v2, 0x0

    .line 29
    :goto_c
    iget v6, v7, Lcom/google/android/gms/internal/ads/zzq;->zza:I

    if-gtz v2, :cond_13

    .line 30
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v6

    .line 31
    iget v8, v6, Lcom/google/android/gms/internal/ads/zzafv;->zze:I

    .line 32
    aget v8, v1, v2

    iget-boolean v9, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzK:Z

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzjt;->zzf(IZ)Z

    move-result v8

    if-eqz v8, :cond_12

    new-instance v8, Lcom/google/android/gms/internal/ads/zzjs;

    .line 33
    aget v9, v1, v2

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-direct {v8, v6, v4, v9, v10}, Lcom/google/android/gms/internal/ads/zzjs;-><init>(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzjn;IZ)V

    iget-boolean v6, v8, Lcom/google/android/gms/internal/ads/zzjs;->zza:Z

    if-nez v6, :cond_10

    .line 35
    iget-boolean v6, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzD:Z

    if-nez v6, :cond_10

    goto :goto_d

    :cond_10
    if-eqz v3, :cond_11

    .line 36
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzjs;->zza(Lcom/google/android/gms/internal/ads/zzjs;)I

    move-result v6

    if-lez v6, :cond_12

    :cond_11
    move v15, v2

    move-object v12, v7

    move-object v3, v8

    :cond_12
    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_13
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v17, v3

    move-object/from16 v9, v20

    move/from16 v10, v23

    move-object/from16 v6, v24

    move/from16 v8, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_2

    :cond_14
    move-object/from16 v24, v6

    move/from16 v28, v8

    move/from16 v23, v10

    if-nez v12, :cond_15

    const/16 v16, 0x0

    goto :goto_e

    .line 39
    :cond_15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzju;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v1, 0x0

    aput v15, v2, v1

    .line 37
    invoke-direct {v0, v12, v2, v1}, Lcom/google/android/gms/internal/ads/zzju;-><init>(Lcom/google/android/gms/internal/ads/zzq;[II)V

    move-object/from16 v16, v0

    .line 38
    :goto_e
    aput-object v16, v24, v28

    if-eqz v16, :cond_16

    move/from16 v7, v28

    move-object/from16 v0, p1

    const/4 v9, 0x1

    goto :goto_f

    :cond_16
    move/from16 v7, v28

    move-object/from16 v0, p1

    const/4 v9, 0x0

    goto :goto_f

    :cond_17
    move-object/from16 v24, v6

    move/from16 v23, v10

    move v7, v8

    move-object/from16 v0, p1

    .line 39
    :goto_f
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzjw;->zzb(I)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzs;->zzb:I

    if-lez v1, :cond_18

    const/16 v19, 0x1

    goto :goto_10

    :cond_18
    const/16 v19, 0x0

    :goto_10
    or-int v1, v23, v19

    move v10, v1

    goto :goto_11

    :cond_19
    move-object v0, v1

    move-object/from16 v24, v6

    move v7, v8

    move/from16 v23, v10

    :goto_11
    add-int/lit8 v8, v7, 0x1

    move-object v1, v0

    move-object/from16 v6, v24

    move-object/from16 v0, p0

    const/4 v5, 0x2

    goto/16 :goto_0

    :cond_1a
    move-object v0, v1

    move-object/from16 v24, v6

    move/from16 v23, v10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x0

    :goto_12
    const/4 v6, 0x2

    if-ge v1, v6, :cond_2e

    .line 40
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzjw;->zza(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2c

    .line 41
    iget-boolean v6, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzM:Z

    if-nez v6, :cond_1c

    if-nez v23, :cond_1b

    goto :goto_13

    :cond_1b
    const/4 v6, 0x0

    goto :goto_14

    :cond_1c
    :goto_13
    const/4 v6, 0x1

    .line 42
    :goto_14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzjw;->zzb(I)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v7

    aget-object v9, p2, v1

    aget v11, p3, v1

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, -0x1

    .line 43
    :goto_15
    iget v15, v7, Lcom/google/android/gms/internal/ads/zzs;->zzb:I

    if-ge v11, v15, :cond_21

    .line 44
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzs;->zza(I)Lcom/google/android/gms/internal/ads/zzq;

    move-result-object v15

    .line 45
    aget-object v17, v9, v11

    move/from16 v20, v14

    move-object v14, v13

    move v13, v12

    const/4 v12, 0x0

    .line 46
    :goto_16
    iget v10, v15, Lcom/google/android/gms/internal/ads/zzq;->zza:I

    if-gtz v12, :cond_20

    .line 47
    aget v10, v17, v12

    move/from16 v29, v13

    iget-boolean v13, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzK:Z

    invoke-static {v10, v13}, Lcom/google/android/gms/internal/ads/zzjt;->zzf(IZ)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 48
    invoke-virtual {v15, v12}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v10

    new-instance v13, Lcom/google/android/gms/internal/ads/zzjj;

    move-object/from16 v30, v15

    .line 49
    aget v15, v17, v12

    invoke-direct {v13, v10, v4, v15}, Lcom/google/android/gms/internal/ads/zzjj;-><init>(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzjn;I)V

    if-eqz v14, :cond_1d

    .line 50
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzjj;->zza(Lcom/google/android/gms/internal/ads/zzjj;)I

    move-result v10

    if-lez v10, :cond_1f

    :cond_1d
    move/from16 v20, v12

    move-object v14, v13

    move v13, v11

    goto :goto_17

    :cond_1e
    move-object/from16 v30, v15

    :cond_1f
    move/from16 v13, v29

    :goto_17
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v15, v30

    goto :goto_16

    :cond_20
    move/from16 v29, v13

    add-int/lit8 v11, v11, 0x1

    move-object v13, v14

    move/from16 v14, v20

    move/from16 v12, v29

    goto :goto_15

    :cond_21
    const/4 v10, -0x1

    if-ne v12, v10, :cond_22

    move-object/from16 v31, v2

    const/4 v12, 0x0

    goto/16 :goto_1c

    .line 51
    :cond_22
    invoke-virtual {v7, v12}, Lcom/google/android/gms/internal/ads/zzs;->zza(I)Lcom/google/android/gms/internal/ads/zzq;

    move-result-object v7

    .line 52
    iget-boolean v10, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzx:Z

    iget-boolean v10, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzw:Z

    if-eqz v6, :cond_27

    .line 53
    aget-object v6, v9, v12

    iget v9, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzr:I

    iget-boolean v9, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzH:Z

    iget-boolean v9, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzI:Z

    iget-boolean v9, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzJ:Z

    .line 54
    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v9

    .line 55
    iget v10, v7, Lcom/google/android/gms/internal/ads/zzq;->zza:I

    const/4 v11, 0x1

    new-array v10, v11, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 56
    :goto_18
    iget v15, v7, Lcom/google/android/gms/internal/ads/zzq;->zza:I

    if-gtz v11, :cond_25

    if-eq v11, v14, :cond_23

    .line 57
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v15

    move-object/from16 v31, v2

    aget v2, v6, v11

    move-object/from16 v32, v6

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/google/android/gms/internal/ads/zzjt;->zzf(IZ)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 58
    iget v2, v15, Lcom/google/android/gms/internal/ads/zzafv;->zzh:I

    const/4 v6, -0x1

    if-eq v2, v6, :cond_24

    iget v2, v15, Lcom/google/android/gms/internal/ads/zzafv;->zzy:I

    if-eq v2, v6, :cond_24

    iget v6, v9, Lcom/google/android/gms/internal/ads/zzafv;->zzy:I

    if-ne v2, v6, :cond_24

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v6, v9, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    .line 59
    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget v2, v15, Lcom/google/android/gms/internal/ads/zzafv;->zzz:I

    const/4 v6, -0x1

    if-eq v2, v6, :cond_24

    iget v6, v9, Lcom/google/android/gms/internal/ads/zzafv;->zzz:I

    if-ne v2, v6, :cond_24

    goto :goto_19

    :cond_23
    move-object/from16 v31, v2

    move-object/from16 v32, v6

    :goto_19
    add-int/lit8 v2, v12, 0x1

    .line 60
    aput v11, v10, v12

    move v12, v2

    :cond_24
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v31

    move-object/from16 v6, v32

    goto :goto_18

    :cond_25
    move-object/from16 v31, v2

    .line 61
    invoke-static {v10, v12}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 62
    array-length v6, v2

    const/4 v9, 0x1

    if-le v6, v9, :cond_26

    new-instance v12, Lcom/google/android/gms/internal/ads/zzju;

    const/4 v6, 0x0

    .line 63
    invoke-direct {v12, v7, v2, v6}, Lcom/google/android/gms/internal/ads/zzju;-><init>(Lcom/google/android/gms/internal/ads/zzq;[II)V

    goto :goto_1b

    :cond_26
    const/4 v6, 0x0

    goto :goto_1a

    :cond_27
    move-object/from16 v31, v2

    const/4 v6, 0x0

    const/4 v9, 0x1

    :goto_1a
    const/4 v12, 0x0

    :goto_1b
    if-nez v12, :cond_28

    new-instance v12, Lcom/google/android/gms/internal/ads/zzju;

    new-array v2, v9, [I

    aput v14, v2, v6

    .line 64
    invoke-direct {v12, v7, v2, v6}, Lcom/google/android/gms/internal/ads/zzju;-><init>(Lcom/google/android/gms/internal/ads/zzq;[II)V

    :cond_28
    if-eqz v13, :cond_2b

    .line 65
    invoke-static {v12, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    :goto_1c
    if-eqz v12, :cond_2d

    if-eqz v5, :cond_29

    .line 66
    iget-object v2, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzjj;

    .line 67
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzjj;->zza(Lcom/google/android/gms/internal/ads/zzjj;)I

    move-result v2

    if-lez v2, :cond_2d

    :cond_29
    const/4 v2, -0x1

    if-eq v3, v2, :cond_2a

    const/4 v2, 0x0

    .line 68
    aput-object v2, v24, v3

    .line 69
    :cond_2a
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzju;

    .line 70
    aput-object v2, v24, v1

    .line 71
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzju;->zza:Lcom/google/android/gms/internal/ads/zzq;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzju;->zzb:[I

    const/4 v5, 0x0

    aget v2, v2, v5

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzafv;->zzc:Ljava/lang/String;

    .line 72
    iget-object v3, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzjj;

    move-object v5, v3

    move v3, v1

    goto :goto_1d

    :cond_2b
    const/4 v2, 0x0

    .line 123
    throw v2

    :cond_2c
    move-object/from16 v31, v2

    :cond_2d
    move-object/from16 v2, v31

    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_12

    :cond_2e
    move-object/from16 v31, v2

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_1e
    const/4 v5, 0x2

    if-ge v1, v5, :cond_3f

    .line 73
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzjw;->zza(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    move-object/from16 v12, v31

    const/4 v6, -0x1

    .line 90
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzjw;->zzb(I)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v5

    aget-object v7, p2, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    goto/16 :goto_24

    .line 74
    :pswitch_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzjw;->zzb(I)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v5

    aget-object v6, p2, v1

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 75
    :goto_1f
    iget v12, v5, Lcom/google/android/gms/internal/ads/zzs;->zzb:I

    if-ge v7, v12, :cond_33

    .line 76
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzs;->zza(I)Lcom/google/android/gms/internal/ads/zzq;

    move-result-object v12

    .line 77
    aget-object v13, v6, v7

    move-object v14, v11

    move-object v11, v10

    move v10, v9

    const/4 v9, 0x0

    .line 78
    :goto_20
    iget v15, v12, Lcom/google/android/gms/internal/ads/zzq;->zza:I

    if-gtz v9, :cond_32

    .line 79
    aget v15, v13, v9

    move-object/from16 v33, v5

    iget-boolean v5, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzK:Z

    invoke-static {v15, v5}, Lcom/google/android/gms/internal/ads/zzjt;->zzf(IZ)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 80
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v5

    new-instance v15, Lcom/google/android/gms/internal/ads/zzjr;

    move-object/from16 v34, v6

    .line 81
    aget v6, v13, v9

    move-object/from16 v35, v12

    move-object/from16 v12, v31

    invoke-direct {v15, v5, v4, v6, v12}, Lcom/google/android/gms/internal/ads/zzjr;-><init>(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzjn;ILjava/lang/String;)V

    iget-boolean v5, v15, Lcom/google/android/gms/internal/ads/zzjr;->zza:Z

    if-eqz v5, :cond_31

    if-eqz v11, :cond_2f

    .line 82
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzjr;->zza(Lcom/google/android/gms/internal/ads/zzjr;)I

    move-result v5

    if-lez v5, :cond_31

    :cond_2f
    move v10, v9

    move-object v11, v15

    move-object/from16 v14, v35

    goto :goto_21

    :cond_30
    move-object/from16 v34, v6

    move-object/from16 v35, v12

    move-object/from16 v12, v31

    :cond_31
    :goto_21
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v31, v12

    move-object/from16 v5, v33

    move-object/from16 v6, v34

    move-object/from16 v12, v35

    goto :goto_20

    :cond_32
    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v12, v31

    add-int/lit8 v7, v7, 0x1

    move v9, v10

    move-object v10, v11

    move-object v11, v14

    goto :goto_1f

    :cond_33
    move-object/from16 v12, v31

    if-nez v11, :cond_34

    const/4 v5, 0x0

    goto :goto_22

    .line 89
    :cond_34
    new-instance v5, Lcom/google/android/gms/internal/ads/zzju;

    const/4 v6, 0x1

    new-array v7, v6, [I

    const/4 v6, 0x0

    aput v9, v7, v6

    .line 83
    invoke-direct {v5, v11, v7, v6}, Lcom/google/android/gms/internal/ads/zzju;-><init>(Lcom/google/android/gms/internal/ads/zzq;[II)V

    if-eqz v10, :cond_37

    .line 84
    invoke-static {v5, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    :goto_22
    if-eqz v5, :cond_38

    if-eqz v3, :cond_35

    .line 85
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/ads/zzjr;

    .line 86
    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzjr;->zza(Lcom/google/android/gms/internal/ads/zzjr;)I

    move-result v6

    if-lez v6, :cond_38

    :cond_35
    const/4 v6, -0x1

    if-eq v2, v6, :cond_36

    const/4 v7, 0x0

    .line 87
    aput-object v7, v24, v2

    goto :goto_23

    :cond_36
    const/4 v7, 0x0

    .line 88
    :goto_23
    iget-object v2, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzju;

    aput-object v2, v24, v1

    .line 89
    iget-object v2, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzjr;

    move-object v3, v2

    move v2, v1

    goto/16 :goto_29

    :cond_37
    const/4 v7, 0x0

    .line 122
    throw v7

    :pswitch_1
    move-object/from16 v12, v31

    :cond_38
    move/from16 v36, v2

    move-object/from16 v37, v3

    goto/16 :goto_28

    .line 91
    :goto_24
    iget v14, v5, Lcom/google/android/gms/internal/ads/zzs;->zzb:I

    if-ge v9, v14, :cond_3d

    .line 92
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzs;->zza(I)Lcom/google/android/gms/internal/ads/zzq;

    move-result-object v14

    .line 93
    aget-object v15, v7, v9

    move-object/from16 v17, v13

    move-object v13, v11

    move v11, v10

    const/4 v10, 0x0

    .line 94
    :goto_25
    iget v6, v14, Lcom/google/android/gms/internal/ads/zzq;->zza:I

    if-gtz v10, :cond_3c

    .line 95
    aget v6, v15, v10

    move/from16 v36, v2

    iget-boolean v2, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzK:Z

    invoke-static {v6, v2}, Lcom/google/android/gms/internal/ads/zzjt;->zzf(IZ)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 96
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v2

    new-instance v6, Lcom/google/android/gms/internal/ads/zzjl;

    move-object/from16 v37, v3

    .line 97
    aget v3, v15, v10

    invoke-direct {v6, v2, v3}, Lcom/google/android/gms/internal/ads/zzjl;-><init>(Lcom/google/android/gms/internal/ads/zzafv;I)V

    if-eqz v13, :cond_39

    .line 98
    invoke-virtual {v6, v13}, Lcom/google/android/gms/internal/ads/zzjl;->zza(Lcom/google/android/gms/internal/ads/zzjl;)I

    move-result v2

    if-lez v2, :cond_3b

    :cond_39
    move-object v13, v6

    move v11, v10

    move-object/from16 v17, v14

    goto :goto_26

    :cond_3a
    move-object/from16 v37, v3

    :cond_3b
    :goto_26
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v36

    move-object/from16 v3, v37

    goto :goto_25

    :cond_3c
    move/from16 v36, v2

    move-object/from16 v37, v3

    add-int/lit8 v9, v9, 0x1

    move v10, v11

    move-object v11, v13

    move-object/from16 v13, v17

    const/4 v6, -0x1

    goto :goto_24

    :cond_3d
    move/from16 v36, v2

    move-object/from16 v37, v3

    if-nez v13, :cond_3e

    const/4 v2, 0x0

    goto :goto_27

    .line 100
    :cond_3e
    new-instance v2, Lcom/google/android/gms/internal/ads/zzju;

    const/4 v3, 0x1

    new-array v5, v3, [I

    const/4 v3, 0x0

    aput v10, v5, v3

    .line 99
    invoke-direct {v2, v13, v5, v3}, Lcom/google/android/gms/internal/ads/zzju;-><init>(Lcom/google/android/gms/internal/ads/zzq;[II)V

    .line 100
    :goto_27
    aput-object v2, v24, v1

    :goto_28
    move/from16 v2, v36

    move-object/from16 v3, v37

    :goto_29
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v31, v12

    goto/16 :goto_1e

    :cond_3f
    const/4 v1, 0x0

    :goto_2a
    const/4 v2, 0x2

    if-ge v1, v2, :cond_44

    .line 101
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzjw;->zza(I)I

    move-result v2

    .line 102
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzjn;->zzd(I)Z

    move-result v3

    if-nez v3, :cond_43

    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzy:Lcom/google/android/gms/internal/ads/zzfot;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzfot;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    goto :goto_2c

    .line 104
    :cond_40
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzjw;->zzb(I)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v2

    .line 105
    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzjn;->zze(ILcom/google/android/gms/internal/ads/zzs;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 106
    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzjn;->zzf(ILcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzjq;

    move-result-object v3

    if-nez v3, :cond_41

    const/4 v5, 0x0

    const/4 v12, 0x0

    goto :goto_2b

    .line 107
    :cond_41
    new-instance v12, Lcom/google/android/gms/internal/ads/zzju;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzs;->zza(I)Lcom/google/android/gms/internal/ads/zzq;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v12, v2, v5, v3}, Lcom/google/android/gms/internal/ads/zzju;-><init>(Lcom/google/android/gms/internal/ads/zzq;[II)V

    :goto_2b
    aput-object v12, v24, v1

    goto :goto_2d

    :cond_42
    const/4 v5, 0x0

    goto :goto_2d

    :cond_43
    :goto_2c
    const/4 v5, 0x0

    .line 103
    aput-object v5, v24, v1

    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_44
    move-object/from16 v1, p0

    const/4 v5, 0x0

    .line 107
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzjt;->zze:Lcom/google/android/gms/internal/ads/zzjd;

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzjz;->zzm()Lcom/google/android/gms/internal/ads/zzki;

    move-result-object v3

    .line 109
    invoke-static/range {v24 .. v24}, Lcom/google/android/gms/internal/ads/zzje;->zza([Lcom/google/android/gms/internal/ads/zzju;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v12

    const/4 v6, 0x2

    new-array v13, v6, [Lcom/google/android/gms/internal/ads/zzjg;

    const/4 v14, 0x0

    :goto_2e
    if-ge v14, v6, :cond_48

    .line 110
    aget-object v6, v24, v14

    if-eqz v6, :cond_47

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzju;->zzb:[I

    .line 111
    array-length v7, v8

    if-nez v7, :cond_45

    goto :goto_30

    :cond_45
    const/4 v15, 0x1

    if-ne v7, v15, :cond_46

    new-instance v7, Lcom/google/android/gms/internal/ads/zzjv;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzju;->zza:Lcom/google/android/gms/internal/ads/zzq;

    const/16 v16, 0x0

    .line 112
    aget v20, v8, v16

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v7

    move-object/from16 v19, v6

    .line 113
    invoke-direct/range {v18 .. v23}, Lcom/google/android/gms/internal/ads/zzjv;-><init>(Lcom/google/android/gms/internal/ads/zzq;IIILjava/lang/Object;)V

    goto :goto_2f

    :cond_46
    const/16 v16, 0x0

    .line 115
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzju;->zza:Lcom/google/android/gms/internal/ads/zzq;

    const/4 v9, 0x0

    .line 114
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/zzfoj;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/google/android/gms/internal/ads/zzfoj;

    move-object v6, v2

    move-object v10, v3

    .line 115
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzjd;->zza(Lcom/google/android/gms/internal/ads/zzq;[IILcom/google/android/gms/internal/ads/zzki;Lcom/google/android/gms/internal/ads/zzfoj;)Lcom/google/android/gms/internal/ads/zzje;

    move-result-object v7

    :goto_2f
    aput-object v7, v13, v14

    goto :goto_31

    :cond_47
    :goto_30
    const/4 v15, 0x1

    const/16 v16, 0x0

    :goto_31
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x2

    goto :goto_2e

    :cond_48
    const/16 v16, 0x0

    new-array v2, v6, [Lcom/google/android/gms/internal/ads/zzahx;

    const/4 v3, 0x0

    :goto_32
    if-ge v3, v6, :cond_4c

    .line 116
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzjw;->zza(I)I

    move-result v7

    .line 117
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzjn;->zzd(I)Z

    move-result v8

    if-nez v8, :cond_4b

    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzy:Lcom/google/android/gms/internal/ads/zzfot;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzfot;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    goto :goto_33

    .line 118
    :cond_49
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzjw;->zza(I)I

    move-result v7

    const/4 v8, -0x2

    if-eq v7, v8, :cond_4a

    aget-object v7, v13, v3

    if-eqz v7, :cond_4b

    :cond_4a
    sget-object v12, Lcom/google/android/gms/internal/ads/zzahx;->zza:Lcom/google/android/gms/internal/ads/zzahx;

    goto :goto_34

    :cond_4b
    :goto_33
    move-object v12, v5

    .line 119
    :goto_34
    aput-object v12, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 120
    :cond_4c
    iget-boolean v0, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzL:Z

    .line 121
    invoke-static {v2, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
