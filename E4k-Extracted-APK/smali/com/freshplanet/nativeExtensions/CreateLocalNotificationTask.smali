.class public Lcom/freshplanet/nativeExtensions/CreateLocalNotificationTask;
.super Landroid/os/AsyncTask;
.source "CreateLocalNotificationTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private _context:Landroid/content/Context;

.field private _intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/freshplanet/nativeExtensions/CreateLocalNotificationTask;->_context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/freshplanet/nativeExtensions/CreateLocalNotificationTask;->_intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/freshplanet/nativeExtensions/CreateLocalNotificationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 7

    .line 35
    :try_start_0
    iget-object p1, p0, Lcom/freshplanet/nativeExtensions/CreateLocalNotificationTask;->_context:Landroid/content/Context;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freshplanet/nativeExtensions/CreateLocalNotificationTask;->_intent:Landroid/content/Intent;

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/freshplanet/nativeExtensions/CreateLocalNotificationTask;->_intent:Landroid/content/Intent;

    const-string v0, "contentTitle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/freshplanet/nativeExtensions/CreateLocalNotificationTask;->_intent:Landroid/content/Intent;

    const-string v1, "contentText"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/freshplanet/nativeExtensions/CreateLocalNotificationTask;->_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "icon_status"

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 51
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/freshplanet/nativeExtensions/CreateLocalNotificationTask;->_context:Landroid/content/Context;

    const-class v4, Lcom/freshplanet/nativeExtensions/NotificationActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x4000000

    .line 52
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "params"

    .line 54
    iget-object v4, p0, Lcom/freshplanet/nativeExtensions/CreateLocalNotificationTask;->_intent:Landroid/content/Intent;

    invoke-static {v4}, Lcom/freshplanet/nativeExtensions/Extension;->getParametersFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    iget-object v3, p0, Lcom/freshplanet/nativeExtensions/CreateLocalNotificationTask;->_context:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x4c000000    # 3.3554432E7f

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 62
    iget-object v3, p0, Lcom/freshplanet/nativeExtensions/CreateLocalNotificationTask;->_intent:Landroid/content/Intent;

    const-string v4, "tid"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 66
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/freshplanet/nativeExtensions/CreateLocalNotificationTask;->_context:Landroid/content/Context;

    const-string v6, "com.goodgamestudios.empirefourkingdoms.channel"

    invoke-direct {v4, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v4, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 68
    invoke-virtual {v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 70
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 73
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreateLocalNotificationTask notification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshplanet/nativeExtensions/Extension;->log(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/freshplanet/nativeExtensions/CreateLocalNotificationTask;->_context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 79
    invoke-virtual {v0, v3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "Couldn\'t create push notification: _context or _intent was null (CreateC2DMNotificationTask.onPostExecute)"

    .line 36
    invoke-static {p1}, Lcom/freshplanet/nativeExtensions/Extension;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreateLocalNotificationTask Error activating application:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshplanet/nativeExtensions/Extension;->log(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/freshplanet/nativeExtensions/CreateLocalNotificationTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
