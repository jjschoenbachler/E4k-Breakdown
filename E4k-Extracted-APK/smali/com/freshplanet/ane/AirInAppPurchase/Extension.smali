.class public Lcom/freshplanet/ane/AirInAppPurchase/Extension;
.super Ljava/lang/Object;
.source "Extension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# instance fields
.field private _extensionContext:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/Extension;->_extensionContext:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/Extension;->_extensionContext:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    if-nez p1, :cond_0

    .line 40
    new-instance p1, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    invoke-direct {p1}, Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;-><init>()V

    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/Extension;->_extensionContext:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/Extension;->_extensionContext:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    return-object p1
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/freshplanet/ane/AirInAppPurchase/Extension;->_extensionContext:Lcom/freshplanet/ane/AirInAppPurchase/ExtensionContext;

    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method
