.class public final Lcom/google/android/gms/internal/ads/zzbyj;
.super Lcom/google/android/gms/internal/ads/zzbyp;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field static final zza:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzb:Ljava/lang/String;

.field private zzc:Z

.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private final zzj:Ljava/lang/Object;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzcml;

.field private final zzl:Landroid/app/Activity;

.field private zzm:Lcom/google/android/gms/internal/ads/zzcob;

.field private zzn:Landroid/widget/ImageView;

.field private zzo:Landroid/widget/LinearLayout;

.field private final zzp:Lcom/google/android/gms/internal/ads/zzbyq;

.field private zzq:Landroid/widget/PopupWindow;

.field private zzr:Landroid/widget/RelativeLayout;

.field private zzs:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "top-left"

    const-string v1, "top-right"

    const-string v2, "top-center"

    const-string v3, "center"

    const-string v4, "bottom-left"

    const-string v5, "bottom-right"

    const-string v6, "bottom-center"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcml;Lcom/google/android/gms/internal/ads/zzbyq;)V
    .locals 2

    const-string v0, "resize"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbyp;-><init>(Lcom/google/android/gms/internal/ads/zzcml;Ljava/lang/String;)V

    const-string v0, "top-right"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzb:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzc:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzd:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zze:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzf:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzg:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzh:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzi:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzj:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzk:Lcom/google/android/gms/internal/ads/zzcml;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcml;->zzj()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzl:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzp:Lcom/google/android/gms/internal/ads/zzbyq;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/Map;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzj:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzl:Landroid/app/Activity;

    if-nez v3, :cond_0

    const-string v0, "Not an activity context. Cannot resize."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbyp;->zzf(Ljava/lang/String;)V

    .line 2
    monitor-exit v2

    return-void

    :cond_0
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzk:Lcom/google/android/gms/internal/ads/zzcml;

    .line 3
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcml;->zzP()Lcom/google/android/gms/internal/ads/zzcob;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "Webview is not yet available, size is not set."

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbyp;->zzf(Ljava/lang/String;)V

    .line 5
    monitor-exit v2

    return-void

    :cond_1
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzk:Lcom/google/android/gms/internal/ads/zzcml;

    .line 6
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcml;->zzP()Lcom/google/android/gms/internal/ads/zzcob;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcob;->zzg()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "Is interstitial. Cannot resize an interstitial."

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbyp;->zzf(Ljava/lang/String;)V

    .line 8
    monitor-exit v2

    return-void

    :cond_2
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzk:Lcom/google/android/gms/internal/ads/zzcml;

    .line 9
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcml;->zzW()Z

    move-result v3

    if-nez v3, :cond_20

    const-string v3, "width"

    .line 10
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzQ(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzi:I

    :cond_3
    const-string v3, "height"

    .line 12
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzQ(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzf:I

    :cond_4
    const-string v3, "offsetX"

    .line 14
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    const-string v3, "offsetX"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzQ(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzg:I

    :cond_5
    const-string v3, "offsetY"

    .line 16
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    const-string v3, "offsetY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzQ(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzh:I

    :cond_6
    const-string v3, "allowOffscreen"

    .line 18
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "allowOffscreen"

    .line 19
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzc:Z

    :cond_7
    const-string v3, "customClosePosition"

    .line 20
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzb:Ljava/lang/String;

    :cond_8
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzi:I

    if-ltz v0, :cond_1f

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzf:I

    if-ltz v0, :cond_1f

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzl:Landroid/app/Activity;

    .line 24
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 25
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_9

    goto/16 :goto_13

    .line 28
    :cond_9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzl:Landroid/app/Activity;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzY(Landroid/app/Activity;)[I

    move-result-object v3

    .line 29
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzl:Landroid/app/Activity;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzs;->zzV(Landroid/app/Activity;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v6, v3, v5

    const/4 v7, 0x1

    aget v3, v3, v7

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzi:I

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, -0x1

    const/16 v14, 0x32

    const/4 v15, 0x0

    if-lt v8, v14, :cond_15

    if-le v8, v6, :cond_a

    goto/16 :goto_b

    .line 43
    :cond_a
    iget v9, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzf:I

    if-lt v9, v14, :cond_14

    if-le v9, v3, :cond_b

    goto/16 :goto_a

    :cond_b
    if-ne v9, v3, :cond_c

    if-ne v8, v6, :cond_c

    const-string v3, "Cannot resize to a full-screen ad."

    .line 35
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zze;->zzi(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_c
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzc:Z

    if-eqz v3, :cond_f

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzb:Ljava/lang/String;

    .line 34
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v17, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v10, "top-center"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_1
    const-string v10, "bottom-center"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_2
    const-string v10, "bottom-right"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_3
    const-string v10, "bottom-left"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v10, "top-left"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_5
    const-string v10, "center"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x2

    goto :goto_1

    :cond_d
    :goto_0
    const/4 v3, -0x1

    :goto_1
    packed-switch v3, :pswitch_data_0

    :try_start_1
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzd:I

    goto :goto_5

    :pswitch_0
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzd:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzg:I

    add-int/2addr v3, v10

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x32

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zze:I

    goto :goto_2

    :pswitch_1
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzd:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzg:I

    add-int/2addr v3, v10

    shr-int/2addr v8, v7

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x19

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zze:I

    :goto_2
    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzh:I

    goto :goto_3

    :pswitch_2
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzd:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzg:I

    add-int/2addr v3, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zze:I

    goto :goto_2

    :goto_3
    add-int/2addr v8, v10

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x32

    goto :goto_7

    :pswitch_3
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzd:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzg:I

    add-int/2addr v3, v10

    shr-int/2addr v8, v7

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x19

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zze:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzh:I

    add-int/2addr v8, v10

    shr-int/2addr v9, v7

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x19

    goto :goto_7

    :pswitch_4
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzd:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzg:I

    add-int/2addr v3, v9

    shr-int/2addr v8, v7

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x19

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zze:I

    goto :goto_4

    :pswitch_5
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzd:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzg:I

    add-int/2addr v3, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zze:I

    :goto_4
    iget v9, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzh:I

    goto :goto_6

    :goto_5
    iget v9, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzg:I

    add-int/2addr v3, v9

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x32

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zze:I

    goto :goto_4

    :goto_6
    add-int/2addr v8, v9

    :goto_7
    if-ltz v3, :cond_16

    add-int/2addr v3, v14

    if-gt v3, v6, :cond_16

    aget v3, v4, v5

    if-lt v8, v3, :cond_16

    add-int/2addr v8, v14

    aget v3, v4, v7

    if-le v8, v3, :cond_e

    goto :goto_c

    :cond_e
    new-array v15, v12, [I

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzd:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzg:I

    add-int/2addr v3, v4

    aput v3, v15, v5

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zze:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzh:I

    add-int/2addr v3, v4

    aput v3, v15, v7

    goto :goto_c

    .line 32
    :cond_f
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzl:Landroid/app/Activity;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzY(Landroid/app/Activity;)[I

    move-result-object v3

    .line 33
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzl:Landroid/app/Activity;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzs;->zzV(Landroid/app/Activity;)[I

    move-result-object v4

    aget v3, v3, v5

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzd:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzg:I

    add-int/2addr v6, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zze:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzh:I

    add-int/2addr v8, v9

    if-gez v6, :cond_10

    const/4 v3, 0x0

    goto :goto_8

    :cond_10
    iget v9, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzi:I

    add-int v10, v6, v9

    if-le v10, v3, :cond_11

    sub-int/2addr v3, v9

    goto :goto_8

    :cond_11
    move v3, v6

    :goto_8
    aget v6, v4, v5

    if-ge v8, v6, :cond_12

    move v8, v6

    goto :goto_9

    :cond_12
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzf:I

    add-int v9, v8, v6

    aget v4, v4, v7

    if-le v9, v4, :cond_13

    sub-int v8, v4, v6

    :cond_13
    :goto_9
    new-array v15, v12, [I

    aput v3, v15, v5

    aput v8, v15, v7

    goto :goto_c

    :cond_14
    :goto_a
    const-string v3, "Height is too small or too large."

    .line 31
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zze;->zzi(Ljava/lang/String;)V

    goto :goto_c

    :cond_15
    :goto_b
    const-string v3, "Width is too small or too large."

    .line 30
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zze;->zzi(Ljava/lang/String;)V

    :cond_16
    :goto_c
    if-nez v15, :cond_17

    const-string v0, "Resize location out of screen or close button is not visible."

    .line 36
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbyp;->zzf(Ljava/lang/String;)V

    .line 37
    monitor-exit v2

    return-void

    .line 38
    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzl:Landroid/app/Activity;

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzi:I

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzcgm;->zzs(Landroid/content/Context;I)I

    move-result v3

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzl:Landroid/app/Activity;

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzf:I

    invoke-static {v4, v6}, Lcom/google/android/gms/internal/ads/zzcgm;->zzs(Landroid/content/Context;I)I

    move-result v4

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzk:Lcom/google/android/gms/internal/ads/zzcml;

    check-cast v6, Landroid/view/View;

    .line 40
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_1d

    .line 41
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_1d

    .line 44
    check-cast v6, Landroid/view/ViewGroup;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzk:Lcom/google/android/gms/internal/ads/zzcml;

    check-cast v8, Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzq:Landroid/widget/PopupWindow;

    if-nez v8, :cond_18

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzs:Landroid/view/ViewGroup;

    .line 46
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzk:Lcom/google/android/gms/internal/ads/zzcml;

    move-object v8, v6

    check-cast v8, Landroid/view/View;

    .line 47
    invoke-virtual {v8, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    move-object v8, v6

    check-cast v8, Landroid/view/View;

    .line 48
    invoke-virtual {v8}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    check-cast v6, Landroid/view/View;

    .line 49
    invoke-virtual {v6, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    new-instance v6, Landroid/widget/ImageView;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzl:Landroid/app/Activity;

    .line 50
    invoke-direct {v6, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzn:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzn:Landroid/widget/ImageView;

    .line 51
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzk:Lcom/google/android/gms/internal/ads/zzcml;

    .line 52
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcml;->zzP()Lcom/google/android/gms/internal/ads/zzcob;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzm:Lcom/google/android/gms/internal/ads/zzcob;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzs:Landroid/view/ViewGroup;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzn:Landroid/widget/ImageView;

    .line 53
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_d

    .line 45
    :cond_18
    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    .line 53
    :goto_d
    new-instance v6, Landroid/widget/RelativeLayout;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzl:Landroid/app/Activity;

    .line 54
    invoke-direct {v6, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzr:Landroid/widget/RelativeLayout;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzr:Landroid/widget/RelativeLayout;

    .line 55
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzr:Landroid/widget/RelativeLayout;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .line 56
    invoke-direct {v8, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzr:Landroid/widget/RelativeLayout;

    new-instance v8, Landroid/widget/PopupWindow;

    .line 58
    invoke-direct {v8, v6, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzq:Landroid/widget/PopupWindow;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzq:Landroid/widget/PopupWindow;

    .line 59
    invoke-virtual {v6, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzq:Landroid/widget/PopupWindow;

    .line 60
    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzq:Landroid/widget/PopupWindow;

    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzc:Z

    xor-int/2addr v8, v7

    .line 61
    invoke-virtual {v6, v8}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzr:Landroid/widget/RelativeLayout;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzk:Lcom/google/android/gms/internal/ads/zzcml;

    check-cast v8, Landroid/view/View;

    .line 62
    invoke-virtual {v6, v8, v13, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzl:Landroid/app/Activity;

    .line 63
    invoke-direct {v6, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzo:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 64
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzl:Landroid/app/Activity;

    invoke-static {v8, v14}, Lcom/google/android/gms/internal/ads/zzcgm;->zzs(Landroid/content/Context;I)I

    move-result v8

    .line 65
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzl:Landroid/app/Activity;

    invoke-static {v9, v14}, Lcom/google/android/gms/internal/ads/zzcgm;->zzs(Landroid/content/Context;I)I

    move-result v9

    invoke-direct {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzb:Ljava/lang/String;

    .line 66
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sparse-switch v9, :sswitch_data_1

    goto :goto_e

    :sswitch_6
    const-string v9, "top-center"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    const/16 v16, 0x1

    goto :goto_f

    :sswitch_7
    const-string v9, "bottom-center"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    const/16 v16, 0x4

    goto :goto_f

    :sswitch_8
    const-string v9, "bottom-right"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    const/16 v16, 0x5

    goto :goto_f

    :sswitch_9
    const-string v9, "bottom-left"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    const/16 v16, 0x3

    goto :goto_f

    :sswitch_a
    const-string v9, "top-left"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    const/16 v16, 0x0

    goto :goto_f

    :sswitch_b
    const-string v9, "center"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    const/16 v16, 0x2

    goto :goto_f

    :cond_19
    :goto_e
    const/16 v16, -0x1

    :goto_f
    const/16 v8, 0x9

    const/16 v9, 0xb

    const/16 v10, 0xc

    const/16 v11, 0xa

    packed-switch v16, :pswitch_data_1

    .line 78
    :try_start_2
    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_10

    .line 67
    :pswitch_6
    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_11

    .line 69
    :pswitch_7
    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v8, 0xe

    .line 70
    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_11

    .line 71
    :pswitch_8
    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72
    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_11

    :pswitch_9
    const/16 v8, 0xd

    .line 73
    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_11

    .line 74
    :pswitch_a
    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v8, 0xe

    .line 75
    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_11

    .line 76
    :pswitch_b
    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 77
    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_11

    .line 79
    :goto_10
    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_11
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzo:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzbyi;

    .line 80
    invoke-direct {v9, v1}, Lcom/google/android/gms/internal/ads/zzbyi;-><init>(Lcom/google/android/gms/internal/ads/zzbyj;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzo:Landroid/widget/LinearLayout;

    const-string v9, "Close button"

    .line 81
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzr:Landroid/widget/RelativeLayout;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzo:Landroid/widget/LinearLayout;

    .line 82
    invoke-virtual {v8, v9, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzq:Landroid/widget/PopupWindow;

    .line 83
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzl:Landroid/app/Activity;

    aget v9, v15, v5

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzcgm;->zzs(Landroid/content/Context;I)I

    move-result v8

    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzl:Landroid/app/Activity;

    aget v10, v15, v7

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzcgm;->zzs(Landroid/content/Context;I)I

    move-result v9

    .line 86
    invoke-virtual {v6, v0, v5, v8, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    aget v0, v15, v5

    aget v6, v15, v7

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzp:Lcom/google/android/gms/internal/ads/zzbyq;

    if-eqz v8, :cond_1a

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzi:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzf:I

    .line 93
    invoke-interface {v8, v0, v6, v9, v10}, Lcom/google/android/gms/internal/ads/zzbyq;->zza(IIII)V

    :cond_1a
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzk:Lcom/google/android/gms/internal/ads/zzcml;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzcob;->zzc(II)Lcom/google/android/gms/internal/ads/zzcob;

    move-result-object v3

    .line 94
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzcml;->zzaf(Lcom/google/android/gms/internal/ads/zzcob;)V

    aget v0, v15, v5

    aget v3, v15, v7

    .line 95
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzl:Landroid/app/Activity;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzs;->zzV(Landroid/app/Activity;)[I

    move-result-object v4

    aget v4, v4, v5

    sub-int/2addr v3, v4

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzi:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzf:I

    .line 96
    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzbyp;->zzh(IIII)V

    const-string v0, "resized"

    .line 97
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbyp;->zzj(Ljava/lang/String;)V

    .line 98
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    const-string v3, "Cannot show popup window: "

    .line 87
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 92
    :cond_1b
    new-instance v0, Ljava/lang/String;

    .line 87
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_12
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbyp;->zzf(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzr:Landroid/widget/RelativeLayout;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzk:Lcom/google/android/gms/internal/ads/zzcml;

    check-cast v3, Landroid/view/View;

    .line 88
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzs:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1c

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzn:Landroid/widget/ImageView;

    .line 89
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzs:Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzk:Lcom/google/android/gms/internal/ads/zzcml;

    check-cast v3, Landroid/view/View;

    .line 90
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzk:Lcom/google/android/gms/internal/ads/zzcml;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbyj;->zzm:Lcom/google/android/gms/internal/ads/zzcob;

    .line 91
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzcml;->zzaf(Lcom/google/android/gms/internal/ads/zzcob;)V

    .line 92
    :cond_1c
    monitor-exit v2

    return-void

    :cond_1d
    const-string v0, "Webview is detached, probably in the middle of a resize or expand."

    .line 42
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbyp;->zzf(Ljava/lang/String;)V

    .line 43
    monitor-exit v2

    return-void

    :cond_1e
    :goto_13
    const-string v0, "Activity context is not ready, cannot get window or decor view."

    .line 26
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbyp;->zzf(Ljava/lang/String;)V

    .line 27
    monitor-exit v2

    return-void

    :cond_1f
    const-string v0, "Invalid width and height options. Cannot resize."

    .line 22
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbyp;->zzf(Ljava/lang/String;)V

    .line 23
    monitor-exit v2

    return-void

    :cond_20
    const-string v0, "Cannot resize an expanded banner."

    .line 99
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbyp;->zzf(Ljava/lang/String;)V

    .line 100
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    .line 98
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :goto_14
    nop

    goto :goto_14

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x3c587281 -> :sswitch_4
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_2
        0x4ccee637 -> :sswitch_1
        0x68a23bcd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_b
        -0x3c587281 -> :sswitch_a
        -0x27103597 -> :sswitch_9
        0x455fe3fa -> :sswitch_8
        0x4ccee637 -> :sswitch_7
        0x68a23bcd -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final zzb(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzq:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzr:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzk:Lcom/google/android/gms/internal/ads/zzcml;

    check-cast v2, Landroid/view/View;

    .line 2
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzs:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzn:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzs:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzk:Lcom/google/android/gms/internal/ads/zzcml;

    check-cast v2, Landroid/view/View;

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzk:Lcom/google/android/gms/internal/ads/zzcml;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzm:Lcom/google/android/gms/internal/ads/zzcob;

    .line 5
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzcml;->zzaf(Lcom/google/android/gms/internal/ads/zzcob;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "default"

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbyp;->zzj(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzp:Lcom/google/android/gms/internal/ads/zzbyq;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbyq;->zzb()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzq:Landroid/widget/PopupWindow;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzr:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzs:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzo:Landroid/widget/LinearLayout;

    .line 8
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzc(IIZ)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzj:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzd:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zze:I

    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzd()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzq:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zze(II)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzd:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zze:I

    return-void
.end method
