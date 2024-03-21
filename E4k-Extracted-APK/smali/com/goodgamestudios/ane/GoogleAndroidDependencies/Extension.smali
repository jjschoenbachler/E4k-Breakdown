.class public Lcom/goodgamestudios/ane/GoogleAndroidDependencies/Extension;
.super Ljava/lang/Object;
.source "Extension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field public static context:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 0

    .line 11
    new-instance p1, Lcom/goodgamestudios/ane/GoogleAndroidDependencies/ExtensionContext;

    invoke-direct {p1}, Lcom/goodgamestudios/ane/GoogleAndroidDependencies/ExtensionContext;-><init>()V

    sput-object p1, Lcom/goodgamestudios/ane/GoogleAndroidDependencies/Extension;->context:Lcom/adobe/fre/FREContext;

    return-object p1
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 15
    sput-object v0, Lcom/goodgamestudios/ane/GoogleAndroidDependencies/Extension;->context:Lcom/adobe/fre/FREContext;

    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method
