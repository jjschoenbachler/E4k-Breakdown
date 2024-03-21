.class public Lcom/goodgamestudios/ane/firebase/Extension;
.super Ljava/lang/Object;
.source "Extension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field private static TAG:Ljava/lang/String; = "Firebase"

.field public static context:Lcom/adobe/fre/FREContext;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2

    .line 14
    sget-object v0, Lcom/goodgamestudios/ane/firebase/Extension;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    sget-object v0, Lcom/goodgamestudios/ane/firebase/Extension;->context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Lcom/goodgamestudios/ane/firebase/Extension;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "LOGGING"

    invoke-virtual {v0, v1, p0}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 0

    .line 23
    new-instance p1, Lcom/goodgamestudios/ane/firebase/ExtensionContext;

    invoke-direct {p1}, Lcom/goodgamestudios/ane/firebase/ExtensionContext;-><init>()V

    sput-object p1, Lcom/goodgamestudios/ane/firebase/Extension;->context:Lcom/adobe/fre/FREContext;

    return-object p1
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    sput-object v0, Lcom/goodgamestudios/ane/firebase/Extension;->context:Lcom/adobe/fre/FREContext;

    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method
