.class public Lcom/ironsource/adobeair/functions/InitFunction;
.super Ljava/lang/Object;
.source "InitFunction.java"

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
    .locals 1

    .line 17
    :try_start_0
    sput-object p1, Lcom/ironsource/adobeair/AndroidBridge;->extContext:Lcom/adobe/fre/FREContext;

    const/4 v0, 0x0

    .line 19
    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/IronSource;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/ironsource/adobeair/BannerHelper;->getInstance()Lcom/ironsource/adobeair/BannerHelper;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/ironsource/adobeair/BannerHelper;->mIsInitBannerCalled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
