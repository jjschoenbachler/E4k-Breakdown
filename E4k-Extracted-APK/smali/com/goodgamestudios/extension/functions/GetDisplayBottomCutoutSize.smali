.class public Lcom/goodgamestudios/extension/functions/GetDisplayBottomCutoutSize;
.super Ljava/lang/Object;
.source "GetDisplayBottomCutoutSize.java"

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

    const/4 p1, 0x0

    .line 20
    :try_start_0
    invoke-static {p1}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->log(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method