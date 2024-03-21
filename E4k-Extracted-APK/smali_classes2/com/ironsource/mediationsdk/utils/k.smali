.class public Lcom/ironsource/mediationsdk/utils/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/utils/k$a;
    }
.end annotation


# static fields
.field private static a:Lcom/ironsource/mediationsdk/utils/k;


# instance fields
.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/k;->b:Ljava/util/HashSet;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/k;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "CappingManager.IS_DELIVERY_ENABLED"

    invoke-static {p1, v2, p2}, Lcom/ironsource/mediationsdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    sget p0, Lcom/ironsource/mediationsdk/utils/k$a;->a:I

    return p0

    :cond_0
    const-string v2, "CappingManager.IS_PACING_ENABLED"

    invoke-static {p1, v2, p2}, Lcom/ironsource/mediationsdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_1

    const-string v2, "CappingManager.TIME_OF_THE_PREVIOUS_SHOW"

    invoke-static {p1, v2, p2}, Lcom/ironsource/mediationsdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getLongFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    const-string v2, "CappingManager.SECONDS_BETWEEN_SHOWS"

    invoke-static {p1, v2, p2}, Lcom/ironsource/mediationsdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    sub-long v6, v0, v6

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v8, v2

    cmp-long v2, v6, v8

    if-gez v2, :cond_1

    sget p0, Lcom/ironsource/mediationsdk/utils/k$a;->c:I

    return p0

    :cond_1
    const-string v2, "CappingManager.IS_CAPPING_ENABLED"

    invoke-static {p1, v2, p2}, Lcom/ironsource/mediationsdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "CappingManager.MAX_NUMBER_OF_SHOWS"

    invoke-static {p1, v2, p2}, Lcom/ironsource/mediationsdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v6, "CappingManager.CURRENT_NUMBER_OF_SHOWS"

    invoke-static {p1, v6, p2}, Lcom/ironsource/mediationsdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    const-string v8, "CappingManager.CAPPING_TIME_THRESHOLD"

    invoke-static {p1, v8, p2}, Lcom/ironsource/mediationsdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getLongFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long p2, v0, v8

    if-ltz p2, :cond_2

    invoke-static {p0, v6, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveIntToSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {p0, p1, v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveLongToSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    if-lt v7, v2, :cond_3

    sget p0, Lcom/ironsource/mediationsdk/utils/k$a;->b:I

    return p0

    :cond_3
    :goto_0
    sget p0, Lcom/ironsource/mediationsdk/utils/k$a;->d:I

    return p0
.end method

.method private static a(Lcom/ironsource/mediationsdk/model/l;)J
    .locals 7

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/utils/k$1;->a:[I

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/model/l;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    const/16 v2, 0xb

    const/16 v3, 0xc

    const/16 v4, 0xd

    const/16 v5, 0xe

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v2, v6}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x6

    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->add(II)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized a()Lcom/ironsource/mediationsdk/utils/k;
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ironsource/mediationsdk/utils/k;->a:Lcom/ironsource/mediationsdk/utils/k;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ironsource/mediationsdk/utils/k;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/utils/k;-><init>()V

    sput-object v1, Lcom/ironsource/mediationsdk/utils/k;->a:Lcom/ironsource/mediationsdk/utils/k;

    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/utils/k;->a:Lcom/ironsource/mediationsdk/utils/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p0, v0, :cond_0

    const-string p0, "Interstitial"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p0, v0, :cond_1

    const-string p0, "Rewarded Video"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p0, v0, :cond_2

    const-string p0, "Banner"

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V
    .locals 3

    const-class v0, Lcom/ironsource/mediationsdk/utils/k;

    monitor-enter v0

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementAvailabilitySettings()Lcom/ironsource/mediationsdk/model/k;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string v2, "Interstitial"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2, p1, v1}, Lcom/ironsource/mediationsdk/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/k;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 3

    const-class v0, Lcom/ironsource/mediationsdk/utils/k;

    monitor-enter v0

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementAvailabilitySettings()Lcom/ironsource/mediationsdk/model/k;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string v2, "Rewarded Video"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2, p1, v1}, Lcom/ironsource/mediationsdk/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/k;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/f;)V
    .locals 3

    const-class v0, Lcom/ironsource/mediationsdk/utils/k;

    monitor-enter v0

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/f;->getPlacementAvailabilitySettings()Lcom/ironsource/mediationsdk/model/k;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string v2, "Banner"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/f;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2, p1, v1}, Lcom/ironsource/mediationsdk/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/k;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/k;)V
    .locals 2

    iget-boolean v0, p3, Lcom/ironsource/mediationsdk/model/k;->a:Z

    const-string v1, "CappingManager.IS_DELIVERY_ENABLED"

    invoke-static {p1, v1, p2}, Lcom/ironsource/mediationsdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveBooleanToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p3, Lcom/ironsource/mediationsdk/model/k;->b:Z

    const-string v1, "CappingManager.IS_CAPPING_ENABLED"

    invoke-static {p1, v1, p2}, Lcom/ironsource/mediationsdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveBooleanToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz v0, :cond_1

    iget v0, p3, Lcom/ironsource/mediationsdk/model/k;->e:I

    const-string v1, "CappingManager.MAX_NUMBER_OF_SHOWS"

    invoke-static {p1, v1, p2}, Lcom/ironsource/mediationsdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveIntToSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p3, Lcom/ironsource/mediationsdk/model/k;->d:Lcom/ironsource/mediationsdk/model/l;

    const-string v1, "CappingManager.CAPPING_TYPE"

    invoke-static {p1, v1, p2}, Lcom/ironsource/mediationsdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/l;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveStringToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p3, Lcom/ironsource/mediationsdk/model/k;->c:Z

    const-string v1, "CappingManager.IS_PACING_ENABLED"

    invoke-static {p1, v1, p2}, Lcom/ironsource/mediationsdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveBooleanToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz v0, :cond_2

    iget p3, p3, Lcom/ironsource/mediationsdk/model/k;->f:I

    const-string v0, "CappingManager.SECONDS_BETWEEN_SHOWS"

    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveIntToSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/k;

    monitor-enter v0

    :try_start_0
    const-string v1, "Interstitial"

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    sget p1, Lcom/ironsource/mediationsdk/utils/k$a;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    :goto_0
    monitor-exit v0

    return p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :goto_1
    nop

    goto :goto_1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z
    .locals 1

    const-class v0, Lcom/ironsource/mediationsdk/utils/k;

    monitor-enter v0

    :try_start_0
    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/k;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/ironsource/mediationsdk/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    sget p1, Lcom/ironsource/mediationsdk/utils/k$a;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    :goto_0
    monitor-exit v0

    return p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :goto_1
    nop

    goto :goto_1
