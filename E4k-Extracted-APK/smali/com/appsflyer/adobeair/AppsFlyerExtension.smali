.class public Lcom/appsflyer/adobeair/AppsFlyerExtension;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AppsFyer"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 0

    new-instance p1, Lcom/appsflyer/adobeair/AppsFlyerContext;

    invoke-direct {p1}, Lcom/appsflyer/adobeair/AppsFlyerContext;-><init>()V

    return-object p1
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public initialize()V
    .locals 2

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    const-string v1, "adobe_air"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->setExtension(Ljava/lang/String;)V

    return-void
.end method
