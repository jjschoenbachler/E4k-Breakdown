.class public Lcom/ironsource/sdk/fileSystem/StorageConfigurations;
.super Ljava/lang/Object;
.source "StorageConfigurations.java"


# instance fields
.field private mConfig:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/ironsource/sdk/fileSystem/StorageConfigurations;->mConfig:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public shouldDeleteCacheDir()Z
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/ironsource/sdk/fileSystem/StorageConfigurations;->mConfig:Lorg/json/JSONObject;

    const-string v1, "deleteCacheDir"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public shouldDeleteFilesDir()Z
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/ironsource/sdk/fileSystem/StorageConfigurations;->mConfig:Lorg/json/JSONObject;

    const-string v1, "deleteFilesDir"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public shouldUseDeviceCacheDir()Z
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/ironsource/sdk/fileSystem/StorageConfigurations;->mConfig:Lorg/json/JSONObject;

    const-string v1, "useCacheDir"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
