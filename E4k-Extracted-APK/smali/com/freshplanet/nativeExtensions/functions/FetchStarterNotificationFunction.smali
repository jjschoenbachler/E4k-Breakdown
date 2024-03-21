.class public Lcom/freshplanet/nativeExtensions/functions/FetchStarterNotificationFunction;
.super Ljava/lang/Object;
.source "FetchStarterNotificationFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static TAG:Ljava/lang/String; = "NotifActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    .line 18
    sget-object p2, Lcom/freshplanet/nativeExtensions/NotificationActivity;->isComingFromNotification:Ljava/lang/Boolean;

    if-nez p2, :cond_0

    .line 19
    sget-object p2, Lcom/freshplanet/nativeExtensions/functions/FetchStarterNotificationFunction;->TAG:Ljava/lang/String;

    const-string v0, "fetchStarterNotificationFunction called before NotificationActivity was created - not supposed to happen"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 20
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    sput-object p2, Lcom/freshplanet/nativeExtensions/NotificationActivity;->isComingFromNotification:Ljava/lang/Boolean;

    .line 22
    :cond_0
    sget-object p2, Lcom/freshplanet/nativeExtensions/NotificationActivity;->isComingFromNotification:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 24
    sget-object p2, Lcom/freshplanet/nativeExtensions/NotificationActivity;->notifParams:Ljava/lang/String;

    if-nez p2, :cond_1

    const-string p2, ""

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "coming from notif :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshplanet/nativeExtensions/Extension;->log(Ljava/lang/String;)V

    const-string v0, "APP_STARTING_FROM_NOTIFICATION"

    .line 28
    invoke-virtual {p1, v0, p2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "not coming from notif"

    .line 31
    invoke-static {p1}, Lcom/freshplanet/nativeExtensions/Extension;->log(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
