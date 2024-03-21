.class public final Lcom/google/android/gms/internal/ads/zzlz;
.super Lcom/google/android/gms/internal/ads/zzfq;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static final zzb:[I

.field private static zzc:Z

.field private static zzd:Z


# instance fields
.field private zzA:J

.field private zzB:I

.field private zzC:I

.field private zzD:I

.field private zzE:I

.field private zzF:F

.field private zzG:Lcom/google/android/gms/internal/ads/zzy;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzH:I

.field private zzI:Lcom/google/android/gms/internal/ads/zzma;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzmi;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzmt;

.field private final zzh:Z

.field private zzi:Lcom/google/android/gms/internal/ads/zzly;

.field private zzj:Z

.field private zzk:Z

.field private zzl:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzm:Lcom/google/android/gms/internal/ads/zzlu;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzn:Z

.field private zzo:I

.field private zzp:Z

.field private zzq:Z

.field private zzr:Z

.field private zzs:J

.field private zzt:J

.field private zzu:J

.field private zzv:I

.field private zzw:I

.field private zzx:I

.field private zzy:J

.field private zzz:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzlz;->zzb:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfm;Lcom/google/android/gms/internal/ads/zzfs;JZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzmu;I)V
    .locals 6
    .param p7    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/google/android/gms/internal/ads/zzmu;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/high16 v5, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfq;-><init>(ILcom/google/android/gms/internal/ads/zzfm;Lcom/google/android/gms/internal/ads/zzfs;ZF)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zze:Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzmi;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zze:Landroid/content/Context;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzmi;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzf:Lcom/google/android/gms/internal/ads/zzmi;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzmt;

    .line 4
    invoke-direct {p1, p7, p8}, Lcom/google/android/gms/internal/ads/zzmt;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzmu;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzg:Lcom/google/android/gms/internal/ads/zzmt;

    const-string p1, "NVIDIA"

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/ads/zzamq;->zzc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzh:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzt:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzC:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzD:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzF:F

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzo:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzH:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzG:Lcom/google/android/gms/internal/ads/zzy;

    return-void
.end method

