.class public final Lcom/google/android/gms/internal/ads/zzto;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztb;


# instance fields
.field private final zza:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzame;

.field private zzd:Lcom/google/android/gms/internal/ads/zzox;

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/ads/zzafv;

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:J

.field private zzl:Z

.field private zzm:I

.field private zzn:I

.field private zzo:I

.field private zzp:Z

.field private zzq:J

.field private zzr:I

.field private zzs:J

.field private zzt:I

.field private zzu:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzto;->zza:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzame;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzto;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    .line 2
    array-length v1, v0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzame;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzto;->zzk:J

    return-void
.end method

.method private final zzf(Lcom/google/android/gms/internal/ads/zzame;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaha;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzame;->zzb()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzmx;->zzb(Lcom/google/android/gms/internal/ads/zzame;Z)Lcom/google/android/gms/internal/ads/zzmv;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzmv;->zzc:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzto;->zzu:Ljava/lang/String;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzmv;->zza:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzto;->zzr:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzmv;->zzb:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzt:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzame;->zzb()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zzame;)J
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public final zza()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzto;->zzg:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzk:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzto;->zzl:Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zza()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzb()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzd:Lcom/google/android/gms/internal/ads/zzox;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzc()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzto;->zze:Ljava/lang/String;

    return-void
.end method

