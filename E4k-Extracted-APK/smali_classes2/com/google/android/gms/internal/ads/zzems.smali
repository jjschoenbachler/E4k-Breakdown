.class public final Lcom/google/android/gms/internal/ads/zzems;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzery;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzery<",
        "Lcom/google/android/gms/internal/ads/zzemt;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzery<",
            "Lcom/google/android/gms/internal/ads/zzesd;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfar;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcge;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeoh;Lcom/google/android/gms/internal/ads/zzfar;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcge;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeoh<",
            "Lcom/google/android/gms/internal/ads/zzesd;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzfar;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzcge;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzems;->zza:Lcom/google/android/gms/internal/ads/zzery;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzems;->zzb:Lcom/google/android/gms/internal/ads/zzfar;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzems;->zzc:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzems;->zzd:Lcom/google/android/gms/internal/ads/zzcge;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzemt;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzems;->zza:Lcom/google/android/gms/internal/ads/zzery;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzery;->zza()Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzemr;

    .line 2
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzemr;-><init>(Lcom/google/android/gms/internal/ads/zzems;)V

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzchg;->zzf:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfsd;->zzj(Lcom/google/android/gms/internal/ads/zzfsm;Lcom/google/android/gms/internal/ads/zzfln;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzesd;)Lcom/google/android/gms/internal/ads/zzemt;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzems;->zzb:Lcom/google/android/gms/internal/ads/zzfar;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfar;->zze:Lcom/google/android/gms/internal/ads/zzbdl;

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzbdl;->zzg:[Lcom/google/android/gms/internal/ads/zzbdl;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzbdl;->zza:Ljava/lang/String;

    .line 3
    iget-boolean v6, v3, Lcom/google/android/gms/internal/ads/zzbdl;->zzi:Z

    move-object v10, v1

    move v11, v6

    goto :goto_2

    .line 29
    :cond_0
    array-length v6, v1

    move-object v10, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v7, v6, :cond_5

    .line 4
    aget-object v12, v1, v7

    .line 5
    iget-boolean v13, v12, Lcom/google/android/gms/internal/ads/zzbdl;->zzi:Z

    if-nez v13, :cond_1

    if-nez v8, :cond_1

    .line 6
    iget-object v8, v12, Lcom/google/android/gms/internal/ads/zzbdl;->zza:Ljava/lang/String;

    move-object v10, v8

    const/4 v8, 0x1

    :cond_1
    if-eqz v13, :cond_3

    if-nez v9, :cond_2

    const/4 v9, 0x1

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x1

    :cond_3
    :goto_1
    if-eqz v8, :cond_4

    if-nez v9, :cond_5

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3
    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzems;->zzc:Landroid/content/Context;

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v6, 0x0

    if-eqz v1, :cond_6

    .line 8
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 9
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    .line 10
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 11
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzems;->zzd:Lcom/google/android/gms/internal/ads/zzcge;

    .line 12
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzcge;->zzp()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/ads/internal/util/zzg;->zzz()Ljava/lang/String;

    move-result-object v8

    move v9, v1

    move-object v1, v8

    move v8, v7

    move v7, v2

    goto :goto_3

    :cond_6
    move-object v1, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzbdl;->zzg:[Lcom/google/android/gms/internal/ads/zzbdl;

    if-eqz v12, :cond_f

    array-length v13, v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_4
    if-ge v14, v13, :cond_d

    .line 15
    aget-object v4, v12, v14

    .line 16
    iget-boolean v5, v4, Lcom/google/android/gms/internal/ads/zzbdl;->zzi:Z

    if-eqz v5, :cond_7

    move-object/from16 v16, v12

    const/4 v15, 0x1

    goto :goto_7

    .line 17
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "|"

    .line 18
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :cond_8
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzbdl;->zze:I

    move-object/from16 v16, v12

    const/4 v12, -0x1

    if-ne v5, v12, :cond_a

    cmpl-float v5, v7, v6

    if-eqz v5, :cond_9

    .line 20
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzbdl;->zzf:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    float-to-int v5, v5

    goto :goto_5

    :cond_9
    const/4 v5, -0x1

    .line 21
    :cond_a
    :goto_5
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    .line 22
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzbdl;->zzb:I

    const/4 v12, -0x2

    if-ne v5, v12, :cond_c

    cmpl-float v5, v7, v6

    if-eqz v5, :cond_b

    .line 24
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzbdl;->zzc:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    float-to-int v5, v4

    goto :goto_6

    :cond_b
    const/4 v5, -0x2

    .line 25
    :cond_c
    :goto_6
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_7
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v12, v16

    goto :goto_4

    :cond_d
    if-eqz v15, :cond_f

    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "|"

    const/4 v5, 0x0

    .line 27
    invoke-virtual {v2, v5, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_e
    const/4 v5, 0x0

    :goto_8
    const-string v4, "320x50"

    .line 28
    invoke-virtual {v2, v5, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v12, Lcom/google/android/gms/internal/ads/zzemt;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzems;->zzb:Lcom/google/android/gms/internal/ads/zzfar;

    iget-boolean v13, v2, Lcom/google/android/gms/internal/ads/zzfar;->zzp:Z

    move-object v2, v12

    move-object v4, v10

    move v5, v11

    move-object v10, v1

    move v11, v13

    .line 29
    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/zzemt;-><init>(Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;Z)V

    return-object v12
.end method