.method private static zzaA(Lcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzafv;ZZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfs;",
            "Lcom/google/android/gms/internal/ads/zzafv;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfy;
        }
    .end annotation

    .line 1
    iget-object p0, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzge;->zzc(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzge;->zzd(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzafv;)Ljava/util/List;

    move-result-object v0

    const-string v1, "video/dolby-vision"

    .line 5
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzge;->zzf(Lcom/google/android/gms/internal/ads/zzafv;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 7
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x10

    if-eq p0, p1, :cond_2

    const/16 p1, 0x100

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x200

    if-ne p0, p1, :cond_3

    const-string p0, "video/avc"

    .line 10
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzge;->zzc(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 11
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "video/hevc"

    .line 8
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzge;->zzc(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 9
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    :cond_3
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final zzaB(Lcom/google/android/gms/internal/ads/zzfo;)Z
    .locals 4

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-lt v0, v3, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfo;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzlz;->zzab(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzfo;->zzf:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zze:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzlu;->zza(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method private final zzaC()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzC:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzD:I

    if-eq v0, v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzG:Lcom/google/android/gms/internal/ads/zzy;

    if-eqz v1, :cond_2

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzy;->zzb:I

    if-ne v2, v0, :cond_2

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzy;->zzc:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzD:I

    if-ne v2, v3, :cond_2

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzy;->zzd:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzE:I

    if-ne v2, v3, :cond_2

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzy;->zze:F

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzF:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzy;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzD:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzE:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzF:F

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzy;-><init>(IIIF)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzG:Lcom/google/android/gms/internal/ads/zzy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzg:Lcom/google/android/gms/internal/ads/zzmt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzG:Lcom/google/android/gms/internal/ads/zzy;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzmt;->zzf(Lcom/google/android/gms/internal/ads/zzy;)V

    return-void
.end method

.method private final zzaD()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzG:Lcom/google/android/gms/internal/ads/zzy;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzg:Lcom/google/android/gms/internal/ads/zzmt;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzmt;->zzf(Lcom/google/android/gms/internal/ads/zzy;)V

    :cond_0
    return-void
.end method

.method private static zzaE(J)Z
    .locals 3

    const-wide/16 v0, -0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzaF(Lcom/google/android/gms/internal/ads/zzfo;Lcom/google/android/gms/internal/ads/zzafv;)I
    .locals 8

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzq:I

    .line 2
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzr:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    if-ne v1, v2, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    const-string v4, "video/dolby-vision"

    .line 4
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v4, :cond_2

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzge;->zzf(Lcom/google/android/gms/internal/ads/zzafv;)Landroid/util/Pair;

    move-result-object p1

    const-string v3, "video/hevc"

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v4, 0x200

    if-eq p1, v4, :cond_1

    if-eq p1, v5, :cond_1

    if-ne p1, v6, :cond_2

    :cond_1
    const-string v3, "video/avc"

    .line 7
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v4, 0x3

    const/4 v7, 0x4

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "video/x-vnd.on2.vp9"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_1
    const-string p1, "video/x-vnd.on2.vp8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    const-string p1, "video/avc"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_3
    const-string p1, "video/mp4v-es"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_4
    const-string p1, "video/hevc"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_5
    const-string p1, "video/3gpp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v2

    :pswitch_0
    mul-int v0, v0, v1

    const/4 v6, 0x4

    goto :goto_2

    :pswitch_1
    const-string p1, "BRAVIA 4K 2015"

    .line 8
    sget-object v3, Lcom/google/android/gms/internal/ads/zzamq;->zzd:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "Amazon"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzamq;->zzc:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "KFSOWI"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzamq;->zzd:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "AFTS"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzamq;->zzd:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzfo;->zzf:Z

    if-nez p0, :cond_5

    :cond_4
    const/16 p0, 0x10

    .line 12
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzamq;->zzw(II)I

    move-result p1

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzamq;->zzw(II)I

    move-result p0

    mul-int p1, p1, p0

    mul-int/lit16 v0, p1, 0x100

    goto :goto_2

    :cond_5
    return v2

    :pswitch_2
    mul-int v0, v0, v1

    :goto_2
    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v6, v6

    .line 7
    div-int/2addr v0, v6

    return v0

    :cond_6
    :goto_3
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected static final zzab(Ljava/lang/String;)Z
    .locals 13

    const-string v0, "OMX.google"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-class p0, Lcom/google/android/gms/internal/ads/zzlz;

    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzlz;->zzc:Z

    if-nez v1, :cond_a

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x6

    const/16 v6, 0x1c

    const/4 v7, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-gt v1, v6, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v10, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v10, "machuca"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v10, "once"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v10, "magnolia"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v10, "oneday"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_4
    const-string v10, "dangalUHD"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_5
    const-string v10, "dangalFHD"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v10, "dangal"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :goto_2
    :pswitch_0
    const/4 v0, 0x1

    goto/16 :goto_8

    :cond_2
    :goto_3
    :try_start_1
    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v10, 0x1b

    if-gt v1, v10, :cond_3

    const-string v1, "HWEML"

    sget-object v11, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v11, 0x1a

    if-gt v1, v11, :cond_9

    sget-object v1, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sparse-switch v12, :sswitch_data_1

    goto/16 :goto_4

    :sswitch_7
    const-string v2, "HWWAS-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x42

    goto/16 :goto_5

    :sswitch_8
    const-string v2, "HWVNS-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x41

    goto/16 :goto_5

    :sswitch_9
    const-string v2, "ELUGA_Prim"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x21

    goto/16 :goto_5

    :sswitch_a
    const-string v2, "ELUGA_Note"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x20

    goto/16 :goto_5

    :sswitch_b
    const-string v2, "ASUS_X00AD_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xe

    goto/16 :goto_5

    :sswitch_c
    const-string v2, "HWCAM-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x40

    goto/16 :goto_5

    :sswitch_d
    const-string v2, "HWBLN-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x3f

    goto/16 :goto_5

    :sswitch_e
    const-string v2, "DM-01K"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x1d

    goto/16 :goto_5

    :sswitch_f
    const-string v2, "BRAVIA_ATV3_4K"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x13

    goto/16 :goto_5

    :sswitch_10
    const-string v2, "Infinix-X572"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x45

    goto/16 :goto_5

    :sswitch_11
    const-string v2, "PB2-670M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x64

    goto/16 :goto_5

    :sswitch_12
    const-string v2, "santoni"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x75

    goto/16 :goto_5

    :sswitch_13
    const-string v2, "iball8735_9806"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x44

    goto/16 :goto_5

    :sswitch_14
    const-string v2, "CPH1715"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x18

    goto/16 :goto_5

    :sswitch_15
    const-string v2, "CPH1609"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x17

    goto/16 :goto_5

    :sswitch_16
    const-string v2, "woods_f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x85

    goto/16 :goto_5

    :sswitch_17
    const-string v2, "htc_e56ml_dtul"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x3d

    goto/16 :goto_5

    :sswitch_18
    const-string v2, "EverStar_S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x23

    goto/16 :goto_5

    :sswitch_19
    const-string v2, "hwALE-H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x3e

    goto/16 :goto_5

    :sswitch_1a
    const-string v2, "itel_S41"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x47

    goto/16 :goto_5

    :sswitch_1b
    const-string v2, "LS-5017"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x4e

    goto/16 :goto_5

    :sswitch_1c
    const-string v2, "panell_d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x60

    goto/16 :goto_5

    :sswitch_1d
    const-string v2, "j2xlteins"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x48

    goto/16 :goto_5

    :sswitch_1e
    const-string v2, "A7000plus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xa

    goto/16 :goto_5

    :sswitch_1f
    const-string v2, "manning"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x51

    goto/16 :goto_5

    :sswitch_20
    const-string v2, "GIONEE_WBL7519"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x3b

    goto/16 :goto_5

    :sswitch_21
    const-string v2, "GIONEE_WBL7365"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x3a

    goto/16 :goto_5

    :sswitch_22
    const-string v2, "GIONEE_WBL5708"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x39

    goto/16 :goto_5

    :sswitch_23
    const-string v2, "QM16XE_U"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x72

    goto/16 :goto_5

    :sswitch_24
    const-string v2, "Pixi5-10_4G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x6a

    goto/16 :goto_5

    :sswitch_25
    const-string v2, "TB3-850M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x7d

    goto/16 :goto_5

    :sswitch_26
    const-string v2, "TB3-850F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x7c

    goto/16 :goto_5

    :sswitch_27
    const-string v2, "TB3-730X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x7b

    goto/16 :goto_5

    :sswitch_28
    const-string v2, "TB3-730F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x7a

    goto/16 :goto_5

    :sswitch_29
    const-string v2, "A7020a48"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xc

    goto/16 :goto_5

    :sswitch_2a
    const-string v2, "A7010a48"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xb

    goto/16 :goto_5

    :sswitch_2b
    const-string v2, "griffin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x3c

    goto/16 :goto_5

    :sswitch_2c
    const-string v2, "marino_f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x52

    goto/16 :goto_5

    :sswitch_2d
    const-string v2, "CPY83_I00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x19

    goto/16 :goto_5

    :sswitch_2e
    const-string v2, "A2016a40"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x8

    goto/16 :goto_5

    :sswitch_2f
    const-string v2, "le_x6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x4d

    goto/16 :goto_5

    :sswitch_30
    const-string v2, "l5460"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x4c

    goto/16 :goto_5

    :sswitch_31
    const-string v2, "i9031"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x43

    goto/16 :goto_5

    :sswitch_32
    const-string v2, "X3_HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x87

    goto/16 :goto_5

    :sswitch_33
    const-string v2, "V23GB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x80

    goto/16 :goto_5

    :sswitch_34
    const-string v2, "Q4310"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x70

    goto/16 :goto_5

    :sswitch_35
    const-string v2, "Q4260"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x6e

    goto/16 :goto_5

    :sswitch_36
    const-string v2, "PRO7S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x6c

    goto/16 :goto_5

    :sswitch_37
    const-string v2, "F3311"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x30

    goto/16 :goto_5

    :sswitch_38
    const-string v2, "F3215"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x2f

    goto/16 :goto_5

    :sswitch_39
    const-string v2, "F3213"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x2e

    goto/16 :goto_5

    :sswitch_3a
    const-string v2, "F3211"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x2d

    goto/16 :goto_5

    :sswitch_3b
    const-string v2, "F3116"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x2c

    goto/16 :goto_5

    :sswitch_3c
    const-string v2, "F3113"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x2b

    goto/16 :goto_5

    :sswitch_3d
    const-string v2, "F3111"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x2a

    goto/16 :goto_5

    :sswitch_3e
    const-string v2, "E5643"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x1e

    goto/16 :goto_5

    :sswitch_3f
    const-string v2, "A1601"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    goto/16 :goto_5

    :sswitch_40
    const-string v2, "Aura_Note_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xf

    goto/16 :goto_5

    :sswitch_41
    const-string v3, "602LV"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    goto/16 :goto_5

    :sswitch_42
    const-string v2, "601LV"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    goto/16 :goto_5

    :sswitch_43
    const-string v2, "MEIZU_M5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x53

    goto/16 :goto_5

    :sswitch_44
    const-string v2, "p212"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x5c

    goto/16 :goto_5

    :sswitch_45
    const-string v2, "mido"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x55

    goto/16 :goto_5

    :sswitch_46
    const-string v2, "kate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x4b

    goto/16 :goto_5

    :sswitch_47
    const-string v2, "fugu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x32

    goto/16 :goto_5

    :sswitch_48
    const-string v2, "XE2X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x88

    goto/16 :goto_5

    :sswitch_49
    const-string v2, "Q427"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x6f

    goto/16 :goto_5

    :sswitch_4a
    const-string v2, "Q350"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x6d

    goto/16 :goto_5

    :sswitch_4b
    const-string v2, "P681"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x5d

    goto/16 :goto_5

    :sswitch_4c
    const-string v2, "F04J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x29

    goto/16 :goto_5

    :sswitch_4d
    const-string v2, "F04H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x28

    goto/16 :goto_5

    :sswitch_4e
    const-string v2, "F03H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x27

    goto/16 :goto_5

    :sswitch_4f
    const-string v2, "F02H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x26

    goto/16 :goto_5

    :sswitch_50
    const-string v2, "F01J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x25

    goto/16 :goto_5

    :sswitch_51
    const-string v2, "F01H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x24

    goto/16 :goto_5

    :sswitch_52
    const-string v2, "1714"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto/16 :goto_5

    :sswitch_53
    const-string v2, "1713"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto/16 :goto_5

    :sswitch_54
    const-string v2, "1601"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto/16 :goto_5

    :sswitch_55
    const-string v2, "flo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x31

    goto/16 :goto_5

    :sswitch_56
    const-string v2, "deb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x1c

    goto/16 :goto_5

    :sswitch_57
    const-string v2, "cv3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x1b

    goto/16 :goto_5

    :sswitch_58
    const-string v2, "cv1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x1a

    goto/16 :goto_5

    :sswitch_59
    const-string v2, "Z80"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x8b

    goto/16 :goto_5

    :sswitch_5a
    const-string v2, "QX1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x73

    goto/16 :goto_5

    :sswitch_5b
    const-string v2, "PLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x6b

    goto/16 :goto_5

    :sswitch_5c
    const-string v2, "P85"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x5e

    goto/16 :goto_5

    :sswitch_5d
    const-string v2, "MX6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x56

    goto/16 :goto_5

    :sswitch_5e
    const-string v2, "M5c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x50

    goto/16 :goto_5

    :sswitch_5f
    const-string v2, "M04"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x4f

    goto/16 :goto_5

    :sswitch_60
    const-string v2, "JGZ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x49

    goto/16 :goto_5

    :sswitch_61
    const-string v2, "mh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x54

    goto/16 :goto_5

    :sswitch_62
    const-string v2, "b5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x10

    goto/16 :goto_5

    :sswitch_63
    const-string v2, "V5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x81

    goto/16 :goto_5

    :sswitch_64
    const-string v2, "V1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x7f

    goto/16 :goto_5

    :sswitch_65
    const-string v2, "Q5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x71

    goto/16 :goto_5

    :sswitch_66
    const-string v2, "C1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x14

    goto/16 :goto_5

    :sswitch_67
    const-string v2, "woods_fn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x86

    goto/16 :goto_5

    :sswitch_68
    const-string v2, "ELUGA_A3_Pro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x1f

    goto/16 :goto_5

    :sswitch_69
    const-string v2, "Z12_PRO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x8a

    goto/16 :goto_5

    :sswitch_6a
    const-string v2, "BLACK-1X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x11

    goto/16 :goto_5

    :sswitch_6b
    const-string v2, "taido_row"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x79

    goto/16 :goto_5

    :sswitch_6c
    const-string v2, "Pixi4-7_3G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x69

    goto/16 :goto_5

    :sswitch_6d
    const-string v2, "GIONEE_GBL7360"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x35

    goto/16 :goto_5

    :sswitch_6e
    const-string v2, "GiONEE_CBL7513"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x33

    goto/16 :goto_5

    :sswitch_6f
    const-string v2, "OnePlus5T"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x5b

    goto/16 :goto_5

    :sswitch_70
    const-string v2, "whyred"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x84

    goto/16 :goto_5

    :sswitch_71
    const-string v2, "watson"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x83

    goto/16 :goto_5

    :sswitch_72
    const-string v2, "SVP-DTV15"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x77

    goto/16 :goto_5

    :sswitch_73
    const-string v2, "A7000-a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x9

    goto/16 :goto_5

    :sswitch_74
    const-string v2, "nicklaus_f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x58

    goto/16 :goto_5

    :sswitch_75
    const-string v2, "tcl_eu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x7e

    goto/16 :goto_5

    :sswitch_76
    const-string v2, "ELUGA_Ray_X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x22

    goto/16 :goto_5

    :sswitch_77
    const-string v2, "s905x018"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x78

    goto/16 :goto_5

    :sswitch_78
    const-string v2, "A10-70L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    goto/16 :goto_5

    :sswitch_79
    const-string v2, "A10-70F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    goto/16 :goto_5

    :sswitch_7a
    const-string v2, "namath"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x57

    goto/16 :goto_5

    :sswitch_7b
    const-string v2, "Slate_Pro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x76

    goto/16 :goto_5

    :sswitch_7c
    const-string v2, "iris60"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x46

    goto/16 :goto_5

    :sswitch_7d
    const-string v2, "BRAVIA_ATV2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x12

    goto/16 :goto_5

    :sswitch_7e
    const-string v2, "GiONEE_GBL7319"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x34

    goto/16 :goto_5

    :sswitch_7f
    const-string v2, "panell_dt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x63

    goto/16 :goto_5

    :sswitch_80
    const-string v2, "panell_ds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x62

    goto/16 :goto_5

    :sswitch_81
    const-string v2, "panell_dl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x61

    goto/16 :goto_5

    :sswitch_82
    const-string v2, "vernee_M5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x82

    goto/16 :goto_5

    :sswitch_83
    const-string v2, "pacificrim"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x5f

    goto/16 :goto_5

    :sswitch_84
    const-string v2, "Phantom6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x68

    goto/16 :goto_5

    :sswitch_85
    const-string v2, "ComioS1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x15

    goto/16 :goto_5

    :sswitch_86
    const-string v2, "XT1663"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x89

    goto/16 :goto_5

    :sswitch_87
    const-string v2, "RAIJIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x74

    goto/16 :goto_5

    :sswitch_88
    const-string v2, "AquaPowerM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xd

    goto/16 :goto_5

    :sswitch_89
    const-string v2, "PGN611"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x67

    goto/16 :goto_5

    :sswitch_8a
    const-string v2, "PGN610"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x66

    goto :goto_5

    :sswitch_8b
    const-string v2, "PGN528"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x65

    goto :goto_5

    :sswitch_8c
    const-string v2, "NX573J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x5a

    goto :goto_5

    :sswitch_8d
    const-string v2, "NX541J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x59

    goto :goto_5

    :sswitch_8e
    const-string v2, "CP8676_I02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x16

    goto :goto_5

    :sswitch_8f
    const-string v2, "K50a40"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x4a

    goto :goto_5

    :sswitch_90
    const-string v2, "GIONEE_SWW1631"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x38

    goto :goto_5

    :sswitch_91
    const-string v2, "GIONEE_SWW1627"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x37

    goto :goto_5

    :sswitch_92
    const-string v2, "GIONEE_SWW1609"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x36

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v1, -0x1

    :goto_5
    packed-switch v1, :pswitch_data_1

    :try_start_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzamq;->zzd:Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const v3, -0x236fe21d

    if-eq v2, v3, :cond_7

    const v3, 0x1e9d52

    if-eq v2, v3, :cond_6

    const v3, 0x1e9d5f

    if-eq v2, v3, :cond_5

    goto :goto_6

    :cond_5
    const-string v2, "AFTN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v7, 0x1

    goto :goto_7

    :cond_6
    const-string v2, "AFTA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v7, 0x0

    goto :goto_7

    :cond_7
    const-string v2, "JSN-L21"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v7, -0x1

    :goto_7
    packed-switch v7, :pswitch_data_2

    .line 4
    :cond_9
    :goto_8
    :try_start_3
    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzlz;->zzd:Z

    sput-boolean v9, Lcom/google/android/gms/internal/ads/zzlz;->zzc:Z

    .line 7
    :cond_a
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-boolean p0, Lcom/google/android/gms/internal/ads/zzlz;->zzd:Z

    return p0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :goto_9
    nop

    goto :goto_9

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_6
        -0x48b8f57f -> :sswitch_5
        -0x48b8bd30 -> :sswitch_4
        -0x3c588c8a -> :sswitch_3
        -0x3de1850 -> :sswitch_2
        0x341e81 -> :sswitch_1
        0x31316ffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_92
        -0x7fd6c381 -> :sswitch_91
        -0x7fd6c368 -> :sswitch_90
        -0x7d026749 -> :sswitch_8f
        -0x78929d6a -> :sswitch_8e
        -0x75f50a1e -> :sswitch_8d
        -0x75f4fe9d -> :sswitch_8c
        -0x736f875c -> :sswitch_8b
        -0x736f83c2 -> :sswitch_8a
        -0x736f83c1 -> :sswitch_89
        -0x7327ce1c -> :sswitch_88
        -0x705c574b -> :sswitch_87
        -0x651ebb62 -> :sswitch_86
        -0x6423293b -> :sswitch_85
        -0x604f5117 -> :sswitch_84
        -0x5f691e13 -> :sswitch_83
        -0x5ca40cc4 -> :sswitch_82
        -0x58520ec1 -> :sswitch_81
        -0x58520eba -> :sswitch_80
        -0x58520eb9 -> :sswitch_7f
        -0x4eaed329 -> :sswitch_7e
        -0x4892fb4f -> :sswitch_7d
        -0x465b3df3 -> :sswitch_7c
        -0x43e6c939 -> :sswitch_7b
        -0x3ec0fcc5 -> :sswitch_7a
        -0x3b33cca0 -> :sswitch_79
        -0x3b33cc9a -> :sswitch_78
        -0x398ae3f6 -> :sswitch_77
        -0x391f0fb4 -> :sswitch_76
        -0x346837ae -> :sswitch_75
        -0x323788e3 -> :sswitch_74
        -0x30f57652 -> :sswitch_73
        -0x2f88a116 -> :sswitch_72
        -0x2f61ed98 -> :sswitch_71
        -0x2efd0837 -> :sswitch_70
        -0x2e9e9441 -> :sswitch_6f
        -0x2247b8b1 -> :sswitch_6e
        -0x1f0fa2b7 -> :sswitch_6d
        -0x19af3b41 -> :sswitch_6c
        -0x114fad3e -> :sswitch_6b
        -0x10dae90b -> :sswitch_6a
        -0x1084b7b7 -> :sswitch_69
        -0xa5988e9 -> :sswitch_68
        -0x35f9fbf -> :sswitch_67
        0x84e -> :sswitch_66
        0xa04 -> :sswitch_65
        0xa9b -> :sswitch_64
        0xa9f -> :sswitch_63
        0xc13 -> :sswitch_62
        0xd9b -> :sswitch_61
        0x11ebd -> :sswitch_60
        0x12711 -> :sswitch_5f
        0x127db -> :sswitch_5e
        0x12beb -> :sswitch_5d
        0x1334d -> :sswitch_5c
        0x135c9 -> :sswitch_5b
        0x13aea -> :sswitch_5a
        0x158d2 -> :sswitch_59
        0x1821e -> :sswitch_58
        0x18220 -> :sswitch_57
        0x18401 -> :sswitch_56
        0x18c69 -> :sswitch_55
        0x1716e6 -> :sswitch_54
        0x171ac8 -> :sswitch_53
        0x171ac9 -> :sswitch_52
        0x208c61 -> :sswitch_51
        0x208c63 -> :sswitch_50
        0x208c80 -> :sswitch_4f
        0x208c9f -> :sswitch_4e
        0x208cbe -> :sswitch_4d
        0x208cc0 -> :sswitch_4c
        0x252f5f -> :sswitch_4b
        0x25981d -> :sswitch_4a
        0x259b88 -> :sswitch_49
        0x290a13 -> :sswitch_48
        0x3021fd -> :sswitch_47
        0x321e47 -> :sswitch_46
        0x332327 -> :sswitch_45
        0x33ab63 -> :sswitch_44
        0x27691fb -> :sswitch_43
        0x30f8881 -> :sswitch_42
        0x30f8c42 -> :sswitch_41
        0x349f581 -> :sswitch_40
        0x3ab0ea7 -> :sswitch_3f
        0x3e53ea5 -> :sswitch_3e
        0x3f25a44 -> :sswitch_3d
        0x3f25a46 -> :sswitch_3c
        0x3f25a49 -> :sswitch_3b
        0x3f25e05 -> :sswitch_3a
        0x3f25e07 -> :sswitch_39
        0x3f25e09 -> :sswitch_38
        0x3f261c6 -> :sswitch_37
        0x48dce49 -> :sswitch_36
        0x48dd589 -> :sswitch_35
        0x48dd8af -> :sswitch_34
        0x4d36832 -> :sswitch_33
        0x4f0b0e7 -> :sswitch_32
        0x5e2479e -> :sswitch_31
        0x60acc05 -> :sswitch_30
        0x6214744 -> :sswitch_2f
        0x9d91379 -> :sswitch_2e
        0xadc0551 -> :sswitch_2d
        0xea056b3 -> :sswitch_2c
        0x1121dbc3 -> :sswitch_2b
        0x1255818c -> :sswitch_2a
        0x1263990d -> :sswitch_29
        0x12d90f3a -> :sswitch_28
        0x12d90f4c -> :sswitch_27
        0x12d98b1b -> :sswitch_26
        0x12d98b22 -> :sswitch_25
        0x1844c711 -> :sswitch_24
        0x1e3e8044 -> :sswitch_23
        0x2f5336ed -> :sswitch_22
        0x2f54115e -> :sswitch_21
        0x2f541849 -> :sswitch_20
        0x31cf010e -> :sswitch_1f
        0x36ad82f4 -> :sswitch_1e
        0x391a0b61 -> :sswitch_1d
        0x3f3728cd -> :sswitch_1c
        0x448ec687 -> :sswitch_1b
        0x46260f63 -> :sswitch_1a
        0x4c505106 -> :sswitch_19
        0x4de67084 -> :sswitch_18
        0x506ac5a9 -> :sswitch_17
        0x5abad9cd -> :sswitch_16
        0x64d2e6e9 -> :sswitch_15
        0x64d2eac5 -> :sswitch_14
        0x65e4085b -> :sswitch_13
        0x6f373556 -> :sswitch_12
        0x719f1dcb -> :sswitch_11
        0x75d9a0f0 -> :sswitch_10
        0x7796d144 -> :sswitch_f
        0x785bcb26 -> :sswitch_e
        0x78fc0e50 -> :sswitch_d
        0x790521fb -> :sswitch_c
        0x7933207f -> :sswitch_b
        0x7a05a409 -> :sswitch_a
        0x7a0696bd -> :sswitch_9
        0x7a16dfe7 -> :sswitch_8
        0x7a1f0e95 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected static zzy(Lcom/google/android/gms/internal/ads/zzfo;Lcom/google/android/gms/internal/ads/zzafv;)I
    .locals 3

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzm:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2
    iget-object p0, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzn:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzn:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget p0, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzm:I

    add-int/2addr p0, v1

    return p0

    .line 5
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzlz;->zzaF(Lcom/google/android/gms/internal/ads/zzfo;Lcom/google/android/gms/internal/ads/zzafv;)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected final zzA(Lcom/google/android/gms/internal/ads/zzgh;IJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzlz;->zzaC()V

    const-string p3, "releaseOutputBuffer"

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzamo;->zza(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 3
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgh;->zzh(IZ)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamo;->zzb()V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzz:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zza:Lcom/google/android/gms/internal/ads/zzaz;

    .line 6
    iget p2, p1, Lcom/google/android/gms/internal/ads/zzaz;->zze:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaz;->zze:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzw:I

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlz;->zzp()V

    return-void
.end method

.method protected final zzB(Lcom/google/android/gms/internal/ads/zzaf;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzx:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzx:I

    sget p1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    return-void
.end method

.method protected final zzC()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzp:Z

    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    return-void
.end method

.method public final zzE(ILjava/lang/Object;)V
    .locals 5
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 15
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzf:Lcom/google/android/gms/internal/ads/zzmi;

    .line 16
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzmi;->zza(I)V

    return-void

    .line 17
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzo:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzZ()Lcom/google/android/gms/internal/ads/zzgh;

    move-result-object p1

    if-eqz p1, :cond_a

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzo:I

    .line 18
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgh;->zzn(I)V

    return-void

    .line 14
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzH:I

    if-eq p2, p1, :cond_a

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzH:I

    return-void

    .line 15
    :cond_1
    check-cast p2, Lcom/google/android/gms/internal/ads/zzma;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzI:Lcom/google/android/gms/internal/ads/zzma;

    return-void

    .line 1
    :cond_2
    instance-of p1, p2, Landroid/view/Surface;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    move-object p1, p2

    check-cast p1, Landroid/view/Surface;

    goto :goto_0

    :cond_3
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_5

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzm:Lcom/google/android/gms/internal/ads/zzlu;

    if-eqz p2, :cond_4

    move-object p1, p2

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzK()Lcom/google/android/gms/internal/ads/zzfo;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzlz;->zzaB(Lcom/google/android/gms/internal/ads/zzfo;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zze:Landroid/content/Context;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzfo;->zzf:Z

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzlu;->zzb(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzlu;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzm:Lcom/google/android/gms/internal/ads/zzlu;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzm:Lcom/google/android/gms/internal/ads/zzlu;

    .line 1
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzl:Landroid/view/Surface;

    if-eq p2, p1, :cond_9

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzl:Landroid/view/Surface;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzf:Lcom/google/android/gms/internal/ads/zzmi;

    .line 4
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzmi;->zzd(Landroid/view/Surface;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzn:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzadv;->zzaf()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzZ()Lcom/google/android/gms/internal/ads/zzgh;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 5
    sget v3, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_6

    if-eqz p1, :cond_6

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzj:Z

    if-nez v3, :cond_6

    .line 8
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzgh;->zzl(Landroid/view/Surface;)V

    goto :goto_2

    .line 6
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzN()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzI()V

    :cond_7
    :goto_2
    if-eqz p1, :cond_8

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzm:Lcom/google/android/gms/internal/ads/zzlu;

    if-eq p1, v2, :cond_8

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzlz;->zzaD()V

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzp:Z

    .line 11
    sget p1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/4 p1, 0x2

    if-ne v1, p1, :cond_a

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzt:J

    return-void

    :cond_8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzG:Lcom/google/android/gms/internal/ads/zzy;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzp:Z

    .line 9
    sget p1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    return-void

    :cond_9
    if-eqz p1, :cond_a

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzm:Lcom/google/android/gms/internal/ads/zzlu;

    if-eq p1, p2, :cond_a

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzlz;->zzaD()V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzn:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzg:Lcom/google/android/gms/internal/ads/zzmt;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzl:Landroid/view/Surface;

    .line 13
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzmt;->zzg(Ljava/lang/Object;)V

    return-void

    :cond_a
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final zzF(JJLcom/google/android/gms/internal/ads/zzgh;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzafv;)Z
    .locals 24
    .param p5    # Lcom/google/android/gms/internal/ads/zzgh;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p5

    move/from16 v4, p7

    move-wide/from16 v5, p10

    if-eqz v3, :cond_17

    .line 1
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzs:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v12, v8, v10

    if-nez v12, :cond_0

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzs:J

    :cond_0
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzy:J

    cmp-long v12, v5, v8

    if-eqz v12, :cond_1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzf:Lcom/google/android/gms/internal/ads/zzmi;

    invoke-virtual {v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzmi;->zzh(J)V

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzy:J

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzX()J

    move-result-wide v8

    sub-long v12, v5, v8

    const/4 v14, 0x1

    if-eqz p12, :cond_3

    if-eqz p13, :cond_2

    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {v0, v3, v4, v12, v13}, Lcom/google/android/gms/internal/ads/zzlz;->zzz(Lcom/google/android/gms/internal/ads/zzgh;IJ)V

    return v14

    .line 1
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzW()F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzadv;->zzaf()I

    move-result v10

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v17, v17, v19

    sub-long/2addr v5, v1

    long-to-double v5, v5

    float-to-double v14, v15

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v14

    double-to-long v5, v5

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    sub-long v14, v17, p3

    sub-long/2addr v5, v14

    :cond_4
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzl:Landroid/view/Surface;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzm:Lcom/google/android/gms/internal/ads/zzlu;

    const/4 v11, 0x0

    if-ne v14, v15, :cond_6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzlz;->zzaE(J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3
    invoke-virtual {v0, v3, v4, v12, v13}, Lcom/google/android/gms/internal/ads/zzlz;->zzz(Lcom/google/android/gms/internal/ads/zzgh;IJ)V

    .line 4
    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzlz;->zzb(J)V

    const/4 v1, 0x1

    return v1

    :cond_5
    return v11

    :cond_6
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzz:J

    sub-long v17, v17, v14

    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzr:Z

    if-nez v14, :cond_8

    const/4 v14, 0x2

    if-eq v10, v14, :cond_7

    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzq:Z

    if-eqz v14, :cond_9

    :cond_7
    :goto_1
    move-wide/from16 v21, v12

    const/4 v14, 0x1

    goto :goto_2

    .line 23
    :cond_8
    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzp:Z

    if-nez v14, :cond_9

    goto :goto_1

    :cond_9
    move-wide/from16 v21, v12

    const/4 v14, 0x0

    .line 4
    :goto_2
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzt:J

    const/16 v13, 0x15

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v23, v11, v15

    if-nez v23, :cond_c

    cmp-long v11, v1, v8

    if-ltz v11, :cond_c

    if-nez v14, :cond_a

    const/4 v8, 0x2

    if-ne v10, v8, :cond_c

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzlz;->zzaE(J)Z

    move-result v8

    if-eqz v8, :cond_c

    const-wide/32 v8, 0x186a0

    cmp-long v11, v17, v8

    if-lez v11, :cond_c

    .line 25
    :cond_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 26
    sget v7, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-lt v7, v13, :cond_b

    move-object/from16 p8, p0

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v21

    move-wide/from16 p13, v1

    .line 27
    invoke-virtual/range {p8 .. p14}, Lcom/google/android/gms/internal/ads/zzlz;->zzaa(Lcom/google/android/gms/internal/ads/zzgh;IJJ)V

    goto :goto_3

    :cond_b
    move-wide/from16 v8, v21

    .line 28
    invoke-virtual {v0, v3, v4, v8, v9}, Lcom/google/android/gms/internal/ads/zzlz;->zzA(Lcom/google/android/gms/internal/ads/zzgh;IJ)V

    .line 29
    :goto_3
    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzlz;->zzb(J)V

    const/4 v1, 0x1

    return v1

    :cond_c
    move-wide/from16 v8, v21

    const/4 v11, 0x2

    if-ne v10, v11, :cond_16

    .line 28
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzs:J

    cmp-long v12, v1, v10

    if-nez v12, :cond_d

    goto/16 :goto_9

    .line 5
    :cond_d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzf:Lcom/google/android/gms/internal/ads/zzmi;

    mul-long v5, v5, v19

    add-long/2addr v5, v10

    .line 6
    invoke-virtual {v12, v5, v6}, Lcom/google/android/gms/internal/ads/zzmi;->zzk(J)J

    move-result-wide v5

    sub-long v10, v5, v10

    div-long v10, v10, v19

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzt:J

    const-wide/32 v17, -0x7a120

    cmp-long v12, v10, v17

    if-gez v12, :cond_10

    if-nez p13, :cond_10

    .line 7
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzadv;->zzay(J)I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_5

    .line 14
    :cond_e
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlz;->zza:Lcom/google/android/gms/internal/ads/zzaz;

    .line 21
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzaz;->zzi:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v2, Lcom/google/android/gms/internal/ads/zzaz;->zzi:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzx:I

    add-int/2addr v3, v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v14, v4

    if-eqz v1, :cond_f

    .line 22
    iget v1, v2, Lcom/google/android/gms/internal/ads/zzaz;->zzf:I

    add-int/2addr v1, v3

    iput v1, v2, Lcom/google/android/gms/internal/ads/zzaz;->zzf:I

    goto :goto_4

    .line 23
    :cond_f
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzlz;->zza(I)V

    .line 24
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzP()Z

    const/4 v1, 0x0

    return v1

    .line 7
    :cond_10
    :goto_5
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzlz;->zzaE(J)Z

    move-result v1

    if-eqz v1, :cond_12

    if-nez p13, :cond_12

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v14, v1

    if-eqz v5, :cond_11

    .line 19
    invoke-virtual {v0, v3, v4, v8, v9}, Lcom/google/android/gms/internal/ads/zzlz;->zzz(Lcom/google/android/gms/internal/ads/zzgh;IJ)V

    const/4 v1, 0x1

    goto :goto_6

    :cond_11
    const-string v1, "dropVideoBuffer"

    .line 15
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzamo;->zza(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 16
    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzgh;->zzh(IZ)V

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamo;->zzb()V

    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzlz;->zza(I)V

    .line 20
    :goto_6
    invoke-virtual {v0, v10, v11}, Lcom/google/android/gms/internal/ads/zzlz;->zzb(J)V

    return v1

    .line 8
    :cond_12
    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-lt v1, v13, :cond_14

    const-wide/32 v1, 0xc350

    cmp-long v7, v10, v1

    if-gez v7, :cond_13

    move-object/from16 p8, p0

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v8

    move-wide/from16 p13, v5

    .line 9
    invoke-virtual/range {p8 .. p14}, Lcom/google/android/gms/internal/ads/zzlz;->zzaa(Lcom/google/android/gms/internal/ads/zzgh;IJJ)V

    .line 10
    invoke-virtual {v0, v10, v11}, Lcom/google/android/gms/internal/ads/zzlz;->zzb(J)V

    const/4 v1, 0x1

    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_8

    :cond_14
    const-wide/16 v1, 0x7530

    cmp-long v5, v10, v1

    if-gez v5, :cond_13

    const-wide/16 v1, 0x2af8

    cmp-long v5, v10, v1

    if-lez v5, :cond_15

    const-wide/16 v1, -0x2710

    add-long/2addr v1, v10

    :try_start_0
    div-long v1, v1, v19

    .line 11
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 12
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const/4 v1, 0x0

    return v1

    .line 13
    :cond_15
    :goto_7
    invoke-virtual {v0, v3, v4, v8, v9}, Lcom/google/android/gms/internal/ads/zzlz;->zzA(Lcom/google/android/gms/internal/ads/zzgh;IJ)V

    .line 14
    invoke-virtual {v0, v10, v11}, Lcom/google/android/gms/internal/ads/zzlz;->zzb(J)V

    const/4 v1, 0x1

    return v1

    :goto_8
    return v1

    :cond_16
    :goto_9
    const/4 v1, 0x0

    return v1

    :cond_17
    const/4 v1, 0x0

    .line 31
    throw v1

    :goto_a
    nop

    goto :goto_a
.end method

.method protected final zzJ(Lcom/google/android/gms/internal/ads/zzfo;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzl:Landroid/view/Surface;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzlz;->zzaB(Lcom/google/android/gms/internal/ads/zzfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final zzM(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfq;->zzM(FF)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzf:Lcom/google/android/gms/internal/ads/zzmi;

    .line 2
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzmi;->zzf(F)V

    return-void
.end method

.method protected final zzR()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzR()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzx:I

    return-void
.end method

.method protected final zzT(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzfo;)Lcom/google/android/gms/internal/ads/zzfn;
    .locals 2
    .param p2    # Lcom/google/android/gms/internal/ads/zzfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzlx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzl:Landroid/view/Surface;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzlx;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzfo;Landroid/view/Surface;)V

    return-object v0
.end method

.method protected final zzU(Lcom/google/android/gms/internal/ads/zzaf;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzk:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaf;->zze:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x0

    .line 7
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, -0x4b

    if-ne v0, v6, :cond_1

    const/16 v0, 0x3c

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    if-ne v2, v0, :cond_1

    const/4 v0, 0x4

    if-ne v3, v0, :cond_1

    if-nez v4, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 9
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzZ()Lcom/google/android/gms/internal/ads/zzgh;

    move-result-object p1

    new-instance v1, Landroid/os/Bundle;

    .line 11
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "hdr10-plus-info"

    .line 12
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 13
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzgh;->zzm(Landroid/os/Bundle;)V

    return-void

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 14
    throw p1
.end method

.method protected final zzV(J)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfq;->zzV(J)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzx:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzx:I

    return-void
.end method

.method protected final zza(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zza:Lcom/google/android/gms/internal/ads/zzaz;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaz;->zzg:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaz;->zzg:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzv:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzv:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzw:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzw:I

    .line 2
    iget p1, v0, Lcom/google/android/gms/internal/ads/zzaz;->zzh:I

    .line 3
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lcom/google/android/gms/internal/ads/zzaz;->zzh:I

    return-void
.end method

.method protected final zzaa(Lcom/google/android/gms/internal/ads/zzgh;IJJ)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzlz;->zzaC()V

    const-string p3, "releaseOutputBuffer"

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzamo;->zza(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p2, p5, p6}, Lcom/google/android/gms/internal/ads/zzgh;->zzi(IJ)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamo;->zzb()V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long p1, p1, p3

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzz:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zza:Lcom/google/android/gms/internal/ads/zzaz;

    .line 6
    iget p2, p1, Lcom/google/android/gms/internal/ads/zzaz;->zze:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaz;->zze:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzw:I

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlz;->zzp()V

    return-void
.end method

.method protected final zzb(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zza:Lcom/google/android/gms/internal/ads/zzaz;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaz;->zzj:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaz;->zzj:J

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaz;->zzk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaz;->zzk:I

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzA:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzA:J

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzB:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzB:I

    return-void
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecVideoRenderer"

    return-object v0
.end method

.method protected final zzd(Lcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzafv;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfy;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzalt;->zzb(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzafv;->zzo:Lcom/google/android/gms/internal/ads/zzn;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzlz;->zzaA(Lcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzafv;ZZ)Ljava/util/List;

    move-result-object v3

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    invoke-static {p1, p2, v1, v1}, Lcom/google/android/gms/internal/ads/zzlz;->zzaA(Lcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzafv;ZZ)Ljava/util/List;

    move-result-object v3

    .line 7
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    return v2

    .line 8
    :cond_3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzlz;->zzY(Lcom/google/android/gms/internal/ads/zzafv;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 p1, 0x2

    return p1

    .line 9
    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfo;

    .line 10
    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/ads/zzfo;->zzc(Lcom/google/android/gms/internal/ads/zzafv;)Z

    move-result v4

    .line 11
    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(Lcom/google/android/gms/internal/ads/zzafv;)Z

    move-result v3

    if-eq v2, v3, :cond_5

    const/16 v3, 0x8

    goto :goto_1

    :cond_5
    const/16 v3, 0x10

    :goto_1
    if-eqz v4, :cond_6

    .line 12
    invoke-static {p1, p2, v0, v2}, Lcom/google/android/gms/internal/ads/zzlz;->zzaA(Lcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzafv;ZZ)Ljava/util/List;

    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfo;

    .line 15
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfo;->zzc(Lcom/google/android/gms/internal/ads/zzafv;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(Lcom/google/android/gms/internal/ads/zzafv;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v1, 0x20

    :cond_6
    if-eq v2, v4, :cond_7

    const/4 p1, 0x3

    goto :goto_2

    :cond_7
    const/4 p1, 0x4

    :goto_2
    or-int/2addr p1, v3

    or-int/2addr p1, v1

    return p1
.end method

.method protected final zze(Lcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzafv;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfs;",
            "Lcom/google/android/gms/internal/ads/zzafv;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfy;
        }
    .end annotation

    const/4 p3, 0x0

    .line 1
    invoke-static {p1, p2, p3, p3}, Lcom/google/android/gms/internal/ads/zzlz;->zzaA(Lcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/zzafv;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected final zzg(Lcom/google/android/gms/internal/ads/zzfo;Lcom/google/android/gms/internal/ads/zzafv;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzfl;
    .locals 20
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    .line 1
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzm:Lcom/google/android/gms/internal/ads/zzlu;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-boolean v6, v4, Lcom/google/android/gms/internal/ads/zzlu;->zza:Z

    iget-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzfo;->zzf:Z

    if-eq v6, v7, :cond_0

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzlu;->release()V

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzm:Lcom/google/android/gms/internal/ads/zzlu;

    .line 3
    :cond_0
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfo;->zzc:Ljava/lang/String;

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzadv;->zzau()[Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v6

    .line 5
    iget v7, v2, Lcom/google/android/gms/internal/ads/zzafv;->zzq:I

    .line 6
    iget v8, v2, Lcom/google/android/gms/internal/ads/zzafv;->zzr:I

    .line 7
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/zzlz;->zzy(Lcom/google/android/gms/internal/ads/zzfo;Lcom/google/android/gms/internal/ads/zzafv;)I

    move-result v9

    array-length v10, v6

    const/4 v11, -0x1

    const/4 v13, 0x1

    if-ne v10, v13, :cond_2

    if-eq v9, v11, :cond_1

    .line 36
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/zzlz;->zzaF(Lcom/google/android/gms/internal/ads/zzfo;Lcom/google/android/gms/internal/ads/zzafv;)I

    move-result v6

    if-eq v6, v11, :cond_1

    int-to-float v9, v9

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float v9, v9, v10

    float-to-int v9, v9

    .line 37
    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzly;

    .line 38
    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzly;-><init>(III)V

    goto/16 :goto_c

    :cond_2
    move v14, v8

    move v15, v9

    const/4 v8, 0x0

    move v9, v7

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v10, :cond_7

    .line 8
    aget-object v5, v6, v7

    .line 9
    iget-object v13, v2, Lcom/google/android/gms/internal/ads/zzafv;->zzx:Lcom/google/android/gms/internal/ads/zzj;

    if-eqz v13, :cond_3

    iget-object v13, v5, Lcom/google/android/gms/internal/ads/zzafv;->zzx:Lcom/google/android/gms/internal/ads/zzj;

    if-nez v13, :cond_3

    .line 10
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzafv;->zza()Lcom/google/android/gms/internal/ads/zzaft;

    move-result-object v5

    iget-object v13, v2, Lcom/google/android/gms/internal/ads/zzafv;->zzx:Lcom/google/android/gms/internal/ads/zzj;

    invoke-virtual {v5, v13}, Lcom/google/android/gms/internal/ads/zzaft;->zzZ(Lcom/google/android/gms/internal/ads/zzj;)Lcom/google/android/gms/internal/ads/zzaft;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v5

    .line 11
    :cond_3
    invoke-virtual {v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzfo;->zze(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzafv;)Lcom/google/android/gms/internal/ads/zzba;

    move-result-object v13

    iget v13, v13, Lcom/google/android/gms/internal/ads/zzba;->zzd:I

    if-eqz v13, :cond_6

    .line 12
    iget v13, v5, Lcom/google/android/gms/internal/ads/zzafv;->zzq:I

    if-eq v13, v11, :cond_5

    iget v12, v5, Lcom/google/android/gms/internal/ads/zzafv;->zzr:I

    if-ne v12, v11, :cond_4

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v12, 0x1

    :goto_2
    or-int/2addr v8, v12

    .line 13
    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 14
    iget v12, v5, Lcom/google/android/gms/internal/ads/zzafv;->zzr:I

    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 15
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzlz;->zzy(Lcom/google/android/gms/internal/ads/zzfo;Lcom/google/android/gms/internal/ads/zzafv;)I

    move-result v5

    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v15, v5

    move v14, v12

    :cond_6
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    const/4 v13, 0x1

    goto :goto_0

    :cond_7
    if-eqz v8, :cond_12

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x42

    .line 16
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "MediaCodecVideoRenderer"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzafv;->zzr:I

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzafv;->zzq:I

    if-le v5, v6, :cond_8

    move v7, v5

    goto :goto_3

    :cond_8
    move v7, v6

    :goto_3
    if-gt v5, v6, :cond_9

    move v8, v5

    goto :goto_4

    :cond_9
    move v8, v6

    :goto_4
    int-to-float v10, v8

    int-to-float v11, v7

    div-float/2addr v10, v11

    sget-object v11, Lcom/google/android/gms/internal/ads/zzlz;->zzb:[I

    const/4 v12, 0x0

    :goto_5
    const/16 v13, 0x9

    if-ge v12, v13, :cond_11

    .line 19
    aget v13, v11, v12

    move-object/from16 v16, v11

    int-to-float v11, v13

    mul-float v11, v11, v10

    float-to-int v11, v11

    if-le v13, v7, :cond_11

    if-gt v11, v8, :cond_a

    goto/16 :goto_a

    :cond_a
    move/from16 v17, v7

    .line 20
    sget v7, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    move/from16 v18, v8

    const/16 v8, 0x15

    if-lt v7, v8, :cond_d

    if-gt v5, v6, :cond_b

    move v7, v13

    goto :goto_6

    :cond_b
    move v7, v11

    :goto_6
    if-gt v5, v6, :cond_c

    goto :goto_7

    :cond_c
    move v11, v13

    .line 21
    :goto_7
    invoke-virtual {v1, v7, v11}, Lcom/google/android/gms/internal/ads/zzfo;->zzg(II)Landroid/graphics/Point;

    move-result-object v7

    .line 22
    iget v8, v2, Lcom/google/android/gms/internal/ads/zzafv;->zzs:F

    .line 23
    iget v11, v7, Landroid/graphics/Point;->x:I

    iget v13, v7, Landroid/graphics/Point;->y:I

    move-object/from16 v19, v7

    float-to-double v7, v8

    invoke-virtual {v1, v11, v13, v7, v8}, Lcom/google/android/gms/internal/ads/zzfo;->zzf(IID)Z

    move-result v7

    if-eqz v7, :cond_10

    move-object/from16 v10, v19

    goto :goto_b

    :cond_d
    const/16 v7, 0x10

    .line 24
    :try_start_0
    invoke-static {v13, v7}, Lcom/google/android/gms/internal/ads/zzamq;->zzw(II)I

    move-result v8

    mul-int/lit8 v8, v8, 0x10

    .line 25
    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/zzamq;->zzw(II)I

    move-result v11

    mul-int/lit8 v7, v11, 0x10

    mul-int v11, v8, v7

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzge;->zze()I

    move-result v13

    if-gt v11, v13, :cond_10

    new-instance v10, Landroid/graphics/Point;

    if-gt v5, v6, :cond_e

    move v11, v8

    goto :goto_8

    :cond_e
    move v11, v7

    :goto_8
    if-gt v5, v6, :cond_f

    goto :goto_9

    :cond_f
    move v7, v8

    .line 27
    :goto_9
    invoke-direct {v10, v11, v7}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfy; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :cond_10
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v11, v16

    move/from16 v7, v17

    move/from16 v8, v18

    goto :goto_5

    :catch_0
    :cond_11
    :goto_a
    const/4 v10, 0x0

    :goto_b
    if-eqz v10, :cond_12

    .line 28
    iget v5, v10, Landroid/graphics/Point;->x:I

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 29
    iget v5, v10, Landroid/graphics/Point;->y:I

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 30
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzafv;->zza()Lcom/google/android/gms/internal/ads/zzaft;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzaft;->zzS(I)Lcom/google/android/gms/internal/ads/zzaft;

    invoke-virtual {v5, v14}, Lcom/google/android/gms/internal/ads/zzaft;->zzT(I)Lcom/google/android/gms/internal/ads/zzaft;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v5

    .line 31
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzlz;->zzaF(Lcom/google/android/gms/internal/ads/zzfo;Lcom/google/android/gms/internal/ads/zzafv;)I

    move-result v5

    .line 32
    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v15

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x39

    .line 33
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Codec max resolution adjusted to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "MediaCodecVideoRenderer"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 34
    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    new-instance v6, Lcom/google/android/gms/internal/ads/zzly;

    .line 35
    invoke-direct {v6, v9, v14, v15}, Lcom/google/android/gms/internal/ads/zzly;-><init>(III)V

    .line 38
    :goto_c
    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzi:Lcom/google/android/gms/internal/ads/zzly;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzi:Lcom/google/android/gms/internal/ads/zzly;

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzh:Z

    .line 39
    new-instance v7, Landroid/media/MediaFormat;

    invoke-direct {v7}, Landroid/media/MediaFormat;-><init>()V

    const-string v8, "mime"

    .line 40
    invoke-virtual {v7, v8, v4}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "width"

    .line 41
    iget v8, v2, Lcom/google/android/gms/internal/ads/zzafv;->zzq:I

    invoke-virtual {v7, v4, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "height"

    .line 42
    iget v8, v2, Lcom/google/android/gms/internal/ads/zzafv;->zzr:I

    invoke-virtual {v7, v4, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 43
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzafv;->zzn:Ljava/util/List;

    invoke-static {v7, v4}, Lcom/google/android/gms/internal/ads/zzalq;->zza(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 44
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzafv;->zzs:F

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v9, v4, v8

    if-eqz v9, :cond_13

    const-string v9, "frame-rate"

    .line 45
    invoke-virtual {v7, v9, v4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_13
    const-string v4, "rotation-degrees"

    .line 46
    iget v9, v2, Lcom/google/android/gms/internal/ads/zzafv;->zzt:I

    invoke-static {v7, v4, v9}, Lcom/google/android/gms/internal/ads/zzalq;->zzb(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 47
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzafv;->zzx:Lcom/google/android/gms/internal/ads/zzj;

    if-eqz v4, :cond_14

    const-string v9, "color-transfer"

    iget v10, v4, Lcom/google/android/gms/internal/ads/zzj;->zzc:I

    .line 48
    invoke-static {v7, v9, v10}, Lcom/google/android/gms/internal/ads/zzalq;->zzb(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v9, "color-standard"

    iget v10, v4, Lcom/google/android/gms/internal/ads/zzj;->zza:I

    .line 49
    invoke-static {v7, v9, v10}, Lcom/google/android/gms/internal/ads/zzalq;->zzb(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v9, "color-range"

    iget v10, v4, Lcom/google/android/gms/internal/ads/zzj;->zzb:I

    .line 50
    invoke-static {v7, v9, v10}, Lcom/google/android/gms/internal/ads/zzalq;->zzb(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzj;->zzd:[B

    if-eqz v4, :cond_14

    const-string v9, "hdr-static-info"

    .line 51
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v7, v9, v4}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_14
    const-string v4, "video/dolby-vision"

    .line 52
    iget-object v9, v2, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 53
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzge;->zzf(Lcom/google/android/gms/internal/ads/zzafv;)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_15

    const-string v9, "profile"

    .line 54
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 55
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 54
    invoke-static {v7, v9, v4}, Lcom/google/android/gms/internal/ads/zzalq;->zzb(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    :cond_15
    const-string v4, "max-width"

    .line 56
    iget v9, v5, Lcom/google/android/gms/internal/ads/zzly;->zza:I

    invoke-virtual {v7, v4, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "max-height"

    .line 57
    iget v9, v5, Lcom/google/android/gms/internal/ads/zzly;->zzb:I

    invoke-virtual {v7, v4, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "max-input-size"

    .line 58
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzly;->zzc:I

    invoke-static {v7, v4, v5}, Lcom/google/android/gms/internal/ads/zzalq;->zzb(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 59
    sget v4, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_16

    const-string v4, "priority"

    const/4 v5, 0x0

    .line 60
    invoke-virtual {v7, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    cmpl-float v4, v3, v8

    if-eqz v4, :cond_16

    const-string v4, "operating-rate"

    .line 61
    invoke-virtual {v7, v4, v3}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_16
    if-eqz v6, :cond_17

    const-string v3, "no-post-process"

    const/4 v4, 0x1

    .line 62
    invoke-virtual {v7, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "auto-frc"

    const/4 v4, 0x0

    .line 63
    invoke-virtual {v7, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_17
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzl:Landroid/view/Surface;

    if-nez v3, :cond_1a

    .line 64
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzlz;->zzaB(Lcom/google/android/gms/internal/ads/zzfo;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 65
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzm:Lcom/google/android/gms/internal/ads/zzlu;

    if-nez v3, :cond_18

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlz;->zze:Landroid/content/Context;

    .line 66
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzfo;->zzf:Z

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzlu;->zzb(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzlu;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzm:Lcom/google/android/gms/internal/ads/zzlu;

    :cond_18
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzm:Lcom/google/android/gms/internal/ads/zzlu;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzl:Landroid/view/Surface;

    goto :goto_d

    .line 64
    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 65
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 66
    :cond_1a
    :goto_d
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlz;->zzl:Landroid/view/Surface;

    const/4 v4, 0x0

    invoke-static {v1, v7, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfl;->zzb(Lcom/google/android/gms/internal/ads/zzfo;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzafv;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lcom/google/android/gms/internal/ads/zzfl;

    move-result-object v1

    return-object v1
.end method

.method protected final zzh(Lcom/google/android/gms/internal/ads/zzfo;Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzafv;)Lcom/google/android/gms/internal/ads/zzba;
    .locals 9

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfo;->zze(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzafv;)Lcom/google/android/gms/internal/ads/zzba;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzba;->zze:I

    iget v2, p3, Lcom/google/android/gms/internal/ads/zzafv;->zzq:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzi:Lcom/google/android/gms/internal/ads/zzly;

    .line 2
    iget v4, v3, Lcom/google/android/gms/internal/ads/zzly;->zza:I

    if-gt v2, v4, :cond_0

    iget v2, p3, Lcom/google/android/gms/internal/ads/zzafv;->zzr:I

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzly;->zzb:I

    if-le v2, v3, :cond_1

    :cond_0
    or-int/lit16 v1, v1, 0x100

    .line 3
    :cond_1
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzlz;->zzy(Lcom/google/android/gms/internal/ads/zzfo;Lcom/google/android/gms/internal/ads/zzafv;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzi:Lcom/google/android/gms/internal/ads/zzly;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzly;->zzc:I

    if-le v2, v3, :cond_2

    or-int/lit8 v1, v1, 0x40

    :cond_2
    new-instance v8, Lcom/google/android/gms/internal/ads/zzba;

    .line 4
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfo;->zza:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz v1, :cond_3

    move v7, v1

    const/4 v6, 0x0

    goto :goto_0

    .line 5
    :cond_3
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzba;->zzd:I

    move v6, v0

    const/4 v7, 0x0

    :goto_0
    move-object v2, v8

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzba;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzafv;II)V

    return-object v8
.end method

.method protected final zzj(FLcom/google/android/gms/internal/ads/zzafv;[Lcom/google/android/gms/internal/ads/zzafv;)F
    .locals 5

    .line 1
    array-length p2, p3

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    .line 2
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzafv;->zzs:F

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_0

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    cmpl-float p2, v2, v0

    if-nez p2, :cond_2

    return v0

    :cond_2
    mul-float v2, v2, p1

    return v2
.end method

.method protected final zzk(Ljava/lang/String;JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzg:Lcom/google/android/gms/internal/ads/zzmt;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzmt;->zzb(Ljava/lang/String;JJ)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzlz;->zzab(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzj:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzK()Lcom/google/android/gms/internal/ads/zzfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    sget p2, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 p3, 0x1d

    const/4 p4, 0x0

    if-lt p2, p3, :cond_1

    const-string p2, "video/x-vnd.on2.vp9"

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzfo;->zzb:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfo;->zzb()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    aget-object p5, p1, p3

    .line 5
    iget p5, p5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v0, 0x4000

    if-ne p5, v0, :cond_0

    const/4 p4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzk:Z

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 6
    throw p1

    :goto_2
    nop

    goto :goto_2
.end method

.method protected final zzl(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzg:Lcom/google/android/gms/internal/ads/zzmt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzmt;->zzh(Ljava/lang/String;)V

    return-void
.end method

.method protected final zzm(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecVideoRenderer"

    const-string v1, "Video codec error"

    .line 1
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzaln;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzg:Lcom/google/android/gms/internal/ads/zzmt;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzmt;->zzj(Ljava/lang/Exception;)V

    return-void
.end method

.method protected final zzn(Lcom/google/android/gms/internal/ads/zzafw;)Lcom/google/android/gms/internal/ads/zzba;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfq;->zzn(Lcom/google/android/gms/internal/ads/zzafw;)Lcom/google/android/gms/internal/ads/zzba;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzg:Lcom/google/android/gms/internal/ads/zzmt;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzafw;->zza:Lcom/google/android/gms/internal/ads/zzafv;

    .line 2
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzmt;->zzc(Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzba;)V

    return-object v0
.end method

.method protected final zzo(Lcom/google/android/gms/internal/ads/zzafv;Landroid/media/MediaFormat;)V
    .locals 4
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzZ()Lcom/google/android/gms/internal/ads/zzgh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzo:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgh;->zzn(I)V

    :cond_0
    if-eqz p2, :cond_7

    const-string v0, "crop-right"

    .line 2
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "crop-left"

    .line 3
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "crop-bottom"

    .line 4
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "crop-top"

    .line 5
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    const-string v0, "crop-right"

    .line 6
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v3, "crop-left"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v0, v3

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const-string v0, "width"

    .line 7
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 6
    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzC:I

    if-eqz v2, :cond_3

    const-string v0, "crop-bottom"

    .line 8
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v2, "crop-top"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v0, p2

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    const-string v0, "height"

    .line 9
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 8
    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzD:I

    .line 10
    iget p2, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzu:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzF:F

    .line 11
    sget p2, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_5

    .line 12
    iget p2, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzt:I

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_4

    const/16 v0, 0x10e

    if-ne p2, v0, :cond_6

    :cond_4
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzC:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzD:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzC:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzD:I

    const/high16 p2, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzF:F

    div-float/2addr p2, v0

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzF:F

    goto :goto_2

    .line 13
    :cond_5
    iget p2, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzt:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzE:I

    .line 12
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzf:Lcom/google/android/gms/internal/ads/zzmi;

    .line 14
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzafv;->zzs:F

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzmi;->zzg(F)V

    return-void

    :cond_7
    const/4 p1, 0x0

    .line 15
    throw p1
.end method

.method final zzp()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzr:Z

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzp:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzp:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzg:Lcom/google/android/gms/internal/ads/zzmt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzl:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzmt;->zzg(Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzn:Z

    :cond_0
    return-void
.end method

.method protected final zzq(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfq;->zzq(ZZ)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzadv;->zzav()Lcom/google/android/gms/internal/ads/zzahx;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzg:Lcom/google/android/gms/internal/ads/zzmt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zza:Lcom/google/android/gms/internal/ads/zzaz;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzmt;->zza(Lcom/google/android/gms/internal/ads/zzaz;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzf:Lcom/google/android/gms/internal/ads/zzmi;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzmi;->zzb()V

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzq:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzr:Z

    return-void
.end method

.method protected final zzr(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaeg;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfq;->zzr(JZ)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzp:Z

    .line 2
    sget p2, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzf:Lcom/google/android/gms/internal/ads/zzmi;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzmi;->zze()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzy:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzs:J

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzw:I

    if-eqz p3, :cond_0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzt:J

    return-void

    :cond_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzt:J

    return-void
.end method

.method protected final zzs()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzv:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzu:J

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzz:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzA:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzB:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzf:Lcom/google/android/gms/internal/ads/zzmi;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzmi;->zzc()V

    return-void
.end method

.method protected final zzt()V
    .locals 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzt:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzv:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzu:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzg:Lcom/google/android/gms/internal/ads/zzmt;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzv:I

    sub-long v4, v2, v4

    .line 2
    invoke-virtual {v0, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzmt;->zzd(IJ)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzv:I

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzu:J

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzB:I

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzg:Lcom/google/android/gms/internal/ads/zzmt;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzA:J

    .line 3
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzmt;->zze(JI)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzA:J

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzB:I

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzf:Lcom/google/android/gms/internal/ads/zzmi;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzmi;->zzi()V

    return-void
.end method

.method protected final zzu()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzG:Lcom/google/android/gms/internal/ads/zzy;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzp:Z

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzn:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzf:Lcom/google/android/gms/internal/ads/zzmi;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzmi;->zzj()V

    .line 3
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzu()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzg:Lcom/google/android/gms/internal/ads/zzmt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zza:Lcom/google/android/gms/internal/ads/zzaz;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzmt;->zzi(Lcom/google/android/gms/internal/ads/zzaz;)V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzg:Lcom/google/android/gms/internal/ads/zzmt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zza:Lcom/google/android/gms/internal/ads/zzaz;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzmt;->zzi(Lcom/google/android/gms/internal/ads/zzaz;)V

    .line 5
    throw v0
.end method

.method protected final zzv()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzv()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzm:Lcom/google/android/gms/internal/ads/zzlu;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzl:Landroid/view/Surface;

    if-ne v2, v1, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzl:Landroid/view/Surface;

    .line 2
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzlu;->release()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzm:Lcom/google/android/gms/internal/ads/zzlu;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzm:Lcom/google/android/gms/internal/ads/zzlu;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzl:Landroid/view/Surface;

    if-ne v3, v2, :cond_2

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzl:Landroid/view/Surface;

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzlu;->release()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzm:Lcom/google/android/gms/internal/ads/zzlu;

    .line 3
    :cond_3
    throw v1
.end method

.method public final zzx()Z
    .locals 9

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzx()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzp:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzm:Lcom/google/android/gms/internal/ads/zzlu;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzl:Landroid/view/Surface;

    if-eq v4, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzZ()Lcom/google/android/gms/internal/ads/zzgh;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzt:J

    return v1

    .line 1
    :cond_2
    :goto_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzt:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    return v0

    .line 2
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzt:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    return v1

    :cond_4
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzlz;->zzt:J

    return v0
.end method

.method protected final zzz(Lcom/google/android/gms/internal/ads/zzgh;IJ)V
    .locals 0

    const-string p3, "skipVideoBuffer"

    .line 1
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzamo;->zza(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 2
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgh;->zzh(IZ)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzamo;->zzb()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlz;->zza:Lcom/google/android/gms/internal/ads/zzaz;

    .line 4
    iget p2, p1, Lcom/google/android/gms/internal/ads/zzaz;->zzf:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzaz;->zzf:I

    return-void
.end method
