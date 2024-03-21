.class public Lcom/ironsource/mediationsdk/utils/TokenSettings;
.super Ljava/lang/Object;
.source "TokenSettings.java"


# instance fields
.field private compressToken:Z

.field private networkSettings:Lcom/ironsource/mediationsdk/model/NetworkSettings;

.field private oneToken:Z

.field private tokenGenericParams:Lorg/json/JSONObject;

.field private tokenOptInKeyParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/TokenSettings;->tokenOptInKeyParams:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/TokenSettings;->tokenGenericParams:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/TokenSettings;->oneToken:Z

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/TokenSettings;->compressToken:Z

    return-void
.end method

.method public static getDefault()Lcom/ironsource/mediationsdk/utils/TokenSettings;
    .locals 1

    .line 69
    new-instance v0, Lcom/ironsource/mediationsdk/utils/TokenSettings;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/utils/TokenSettings;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addOptInKeyParam(Ljava/lang/String;)V
    .locals 1

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/TokenSettings;->tokenOptInKeyParams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getGenericParams()Lorg/json/JSONObject;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/TokenSettings;->tokenGenericParams:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getNetworkSettings()Lcom/ironsource/mediationsdk/model/NetworkSettings;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/TokenSettings;->networkSettings:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    return-object v0
.end method

.method public getOptInKeyParamsTokenArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/TokenSettings;->tokenOptInKeyParams:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isCompressToken()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/TokenSettings;->compressToken:Z

    return v0
.end method

.method public isOneToken()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/TokenSettings;->oneToken:Z

    return v0
.end method

.method public setCompressToken(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/utils/TokenSettings;->compressToken:Z

    return-void
.end method

.method public setGenericParams(Lorg/json/JSONObject;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/TokenSettings;->tokenGenericParams:Lorg/json/JSONObject;

    return-void
.end method

.method public setNetworkSettings(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/TokenSettings;->networkSettings:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    return-void
.end method

.method public setOneToken(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/utils/TokenSettings;->oneToken:Z

    return-void
.end method
