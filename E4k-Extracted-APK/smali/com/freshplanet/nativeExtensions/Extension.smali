.class public Lcom/freshplanet/nativeExtensions/Extension;
.super Ljava/lang/Object;
.source "Extension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field public static TAG:Ljava/lang/String; = "AirPushNotification"

.field public static context:Lcom/adobe/fre/FREContext;

.field private static isDebugEnabled:Z

.field public static isInForeground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParametersFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    .line 72
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 73
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    .line 76
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 77
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 78
    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 79
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 83
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 86
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isAppInForeground(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "activity"

    .line 90
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 91
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 93
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 94
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-static {p0, v0}, Lcom/freshplanet/nativeExtensions/Extension;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 62
    sget-boolean v0, Lcom/freshplanet/nativeExtensions/Extension;->isDebugEnabled:Z

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/freshplanet/nativeExtensions/Extension;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    sget-object p1, Lcom/freshplanet/nativeExtensions/Extension;->context:Lcom/adobe/fre/FREContext;

    if-eqz p1, :cond_0

    .line 66
    sget-object p1, Lcom/freshplanet/nativeExtensions/Extension;->context:Lcom/adobe/fre/FREContext;

    const-string v0, "LOGGING"

    invoke-virtual {p1, v0, p0}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setIsDebugEnabled(Z)V
    .locals 2

    .line 102
    sput-boolean p0, Lcom/freshplanet/nativeExtensions/Extension;->isDebugEnabled:Z

    .line 103
    sget-object p0, Lcom/freshplanet/nativeExtensions/Extension;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDebugEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/freshplanet/nativeExtensions/Extension;->isDebugEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 0

    .line 45
    new-instance p1, Lcom/freshplanet/nativeExtensions/ExtensionContext;

    invoke-direct {p1}, Lcom/freshplanet/nativeExtensions/ExtensionContext;-><init>()V

    sput-object p1, Lcom/freshplanet/nativeExtensions/Extension;->context:Lcom/adobe/fre/FREContext;

    const/4 p1, 0x0

    .line 46
    invoke-static {p1}, Lcom/freshplanet/nativeExtensions/Extension;->setIsDebugEnabled(Z)V

    .line 47
    sget-object p1, Lcom/freshplanet/nativeExtensions/Extension;->context:Lcom/adobe/fre/FREContext;

    return-object p1
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    sput-object v0, Lcom/freshplanet/nativeExtensions/Extension;->context:Lcom/adobe/fre/FREContext;

    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method
