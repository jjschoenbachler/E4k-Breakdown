.class public Lcom/adobe/air/AndroidGcmIntentService;
.super Landroid/app/IntentService;
.source "AndroidGcmIntentService.java"


# static fields
.field private static final CLOUDFRONT:Ljava/lang/String; = "cloudfront"

.field private static final GAMESPACE:Ljava/lang/String; = "gamespace"

.field private static final GAME_URL:Ljava/lang/String; = "gameUrl"

.field private static final MSG_ID:Ljava/lang/String; = "msgId"

.field private static final PROPERTY_NOTIFICATION_TIMESTAMP:Ljava/lang/String; = "notficationTimestamp"

.field private static final TAG:Ljava/lang/String; = "AndroidGcmIntentService"

.field private static sUniqueId:I


# instance fields
.field private mGameDesc:Ljava/lang/String;

.field private mGameIconUrl:Ljava/lang/String;

.field private mGameTitle:Ljava/lang/String;

.field private mGameUrl:Ljava/lang/String;

.field private mGameUrlPrefix:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mMsgId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "AndroidGcmIntentService"

    .line 49
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameTitle:Ljava/lang/String;

    .line 227
    iput-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameDesc:Ljava/lang/String;

    .line 228
    iput-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameIconUrl:Ljava/lang/String;

    .line 229
    iput-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameUrl:Ljava/lang/String;

    .line 230
    iput-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameUrlPrefix:Ljava/lang/String;

    .line 231
    iput-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mMsgId:Ljava/lang/String;

    .line 232
    iput-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mHost:Ljava/lang/String;

    return-void
.end method

.method private getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 211
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    .line 213
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 214
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 215
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 216
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleNotification(Ljava/lang/String;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/adobe/air/AndroidGcmIntentService;->isNotificationValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "gameTitle"

    .line 103
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameTitle:Ljava/lang/String;

    const-string p1, "gameDesc"

    .line 106
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameDesc:Ljava/lang/String;

    const-string p1, "gameIconUrl"

    .line 109
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameIconUrl:Ljava/lang/String;

    const-string p1, "gameUrl"

    .line 112
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameUrl:Ljava/lang/String;

    const-string p1, "gameUrlPrefix"

    .line 115
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameUrlPrefix:Ljava/lang/String;

    const-string p1, "msgId"

    .line 118
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mMsgId:Ljava/lang/String;

    .line 121
    iget-object p1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameTitle:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameDesc:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameIconUrl:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameUrl:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameUrlPrefix:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mMsgId:Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_1

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameUrlPrefix:Ljava/lang/String;

    const-string v0, "gamespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "http://gamespace.adobe.com"

    .line 129
    iput-object p1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mHost:Ljava/lang/String;

    goto :goto_0

    .line 131
    :cond_2
    iget-object p1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameUrlPrefix:Ljava/lang/String;

    const-string v0, "cloudfront"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "https://dh8vjmvwgc27o.cloudfront.net"

    .line 133
    iput-object p1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mHost:Ljava/lang/String;

    .line 138
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameUrl:Ljava/lang/String;

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameIconUrl:Ljava/lang/String;

    .line 143
    invoke-direct {p0}, Lcom/adobe/air/AndroidGcmIntentService;->sendNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    :catch_0
    :goto_2
    return-void
.end method

.method private isNotificationValid()Z
    .locals 8

    .line 189
    invoke-virtual {p0}, Lcom/adobe/air/AndroidGcmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "notficationTimestamp"

    const-wide/high16 v2, -0x8000000000000000L

    .line 190
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    sub-long v1, v6, v4

    .line 195
    sget-wide v3, Lcom/adobe/air/AdobeAIRMainActivity;->RATE_LIMIT:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 199
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notficationTimestamp"

    .line 200
    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    return v0
.end method

.method private sendNotification()V
    .locals 4

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/air/AdobeAIRMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "gameUrl"

    .line 157
    iget-object v2, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "msgId"

    .line 158
    iget-object v2, p0, Lcom/adobe/air/AndroidGcmIntentService;->mMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    .line 159
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 160
    sget v1, Lcom/adobe/air/AndroidGcmIntentService;->sUniqueId:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/adobe/air/AndroidGcmIntentService;->sUniqueId:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p0, v1, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 165
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    sget v3, Lcom/adobe/air/R$drawable;->icon:I

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 167
    iget-object v3, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 168
    iget-object v3, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameDesc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 169
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 170
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 174
    iget-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameIconUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidGcmIntentService;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_0
    const-string v0, "notification"

    .line 180
    invoke-virtual {p0, v0}, Lcom/adobe/air/AndroidGcmIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 181
    sget v2, Lcom/adobe/air/AndroidGcmIntentService;->sUniqueId:I

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, ""

    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "message"

    .line 61
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "message"

    .line 63
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v1

    .line 73
    invoke-virtual {v1, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gcm"

    .line 75
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidGcmIntentService;->handleNotification(Ljava/lang/String;)V

    .line 86
    :cond_1
    invoke-static {p1}, Lcom/adobe/air/AndroidGcmBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    return-void
.end method
