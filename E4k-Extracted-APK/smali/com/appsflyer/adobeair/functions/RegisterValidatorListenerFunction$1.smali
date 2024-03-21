.class Lcom/appsflyer/adobeair/functions/RegisterValidatorListenerFunction$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/adobeair/functions/RegisterValidatorListenerFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/adobeair/functions/RegisterValidatorListenerFunction;

.field final synthetic val$freContext:Lcom/adobe/fre/FREContext;


# direct methods
.method constructor <init>(Lcom/appsflyer/adobeair/functions/RegisterValidatorListenerFunction;Lcom/adobe/fre/FREContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appsflyer/adobeair/functions/RegisterValidatorListenerFunction$1;->this$0:Lcom/appsflyer/adobeair/functions/RegisterValidatorListenerFunction;

    iput-object p2, p0, Lcom/appsflyer/adobeair/functions/RegisterValidatorListenerFunction$1;->val$freContext:Lcom/adobe/fre/FREContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValidateInApp()V
    .locals 3

    const-string v0, "AppsFlyer"

    const-string v1, "Purchase validated successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appsflyer/adobeair/functions/RegisterValidatorListenerFunction$1;->val$freContext:Lcom/adobe/fre/FREContext;

    const-string v1, "validateInApp"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onValidateInAppFailure(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AppsFlyer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onValidateInAppFailure called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appsflyer/adobeair/functions/RegisterValidatorListenerFunction$1;->val$freContext:Lcom/adobe/fre/FREContext;

    const-string v1, "validateInAppFailure"

    invoke-virtual {v0, v1, p1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
