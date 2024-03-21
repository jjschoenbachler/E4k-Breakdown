.class public Lcom/appsflyer/adobeair/functions/Start;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3

    check-cast p1, Lcom/appsflyer/adobeair/AppsFlyerContext;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move-object p2, v1

    :goto_0
    if-nez p2, :cond_0

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appsflyer/adobeair/AppsFlyerContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appsflyer/adobeair/AppsFlyerContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1, p2}, Lcom/appsflyer/adobeair/AppsFlyerContext;->setDevKey(Ljava/lang/String;)V

    return-object v1
.end method
