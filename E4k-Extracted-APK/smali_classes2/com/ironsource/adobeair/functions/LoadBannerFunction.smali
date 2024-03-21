.class public Lcom/ironsource/adobeair/functions/LoadBannerFunction;
.super Ljava/lang/Object;
.source "LoadBannerFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7

    const/4 v0, 0x0

    .line 17
    :try_start_0
    sput-object p1, Lcom/ironsource/adobeair/AndroidBridge;->extContext:Lcom/adobe/fre/FREContext;

    const/4 p1, 0x0

    .line 19
    aget-object p1, p2, p1

    invoke-virtual {p1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    const/4 p1, 0x1

    .line 20
    aget-object p1, p2, p1

    invoke-virtual {p1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v3

    const/4 p1, 0x2

    .line 21
    aget-object p1, p2, p1

    invoke-virtual {p1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v4

    const/4 p1, 0x3

    .line 22
    aget-object p1, p2, p1

    invoke-virtual {p1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v5

    const/4 p1, 0x4

    .line 24
    aget-object v1, p2, p1

    if-eqz v1, :cond_0

    .line 25
    aget-object p1, p2, p1

    invoke-virtual {p1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    goto :goto_0

    :cond_0
    move-object v6, v0

    .line 27
    :goto_0
    invoke-static {}, Lcom/ironsource/adobeair/BannerHelper;->getInstance()Lcom/ironsource/adobeair/BannerHelper;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Lcom/ironsource/adobeair/BannerHelper;->loadBanner(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v0
.end method
