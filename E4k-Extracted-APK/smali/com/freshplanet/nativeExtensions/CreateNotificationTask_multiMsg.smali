.class public Lcom/freshplanet/nativeExtensions/CreateNotificationTask_multiMsg;
.super Landroid/os/AsyncTask;
.source "CreateNotificationTask_multiMsg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/net/URL;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private _bitmap:Landroid/graphics/Bitmap;

.field private _context:Landroid/content/Context;

.field private _imagecontainer:Ljava/lang/String;

.field private _nm:Landroid/app/NotificationManager;

.field private _notification:Landroid/app/Notification;

.field private _remoteviews:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/net/URL;)Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x0

    .line 52
    :try_start_0
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 54
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 55
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 56
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/freshplanet/nativeExtensions/CreateNotificationTask_multiMsg;->_bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, [Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/freshplanet/nativeExtensions/CreateNotificationTask_multiMsg;->doInBackground([Ljava/net/URL;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 68
    iget-object p1, p0, Lcom/freshplanet/nativeExtensions/CreateNotificationTask_multiMsg;->_remoteviews:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/freshplanet/nativeExtensions/CreateNotificationTask_multiMsg;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    iget-object v2, p0, Lcom/freshplanet/nativeExtensions/CreateNotificationTask_multiMsg;->_imagecontainer:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/freshplanet/nativeExtensions/CreateNotificationTask_multiMsg;->_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 70
    iget-object p1, p0, Lcom/freshplanet/nativeExtensions/CreateNotificationTask_multiMsg;->_notification:Landroid/app/Notification;

    iget-object v0, p0, Lcom/freshplanet/nativeExtensions/CreateNotificationTask_multiMsg;->_remoteviews:Landroid/widget/RemoteViews;

    iput-object v0, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 71
    iget-object p1, p0, Lcom/freshplanet/nativeExtensions/CreateNotificationTask_multiMsg;->_nm:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/freshplanet/nativeExtensions/CreateNotificationTask_multiMsg;->_notification:Landroid/app/Notification;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 20
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/freshplanet/nativeExtensions/CreateNotificationTask_multiMsg;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method public setParams(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Landroid/app/Notification;Landroid/app/NotificationManager;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/freshplanet/nativeExtensions/CreateNotificationTask_multiMsg;->_context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/freshplanet/nativeExtensions/CreateNotificationTask_multiMsg;->_remoteviews:Landroid/widget/RemoteViews;

    .line 42
    iput-object p3, p0, Lcom/freshplanet/nativeExtensions/CreateNotificationTask_multiMsg;->_imagecontainer:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/freshplanet/nativeExtensions/CreateNotificationTask_multiMsg;->_notification:Landroid/app/Notification;

    .line 44
    iput-object p5, p0, Lcom/freshplanet/nativeExtensions/CreateNotificationTask_multiMsg;->_nm:Landroid/app/NotificationManager;

    return-void
.end method
