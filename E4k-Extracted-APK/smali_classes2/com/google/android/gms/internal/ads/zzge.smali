.class public final Lcom/google/android/gms/internal/ads/zzge;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Ljava/util/regex/Pattern;

.field private static final zzc:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "MediaCodecUtil.class"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/gms/internal/ads/zzfx;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^\\D?(\\d+)$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzge;->zzb:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzge;->zzc:Ljava/util/HashMap;

    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/internal/ads/zzge;->zzd:I

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfo;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfy;
        }
    .end annotation

    const-string v0, "audio/raw"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzge;->zzb(Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/ads/zzfo;

    move-result-object v0

    return-object v0
.end method

.method public static zzb(Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/ads/zzfo;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfy;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    invoke-static {p0, p1, p1}, Lcom/google/android/gms/internal/ads/zzge;->zzc(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzfo;

    return-object p0
.end method

.method public static declared-synchronized zzc(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-class v3, Lcom/google/android/gms/internal/ads/zzge;

    monitor-enter v3

    .line 1
    :try_start_0
    new-instance v4, Lcom/google/android/gms/internal/ads/zzfx;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfx;-><init>(Ljava/lang/String;ZZ)V

    sget-object v5, Lcom/google/android/gms/internal/ads/zzge;->zzc:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    monitor-exit v3

    return-object v5

    .line 3
    :cond_0
    :try_start_1
    sget v5, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/4 v6, 0x0

    const/16 v7, 0x15

    if-lt v5, v7, :cond_1

    new-instance v5, Lcom/google/android/gms/internal/ads/zzgb;

    .line 4
    invoke-direct {v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzgb;-><init>(ZZ)V

    goto :goto_0

    .line 29
    :cond_1
    new-instance v5, Lcom/google/android/gms/internal/ads/zzga;

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/zzga;-><init>(Lcom/google/android/gms/internal/ads/zzgc;)V

    .line 5
    :goto_0
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzge;->zzg(Lcom/google/android/gms/internal/ads/zzfx;Lcom/google/android/gms/internal/ads/zzfz;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-lt v1, v7, :cond_2

    sget v1, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v8, 0x17

    if-gt v1, v8, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzga;

    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/ads/zzga;-><init>(Lcom/google/android/gms/internal/ads/zzgc;)V

    .line 7
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzge;->zzg(Lcom/google/android/gms/internal/ads/zzfx;Lcom/google/android/gms/internal/ads/zzfz;)Ljava/util/ArrayList;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfo;->zza:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x3f

    add-int/2addr v9, v6

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Assuming: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MediaCodecUtil"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, "audio/raw"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v6, 0x1a

    if-ge v0, v6, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    const-string v6, "R9"

    .line 12
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 14
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfo;->zza:Ljava/lang/String;

    const-string v6, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v8, "OMX.google.raw.decoder"

    const-string v9, "audio/raw"

    const-string v10, "audio/raw"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 15
    invoke-static/range {v8 .. v16}, Lcom/google/android/gms/internal/ads/zzfo;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zzfo;

    move-result-object v0

    .line 16
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfu;->zza:Lcom/google/android/gms/internal/ads/zzgd;

    .line 17
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzge;->zzi(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgd;)V

    :cond_4
    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-ge v0, v7, :cond_6

    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_6

    .line 19
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfo;->zza:Ljava/lang/String;

    const-string v6, "OMX.SEC.mp3.dec"

    .line 20
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "OMX.SEC.MP3.Decoder"

    .line 21
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "OMX.brcm.audio.mp3.decoder"

    .line 22
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfv;->zza:Lcom/google/android/gms/internal/ads/zzgd;

    .line 23
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzge;->zzi(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgd;)V

    :cond_6
    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v6, 0x20

    if-ge v0, v6, :cond_7

    .line 24
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_7

    const-string v0, "OMX.qti.audio.decoder.flac"

    .line 25
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfo;->zza:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 27
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfo;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_7
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzge;->zzc:Ljava/util/HashMap;

    .line 29
    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v0

    :catchall_0
    move-exception v0

    .line 0
    monitor-exit v3

    throw v0
.end method

.method public static zzd(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzafv;)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzfo;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzafv;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzft;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzft;-><init>(Lcom/google/android/gms/internal/ads/zzafv;)V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzge;->zzi(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgd;)V

    return-object v0
.end method

.method public static zze()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfy;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzge;->zzd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const-string v0, "video/avc"

    const/4 v2, 0x0

    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/ads/zzge;->zzb(Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/ads/zzfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfo;->zzb()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 3
    iget v5, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v5, :sswitch_data_0

    const/4 v5, -0x1

    goto :goto_1

    :sswitch_0
    const/high16 v5, 0x2200000

    goto :goto_1

    :sswitch_1
    const/high16 v5, 0x900000

    goto :goto_1

    :sswitch_2
    const v5, 0x564000

    goto :goto_1

    :sswitch_3
    const/high16 v5, 0x220000

    goto :goto_1

    :sswitch_4
    const/high16 v5, 0x200000

    goto :goto_1

    :sswitch_5
    const/high16 v5, 0x140000

    goto :goto_1

    :sswitch_6
    const v5, 0xe1000

    goto :goto_1

    :sswitch_7
    const v5, 0x65400

    goto :goto_1

    :sswitch_8
    const v5, 0x31800

    goto :goto_1

    :sswitch_9
    const v5, 0x18c00

    goto :goto_1

    :sswitch_a
    const/16 v5, 0x6300

    :goto_1
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    const v0, 0x54600

    goto :goto_2

    :cond_1
    const v0, 0x2a300

    :goto_2
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_2
    sput v2, Lcom/google/android/gms/internal/ads/zzge;->zzd:I

    :cond_3
    sget v0, Lcom/google/android/gms/internal/ads/zzge;->zzd:I

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_9
        0x20 -> :sswitch_9
        0x40 -> :sswitch_8
        0x80 -> :sswitch_7
        0x100 -> :sswitch_7
        0x200 -> :sswitch_6
        0x400 -> :sswitch_5
        0x800 -> :sswitch_4
        0x1000 -> :sswitch_4
        0x2000 -> :sswitch_3
        0x4000 -> :sswitch_2
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x80000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static zzf(Lcom/google/android/gms/internal/ads/zzafv;)Landroid/util/Pair;
    .locals 17
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzafv;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzi:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v3, "\\."

    .line 2
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v3, "video/dolby-vision"

    .line 3
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x100

    const/16 v5, 0x80

    const/16 v7, 0x40

    const/4 v8, 0x0

    const/16 v9, 0x1000

    const/16 v10, 0x20

    const/4 v11, 0x3

    const/16 v12, 0x10

    const/16 v13, 0x8

    const/4 v14, 0x4

    const/4 v2, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_d

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzi:Ljava/lang/String;

    .line 5
    array-length v3, v1

    if-ge v3, v11, :cond_2

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed Dolby Vision codec string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/String;

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, "MediaCodecUtil"

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/16 v16, 0x0

    goto/16 :goto_b

    .line 6
    :cond_2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzge;->zzb:Ljava/util/regex/Pattern;

    .line 8
    aget-object v15, v1, v6

    invoke-virtual {v3, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-nez v15, :cond_4

    .line 10
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed Dolby Vision codec string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 11
    :cond_3
    new-instance v0, Ljava/lang/String;

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    const-string v1, "MediaCodecUtil"

    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    :goto_3
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 38
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const-string v3, "09"

    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x9

    goto :goto_5

    :pswitch_1
    const-string v3, "08"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x8

    goto :goto_5

    :pswitch_2
    const-string v3, "07"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x7

    goto :goto_5

    :pswitch_3
    const-string v3, "06"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x6

    goto :goto_5

    :pswitch_4
    const-string v3, "05"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x5

    goto :goto_5

    :pswitch_5
    const-string v3, "04"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x4

    goto :goto_5

    :pswitch_6
    const-string v3, "03"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x3

    goto :goto_5

    :pswitch_7
    const-string v3, "02"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    goto :goto_5

    :pswitch_8
    const-string v3, "01"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :pswitch_9
    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v3, -0x1

    :goto_5
    packed-switch v3, :pswitch_data_1

    goto :goto_3

    :pswitch_a
    const/16 v3, 0x200

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6

    .line 14
    :pswitch_b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6

    .line 15
    :pswitch_c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6

    .line 16
    :pswitch_d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6

    .line 17
    :pswitch_e
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6

    .line 18
    :pswitch_f
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6

    .line 19
    :pswitch_10
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6

    .line 20
    :pswitch_11
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6

    .line 21
    :pswitch_12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6

    .line 22
    :pswitch_13
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_6
    if-nez v3, :cond_8

    .line 23
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown Dolby Vision profile string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 24
    :cond_7
    new-instance v0, Ljava/lang/String;

    .line 23
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7
    const-string v1, "MediaCodecUtil"

    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 25
    :cond_8
    aget-object v0, v1, v2

    if-nez v0, :cond_a

    :cond_9
    :goto_8
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 26
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    goto :goto_8

    :pswitch_14
    const-string v1, "13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 27
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_9

    :pswitch_15
    const-string v1, "12"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x800

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_9

    :pswitch_16
    const-string v1, "11"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x400

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_9

    :pswitch_17
    const-string v1, "10"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x200

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_9

    :pswitch_18
    const-string v1, "09"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 31
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_9

    :pswitch_19
    const-string v1, "08"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 32
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_9

    :pswitch_1a
    const-string v1, "07"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 33
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_9

    :pswitch_1b
    const-string v1, "06"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 34
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_9

    :pswitch_1c
    const-string v1, "05"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 35
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_9

    :pswitch_1d
    const-string v1, "04"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 36
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_9

    :pswitch_1e
    const-string v1, "03"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 37
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_9

    :pswitch_1f
    const-string v1, "02"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_9

    :pswitch_20
    const-string v1, "01"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 39
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_9
    if-nez v2, :cond_c

    .line 40
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown Dolby Vision level string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 41
    :cond_b
    new-instance v0, Ljava/lang/String;

    .line 40
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_a
    const-string v1, "MediaCodecUtil"

    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 40
    :cond_c
    new-instance v0, Landroid/util/Pair;

    .line 42
    invoke-direct {v0, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v16, v0

    :goto_b
    return-object v16

    .line 43
    :cond_d
    aget-object v3, v1, v8

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    goto :goto_c

    :sswitch_0
    const-string v15, "vp09"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x2

    goto :goto_d

    :sswitch_1
    const-string v15, "mp4a"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x6

    goto :goto_d

    :sswitch_2
    const-string v15, "hvc1"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x4

    goto :goto_d

    :sswitch_3
    const-string v15, "hev1"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x3

    goto :goto_d

    :sswitch_4
    const-string v15, "avc2"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    goto :goto_d

    :sswitch_5
    const-string v15, "avc1"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    goto :goto_d

    :sswitch_6
    const-string v15, "av01"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x5

    goto :goto_d

    :cond_e
    :goto_c
    const/4 v3, -0x1

    :goto_d
    packed-switch v3, :pswitch_data_4

    const/4 v0, 0x0

    return-object v0

    .line 44
    :pswitch_21
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzi:Ljava/lang/String;

    .line 45
    array-length v3, v1

    if-eq v3, v11, :cond_11

    .line 46
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed MP4A codec string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 47
    :cond_f
    new-instance v0, Ljava/lang/String;

    .line 46
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_e
    const-string v1, "MediaCodecUtil"

    .line 47
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_f
    const/16 v16, 0x0

    goto/16 :goto_13

    :cond_11
    :try_start_0
    const-string v3, "audio/mp4a-latm"

    .line 48
    aget-object v4, v1, v6

    invoke-static {v4, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 49
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzalt;->zze(I)Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 51
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x11

    if-eq v1, v3, :cond_17

    const/16 v3, 0x14

    if-eq v1, v3, :cond_16

    const/16 v3, 0x17

    if-eq v1, v3, :cond_15

    const/16 v3, 0x1d

    if-eq v1, v3, :cond_14

    const/16 v3, 0x27

    if-eq v1, v3, :cond_13

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_12

    packed-switch v1, :pswitch_data_5

    const/4 v1, -0x1

    const/4 v6, -0x1

    goto :goto_11

    :pswitch_22
    const/4 v1, -0x1

    const/4 v6, 0x6

    goto :goto_11

    :pswitch_23
    const/4 v6, 0x5

    goto :goto_10

    :pswitch_24
    const/4 v1, -0x1

    const/4 v6, 0x4

    goto :goto_11

    :pswitch_25
    const/4 v1, -0x1

    const/4 v6, 0x3

    goto :goto_11

    :pswitch_26
    const/4 v1, -0x1

    const/4 v6, 0x2

    goto :goto_11

    :goto_10
    :pswitch_27
    const/4 v1, -0x1

    goto :goto_11

    :cond_12
    const/16 v6, 0x2a

    goto :goto_10

    :cond_13
    const/16 v6, 0x27

    goto :goto_10

    :cond_14
    const/16 v6, 0x1d

    goto :goto_10

    :cond_15
    const/16 v6, 0x17

    goto :goto_10

    :cond_16
    const/16 v6, 0x14

    goto :goto_10

    :cond_17
    const/16 v6, 0x11

    goto :goto_10

    :goto_11
    if-eq v6, v1, :cond_10

    new-instance v2, Landroid/util/Pair;

    .line 52
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v2

    goto :goto_13

    :catch_0
    nop

    .line 53
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed MP4A codec string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 139
    :cond_18
    new-instance v0, Ljava/lang/String;

    .line 53
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_12
    const-string v1, "MediaCodecUtil"

    .line 54
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :goto_13
    return-object v16

    .line 55
    :pswitch_28
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzi:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzx:Lcom/google/android/gms/internal/ads/zzj;

    .line 56
    array-length v15, v1

    if-ge v15, v14, :cond_1a

    .line 57
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed AV1 codec string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 58
    :cond_19
    new-instance v0, Ljava/lang/String;

    .line 57
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_14
    const-string v1, "MediaCodecUtil"

    .line 58
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    const/16 v16, 0x0

    goto/16 :goto_1a

    .line 59
    :cond_1a
    :try_start_1
    aget-object v15, v1, v6

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 60
    aget-object v12, v1, v2

    invoke-virtual {v12, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 61
    aget-object v1, v1, v11

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v15, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown AV1 profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MediaCodecUtil"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_1b
    if-eq v1, v13, :cond_1f

    const/16 v3, 0xa

    if-eq v1, v3, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    .line 69
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown AV1 bit depth: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MediaCodecUtil"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_1c
    if-eqz v0, :cond_1e

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzj;->zzd:[B

    if-nez v1, :cond_1d

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzj;->zzc:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1e

    :cond_1d
    const/16 v0, 0x1000

    goto :goto_16

    :cond_1e
    const/4 v0, 0x2

    goto :goto_16

    :cond_1f
    const/4 v0, 0x1

    :goto_16
    packed-switch v8, :pswitch_data_6

    const/4 v1, -0x1

    const/4 v4, -0x1

    goto :goto_18

    :pswitch_29
    const/high16 v4, 0x800000

    goto :goto_17

    :pswitch_2a
    const/high16 v4, 0x400000

    goto :goto_17

    :pswitch_2b
    const/high16 v4, 0x200000

    goto :goto_17

    :pswitch_2c
    const/high16 v4, 0x100000

    goto :goto_17

    :pswitch_2d
    const/high16 v4, 0x80000

    goto :goto_17

    :pswitch_2e
    const/high16 v4, 0x40000

    goto :goto_17

    :pswitch_2f
    const/high16 v4, 0x20000

    goto :goto_17

    :pswitch_30
    const/high16 v4, 0x10000

    goto :goto_17

    :pswitch_31
    const v4, 0x8000

    goto :goto_17

    :pswitch_32
    const/16 v4, 0x4000

    goto :goto_17

    :pswitch_33
    const/16 v4, 0x2000

    goto :goto_17

    :pswitch_34
    const/4 v1, -0x1

    const/16 v4, 0x1000

    goto :goto_18

    :pswitch_35
    const/16 v4, 0x800

    goto :goto_17

    :pswitch_36
    const/16 v4, 0x400

    goto :goto_17

    :pswitch_37
    const/16 v4, 0x200

    :goto_17
    :pswitch_38
    const/4 v1, -0x1

    goto :goto_18

    :pswitch_39
    const/4 v1, -0x1

    const/16 v4, 0x80

    goto :goto_18

    :pswitch_3a
    const/4 v1, -0x1

    const/16 v4, 0x40

    goto :goto_18

    :pswitch_3b
    const/4 v1, -0x1

    const/16 v4, 0x20

    goto :goto_18

    :pswitch_3c
    const/4 v1, -0x1

    const/16 v4, 0x10

    goto :goto_18

    :pswitch_3d
    const/4 v1, -0x1

    const/16 v4, 0x8

    goto :goto_18

    :pswitch_3e
    const/4 v1, -0x1

    const/4 v4, 0x4

    goto :goto_18

    :pswitch_3f
    const/4 v1, -0x1

    const/4 v4, 0x2

    goto :goto_18

    :pswitch_40
    const/4 v1, -0x1

    const/4 v4, 0x1

    :goto_18
    if-ne v4, v1, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    .line 66
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown AV1 level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MediaCodecUtil"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :cond_20
    new-instance v2, Landroid/util/Pair;

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v16, v2

    goto :goto_1a

    :catch_1
    nop

    .line 62
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed AV1 codec string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 53
    :cond_21
    new-instance v0, Ljava/lang/String;

    .line 62
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_19
    const-string v1, "MediaCodecUtil"

    .line 63
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :goto_1a
    return-object v16

    .line 71
    :pswitch_41
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzi:Ljava/lang/String;

    .line 72
    array-length v3, v1

    if-ge v3, v14, :cond_23

    .line 73
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed HEVC codec string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 74
    :cond_22
    new-instance v0, Ljava/lang/String;

    .line 73
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1b
    const-string v1, "MediaCodecUtil"

    .line 74
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    const/16 v16, 0x0

    goto/16 :goto_25

    .line 73
    :cond_23
    sget-object v3, Lcom/google/android/gms/internal/ads/zzge;->zzb:Ljava/util/regex/Pattern;

    .line 75
    aget-object v12, v1, v6

    invoke-virtual {v3, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 76
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-nez v12, :cond_25

    .line 77
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed HEVC codec string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 78
    :cond_24
    new-instance v0, Ljava/lang/String;

    .line 77
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1d
    const-string v1, "MediaCodecUtil"

    .line 78
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 79
    :cond_25
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    .line 80
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v0, 0x1

    goto :goto_1e

    :cond_26
    const-string v3, "2"

    .line 81
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v0, 0x2

    .line 82
    :goto_1e
    aget-object v1, v1, v11

    if-nez v1, :cond_27

    :goto_1f
    const/4 v2, 0x0

    goto/16 :goto_22

    .line 111
    :cond_27
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    goto/16 :goto_20

    :sswitch_7
    const-string v3, "L186"

    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0xc

    goto/16 :goto_21

    :sswitch_8
    const-string v3, "L183"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0xb

    goto/16 :goto_21

    :sswitch_9
    const-string v3, "L180"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0xa

    goto/16 :goto_21

    :sswitch_a
    const-string v3, "L156"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x9

    goto/16 :goto_21

    :sswitch_b
    const-string v3, "L153"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x8

    goto/16 :goto_21

    :sswitch_c
    const-string v3, "L150"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x7

    goto/16 :goto_21

    :sswitch_d
    const-string v3, "L123"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x6

    goto/16 :goto_21

    :sswitch_e
    const-string v3, "L120"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x5

    goto/16 :goto_21

    :sswitch_f
    const-string v3, "H186"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x19

    goto/16 :goto_21

    :sswitch_10
    const-string v3, "H183"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x18

    goto/16 :goto_21

    :sswitch_11
    const-string v3, "H180"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x17

    goto/16 :goto_21

    :sswitch_12
    const-string v3, "H156"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x16

    goto/16 :goto_21

    :sswitch_13
    const-string v3, "H153"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x15

    goto/16 :goto_21

    :sswitch_14
    const-string v3, "H150"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x14

    goto/16 :goto_21

    :sswitch_15
    const-string v3, "H123"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x13

    goto/16 :goto_21

    :sswitch_16
    const-string v3, "H120"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x12

    goto/16 :goto_21

    :sswitch_17
    const-string v3, "L93"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x4

    goto :goto_21

    :sswitch_18
    const-string v3, "L90"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x3

    goto :goto_21

    :sswitch_19
    const-string v3, "L63"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x2

    goto :goto_21

    :sswitch_1a
    const-string v3, "L60"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    goto :goto_21

    :sswitch_1b
    const-string v3, "L30"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x0

    goto :goto_21

    :sswitch_1c
    const-string v3, "H93"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x11

    goto :goto_21

    :sswitch_1d
    const-string v3, "H90"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x10

    goto :goto_21

    :sswitch_1e
    const-string v3, "H63"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0xf

    goto :goto_21

    :sswitch_1f
    const-string v3, "H60"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0xe

    goto :goto_21

    :sswitch_20
    const-string v3, "H30"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0xd

    goto :goto_21

    :cond_28
    :goto_20
    const/4 v3, -0x1

    :goto_21
    packed-switch v3, :pswitch_data_7

    goto/16 :goto_1f

    :pswitch_42
    const/high16 v2, 0x2000000

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_22

    :pswitch_43
    const/high16 v2, 0x800000

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_22

    :pswitch_44
    const/high16 v2, 0x200000

    .line 85
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_22

    :pswitch_45
    const/high16 v2, 0x80000

    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_22

    :pswitch_46
    const/high16 v2, 0x20000

    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_22

    :pswitch_47
    const v2, 0x8000

    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_22

    :pswitch_48
    const/16 v2, 0x2000

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_22

    :pswitch_49
    const/16 v2, 0x800

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_22

    :pswitch_4a
    const/16 v2, 0x200

    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_22

    .line 92
    :pswitch_4b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_22

    .line 93
    :pswitch_4c
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_22

    .line 94
    :pswitch_4d
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_22

    .line 95
    :pswitch_4e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_22

    :pswitch_4f
    const/high16 v2, 0x1000000

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_22

    :pswitch_50
    const/high16 v2, 0x400000

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_22

    :pswitch_51
    const/high16 v2, 0x100000

    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_22

    :pswitch_52
    const/high16 v2, 0x40000

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_22

    :pswitch_53
    const/high16 v2, 0x10000

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_22

    :pswitch_54
    const/16 v2, 0x4000

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_22

    .line 102
    :pswitch_55
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_22

    :pswitch_56
    const/16 v2, 0x400

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_22

    .line 104
    :pswitch_57
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_22

    .line 105
    :pswitch_58
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_22

    :pswitch_59
    const/16 v2, 0x10

    .line 106
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_22

    .line 107
    :pswitch_5a
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_22

    .line 108
    :pswitch_5b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_22
    if-nez v2, :cond_2a

    .line 109
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown HEVC level string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 110
    :cond_29
    new-instance v0, Ljava/lang/String;

    .line 109
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_23
    const-string v1, "MediaCodecUtil"

    .line 110
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 109
    :cond_2a
    new-instance v1, Landroid/util/Pair;

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v16, v1

    goto :goto_25

    .line 112
    :cond_2b
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown HEVC profile string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 113
    :cond_2c
    new-instance v0, Ljava/lang/String;

    .line 112
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_24
    const-string v1, "MediaCodecUtil"

    .line 113
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    :goto_25
    return-object v16

    .line 114
    :pswitch_5c
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzi:Ljava/lang/String;

    .line 115
    array-length v3, v1

    if-ge v3, v11, :cond_2e

    .line 116
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed VP9 codec string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    .line 117
    :cond_2d
    new-instance v0, Ljava/lang/String;

    .line 116
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_26
    const-string v1, "MediaCodecUtil"

    .line 117
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    const/16 v16, 0x0

    goto/16 :goto_2d

    .line 118
    :cond_2e
    :try_start_2
    aget-object v3, v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 119
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    packed-switch v3, :pswitch_data_8

    const/4 v0, -0x1

    :goto_28
    const/4 v8, -0x1

    goto :goto_29

    :pswitch_5d
    const/16 v0, 0x8

    goto :goto_28

    :pswitch_5e
    const/4 v0, 0x4

    goto :goto_28

    :pswitch_5f
    const/4 v0, 0x2

    goto :goto_28

    :pswitch_60
    const/4 v0, 0x1

    goto :goto_28

    :goto_29
    if-ne v0, v8, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown VP9 profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MediaCodecUtil"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :cond_2f
    sparse-switch v1, :sswitch_data_2

    const/4 v2, -0x1

    const/4 v4, -0x1

    goto :goto_2b

    :sswitch_21
    const/16 v4, 0x2000

    goto :goto_2a

    :sswitch_22
    const/4 v2, -0x1

    const/16 v4, 0x1000

    goto :goto_2b

    :sswitch_23
    const/16 v4, 0x800

    goto :goto_2a

    :sswitch_24
    const/16 v4, 0x200

    :goto_2a
    :sswitch_25
    const/4 v2, -0x1

    goto :goto_2b

    :sswitch_26
    const/4 v2, -0x1

    const/16 v4, 0x80

    goto :goto_2b

    :sswitch_27
    const/4 v2, -0x1

    const/16 v4, 0x40

    goto :goto_2b

    :sswitch_28
    const/4 v2, -0x1

    const/16 v4, 0x20

    goto :goto_2b

    :sswitch_29
    const/4 v2, -0x1

    const/16 v4, 0x10

    goto :goto_2b

    :sswitch_2a
    const/4 v2, -0x1

    const/16 v4, 0x8

    goto :goto_2b

    :sswitch_2b
    const/4 v2, -0x1

    const/4 v4, 0x4

    goto :goto_2b

    :sswitch_2c
    const/4 v2, -0x1

    const/4 v4, 0x2

    goto :goto_2b

    :sswitch_2d
    const/4 v2, -0x1

    const/4 v4, 0x1

    :goto_2b
    if-ne v4, v2, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    .line 124
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown VP9 level: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MediaCodecUtil"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    :cond_30
    new-instance v2, Landroid/util/Pair;

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v16, v2

    goto :goto_2d

    :catch_2
    nop

    .line 120
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed VP9 codec string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    .line 62
    :cond_31
    new-instance v0, Ljava/lang/String;

    .line 120
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2c
    const-string v1, "MediaCodecUtil"

    .line 121
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    :goto_2d
    return-object v16

    .line 127
    :pswitch_61
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzi:Ljava/lang/String;

    .line 128
    array-length v3, v1

    if-ge v3, v2, :cond_33

    .line 129
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed AVC codec string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 130
    :cond_32
    new-instance v0, Ljava/lang/String;

    .line 129
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2e
    const-string v1, "MediaCodecUtil"

    .line 130
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    const/16 v16, 0x0

    goto/16 :goto_36

    .line 131
    :cond_33
    :try_start_3
    aget-object v12, v1, v6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v15, 0x6

    if-ne v12, v15, :cond_34

    .line 136
    aget-object v3, v1, v6

    invoke-virtual {v3, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0x10

    invoke-static {v3, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 137
    aget-object v1, v1, v6

    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_30

    :cond_34
    const/16 v8, 0x10

    if-lt v3, v11, :cond_3e

    .line 132
    aget-object v3, v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 133
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_30
    const/16 v0, 0x42

    if-eq v3, v0, :cond_3b

    const/16 v0, 0x4d

    if-eq v3, v0, :cond_3a

    const/16 v0, 0x58

    if-eq v3, v0, :cond_39

    const/16 v0, 0x64

    if-eq v3, v0, :cond_38

    const/16 v0, 0x6e

    if-eq v3, v0, :cond_37

    const/16 v0, 0x7a

    if-eq v3, v0, :cond_36

    const/16 v0, 0xf4

    if-eq v3, v0, :cond_35

    const/4 v0, -0x1

    const/4 v2, -0x1

    goto :goto_31

    :cond_35
    const/4 v0, -0x1

    const/16 v2, 0x40

    goto :goto_31

    :cond_36
    const/4 v0, -0x1

    const/16 v2, 0x20

    goto :goto_31

    :cond_37
    const/4 v0, -0x1

    const/16 v2, 0x10

    goto :goto_31

    :cond_38
    const/4 v0, -0x1

    const/16 v2, 0x8

    goto :goto_31

    :cond_39
    const/4 v0, -0x1

    const/4 v2, 0x4

    goto :goto_31

    :cond_3a
    const/4 v0, -0x1

    goto :goto_31

    :cond_3b
    const/4 v0, -0x1

    const/4 v2, 0x1

    :goto_31
    if-ne v2, v0, :cond_3c

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown AVC profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MediaCodecUtil"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    :cond_3c
    packed-switch v1, :pswitch_data_9

    packed-switch v1, :pswitch_data_a

    packed-switch v1, :pswitch_data_b

    packed-switch v1, :pswitch_data_c

    packed-switch v1, :pswitch_data_d

    const/4 v0, -0x1

    const/4 v4, -0x1

    goto :goto_33

    :pswitch_62
    const/high16 v4, 0x10000

    goto :goto_32

    :pswitch_63
    const v4, 0x8000

    goto :goto_32

    :pswitch_64
    const/16 v4, 0x4000

    goto :goto_32

    :pswitch_65
    const/16 v4, 0x2000

    goto :goto_32

    :pswitch_66
    const/4 v0, -0x1

    const/16 v4, 0x1000

    goto :goto_33

    :pswitch_67
    const/16 v4, 0x800

    goto :goto_32

    :pswitch_68
    const/16 v4, 0x400

    goto :goto_32

    :pswitch_69
    const/16 v4, 0x200

    :goto_32
    :pswitch_6a
    const/4 v0, -0x1

    goto :goto_33

    :pswitch_6b
    const/4 v0, -0x1

    const/16 v4, 0x80

    goto :goto_33

    :pswitch_6c
    const/4 v0, -0x1

    const/16 v4, 0x40

    goto :goto_33

    :pswitch_6d
    const/4 v0, -0x1

    const/16 v4, 0x20

    goto :goto_33

    :pswitch_6e
    const/4 v0, -0x1

    const/16 v4, 0x10

    goto :goto_33

    :pswitch_6f
    const/4 v0, -0x1

    const/16 v4, 0x8

    goto :goto_33

    :pswitch_70
    const/4 v0, -0x1

    const/4 v4, 0x4

    goto :goto_33

    :pswitch_71
    const/4 v0, -0x1

    const/4 v4, 0x1

    :goto_33
    if-ne v4, v0, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    .line 142
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown AVC level: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "MediaCodecUtil"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    :cond_3d
    new-instance v0, Landroid/util/Pair;

    .line 144
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v16, v0

    goto :goto_36

    :cond_3e
    :try_start_4
    const-string v1, "MediaCodecUtil"

    const-string v2, "Ignoring malformed AVC codec string: "

    .line 134
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3f

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_34

    .line 135
    :cond_3f
    new-instance v3, Ljava/lang/String;

    .line 134
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 135
    :goto_34
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2f

    :catch_3
    nop

    .line 138
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring malformed AVC codec string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_40

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    .line 120
    :cond_40
    new-instance v0, Ljava/lang/String;

    .line 138
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_35
    const-string v1, "MediaCodecUtil"

    .line 139
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    :goto_36
    return-object v16

    :pswitch_data_0
    .packed-switch 0x600
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x601
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x61f
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2dd8f6 -> :sswitch_6
        0x2ddf23 -> :sswitch_5
        0x2ddf24 -> :sswitch_4
        0x30d038 -> :sswitch_3
        0x310dbc -> :sswitch_2
        0x333790 -> :sswitch_1
        0x374e43 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_61
        :pswitch_61
        :pswitch_5c
        :pswitch_41
        :pswitch_41
        :pswitch_28
        :pswitch_21
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x114a5 -> :sswitch_20
        0x11502 -> :sswitch_1f
        0x11505 -> :sswitch_1e
        0x1155f -> :sswitch_1d
        0x11562 -> :sswitch_1c
        0x123a9 -> :sswitch_1b
        0x12406 -> :sswitch_1a
        0x12409 -> :sswitch_19
        0x12463 -> :sswitch_18
        0x12466 -> :sswitch_17
        0x2178e7 -> :sswitch_16
        0x2178ea -> :sswitch_15
        0x217944 -> :sswitch_14
        0x217947 -> :sswitch_13
        0x21794a -> :sswitch_12
        0x2179a1 -> :sswitch_11
        0x2179a4 -> :sswitch_10
        0x2179a7 -> :sswitch_f
        0x234a63 -> :sswitch_e
        0x234a66 -> :sswitch_d
        0x234ac0 -> :sswitch_c
        0x234ac3 -> :sswitch_b
        0x234ac6 -> :sswitch_a
        0x234b1d -> :sswitch_9
        0x234b20 -> :sswitch_8
        0x234b23 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0xa -> :sswitch_2d
        0xb -> :sswitch_2c
        0x14 -> :sswitch_2b
        0x15 -> :sswitch_2a
        0x1e -> :sswitch_29
        0x1f -> :sswitch_28
        0x28 -> :sswitch_27
        0x29 -> :sswitch_26
        0x32 -> :sswitch_25
        0x33 -> :sswitch_24
        0x3c -> :sswitch_23
        0x3d -> :sswitch_22
        0x3e -> :sswitch_21
    .end sparse-switch

    :pswitch_data_9
    .packed-switch 0xa
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x14
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1e
        :pswitch_6a
        :pswitch_69
        :pswitch_68
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x28
        :pswitch_67
        :pswitch_66
        :pswitch_65
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x32
        :pswitch_64
        :pswitch_63
        :pswitch_62
    .end packed-switch
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zzfx;Lcom/google/android/gms/internal/ads/zzfz;)Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfx;",
            "Lcom/google/android/gms/internal/ads/zzfz;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zzfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfy;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 1
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzfx;->zza:Ljava/lang/String;

    .line 2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfz;->zza()I

    move-result v15

    .line 3
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfz;->zzc()Z

    move-result v16

    const/16 v17, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v15, :cond_1f

    .line 4
    invoke-interface {v2, v13}, Lcom/google/android/gms/internal/ads/zzfz;->zzb(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 5
    sget v5, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v6, 0x1d

    if-lt v5, v6, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isAlias()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    move/from16 v19, v13

    goto/16 :goto_a

    .line 7
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v12

    .line 8
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v16, :cond_2

    const-string v5, ".secure"

    invoke-virtual {v12, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    sget v5, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v7, 0x15

    if-ge v5, v7, :cond_3

    const-string v5, "CIPAACDecoder"

    .line 9
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CIPMP3Decoder"

    .line 10
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CIPVorbisDecoder"

    .line 11
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CIPAMRNBDecoder"

    .line 12
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "AACDecoder"

    .line 13
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "MP3Decoder"

    .line 14
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    sget v5, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v7, 0x12

    if-ge v5, v7, :cond_4

    const-string v5, "OMX.MTK.AUDIO.DECODER.AAC"

    .line 15
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "a70"

    sget-object v7, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 16
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Xiaomi"

    sget-object v7, Lcom/google/android/gms/internal/ads/zzamq;->zzc:Ljava/lang/String;

    .line 17
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    const-string v7, "HM"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_4
    sget v5, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v7, 0x10

    if-ne v5, v7, :cond_5

    const-string v5, "OMX.qcom.audio.decoder.mp3"

    .line 18
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "dlxu"

    sget-object v8, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 19
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "protou"

    sget-object v8, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 20
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ville"

    sget-object v8, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 21
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "villeplus"

    sget-object v8, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 22
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "villec2"

    sget-object v8, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 23
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    const-string v8, "gee"

    .line 24
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "C6602"

    sget-object v8, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 25
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "C6603"

    sget-object v8, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 26
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "C6606"

    sget-object v8, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 27
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "C6616"

    sget-object v8, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 28
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "L36h"

    sget-object v8, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 29
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "SO-02E"

    sget-object v8, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 30
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_5
    sget v5, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-ne v5, v7, :cond_6

    const-string v5, "OMX.qcom.audio.decoder.aac"

    .line 31
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "C1504"

    sget-object v7, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 32
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "C1505"

    sget-object v7, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 33
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "C1604"

    sget-object v7, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 34
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "C1605"

    sget-object v7, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 35
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_6
    sget v5, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v7, 0x18

    if-ge v5, v7, :cond_8

    const-string v5, "OMX.SEC.aac.dec"

    .line 36
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "OMX.Exynos.AAC.Decoder"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    const-string v5, "samsung"

    sget-object v7, Lcom/google/android/gms/internal/ads/zzamq;->zzc:Ljava/lang/String;

    .line 37
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    const-string v7, "zeroflte"

    .line 38
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    const-string v7, "zerolte"

    .line 39
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    const-string v7, "zenlte"

    .line 40
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "SC-05G"

    sget-object v7, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 41
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "marinelteatt"

    sget-object v7, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 42
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "404SC"

    sget-object v7, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 43
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "SC-04G"

    sget-object v7, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 44
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "SCV31"

    sget-object v7, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    .line 45
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_8
    sget v5, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v7, 0x13

    if-gt v5, v7, :cond_9

    const-string v5, "OMX.SEC.vp8.dec"

    .line 46
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "samsung"

    sget-object v8, Lcom/google/android/gms/internal/ads/zzamq;->zzc:Ljava/lang/String;

    .line 47
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    const-string v8, "d2"

    .line 48
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    const-string v8, "serrano"

    .line 49
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    const-string v8, "jflte"

    .line 50
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    const-string v8, "santos"

    .line 51
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    const-string v8, "t0"

    .line 52
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_9
    sget v5, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-gt v5, v7, :cond_a

    sget-object v5, Lcom/google/android/gms/internal/ads/zzamq;->zzb:Ljava/lang/String;

    const-string v7, "jflte"

    .line 53
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "OMX.qcom.video.decoder.vp8"

    .line 54
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_a
    const-string v5, "audio/eac3-joc"

    .line 55
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "OMX.MTK.AUDIO.DECODER.DSPAC3"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 56
    :cond_b
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    .line 57
    array-length v7, v5

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_d

    aget-object v9, v5, v8

    .line 58
    invoke-virtual {v9, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    move-object v11, v9

    goto :goto_4

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_d
    const-string v5, "video/dolby-vision"

    .line 59
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, "OMX.MS.HEVCDV.Decoder"

    .line 60
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "video/hevcdv"

    :goto_3
    move-object v11, v5

    goto :goto_4

    :cond_e
    const-string v5, "OMX.RTK.video.decoder"

    .line 61
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "OMX.realtek.video.decoder.tunneled"

    .line 62
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_f
    const-string v5, "video/dv_hevc"

    goto :goto_3

    :cond_10
    const-string v5, "audio/alac"

    .line 63
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "OMX.lge.alac.decoder"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "audio/x-lg-alac"

    goto :goto_3

    :cond_11
    const-string v5, "audio/flac"

    .line 64
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "OMX.lge.flac.decoder"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "audio/x-lg-flac"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_3

    :cond_12
    move-object v11, v3

    :goto_4
    if-eqz v11, :cond_0

    .line 65
    :try_start_1
    invoke-virtual {v0, v11}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v8

    const-string v5, "tunneled-playback"

    .line 66
    invoke-interface {v2, v5, v11, v8}, Lcom/google/android/gms/internal/ads/zzfz;->zzd(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v5

    const-string v7, "tunneled-playback"

    .line 67
    invoke-interface {v2, v7, v11, v8}, Lcom/google/android/gms/internal/ads/zzfz;->zze(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v7

    iget-boolean v9, v1, Lcom/google/android/gms/internal/ads/zzfx;->zzc:Z

    if-nez v9, :cond_13

    if-nez v7, :cond_0

    goto :goto_5

    :cond_13
    if-nez v5, :cond_14

    goto/16 :goto_1

    :cond_14
    :goto_5
    const-string v5, "secure-playback"

    .line 68
    invoke-interface {v2, v5, v11, v8}, Lcom/google/android/gms/internal/ads/zzfz;->zzd(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v5

    const-string v7, "secure-playback"

    .line 69
    invoke-interface {v2, v7, v11, v8}, Lcom/google/android/gms/internal/ads/zzfz;->zze(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v7

    iget-boolean v9, v1, Lcom/google/android/gms/internal/ads/zzfx;->zzb:Z

    const/4 v10, 0x1

    if-nez v9, :cond_15

    if-nez v7, :cond_0

    goto :goto_6

    :cond_15
    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_6
    sget v7, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-lt v7, v6, :cond_16

    .line 70
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v7

    move v9, v7

    goto :goto_7

    .line 71
    :cond_16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzge;->zzh(Landroid/media/MediaCodecInfo;)Z

    move-result v7

    if-nez v7, :cond_17

    const/4 v9, 0x1

    goto :goto_7

    :cond_17
    const/4 v9, 0x0

    .line 72
    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzge;->zzh(Landroid/media/MediaCodecInfo;)Z

    move-result v18

    sget v7, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    if-lt v7, v6, :cond_18

    .line 73
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isVendor()Z

    move-result v0

    goto :goto_8

    .line 74
    :cond_18
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzflf;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "omx.google."

    .line 75
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_19

    const-string v6, "c2.android."

    .line 76
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_19

    const-string v6, "c2.google."

    .line 77
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_8

    :cond_19
    const/4 v0, 0x0

    :goto_8
    if-eqz v16, :cond_1a

    .line 73
    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzfx;->zzb:Z

    if-eq v6, v5, :cond_1b

    :cond_1a
    if-nez v16, :cond_1c

    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzfx;->zzb:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v6, :cond_1c

    :cond_1b
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v5, v12

    move-object v6, v14

    move-object v7, v11

    move/from16 v10, v18

    move-object/from16 v21, v11

    move v11, v0

    move-object/from16 v22, v12

    move/from16 v12, v19

    move/from16 v19, v13

    move/from16 v13, v20

    .line 80
    :try_start_2
    invoke-static/range {v5 .. v13}, Lcom/google/android/gms/internal/ads/zzfo;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zzfo;

    move-result-object v0

    .line 81
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :catch_0
    move-exception v0

    goto :goto_9

    :cond_1c
    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move/from16 v19, v13

    if-nez v16, :cond_1e

    if-eqz v5, :cond_1e

    .line 78
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ".secure"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v6, v14

    move-object/from16 v7, v21

    move/from16 v10, v18

    move v11, v0

    .line 79
    invoke-static/range {v5 .. v13}, Lcom/google/android/gms/internal/ads/zzfo;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zzfo;

    move-result-object v0

    .line 78
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v4

    :catch_1
    move-exception v0

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move/from16 v19, v13

    .line 88
    :goto_9
    :try_start_3
    sget v5, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v6, 0x17

    if-gt v5, v6, :cond_1d

    .line 82
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v0, "MediaCodecUtil"

    .line 83
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Skipping codec "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v22

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (failed to query capabilities)"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_1d
    move-object/from16 v5, v22

    const-string v1, "MediaCodecUtil"

    .line 85
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to query codec "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v21

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1e
    :goto_a
    add-int/lit8 v13, v19, 0x1

    goto/16 :goto_0

    :cond_1f
    return-object v4

    :catch_2
    move-exception v0

    .line 64
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfy;

    .line 88
    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzfy;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzgc;)V

    throw v1

    :goto_b
    nop

    goto :goto_b
.end method

.method private static zzh(Landroid/media/MediaCodecInfo;)Z
    .locals 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzflf;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "arc."

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "omx.google."

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    const-string v0, "omx.ffmpeg."

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "omx.sec."

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ".sw."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    const-string v0, "omx.qcom.video.decoder.hevcswvdec"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "c2.android."

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "c2.google."

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "omx."

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "c2."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_0
    return v2
.end method

.method private static zzi(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/zzgd<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfw;-><init>(Lcom/google/android/gms/internal/ads/zzgd;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
