.class public Lcom/freshplanet/nativeExtensions/functions/EnableDebugFunction;
.super Ljava/lang/Object;
.source "EnableDebugFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 0

    const/4 p1, 0x0

    .line 12
    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/freshplanet/nativeExtensions/FREUtils;->getBooleanFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 13
    invoke-static {p1}, Lcom/freshplanet/nativeExtensions/Extension;->setIsDebugEnabled(Z)V

    const/4 p1, 0x0

    return-object p1
.end method
