.class final Lcom/google/android/gms/internal/ads/zzass;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzasp;
.implements Lcom/google/android/gms/internal/ads/zzaso;


# instance fields
.field public final zza:[Lcom/google/android/gms/internal/ads/zzasp;

.field private final zzb:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/gms/internal/ads/zzatb;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzc:Lcom/google/android/gms/internal/ads/zzaso;

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzatg;

.field private zzf:[Lcom/google/android/gms/internal/ads/zzasp;

.field private zzg:Lcom/google/android/gms/internal/ads/zzatd;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/zzasp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzass;->zza:[Lcom/google/android/gms/internal/ads/zzasp;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzass;->zzb:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method public final zzB([Lcom/google/android/gms/internal/ads/zzatk;[Z[Lcom/google/android/gms/internal/ads/zzatb;[ZJ)J
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1
    array-length v3, v1

    new-array v4, v3, [I

    new-array v3, v3, [I

    const/4 v6, 0x0

    .line 2
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_3

    .line 3
    aget-object v7, v2, v6

    const/4 v8, -0x1

    if-nez v7, :cond_0

    const/4 v7, -0x1

    goto :goto_1

    .line 8
    :cond_0
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzass;->zzb:Ljava/util/IdentityHashMap;

    .line 4
    invoke-virtual {v9, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    aput v7, v4, v6

    .line 5
    aput v8, v3, v6

    .line 6
    aget-object v7, v1, v6

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzatk;->zza()Lcom/google/android/gms/internal/ads/zzatf;

    move-result-object v7

    const/4 v9, 0x0

    :goto_2
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzass;->zza:[Lcom/google/android/gms/internal/ads/zzasp;

    array-length v11, v10

    if-ge v9, v11, :cond_2

    .line 7
    aget-object v10, v10, v9

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzasp;->zzn()Lcom/google/android/gms/internal/ads/zzatg;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzatg;->zzb(Lcom/google/android/gms/internal/ads/zzatf;)I

    move-result v10

    if-eq v10, v8, :cond_1

    .line 8
    aput v9, v3, v6

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4
    :cond_3
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzass;->zzb:Ljava/util/IdentityHashMap;

    .line 9
    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    new-array v6, v7, [Lcom/google/android/gms/internal/ads/zzatb;

    new-array v15, v7, [Lcom/google/android/gms/internal/ads/zzatb;

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/zzatk;

    new-instance v13, Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzass;->zza:[Lcom/google/android/gms/internal/ads/zzasp;

    array-length v8, v8

    .line 10
    invoke-direct {v13, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-wide/from16 v16, p5

    const/4 v14, 0x0

    :goto_4
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzass;->zza:[Lcom/google/android/gms/internal/ads/zzasp;

    array-length v8, v8

    if-ge v14, v8, :cond_f

    const/4 v8, 0x0

    .line 11
    :goto_5
    array-length v9, v1

    if-ge v8, v9, :cond_6

    .line 12
    aget v9, v4, v8

    const/4 v10, 0x0

    if-ne v9, v14, :cond_4

    aget-object v9, v2, v8

    goto :goto_6

    :cond_4
    move-object v9, v10

    :goto_6
    aput-object v9, v15, v8

    .line 13
    aget v9, v3, v8

    if-ne v9, v14, :cond_5

    aget-object v10, v1, v8

    :cond_5
    aput-object v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_6
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzass;->zza:[Lcom/google/android/gms/internal/ads/zzasp;

    .line 14
    aget-object v8, v8, v14

    move-object v9, v7

    move-object/from16 v10, p2

    move-object v11, v15

    move-object/from16 v12, p4

    move-object/from16 v18, v7

    move-object v5, v13

    move v7, v14

    move-wide/from16 v13, v16

    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzasp;->zzB([Lcom/google/android/gms/internal/ads/zzatk;[Z[Lcom/google/android/gms/internal/ads/zzatb;[ZJ)J

    move-result-wide v8

    if-nez v7, :cond_7

    move-wide/from16 v16, v8

    goto :goto_7

    :cond_7
    cmp-long v10, v8, v16

    if-nez v10, :cond_e

    :goto_7
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 15
    :goto_8
    array-length v10, v1

    if-ge v8, v10, :cond_c

    .line 16
    aget v10, v3, v8

    const/4 v11, 0x1

    if-ne v10, v7, :cond_9

    .line 17
    aget-object v9, v15, v8

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    goto :goto_9

    :cond_8
    const/4 v9, 0x0

    :goto_9
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzaup;->zzd(Z)V

    .line 18
    aget-object v9, v15, v8

    aput-object v9, v6, v8

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzass;->zzb:Ljava/util/IdentityHashMap;

    .line 19
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v9, v12}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    goto :goto_b

    .line 20
    :cond_9
    aget v10, v4, v8

    if-ne v10, v7, :cond_b

    .line 21
    aget-object v10, v15, v8

    if-nez v10, :cond_a

    goto :goto_a

    :cond_a
    const/4 v11, 0x0

    :goto_a
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzaup;->zzd(Z)V

    :cond_b
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_c
    if-eqz v9, :cond_d

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzass;->zza:[Lcom/google/android/gms/internal/ads/zzasp;

    .line 22
    aget-object v8, v8, v7

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v14, v7, 0x1

    move-object v13, v5

    move-object/from16 v7, v18

    goto :goto_4

    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Children enabled at different positions"

    .line 23
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    move-object v5, v13

    array-length v1, v6

    const/4 v3, 0x0

    .line 24
    invoke-static {v6, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzasp;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzass;->zzf:[Lcom/google/android/gms/internal/ads/zzasp;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzass;->zzf:[Lcom/google/android/gms/internal/ads/zzasp;

    .line 26
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzasd;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzass;->zzf:[Lcom/google/android/gms/internal/ads/zzasp;

    .line 27
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzasd;-><init>([Lcom/google/android/gms/internal/ads/zzatd;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzass;->zzg:Lcom/google/android/gms/internal/ads/zzatd;

    return-wide v16
.end method

.method public final zza()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzass;->zzg:Lcom/google/android/gms/internal/ads/zzatd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzatd;->zza()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzb(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzass;->zzg:Lcom/google/android/gms/internal/ads/zzatd;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzatd;->zzb(J)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic zzbh(Lcom/google/android/gms/internal/ads/zzatd;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzasp;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzass;->zze:Lcom/google/android/gms/internal/ads/zzatg;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzass;->zzc:Lcom/google/android/gms/internal/ads/zzaso;

    .line 2
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzaso;->zzbh(Lcom/google/android/gms/internal/ads/zzatd;)V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzasp;)V
    .locals 10

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzass;->zzd:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzass;->zzd:I

    if-lez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzass;->zza:[Lcom/google/android/gms/internal/ads/zzasp;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p1, v2

    .line 2
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzasp;->zzn()Lcom/google/android/gms/internal/ads/zzatg;

    move-result-object v4

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzatg;->zzb:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    new-array p1, v3, [Lcom/google/android/gms/internal/ads/zzatf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzass;->zza:[Lcom/google/android/gms/internal/ads/zzasp;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 4
    aget-object v5, v0, v3

    .line 5
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzasp;->zzn()Lcom/google/android/gms/internal/ads/zzatg;

    move-result-object v5

    .line 6
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzatg;->zzb:I

    move v7, v4

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_2

    add-int/lit8 v8, v7, 0x1

    .line 7
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzatg;->zza(I)Lcom/google/android/gms/internal/ads/zzatf;

    move-result-object v9

    aput-object v9, p1, v7

    add-int/lit8 v4, v4, 0x1

    move v7, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_1

    .line 8
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzatg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzatg;-><init>([Lcom/google/android/gms/internal/ads/zzatf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzass;->zze:Lcom/google/android/gms/internal/ads/zzatg;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzass;->zzc:Lcom/google/android/gms/internal/ads/zzaso;

    .line 9
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzaso;->zzj(Lcom/google/android/gms/internal/ads/zzasp;)V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzaso;J)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzass;->zzc:Lcom/google/android/gms/internal/ads/zzaso;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzass;->zza:[Lcom/google/android/gms/internal/ads/zzasp;

    array-length v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzass;->zzd:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    invoke-interface {v2, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzasp;->zzl(Lcom/google/android/gms/internal/ads/zzaso;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzm()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzass;->zza:[Lcom/google/android/gms/internal/ads/zzasp;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzasp;->zzm()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzn()Lcom/google/android/gms/internal/ads/zzatg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzass;->zze:Lcom/google/android/gms/internal/ads/zzatg;

    return-object v0
.end method

.method public final zzo(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzass;->zzf:[Lcom/google/android/gms/internal/ads/zzasp;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3, p1, p2}, Lcom/google/android/gms/internal/ads/zzasp;->zzo(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzp()J
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzass;->zza:[Lcom/google/android/gms/internal/ads/zzasp;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzasp;->zzp()J

    move-result-wide v2

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzass;->zza:[Lcom/google/android/gms/internal/ads/zzasp;

    array-length v5, v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v0, v5, :cond_1

    .line 2
    aget-object v4, v4, v0

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzasp;->zzp()J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Child reported discontinuity"

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    cmp-long v0, v2, v6

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzass;->zzf:[Lcom/google/android/gms/internal/ads/zzasp;

    .line 4
    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v0, v5

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzass;->zza:[Lcom/google/android/gms/internal/ads/zzasp;

    .line 5
    aget-object v7, v7, v1

    if-eq v6, v7, :cond_3

    .line 6
    invoke-interface {v6, v2, v3}, Lcom/google/android/gms/internal/ads/zzasp;->zzr(J)J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Children seeked to different positions"

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-wide v2
.end method

.method public final zzq()J
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzass;->zzf:[Lcom/google/android/gms/internal/ads/zzasp;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_0
    const-wide/high16 v7, -0x8000000000000000L

    if-ge v4, v1, :cond_1

    aget-object v9, v0, v4

    .line 2
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzasp;->zzq()J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-eqz v11, :cond_0

    .line 3
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    cmp-long v0, v5, v2

    if-nez v0, :cond_2

    return-wide v7

    :cond_2
    return-wide v5
.end method

.method public final zzr(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzass;->zzf:[Lcom/google/android/gms/internal/ads/zzasp;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzasp;->zzr(J)J

    move-result-wide p1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzass;->zzf:[Lcom/google/android/gms/internal/ads/zzasp;

    .line 2
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 3
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzasp;->zzr(J)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Children seeked to different positions"

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-wide p1
.end method
