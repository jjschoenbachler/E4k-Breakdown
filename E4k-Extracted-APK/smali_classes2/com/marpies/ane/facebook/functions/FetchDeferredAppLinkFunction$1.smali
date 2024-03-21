.class Lcom/marpies/ane/facebook/functions/FetchDeferredAppLinkFunction$1;
.super Ljava/lang/Object;
.source "FetchDeferredAppLinkFunction.java"

# interfaces
.implements Lcom/facebook/applinks/AppLinkData$CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marpies/ane/facebook/functions/FetchDeferredAppLinkFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marpies/ane/facebook/functions/FetchDeferredAppLinkFunction;

.field final synthetic val$listenerID:I


# direct methods
.method constructor <init>(Lcom/marpies/ane/facebook/functions/FetchDeferredAppLinkFunction;I)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/marpies/ane/facebook/functions/FetchDeferredAppLinkFunction$1;->this$0:Lcom/marpies/ane/facebook/functions/FetchDeferredAppLinkFunction;

    iput p2, p0, Lcom/marpies/ane/facebook/functions/FetchDeferredAppLinkFunction$1;->val$listenerID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeferredAppLinkDataFetched(Lcom/facebook/applinks/AppLinkData;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Lcom/facebook/applinks/AppLinkData;->getTargetUri()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deferred app link: Target url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    .line 53
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "targetURL"

    .line 54
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "parameters"

    .line 58
    iget-object v2, p0, Lcom/marpies/ane/facebook/functions/FetchDeferredAppLinkFunction$1;->this$0:Lcom/marpies/ane/facebook/functions/FetchDeferredAppLinkFunction;

    invoke-static {v2, p1}, Lcom/marpies/ane/facebook/functions/FetchDeferredAppLinkFunction;->access$000(Lcom/marpies/ane/facebook/functions/FetchDeferredAppLinkFunction;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p1, "listenerID"

    .line 60
    iget v1, p0, Lcom/marpies/ane/facebook/functions/FetchDeferredAppLinkFunction$1;->val$listenerID:I

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "deferredAppLink"

    .line 61
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, "deferredAppLink"

    .line 64
    iget v0, p0, Lcom/marpies/ane/facebook/functions/FetchDeferredAppLinkFunction$1;->val$listenerID:I

    const-string v1, "Error creating deferred app link data."

    invoke-static {v0, v1}, Lcom/marpies/ane/facebook/utils/StringUtils;->getEventErrorJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "No deferred app link data found."

    .line 69
    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    const-string p1, "deferredAppLink"

    .line 70
    sget-object v0, Lcom/marpies/ane/facebook/utils/StringUtils;->locale:Ljava/util/Locale;

    const-string v1, "{ \"listenerID\": %d, \"notFound\": \"true\" }"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/marpies/ane/facebook/functions/FetchDeferredAppLinkFunction$1;->val$listenerID:I

    .line 71
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {p1, v0}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
