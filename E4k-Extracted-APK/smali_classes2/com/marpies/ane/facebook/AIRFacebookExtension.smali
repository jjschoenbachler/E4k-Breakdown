.class public Lcom/marpies/ane/facebook/AIRFacebookExtension;
.super Ljava/lang/Object;
.source "AIRFacebookExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 0

    .line 30
    new-instance p1, Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;

    invoke-direct {p1}, Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;-><init>()V

    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/AIR;->setContext(Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;)V

    .line 31
    invoke-static {}, Lcom/marpies/ane/facebook/utils/AIR;->getContext()Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/AIR;->setContext(Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;)V

    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method