.end method

.method public static declared-synchronized b(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)I
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/k;

    monitor-enter v0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementAvailabilitySettings()Lcom/ironsource/mediationsdk/model/k;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Interstitial"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :cond_1
    :goto_0
    :try_start_1
    sget p0, Lcom/ironsource/mediationsdk/utils/k$a;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)I
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/k;

    monitor-enter v0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementAvailabilitySettings()Lcom/ironsource/mediationsdk/model/k;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Rewarded Video"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :cond_1
    :goto_0
    :try_start_1
    sget p0, Lcom/ironsource/mediationsdk/utils/k$a;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .locals 1

    const-class v0, Lcom/ironsource/mediationsdk/utils/k;

    monitor-enter v0

    :try_start_0
    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/k;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/ironsource/mediationsdk/utils/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "CappingManager.IS_PACING_ENABLED"

    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "CappingManager.TIME_OF_THE_PREVIOUS_SHOW"

    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveLongToSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    const-string v0, "CappingManager.IS_CAPPING_ENABLED"

    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "CappingManager.MAX_NUMBER_OF_SHOWS"

    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    const-string v0, "CappingManager.CURRENT_NUMBER_OF_SHOWS"

    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_4

    const-string v4, "CappingManager.CAPPING_TYPE"

    invoke-static {p1, v4, p2}, Lcom/ironsource/mediationsdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/model/l;->a:Lcom/ironsource/mediationsdk/model/l;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/l;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getStringFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/ironsource/mediationsdk/model/l;->values()[Lcom/ironsource/mediationsdk/model/l;

    move-result-object v6

    array-length v7, v6

    :goto_1
    if-ge v1, v7, :cond_3

    aget-object v8, v6, v1

    iget-object v9, v8, Lcom/ironsource/mediationsdk/model/l;->c:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v5, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-static {v5}, Lcom/ironsource/mediationsdk/utils/k;->a(Lcom/ironsource/mediationsdk/model/l;)J

    move-result-wide v4

    const-string v1, "CappingManager.CAPPING_TIME_THRESHOLD"

    invoke-static {p1, v1, p2}, Lcom/ironsource/mediationsdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveLongToSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_4
    add-int/2addr v2, v3

    invoke-static {p0, v0, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveIntToSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/k;

    monitor-enter v0

    :try_start_0
    const-string v1, "Banner"

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    sget p1, Lcom/ironsource/mediationsdk/utils/k$a;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    :goto_0
    monitor-exit v0

    return p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :goto_1
    nop

    goto :goto_1
.end method

.method public static declared-synchronized c(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/k;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "Interstitial"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/k;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "Rewarded Video"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/k;

    monitor-enter v0

    :try_start_0
    const-string v1, "Rewarded Video"

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    sget p1, Lcom/ironsource/mediationsdk/utils/k$a;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    :goto_0
    monitor-exit v0

    return p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :goto_1
    nop

    goto :goto_1
.end method

.method public static declared-synchronized d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/k;

    monitor-enter v0

    :try_start_0
    const-string v1, "Interstitial"

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/k;

    monitor-enter v0

    :try_start_0
    const-string v1, "Rewarded Video"

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/k;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Banner"

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/k;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/k;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/k;->b:Ljava/util/HashSet;

    return-object v0
.end method

.method public b(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/k;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/k;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/k;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method
