.class public Lcom/goodgamestudios/extension/functions/GetReferrerFunction;
.super Ljava/lang/Object;
.source "GetReferrerFunction.java"

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
    .locals 0

    .line 18
    :try_start_0
    sget-object p1, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->referrer:Ljava/lang/String;

    invoke-static {p1}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p1
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
