.class public final Lcom/google/android/gms/internal/ads/zzsy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzum;


# instance fields
.field private final zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzafv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzsy;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->zza:Ljava/util/List;

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzul;)Lcom/google/android/gms/internal/ads/zzuc;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzuc;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsy;->zzd(Lcom/google/android/gms/internal/ads/zzul;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzuc;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private final zzc(Lcom/google/android/gms/internal/ads/zzul;)Lcom/google/android/gms/internal/ads/zzuq;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzuq;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsy;->zzd(Lcom/google/android/gms/internal/ads/zzul;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzuq;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private final zzd(Lcom/google/android/gms/internal/ads/zzul;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzul;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzafv;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzamf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzul;->zzd:[B

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>([B)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->zza:Ljava/util/List;

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v1

    if-lez v1, :cond_4

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v3

    add-int/2addr v3, v2

    const/16 v2, 0x86

    if-ne v1, v2, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    const/4 v5, 0x3

    .line 6
    sget-object v6, Lcom/google/android/gms/internal/ads/zzfll;->zzc:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzE(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v6

    and-int/lit16 v7, v6, 0x80

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    and-int/lit8 v6, v6, 0x3f

    const-string v9, "application/cea-708"

    goto :goto_2

    :cond_0
    const-string v9, "application/cea-608"

    const/4 v6, 0x1

    .line 8
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v10

    int-to-byte v10, v10

    .line 9
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    if-eqz v7, :cond_2

    .line 10
    sget v7, Lcom/google/android/gms/internal/ads/zzakv;->zza:I

    and-int/lit8 v7, v10, 0x40

    if-eqz v7, :cond_1

    new-array v7, v8, [B

    aput-byte v8, v7, v2

    goto :goto_3

    .line 12
    :cond_1
    new-array v7, v8, [B

    aput-byte v2, v7, v2

    .line 11
    :goto_3
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_4

    :cond_2
    const/4 v7, 0x0

    :goto_4
    new-instance v8, Lcom/google/android/gms/internal/ads/zzaft;

    .line 12
    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    .line 13
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 14
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzaft;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 15
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzaft;->zzaf(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 16
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzaft;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 17
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v5

    .line 12
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto :goto_0

    :cond_4
    return-object p1
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/ads/zzul;)Lcom/google/android/gms/internal/ads/zzuo;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    return-object v0

    .line 5
    :sswitch_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzub;

    new-instance p2, Lcom/google/android/gms/internal/ads/zztr;

    const-string v0, "application/vnd.dvb.ait"

    .line 6
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zztr;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzub;-><init>(Lcom/google/android/gms/internal/ads/zzua;)V

    return-object p1

    :sswitch_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzts;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsu;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzul;->zzb:Ljava/lang/String;

    .line 7
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzsu;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzts;-><init>(Lcom/google/android/gms/internal/ads/zztb;)V

    return-object p1

    :sswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzts;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsz;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzul;->zzb:Ljava/lang/String;

    .line 8
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzsz;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzts;-><init>(Lcom/google/android/gms/internal/ads/zztb;)V

    return-object p1

    .line 4
    :sswitch_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzub;

    new-instance p2, Lcom/google/android/gms/internal/ads/zztr;

    const-string v0, "application/x-scte35"

    .line 5
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zztr;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzub;-><init>(Lcom/google/android/gms/internal/ads/zzua;)V

    return-object p1

    :sswitch_4
    return-object v0

    .line 8
    :sswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzts;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsr;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzul;->zzb:Ljava/lang/String;

    .line 9
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzsr;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzts;-><init>(Lcom/google/android/gms/internal/ads/zztb;)V

    return-object p1

    :sswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzts;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzta;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzul;->zzc:Ljava/util/List;

    .line 10
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzta;-><init>(Ljava/util/List;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzts;-><init>(Lcom/google/android/gms/internal/ads/zztb;)V

    return-object p1

    :sswitch_7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzts;

    new-instance v0, Lcom/google/android/gms/internal/ads/zztm;

    .line 11
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzsy;->zzb(Lcom/google/android/gms/internal/ads/zzul;)Lcom/google/android/gms/internal/ads/zzuc;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zztm;-><init>(Lcom/google/android/gms/internal/ads/zzuc;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzts;-><init>(Lcom/google/android/gms/internal/ads/zztb;)V

    return-object p1

    .line 2
    :sswitch_8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzts;

    new-instance v0, Lcom/google/android/gms/internal/ads/zztk;

    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzsy;->zzb(Lcom/google/android/gms/internal/ads/zzul;)Lcom/google/android/gms/internal/ads/zzuc;

    move-result-object p2

    .line 4
    invoke-direct {v0, p2, v1, v1}, Lcom/google/android/gms/internal/ads/zztk;-><init>(Lcom/google/android/gms/internal/ads/zzuc;ZZ)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzts;-><init>(Lcom/google/android/gms/internal/ads/zztb;)V

    return-object p1

    .line 11
    :sswitch_9
    new-instance p1, Lcom/google/android/gms/internal/ads/zzts;

    new-instance p2, Lcom/google/android/gms/internal/ads/zztn;

    .line 12
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zztn;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzts;-><init>(Lcom/google/android/gms/internal/ads/zztb;)V

    return-object p1

    .line 1
    :sswitch_a
    new-instance p1, Lcom/google/android/gms/internal/ads/zzts;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzto;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzul;->zzb:Ljava/lang/String;

    .line 2
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzto;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzts;-><init>(Lcom/google/android/gms/internal/ads/zztb;)V

    return-object p1

    .line 12
    :sswitch_b
    new-instance p1, Lcom/google/android/gms/internal/ads/zzts;

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/zztg;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzsy;->zzc(Lcom/google/android/gms/internal/ads/zzul;)Lcom/google/android/gms/internal/ads/zzuq;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zztg;-><init>(Lcom/google/android/gms/internal/ads/zzuq;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzts;-><init>(Lcom/google/android/gms/internal/ads/zztb;)V

    return-object p1

    .line 1
    :sswitch_c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzts;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsx;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzul;->zzb:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzsx;-><init>(ZLjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzts;-><init>(Lcom/google/android/gms/internal/ads/zztb;)V

    return-object p1

    .line 13
    :sswitch_d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzts;

    new-instance v0, Lcom/google/android/gms/internal/ads/zztp;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzul;->zzb:Ljava/lang/String;

    .line 14
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zztp;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzts;-><init>(Lcom/google/android/gms/internal/ads/zztb;)V

    return-object p1

    :sswitch_e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzts;

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/zztd;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzsy;->zzc(Lcom/google/android/gms/internal/ads/zzul;)Lcom/google/android/gms/internal/ads/zzuq;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zztd;-><init>(Lcom/google/android/gms/internal/ads/zzuq;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzts;-><init>(Lcom/google/android/gms/internal/ads/zztb;)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_e
        0x3 -> :sswitch_d
        0x4 -> :sswitch_d
        0xf -> :sswitch_c
        0x10 -> :sswitch_b
        0x11 -> :sswitch_a
        0x15 -> :sswitch_9
        0x1b -> :sswitch_8
        0x24 -> :sswitch_7
        0x59 -> :sswitch_6
        0x81 -> :sswitch_5
        0x82 -> :sswitch_4
        0x86 -> :sswitch_3
        0x87 -> :sswitch_5
        0x8a -> :sswitch_2
        0xac -> :sswitch_1
        0x101 -> :sswitch_0
    .end sparse-switch
.end method
