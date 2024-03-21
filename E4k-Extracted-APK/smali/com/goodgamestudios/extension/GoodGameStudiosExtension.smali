.class public Lcom/goodgamestudios/extension/GoodGameStudiosExtension;
.super Ljava/lang/Object;
.source "GoodGameStudiosExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field public static PRINT_LOG:Ljava/lang/Boolean;

.field public static TAG:Ljava/lang/String;

.field public static context:Lcom/adobe/fre/FREContext;

.field public static referrer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->PRINT_LOG:Ljava/lang/Boolean;

    const-string v0, "GoodGameStudiosExtension"

    .line 10
    sput-object v0, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->TAG:Ljava/lang/String;

    const-string v0, ""

    .line 12
    sput-object v0, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->referrer:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    .line 30
    sget-object v0, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->PRINT_LOG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 0

    const-string p1, "create context"

    .line 16
    invoke-static {p1}, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->log(Ljava/lang/String;)V

    .line 17
    new-instance p1, Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;

    invoke-direct {p1}, Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;-><init>()V

    sput-object p1, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->context:Lcom/adobe/fre/FREContext;

    return-object p1
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->context:Lcom/adobe/fre/FREContext;

    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method
