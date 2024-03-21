.class public Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;
.super Ljava/lang/Object;
.source "PlacementCappingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;
    }
.end annotation


# static fields
.field private static final CAPPING_TIME_THRESHOLD:Ljava/lang/String; = "CappingManager.CAPPING_TIME_THRESHOLD"

.field private static final CAPPING_TYPE:Ljava/lang/String; = "CappingManager.CAPPING_TYPE"

.field private static final CURRENT_NUMBER_OF_SHOWS:Ljava/lang/String; = "CappingManager.CURRENT_NUMBER_OF_SHOWS"

.field private static final IS_CAPPING_ENABLED:Ljava/lang/String; = "CappingManager.IS_CAPPING_ENABLED"

.field private static final IS_DELIVERY_ENABLED:Ljava/lang/String; = "CappingManager.IS_DELIVERY_ENABLED"

.field private static final IS_PACING_ENABLED:Ljava/lang/String; = "CappingManager.IS_PACING_ENABLED"

.field private static final MAX_NUMBER_OF_SHOWS:Ljava/lang/String; = "CappingManager.MAX_NUMBER_OF_SHOWS"

.field private static final SECONDS_BETWEEN_SHOWS:Ljava/lang/String; = "CappingManager.SECONDS_BETWEEN_SHOWS"

