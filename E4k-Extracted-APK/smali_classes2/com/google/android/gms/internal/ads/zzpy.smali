.class final Lcom/google/android/gms/internal/ads/zzpy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static final zza:[Ljava/lang/String;

.field private static final zzb:[Ljava/lang/String;

.field private static final zzc:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Camera:MotionPhoto"

    const-string v1, "GCamera:MotionPhoto"

    const-string v2, "Camera:MicroVideo"

    const-string v3, "GCamera:MicroVideo"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzpy;->zza:[Ljava/lang/String;

    const-string v0, "Camera:MotionPhotoPresentationTimestampUs"

    const-string v1, "GCamera:MotionPhotoPresentationTimestampUs"

    const-string v2, "Camera:MicroVideoPresentationTimestampUs"

    const-string v3, "GCamera:MicroVideoPresentationTimestampUs"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzpy;->zzb:[Ljava/lang/String;

    const-string v0, "Camera:MicroVideoOffset"

    const-string v1, "GCamera:MicroVideoOffset"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzpy;->zzc:[Ljava/lang/String;

    return-void
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzpu;
    .locals 21
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/io/StringReader;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 4
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v2, "x:xmpmeta"

    .line 5
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzamr;->zzb(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v5, v3

    .line 8
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v7, "rdf:Description"

    .line 9
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzamr;->zzb(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v2, Lcom/google/android/gms/internal/ads/zzpy;->zza:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x4

    if-ge v6, v7, :cond_b

    aget-object v8, v2, v6

    .line 10
    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/zzamr;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 11
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_b

    sget-object v2, Lcom/google/android/gms/internal/ads/zzpy;->zzb:[Ljava/lang/String;

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v8, v2, v6

    .line 12
    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/zzamr;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 13
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v2, v6, v8

    if-nez v2, :cond_3

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    move-wide v6, v3

    :cond_3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzpy;->zzc:[Ljava/lang/String;

    :goto_3
    const/4 v8, 0x2

    if-ge v5, v8, :cond_5

    aget-object v8, v2, v5

    .line 14
    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/zzamr;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 16
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    new-instance v2, Lcom/google/android/gms/internal/ads/zzpt;

    const-string v15, "image/jpeg"

    const-string v16, "Primary"

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object v14, v2

    .line 17
    invoke-direct/range {v14 .. v20}, Lcom/google/android/gms/internal/ads/zzpt;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzpt;

    const-string v10, "video/mp4"

    const-string v11, "MotionPhoto"

    const-wide/16 v14, 0x0

    move-object v9, v5

    invoke-direct/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzpt;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/zzfoj;->zzk(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v2

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 15
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v2

    :goto_4
    move-wide v5, v6

    goto :goto_5

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    const-string v7, "Container:Directory"

    .line 18
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzamr;->zzb(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v2, "Container"

    const-string v7, "Item"

    .line 19
    invoke-static {v1, v2, v7}, Lcom/google/android/gms/internal/ads/zzpy;->zzb(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v2

    goto :goto_5

    :cond_8
    const-string v7, "GContainer:Directory"

    .line 20
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzamr;->zzb(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v2, "GContainer"

    const-string v7, "GContainerItem"

    .line 21
    invoke-static {v1, v2, v7}, Lcom/google/android/gms/internal/ads/zzpy;->zzb(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v2

    :cond_9
    :goto_5
    const-string v7, "x:xmpmeta"

    .line 22
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzamr;->zza(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 23
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_6

    :cond_a
    new-instance v1, Lcom/google/android/gms/internal/ads/zzpu;

    .line 24
    invoke-direct {v1, v5, v6, v2}, Lcom/google/android/gms/internal/ads/zzpu;-><init>(JLjava/util/List;)V

    move-object v0, v1

    :cond_b
    :goto_6
    return-object v0

    :cond_c
    const-string v1, "Couldn\'t find xmp metadata"

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzaha; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v1, "MotionPhotoXmpParser"

    const-string v2, "Ignoring unexpected XMP metadata"

    .line 25
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static zzb(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfoj;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfoj<",
            "Lcom/google/android/gms/internal/ads/zzpt;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzu()Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object v0

    const-string v1, ":Item"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":Directory"

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 5
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzamr;->zzb(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, ":Mime"

    .line 6
    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":Semantic"

    .line 7
    invoke-virtual {p2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":Length"

    .line 8
    invoke-virtual {p2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":Padding"

    .line 9
    invoke-virtual {p2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/zzamr;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-static {p0, v3}, Lcom/google/android/gms/internal/ads/zzamr;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-static {p0, v4}, Lcom/google/android/gms/internal/ads/zzamr;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {p0, v5}, Lcom/google/android/gms/internal/ads/zzamr;->zzc(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v7, :cond_4

    if-nez v8, :cond_1

    goto :goto_2

    .line 18
    :cond_1
    new-instance v4, Lcom/google/android/gms/internal/ads/zzpt;

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_2

    .line 14
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    goto :goto_0

    :cond_2
    move-wide v9, v5

    :goto_0
    if-eqz v3, :cond_3

    .line 15
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v11, v2

    goto :goto_1

    :cond_3
    move-wide v11, v5

    :goto_1
    move-object v6, v4

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzpt;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 16
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzfog;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfog;

    goto :goto_3

    .line 18
    :cond_4
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoj;->zzi()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p0

    return-object p0

    .line 17
    :cond_5
    :goto_3
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzamr;->zza(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfog;->zzf()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object p0

    return-object p0
.end method
