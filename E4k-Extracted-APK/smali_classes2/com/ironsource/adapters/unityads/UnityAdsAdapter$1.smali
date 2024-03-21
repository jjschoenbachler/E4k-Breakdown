.class Lcom/ironsource/adapters/unityads/UnityAdsAdapter$1;
.super Ljava/lang/Object;
.source "UnityAdsAdapter.java"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->getAsyncToken(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/unityads/UnityAdsAdapter;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/unityads/UnityAdsAdapter;)V
    .locals 0

    .line 1015
    iput-object p1, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$1;->this$0:Lcom/ironsource/adapters/unityads/UnityAdsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnityAdsTokenReady(Ljava/lang/String;)V
    .locals 3

    .line 1018
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "async token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 1019
    invoke-static {p1}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->access$002(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
