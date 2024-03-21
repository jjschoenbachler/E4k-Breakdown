.class public Lcom/ironsource/sdk/controller/FeaturesManager;
.super Ljava/lang/Object;
.source "FeaturesManager.java"


# static fields
.field private static final DEBUG_MODE:Ljava/lang/String; = "debugMode"

.field private static final TAG:Ljava/lang/String; = "FeaturesManager"

.field private static volatile sSoleInstance:Lcom/ironsource/sdk/controller/FeaturesManager;


# instance fields
.field private mDebugConfigurations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private mSupportedFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/ironsource/sdk/controller/FeaturesManager$1;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/FeaturesManager$1;-><init>(Lcom/ironsource/sdk/controller/FeaturesManager;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/FeaturesManager;->mSupportedFeatures:Ljava/util/ArrayList;

    .line 34
    sget-object v0, Lcom/ironsource/sdk/controller/FeaturesManager;->sSoleInstance:Lcom/ironsource/sdk/controller/FeaturesManager;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/FeaturesManager;->mDebugConfigurations:Ljava/util/Map;

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Use getInstance() method to get the single instance of this class."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/ironsource/sdk/controller/FeaturesManager;
    .locals 2

    .line 47
    sget-object v0, Lcom/ironsource/sdk/controller/FeaturesManager;->sSoleInstance:Lcom/ironsource/sdk/controller/FeaturesManager;

    if-nez v0, :cond_1

    .line 48
    const-class v0, Lcom/ironsource/sdk/controller/FeaturesManager;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/ironsource/sdk/controller/FeaturesManager;->sSoleInstance:Lcom/ironsource/sdk/controller/FeaturesManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ironsource/sdk/controller/FeaturesManager;

    invoke-direct {v1}, Lcom/ironsource/sdk/controller/FeaturesManager;-><init>()V

    sput-object v1, Lcom/ironsource/sdk/controller/FeaturesManager;->sSoleInstance:Lcom/ironsource/sdk/controller/FeaturesManager;

    .line 50
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 53
    :cond_1
    :goto_0
    sget-object v0, Lcom/ironsource/sdk/controller/FeaturesManager;->sSoleInstance:Lcom/ironsource/sdk/controller/FeaturesManager;

    return-object v0
.end method


# virtual methods
.method public getDebugMode()I
    .locals 4

    const/4 v0, 0x0

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/ironsource/sdk/controller/FeaturesManager;->mDebugConfigurations:Ljava/util/Map;

    const-string v3, "debugMode"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/ironsource/sdk/controller/FeaturesManager;->mDebugConfigurations:Ljava/util/Map;

    const-string v3, "debugMode"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 81
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    return v0
.end method

.method getSupportedFeatures()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/FeaturesManager;->mSupportedFeatures:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public updateDebugConfigurations(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/ironsource/sdk/controller/FeaturesManager;->mDebugConfigurations:Ljava/util/Map;

    return-void
.end method