.field private static final TIME_OF_THE_PREVIOUS_SHOW:Ljava/lang/String; = "CappingManager.TIME_OF_THE_PREVIOUS_SHOW"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addCappingInfo(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/BannerPlacement;)V
    .locals 3

    const-class v0, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;

    monitor-enter v0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementAvailabilitySettings()Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 69
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string v2, "Banner"

    .line 72
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {p0, v2, p1, v1}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->addCappingInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 63
    monitor-exit v0

    throw p0

    .line 65
    :cond_2
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized addCappingInfo(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V
    .locals 3

    const-class v0, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;

    monitor-enter v0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementAvailabilitySettings()Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 45
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string v2, "Interstitial"

    .line 48
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {p0, v2, p1, v1}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->addCappingInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v0

    throw p0

    .line 41
    :cond_2
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized addCappingInfo(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 3

    const-class v0, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;

    monitor-enter v0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementAvailabilitySettings()Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 57
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string v2, "Rewarded Video"

    .line 60
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {p0, v2, p1, v1}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->addCappingInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0

    throw p0

    .line 53
    :cond_2
    :goto_0
    monitor-exit v0

    return-void
.end method

.method private static addCappingInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V
    .locals 2

    .line 285
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->isDeliveryEnabled()Z

    move-result v0

    const-string v1, "CappingManager.IS_DELIVERY_ENABLED"

    .line 286
    invoke-static {p1, v1, p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-static {p0, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveBooleanToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    if-nez v0, :cond_0

    return-void

    .line 294
    :cond_0
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->isCappingEnabled()Z

    move-result v0

    const-string v1, "CappingManager.IS_CAPPING_ENABLED"

    .line 295
    invoke-static {p1, v1, p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-static {p0, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveBooleanToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->getCappingValue()I

    move-result v0

    const-string v1, "CappingManager.MAX_NUMBER_OF_SHOWS"

    .line 300
    invoke-static {p1, v1, p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-static {p0, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveIntToSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)V

    .line 304
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->getCappingType()Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    move-result-object v0

    const-string v1, "CappingManager.CAPPING_TYPE"

    .line 305
    invoke-static {p1, v1, p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveStringToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_1
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->isPacingEnabled()Z

    move-result v0

    const-string v1, "CappingManager.IS_PACING_ENABLED"

    .line 311
    invoke-static {p1, v1, p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-static {p0, v1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveBooleanToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz v0, :cond_2

    .line 315
    invoke-virtual {p3}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->getPacingValue()I

    move-result p3

    const-string v0, "CappingManager.SECONDS_BETWEEN_SHOWS"

    .line 316
    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 317
    invoke-static {p0, p1, p3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveIntToSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method private static constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 147
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

.method private static getAdUnitString(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Ljava/lang/String;
    .locals 1

    .line 323
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p0, v0, :cond_0

    const-string p0, "Interstitial"

    goto :goto_0

    .line 325
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p0, v0, :cond_1

    const-string p0, "Rewarded Video"

    goto :goto_0

    .line 327
    :cond_1
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p0, v0, :cond_2

    const-string p0, "Banner"

    goto :goto_0

    .line 330
    :cond_2
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static declared-synchronized incrementBnShowCounter(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;

    monitor-enter v0

    .line 137
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Banner"

    .line 138
    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->incrementShowCounter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 136
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized incrementIsShowCounter(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "Interstitial"

    .line 123
    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->incrementShowCounter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 122
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized incrementRvShowCounter(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "Rewarded Video"

    .line 133
    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->incrementShowCounter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 132
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized incrementShowCounter(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "Interstitial"

    .line 118
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->incrementShowCounter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 116
    monitor-exit v0

    throw p0

    .line 120
    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized incrementShowCounter(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "Rewarded Video"

    .line 128
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->incrementShowCounter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 126
    monitor-exit v0

    throw p0

    .line 130
    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized incrementShowCounter(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .locals 1

    const-class v0, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;

    monitor-enter v0

    .line 111
    :try_start_0
    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->getAdUnitString(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Ljava/lang/String;

    move-result-object p2

    .line 113
    invoke-static {p0, p2, p1}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->incrementShowCounter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 110
    monitor-exit v0

    throw p0
.end method

.method private static incrementShowCounter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "CappingManager.IS_PACING_ENABLED"

    .line 212
    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 213
    invoke-static {p0, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "CappingManager.TIME_OF_THE_PREVIOUS_SHOW"

    .line 217
    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {p0, v0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveLongToSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    const-string v0, "CappingManager.IS_CAPPING_ENABLED"

    .line 222
    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {p0, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "CappingManager.MAX_NUMBER_OF_SHOWS"

    .line 226
    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {p0, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    const-string v0, "CappingManager.CURRENT_NUMBER_OF_SHOWS"

    .line 230
    invoke-static {p1, v0, p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
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

    .line 238
    invoke-static {p1, v4, p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 239
    sget-object v5, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_DAY:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getStringFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 241
    invoke-static {}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->values()[Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    move-result-object v6

    array-length v7, v6

    :goto_1
    if-ge v1, v7, :cond_3

    aget-object v8, v6, v1

    .line 242
    iget-object v9, v8, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->value:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v5, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 248
    :cond_3
    :goto_2
    invoke-static {v5}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->initTimeThreshold(Lcom/ironsource/mediationsdk/model/PlacementCappingType;)J

    move-result-wide v4

    const-string v1, "CappingManager.CAPPING_TIME_THRESHOLD"

    .line 251
    invoke-static {p1, v1, p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 252
    invoke-static {p0, p1, v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveLongToSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_4
    add-int/2addr v2, v3

    .line 259
    invoke-static {p0, v0, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveIntToSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method private static initTimeThreshold(Lcom/ironsource/mediationsdk/model/PlacementCappingType;)J
    .locals 7

    const-string v0, "UTC"

    .line 264
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 265
    sget-object v1, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$1;->$SwitchMap$com$ironsource$mediationsdk$model$PlacementCappingType:[I

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->ordinal()I

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

    .line 274
    :pswitch_0
    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 275
    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 276
    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 277
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 267
    :pswitch_1
    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 268
    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 269
    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 270
    invoke-virtual {v0, v2, v6}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x6

    .line 271
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->add(II)V

    .line 280
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

.method public static declared-synchronized isBnPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "Banner"

    .line 94
    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->isPlacementCapped(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;

    move-result-object p0

    sget-object p1, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isInterstitialPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "Interstitial"

    .line 90
    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->isPlacementCapped(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;

    move-result-object p0

    sget-object p1, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isPlacementCapped(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;

    monitor-enter v0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 76
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementAvailabilitySettings()Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Interstitial"

    .line 79
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->isPlacementCapped(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 77
    :cond_1
    :goto_0
    :try_start_1
    sget-object p0, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 75
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isPlacementCapped(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;

    monitor-enter v0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 98
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementAvailabilitySettings()Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Rewarded Video"

    .line 101
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->isPlacementCapped(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 99
    :cond_1
    :goto_0
    :try_start_1
    sget-object p0, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 97
    monitor-exit v0

    throw p0
.end method

.method private static isPlacementCapped(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;
    .locals 10

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "CappingManager.IS_DELIVERY_ENABLED"

    .line 153
    invoke-static {p1, v2, p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 154
    invoke-static {p0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    sget-object p0, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;->CAPPED_PER_DELIVERY:Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;

    return-object p0

    :cond_0
    const-string v2, "CappingManager.IS_PACING_ENABLED"

    .line 161
    invoke-static {p1, v2, p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 162
    invoke-static {p0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_1

    const-string v2, "CappingManager.TIME_OF_THE_PREVIOUS_SHOW"

    .line 165
    invoke-static {p1, v2, p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-static {p0, v2, v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getLongFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    const-string v2, "CappingManager.SECONDS_BETWEEN_SHOWS"

    .line 169
    invoke-static {p1, v2, p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {p0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    sub-long v6, v0, v6

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v8, v2

    cmp-long v2, v6, v8

    if-gez v2, :cond_1

    .line 175
    sget-object p0, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;->CAPPED_PER_PACE:Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;

    return-object p0

    :cond_1
    const-string v2, "CappingManager.IS_CAPPING_ENABLED"

    .line 180
    invoke-static {p1, v2, p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-static {p0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "CappingManager.MAX_NUMBER_OF_SHOWS"

    .line 184
    invoke-static {p1, v2, p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-static {p0, v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v6, "CappingManager.CURRENT_NUMBER_OF_SHOWS"

    .line 188
    invoke-static {p1, v6, p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 189
    invoke-static {p0, v6, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    const-string v8, "CappingManager.CAPPING_TIME_THRESHOLD"

    .line 192
    invoke-static {p1, v8, p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->constructSharedPrefsKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-static {p0, p1, v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getLongFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long p2, v0, v8

    if-ltz p2, :cond_2

    .line 198
    invoke-static {p0, v6, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveIntToSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)V

    .line 199
    invoke-static {p0, p1, v4, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveLongToSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    if-lt v7, v2, :cond_3

    .line 202
    sget-object p0, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;->CAPPED_PER_COUNT:Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;

    return-object p0

    .line 207
    :cond_3
    :goto_0
    sget-object p0, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;

    return-object p0
.end method

.method public static declared-synchronized isPlacementCapped(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z
    .locals 1

    const-class v0, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;

    monitor-enter v0

    .line 84
    :try_start_0
    invoke-static {p2}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->getAdUnitString(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Ljava/lang/String;

    move-result-object p2

    .line 86
    invoke-static {p0, p2, p1}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->isPlacementCapped(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;

    move-result-object p0

    sget-object p1, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 83
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isRvPlacementCapped(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "Rewarded Video"

    .line 105
    invoke-static {p0, v1, p1}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->isPlacementCapped(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;

    move-result-object p0

    sget-object p1, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/PlacementCappingManager$ECappingStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
