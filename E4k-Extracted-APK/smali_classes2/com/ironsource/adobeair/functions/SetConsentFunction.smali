.class public Lcom/ironsource/adobeair/functions/SetConsentFunction;
.super Ljava/lang/Object;
.source "SetConsentFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 0

    const/4 p1, 0x0

    .line 12
    :try_start_0
    aget-object p1, p2, p1

    invoke-virtual {p1}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result p1

    .line 14
    invoke-static {p1}, Lcom/ironsource/mediationsdk/IronSource;->setConsent(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