.method public final zzc(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzk:J

    :cond_0
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzamf;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaha;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzto;->zzd:Lcom/google/android/gms/internal/ads/zzox;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v0

    if-lez v0, :cond_16

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzto;->zzg:I

    const/16 v1, 0x56

    const/4 v2, 0x3

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzi:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzto;->zzh:I

    sub-int/2addr v1, v6

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzame;->zza:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzto;->zzh:I

    .line 3
    invoke-virtual {p1, v1, v6, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzh:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzh:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzto;->zzi:I

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzto;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 4
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzame;->zzd(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzto;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v1

    const/4 v6, 0x0

    if-nez v1, :cond_d

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzto;->zzl:Z

    .line 6
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 7
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v1

    const/4 v7, 0x1

    goto :goto_1

    .line 31
    :pswitch_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzto;->zzj:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/2addr v0, v3

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzto;->zzi:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v1

    .line 51
    array-length v1, v1

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzto;->zzi:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    .line 52
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzto;->zzc:Lcom/google/android/gms/internal/ads/zzame;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v1

    .line 53
    array-length v3, v1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzame;->zza([BI)V

    :cond_1
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzto;->zzh:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzto;->zzg:I

    goto :goto_0

    .line 54
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v0

    and-int/lit16 v2, v0, 0xe0

    const/16 v3, 0xe0

    if-ne v2, v3, :cond_2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzto;->zzj:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzto;->zzg:I

    goto/16 :goto_0

    :cond_2
    if-eq v0, v1, :cond_0

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzto;->zzg:I

    goto/16 :goto_0

    .line 55
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v0

    if-ne v0, v1, :cond_0

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzto;->zzg:I

    goto/16 :goto_0

    :cond_3
    move v7, v1

    const/4 v1, 0x0

    .line 7
    :goto_1
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzm:I

    if-nez v1, :cond_c

    if-ne v7, v5, :cond_4

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzto;->zzg(Lcom/google/android/gms/internal/ads/zzame;)J

    const/4 v7, 0x1

    .line 9
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x6

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v8

    iput v8, p0, Lcom/google/android/gms/internal/ads/zzto;->zzn:I

    const/4 v8, 0x4

    .line 11
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v8

    .line 12
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v9

    if-nez v8, :cond_a

    if-nez v9, :cond_a

    if-nez v7, :cond_5

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzame;->zzc()I

    move-result v8

    .line 13
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzto;->zzf(Lcom/google/android/gms/internal/ads/zzame;)I

    move-result v9

    .line 14
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzame;->zzd(I)V

    add-int/lit8 v8, v9, 0x7

    div-int/2addr v8, v3

    .line 15
    new-array v8, v8, [B

    .line 16
    invoke-virtual {v0, v8, v4, v9}, Lcom/google/android/gms/internal/ads/zzame;->zzi([BII)V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzaft;

    .line 17
    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzto;->zze:Ljava/lang/String;

    .line 18
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzaft;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    const-string v10, "audio/mp4a-latm"

    .line 19
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzto;->zzu:Ljava/lang/String;

    .line 20
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzaft;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    iget v10, p0, Lcom/google/android/gms/internal/ads/zzto;->zzt:I

    .line 21
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzaft;->zzaa(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget v10, p0, Lcom/google/android/gms/internal/ads/zzto;->zzr:I

    .line 22
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzaft;->zzab(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 23
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzaft;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzaft;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzto;->zza:Ljava/lang/String;

    .line 24
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzaft;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 25
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzto;->zzf:Lcom/google/android/gms/internal/ads/zzafv;

    .line 26
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzafv;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzto;->zzf:Lcom/google/android/gms/internal/ads/zzafv;

    const-wide/32 v9, 0x3d090000

    iget v11, v8, Lcom/google/android/gms/internal/ads/zzafv;->zzz:I

    int-to-long v11, v11

    .line 27
    div-long/2addr v9, v11

    iput-wide v9, p0, Lcom/google/android/gms/internal/ads/zzto;->zzs:J

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzto;->zzd:Lcom/google/android/gms/internal/ads/zzox;

    .line 28
    invoke-interface {v9, v8}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    goto :goto_2

    .line 29
    :cond_5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzto;->zzg(Lcom/google/android/gms/internal/ads/zzame;)J

    move-result-wide v8

    long-to-int v8, v8

    .line 30
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzto;->zzf(Lcom/google/android/gms/internal/ads/zzame;)I

    move-result v9

    sub-int/2addr v8, v9

    .line 31
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 32
    :cond_6
    :goto_2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzto;->zzo:I

    packed-switch v2, :pswitch_data_1

    .line 59
    :pswitch_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 33
    :pswitch_4
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    goto :goto_3

    .line 34
    :pswitch_5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    goto :goto_3

    :pswitch_6
    const/16 v1, 0x9

    .line 35
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    goto :goto_3

    .line 36
    :pswitch_7
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 37
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzp:Z

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/google/android/gms/internal/ads/zzto;->zzq:J

    if-eqz v1, :cond_9

    if-eq v7, v5, :cond_8

    .line 38
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v1

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzto;->zzq:J

    shl-long/2addr v7, v3

    .line 39
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v2

    int-to-long v9, v2

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/zzto;->zzq:J

    if-nez v1, :cond_7

    goto :goto_4

    .line 40
    :cond_8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzto;->zzg(Lcom/google/android/gms/internal/ads/zzame;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzq:J

    .line 41
    :cond_9
    :goto_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 42
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    goto :goto_5

    .line 57
    :cond_a
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1

    .line 56
    :cond_b
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1

    .line 59
    :cond_c
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1

    .line 31
    :cond_d
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzl:Z

    if-nez v1, :cond_e

    goto :goto_8

    .line 42
    :cond_e
    :goto_5
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzm:I

    if-nez v1, :cond_15

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzn:I

    if-nez v1, :cond_14

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzo:I

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 43
    :goto_6
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v2

    add-int v9, v1, v2

    const/16 v1, 0xff

    if-eq v2, v1, :cond_12

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzame;->zzc()I

    move-result v1

    and-int/lit8 v2, v1, 0x7

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzto;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    shr-int/lit8 v1, v1, 0x3

    .line 44
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto :goto_7

    .line 49
    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v1

    mul-int/lit8 v2, v9, 0x8

    .line 45
    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzame;->zzi([BII)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    .line 46
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 44
    :goto_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzd:Lcom/google/android/gms/internal/ads/zzox;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzto;->zzb:Lcom/google/android/gms/internal/ads/zzamf;

    .line 47
    invoke-static {v1, v2, v9}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzamf;I)V

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzto;->zzk:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v6, v1

    if-eqz v3, :cond_10

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzto;->zzd:Lcom/google/android/gms/internal/ads/zzox;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 48
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzox;->zzv(JIIILcom/google/android/gms/internal/ads/zzow;)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzk:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzto;->zzs:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzk:J

    :cond_10
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzp:Z

    if-eqz v1, :cond_11

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzq:J

    long-to-int v1, v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    :cond_11
    :goto_8
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzto;->zzg:I

    goto/16 :goto_0

    :cond_12
    move v1, v9

    goto :goto_6

    .line 60
    :cond_13
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1

    .line 61
    :cond_14
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1

    .line 62
    :cond_15
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1

    :cond_16
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final zze()V
    .locals 0

    return-void
.end method
