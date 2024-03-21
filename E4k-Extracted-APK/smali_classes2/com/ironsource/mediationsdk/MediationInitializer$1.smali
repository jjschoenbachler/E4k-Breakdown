.class Lcom/ironsource/mediationsdk/MediationInitializer$1;
.super Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;
.source "MediationInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/MediationInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/MediationInitializer;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/MediationInitializer;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;-><init>(Lcom/ironsource/mediationsdk/MediationInitializer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 187
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    .line 189
    invoke-static {}, Lcom/ironsource/mediationsdk/TokenDataService;->getInstance()Lcom/ironsource/mediationsdk/TokenDataService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/TokenDataService;->collectAdvertisingData()V

    .line 192
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$100(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    const-string v2, "userGenerated"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$202(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$002(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    const-string v2, "GAID"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$202(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ironsource/environment/DeviceStatus;->getOrGenerateOnceUniqueIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$002(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 202
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    const-string v2, "UUID"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$202(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 204
    :cond_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$002(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    :goto_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->setIronSourceUserId(Ljava/lang/String;Z)V

    .line 213
    :goto_1
    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v1

    const-string v2, "userIdType"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$200(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 216
    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v1

    const-string v2, "userId"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    :cond_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$300(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 218
    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v1

    const-string v2, "appKey"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$300(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    :cond_4
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$400(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/globalData/IronSourceMediationGlobalDataWriter;->setUserId(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$502(Lcom/ironsource/mediationsdk/MediationInitializer;J)J

    .line 227
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->listener:Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;

    invoke-virtual {v0, v2, v3, v4}, Lcom/ironsource/mediationsdk/IronSourceObject;->getServerResponse(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$602(Lcom/ironsource/mediationsdk/MediationInitializer;Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 229
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$600(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_9

    .line 230
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$700(Lcom/ironsource/mediationsdk/MediationInitializer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 232
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$600(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->isValidResponse()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 234
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    sget-object v2, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INITIATED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$800(Lcom/ironsource/mediationsdk/MediationInitializer;Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V

    .line 235
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$600(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->setInitType(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)V

    .line 238
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isDemandOnlyInit()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->identifyMediationType(Z)V

    .line 241
    sget-object v1, Lcom/ironsource/environment/DeviceConfigurationsDataHolder;->INSTANCE:Lcom/ironsource/environment/DeviceConfigurationsDataHolder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$600(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getGeneralSettings()Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->getShouldUseAppSet()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/environment/DeviceConfigurationsDataHolder;->setShouldUseAppSet(Z)V

    .line 244
    sget-object v1, Lcom/ironsource/environment/DeviceConfigurationsDataHolder;->INSTANCE:Lcom/ironsource/environment/DeviceConfigurationsDataHolder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$600(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v2

    .line 245
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v2

    .line 246
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getGeneralSettings()Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;

    move-result-object v2

    .line 247
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;->getShouldReuseAdvId()Z

    move-result v2

    .line 244
    invoke-virtual {v1, v2}, Lcom/ironsource/environment/DeviceConfigurationsDataHolder;->setShouldReuseAdvertisingId(Z)V

    .line 250
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$600(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/mediationsdk/MediationInitializer;->updateDataWithInitResponse(Landroid/content/Context;Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)V

    .line 253
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$500(Lcom/ironsource/mediationsdk/MediationInitializer;)J

    move-result-wide v3

    const/4 v5, 0x0

    sub-long/2addr v1, v3

    .line 254
    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->sendInitCompletedEvent(J)V

    .line 256
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    new-instance v1, Lcom/ironsource/mediationsdk/SessionCalculationManager;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/SessionCalculationManager;-><init>()V

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$902(Lcom/ironsource/mediationsdk/MediationInitializer;Lcom/ironsource/mediationsdk/SessionCalculationManager;)Lcom/ironsource/mediationsdk/SessionCalculationManager;

    .line 257
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$900(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/SessionCalculationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/SessionCalculationManager;->init()V

    .line 261
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$600(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getIntegration()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 262
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateIntegration(Landroid/app/Activity;)V

    .line 266
    :cond_5
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$600(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getInitiatedAdUnits()Ljava/util/List;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/utils/OnMediationInitializationListener;

    .line 268
    iget-object v3, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1100(Lcom/ironsource/mediationsdk/MediationInitializer;)Z

    move-result v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v4}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$600(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lcom/ironsource/mediationsdk/utils/OnMediationInitializationListener;->onInitSuccess(Ljava/util/List;ZLcom/ironsource/mediationsdk/model/Configurations;)V

    goto :goto_2

    .line 272
    :cond_6
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1200(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 273
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$600(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getSegmentData()Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 274
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ServerSegmetData;->getSegmentName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 275
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1200(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ServerSegmetData;->getSegmentName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/ironsource/mediationsdk/sdk/SegmentListener;->onSegmentReceived(Ljava/lang/String;)V

    .line 280
    :cond_7
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$600(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getCrashReporterSettings()Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->isCrashReporterEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 282
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSessionId()Ljava/lang/String;

    move-result-object v8

    .line 283
    invoke-static {}, Lcom/ironsource/environment/CrashReporter;->getInstance()Lcom/ironsource/environment/CrashReporter;

    move-result-object v2

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->getKeyParamsToIncludeInReporter()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->getReporterURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->getReporterKeyword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->isANRIncluded()Z

    move-result v7

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->getDefaultAnrTimeout()I

    move-result v9

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->isIgnoreDebugger()Z

    move-result v10

    invoke-virtual/range {v2 .. v10}, Lcom/ironsource/environment/CrashReporter;->init(Landroid/content/Context;Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZ)V

    goto/16 :goto_6

    .line 288
    :cond_8
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1300(Lcom/ironsource/mediationsdk/MediationInitializer;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 289
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$800(Lcom/ironsource/mediationsdk/MediationInitializer;Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V

    .line 290
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1302(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z

    .line 291
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/utils/OnMediationInitializationListener;

    const-string v2, "serverResponseIsNotValid"

    .line 292
    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/utils/OnMediationInitializationListener;->onInitFailed(Ljava/lang/String;)V

    goto :goto_3

    .line 297
    :cond_9
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1400(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 298
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1502(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z

    .line 299
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/utils/OnMediationInitializationListener;

    .line 300
    invoke-interface {v1}, Lcom/ironsource/mediationsdk/utils/OnMediationInitializationListener;->onStillInProgressAfter15Secs()V

    goto :goto_4

    .line 304
    :cond_a
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->isRecoverable:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1400(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1600(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 305
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1702(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z

    .line 306
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$700(Lcom/ironsource/mediationsdk/MediationInitializer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1800(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v3, v1

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 307
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1400(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1900(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 308
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1800(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1802(Lcom/ironsource/mediationsdk/MediationInitializer;I)I

    .line 310
    :cond_b
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->isRecoverable:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1400(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$2000(Lcom/ironsource/mediationsdk/MediationInitializer;)I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 311
    :cond_c
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1300(Lcom/ironsource/mediationsdk/MediationInitializer;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 312
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1302(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z

    .line 313
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->reason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "noServerResponse"

    .line 314
    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->reason:Ljava/lang/String;

    .line 316
    :cond_d
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/utils/OnMediationInitializationListener;

    .line 317
    iget-object v3, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->reason:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/ironsource/mediationsdk/utils/OnMediationInitializationListener;->onInitFailed(Ljava/lang/String;)V

    goto :goto_5

    .line 320
    :cond_e
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$800(Lcom/ironsource/mediationsdk/MediationInitializer;Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V

    .line 322
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Mediation availability false reason: No server response"

    invoke-virtual {v0, v1, v3, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 326
    :cond_f
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer$1;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1408(Lcom/ironsource/mediationsdk/MediationInitializer;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 329
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_6
    return-void
.end method
