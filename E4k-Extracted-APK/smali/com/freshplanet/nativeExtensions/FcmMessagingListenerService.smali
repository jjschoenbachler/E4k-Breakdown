.class public Lcom/freshplanet/nativeExtensions/FcmMessagingListenerService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "FcmMessagingListenerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 2

    .line 14
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getFrom()Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p1

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lcom/freshplanet/nativeExtensions/FcmMessagingListenerService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshplanet/nativeExtensions/Extension;->isAppInForeground(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/freshplanet/nativeExtensions/FcmMessagingListenerService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshplanet/nativeExtensions/CreateC2DMNotificationTask;->createNotification(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    sget-object v0, Lcom/freshplanet/nativeExtensions/Extension;->TAG:Ljava/lang/String;

    const-string v1, "error creating notification"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
