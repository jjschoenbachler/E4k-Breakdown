.class Lcom/appsflyer/adobeair/functions/AppsFlyerInit$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appsflyer/AppsFlyerConversionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/adobeair/functions/AppsFlyerInit;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/adobeair/functions/AppsFlyerInit;

.field final synthetic val$cnt:Lcom/appsflyer/adobeair/AppsFlyerContext;


# direct methods
.method constructor <init>(Lcom/appsflyer/adobeair/functions/AppsFlyerInit;Lcom/appsflyer/adobeair/AppsFlyerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appsflyer/adobeair/functions/AppsFlyerInit$1;->this$0:Lcom/appsflyer/adobeair/functions/AppsFlyerInit;

    iput-object p2, p0, Lcom/appsflyer/adobeair/functions/AppsFlyerInit$1;->val$cnt:Lcom/appsflyer/adobeair/AppsFlyerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppOpenAttribution(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AppsFlyer"

    const-string v1, "AppsFlyerConversionListener onAppOpenAttribution"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appsflyer/adobeair/functions/AppsFlyerInit$1;->val$cnt:Lcom/appsflyer/adobeair/AppsFlyerContext;

    invoke-static {p1}, Lcom/appsflyer/adobeair/Utils;->mapToJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/appsflyer/adobeair/AppsFlyerContext;->setLastConversionData(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/appsflyer/adobeair/functions/AppsFlyerInit$1;->val$cnt:Lcom/appsflyer/adobeair/AppsFlyerContext;

    const-string v0, "appOpenAttribution"

    iget-object v1, p0, Lcom/appsflyer/adobeair/functions/AppsFlyerInit$1;->val$cnt:Lcom/appsflyer/adobeair/AppsFlyerContext;

    invoke-virtual {v1}, Lcom/appsflyer/adobeair/AppsFlyerContext;->getLastConversionData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/appsflyer/adobeair/AppsFlyerContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAttributionFailure(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AppsFlyer"

    const-string v1, "AppsFlyerConversionListener onAttributionFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appsflyer/adobeair/functions/AppsFlyerInit$1;->val$cnt:Lcom/appsflyer/adobeair/AppsFlyerContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error retrieving conversion data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/appsflyer/adobeair/AppsFlyerContext;->setLastConversionData(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/appsflyer/adobeair/functions/AppsFlyerInit$1;->val$cnt:Lcom/appsflyer/adobeair/AppsFlyerContext;

    const-string v0, "attributionFailure"

    iget-object v1, p0, Lcom/appsflyer/adobeair/functions/AppsFlyerInit$1;->val$cnt:Lcom/appsflyer/adobeair/AppsFlyerContext;

    invoke-virtual {v1}, Lcom/appsflyer/adobeair/AppsFlyerContext;->getLastConversionData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/appsflyer/adobeair/AppsFlyerContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConversionDataFail(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AppsFlyer: "

    const-string v1, "AppsFlyerConversionListener errorMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appsflyer/adobeair/functions/AppsFlyerInit$1;->val$cnt:Lcom/appsflyer/adobeair/AppsFlyerContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error retrieving conversion data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/appsflyer/adobeair/AppsFlyerContext;->setLastConversionData(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/appsflyer/adobeair/functions/AppsFlyerInit$1;->val$cnt:Lcom/appsflyer/adobeair/AppsFlyerContext;

    const-string v0, "installConversionFailure"

    iget-object v1, p0, Lcom/appsflyer/adobeair/functions/AppsFlyerInit$1;->val$cnt:Lcom/appsflyer/adobeair/AppsFlyerContext;

    invoke-virtual {v1}, Lcom/appsflyer/adobeair/AppsFlyerContext;->getLastConversionData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/appsflyer/adobeair/AppsFlyerContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConversionDataSuccess(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AppsFlyer"

    const-string v1, "AppsFlyerConversionListener onInstallConversionDataLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appsflyer/adobeair/functions/AppsFlyerInit$1;->val$cnt:Lcom/appsflyer/adobeair/AppsFlyerContext;

    invoke-static {p1}, Lcom/appsflyer/adobeair/Utils;->mapToJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/appsflyer/adobeair/AppsFlyerContext;->setLastConversionData(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/appsflyer/adobeair/functions/AppsFlyerInit$1;->val$cnt:Lcom/appsflyer/adobeair/AppsFlyerContext;

    const-string v0, "installConversionDataLoaded"

    iget-object v1, p0, Lcom/appsflyer/adobeair/functions/AppsFlyerInit$1;->val$cnt:Lcom/appsflyer/adobeair/AppsFlyerContext;

    invoke-virtual {v1}, Lcom/appsflyer/adobeair/AppsFlyerContext;->getLastConversionData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/appsflyer/adobeair/AppsFlyerContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
