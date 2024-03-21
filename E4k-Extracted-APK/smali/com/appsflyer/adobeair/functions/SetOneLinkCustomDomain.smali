.class public Lcom/appsflyer/adobeair/functions/SetOneLinkCustomDomain;
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
    .locals 6

    const/4 p1, 0x0

    :try_start_0
    aget-object p2, p2, p1

    check-cast p2, Lcom/adobe/fre/FREArray;

    invoke-virtual {p2}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    int-to-long v1, p1

    invoke-virtual {p2}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    invoke-virtual {p2, v1, v2}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/appsflyer/AppsFlyerLib;->setOneLinkCustomDomain([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
