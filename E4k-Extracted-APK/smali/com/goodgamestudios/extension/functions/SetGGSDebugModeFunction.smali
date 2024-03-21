.class public Lcom/goodgamestudios/extension/functions/SetGGSDebugModeFunction;
.super Ljava/lang/Object;
.source "SetGGSDebugModeFunction.java"

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

    invoke-static {p1}, Lcom/goodgamestudios/extension/util/FreUtils;->getBooleanFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p1

    .line 13
    sput-object p1, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->PRINT_LOG:Ljava/lang/Boolean;

    const/4 p1, 0x0

    return-object p1
.end method
