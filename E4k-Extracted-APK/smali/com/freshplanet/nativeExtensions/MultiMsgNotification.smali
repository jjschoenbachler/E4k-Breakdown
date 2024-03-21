.class public Lcom/freshplanet/nativeExtensions/MultiMsgNotification;
.super Ljava/lang/Object;
.source "MultiMsgNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;
    }
.end annotation


# static fields
.field private static _instance:Lcom/freshplanet/nativeExtensions/MultiMsgNotification;


# instance fields
.field private TAG:Ljava/lang/String;

.field private _bigContentView:Landroid/widget/RemoteViews;

.field private _chatList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;",
            ">;"
        }
    .end annotation
.end field

.field private _contentView:Landroid/widget/RemoteViews;

.field private _mContext:Landroid/content/Context;

.field private _nm:Landroid/app/NotificationManager;

.field private _notification:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MultiMsgNotification"

    .line 39
    iput-object v0, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->TAG:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_mContext:Landroid/content/Context;

    .line 76
    iget-object p1, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_mContext:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_nm:Landroid/app/NotificationManager;

    .line 77
    invoke-virtual {p0}, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->initialize()V

    return-void
.end method

.method public static Instance(Landroid/content/Context;)Lcom/freshplanet/nativeExtensions/MultiMsgNotification;
    .locals 1

    .line 69
    sget-object v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_instance:Lcom/freshplanet/nativeExtensions/MultiMsgNotification;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;

    invoke-direct {v0, p0}, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_instance:Lcom/freshplanet/nativeExtensions/MultiMsgNotification;

    .line 71
    :cond_0
    sget-object p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_instance:Lcom/freshplanet/nativeExtensions/MultiMsgNotification;

    return-object p0
.end method

.method private addToChatList(Landroid/content/Intent;)V
    .locals 7

    .line 107
    new-instance v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;-><init>(Lcom/freshplanet/nativeExtensions/MultiMsgNotification;Lcom/freshplanet/nativeExtensions/MultiMsgNotification$1;)V

    const-string v1, "group"

    .line 109
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "group_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "group"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 112
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duo_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sender"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    :goto_0
    iget-object v2, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_chatList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 116
    iget-object v0, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_chatList:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;

    const-string v2, "contentText"

    .line 117
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->contentText:Ljava/lang/String;

    const-string v2, "contentTitle"

    .line 118
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->contentTitle:Ljava/lang/String;

    .line 119
    iget v2, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->nbMsgInChat:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->nbMsgInChat:I

    .line 120
    invoke-direct {p0, p1}, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->getPictureUrl(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->pictureUrl:Ljava/lang/String;

    .line 121
    invoke-direct {p0, p1}, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->getTimeFromMessage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->timeOfMsg:Ljava/lang/String;

    .line 122
    iget-object p1, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->msgList:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->contentText:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object p1, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_chatList:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 126
    iget-object v4, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_chatList:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;

    .line 127
    iget v5, v4, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->orderInList:I

    iget v6, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->orderInList:I

    if-ge v5, v6, :cond_1

    .line 128
    iget v5, v4, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->orderInList:I

    add-int/2addr v5, v3

    iput v5, v4, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->orderInList:I

    .line 129
    :cond_1
    iget-object v5, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_chatList:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v2, "contentText"

    .line 132
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->contentText:Ljava/lang/String;

    const-string v2, "contentTitle"

    .line 133
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->contentTitle:Ljava/lang/String;

    .line 134
    iput v3, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->nbMsgInChat:I

    .line 135
    invoke-direct {p0, p1}, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->getPictureUrl(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->pictureUrl:Ljava/lang/String;

    .line 136
    invoke-direct {p0, p1}, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->getTimeFromMessage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->timeOfMsg:Ljava/lang/String;

    .line 137
    iget-object p1, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->msgList:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->contentText:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object p1, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_chatList:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    iget-object v4, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_chatList:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;

    .line 142
    iget v5, v4, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->orderInList:I

    add-int/2addr v5, v3

    iput v5, v4, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->orderInList:I

    .line 143
    iget-object v5, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_chatList:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 147
    :cond_3
    iput v3, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->orderInList:I

    .line 148
    iget-object p1, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_chatList:Ljava/util/Map;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getNbTotalChat()I
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_chatList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method private getNbTotalMsg()I
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_chatList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;

    .line 210
    iget v2, v2, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->nbMsgInChat:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private getPictureUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    const-string v0, "parameters"

    .line 185
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 191
    :try_start_0
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    const-string v1, "pictureUrl"

    .line 193
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pictureUrl"

    .line 194
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_0
    const-string v1, "facebookId"

    .line 195
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://graph.facebook.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "facebookId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/picture?type=normal"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "cannot parse the object"

    .line 201
    invoke-static {p1}, Lcom/freshplanet/nativeExtensions/Extension;->log(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v0
.end method

.method private getTimeFromMessage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    const-string v0, "sentAt"

    .line 153
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sentAt"

    .line 154
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    .line 156
    new-instance p1, Ljava/sql/Timestamp;

    double-to-long v0, v0

    invoke-direct {p1, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    .line 157
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const-string p1, "h:mmaa"

    .line 158
    invoke-static {p1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "h:mmaa"

    .line 160
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method private publishImage(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-eqz p4, :cond_0

    const-string v0, "pictureUrl not null"

    .line 167
    invoke-static {v0}, Lcom/freshplanet/nativeExtensions/Extension;->log(Ljava/lang/String;)V

    .line 168
    new-instance v0, Lcom/freshplanet/nativeExtensions/CreateNotificationTask_multiMsg;

    invoke-direct {v0}, Lcom/freshplanet/nativeExtensions/CreateNotificationTask_multiMsg;-><init>()V

    .line 169
    iget-object v5, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_notification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_nm:Landroid/app/NotificationManager;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/freshplanet/nativeExtensions/CreateNotificationTask_multiMsg;->setParams(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Landroid/app/Notification;Landroid/app/NotificationManager;)V

    .line 172
    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 173
    new-array p2, p2, [Ljava/net/URL;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    invoke-virtual {v0, p2}, Lcom/freshplanet/nativeExtensions/CreateNotificationTask_multiMsg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 176
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    const-string v0, "id"

    invoke-static {p4, v0, p3}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p4, "drawable"

    const-string v0, "icon72"

    invoke-static {p1, p4, v0}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 179
    invoke-virtual {p2, p3, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 5

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_chatList:Ljava/util/Map;

    .line 88
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "layout"

    const-string v4, "bigcontentview"

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_bigContentView:Landroid/widget/RemoteViews;

    .line 90
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "layout"

    const-string v4, "contentview"

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_contentView:Landroid/widget/RemoteViews;

    return-void
.end method

.method public makeBigNotif(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 221
    invoke-direct {v0, v2}, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->addToChatList(Landroid/content/Intent;)V

    const-string v3, "tickerText"

    .line 223
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    const-string v7, "icon72"

    invoke-static {v5, v6, v7}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 225
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x2

    div-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/2addr v7, v6

    const/4 v8, 0x1

    invoke-static {v4, v5, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 229
    new-instance v5, Landroid/content/Intent;

    const-class v7, Lcom/freshplanet/nativeExtensions/NotificationActivity;

    invoke-direct {v5, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "params"

    .line 230
    invoke-static/range {p2 .. p2}, Lcom/freshplanet/nativeExtensions/Extension;->getParametersFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "allclean"

    const-string v7, "true"

    .line 231
    invoke-virtual {v5, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    const/high16 v7, 0xc000000

    .line 232
    invoke-static {v1, v2, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 238
    invoke-direct/range {p0 .. p0}, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->getNbTotalChat()I

    move-result v7

    .line 239
    invoke-direct/range {p0 .. p0}, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->getNbTotalMsg()I

    move-result v9

    .line 241
    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v6

    .line 243
    iget-object v10, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_mContext:Landroid/content/Context;

    const-string v11, "vibrator"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Vibrator;

    const-wide/16 v11, 0x64

    .line 244
    invoke-virtual {v10, v11, v12}, Landroid/os/Vibrator;->vibrate(J)V

    .line 246
    iget-object v10, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_chatList:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    const/4 v11, 0x5

    const v12, -0xffff01

    const/16 v13, 0x1f4

    if-ne v7, v8, :cond_4

    .line 249
    new-instance v7, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;

    const/4 v14, 0x0

    invoke-direct {v7, v0, v14}, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;-><init>(Lcom/freshplanet/nativeExtensions/MultiMsgNotification;Lcom/freshplanet/nativeExtensions/MultiMsgNotification$1;)V

    .line 250
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;

    goto :goto_0

    .line 253
    :cond_0
    iget-object v10, v7, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->contentTitle:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v14, 0x1e

    if-le v10, v14, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v7, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->contentTitle:Ljava/lang/String;

    invoke-virtual {v15, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, v7, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->contentTitle:Ljava/lang/String;

    :goto_1
    if-ne v9, v8, :cond_2

    .line 256
    iget-object v8, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_contentView:Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "id"

    const-string v14, "contentviewtext"

    invoke-static {v9, v10, v14}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    iget-object v10, v7, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->contentText:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 258
    iget-object v8, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_contentView:Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "id"

    const-string v14, "contentviewtitle"

    invoke-static {v9, v10, v14}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 260
    iget-object v2, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_contentView:Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "id"

    const-string v10, "contentviewtime"

    invoke-static {v8, v9, v10}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iget-object v9, v7, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->timeOfMsg:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 262
    iget-object v2, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_contentView:Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "id"

    const-string v10, "contentviewsmalllogo"

    invoke-static {v8, v9, v10}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "drawable"

    const-string v14, "status_icon24"

    invoke-static {v9, v10, v14}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 262
    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 265
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    const-string v8, "com.goodgamestudios.empirefourkingdoms.channel"

    invoke-direct {v2, v1, v8}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, v7, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->contentTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, v7, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->contentText:Ljava/lang/String;

    .line 266
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 267
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 268
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    const-string v8, "status_icon24"

    invoke-static {v3, v4, v8}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 269
    invoke-virtual {v2, v12, v13, v13}, Landroidx/core/app/NotificationCompat$Builder;->setLights(III)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, v11}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 270
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    iput-object v2, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_notification:Landroid/app/Notification;

    .line 272
    iget-object v2, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_contentView:Landroid/widget/RemoteViews;

    const-string v3, "contentviewimage"

    iget-object v4, v7, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->pictureUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->publishImage(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 274
    :cond_2
    iget-object v10, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "id"

    const-string v11, "bigcontentviewtitle"

    invoke-static {v14, v15, v11}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 276
    iget-object v2, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "id"

    const-string v14, "bigcontentviewtime"

    invoke-static {v10, v11, v14}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    iget-object v11, v7, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->timeOfMsg:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 278
    iget-object v2, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "id"

    const-string v14, "bigcontentviewsmalllogo"

    invoke-static {v10, v11, v14}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 279
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string v14, "drawable"

    const-string v15, "status_icon24"

    invoke-static {v11, v14, v15}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 278
    invoke-virtual {v2, v10, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 281
    iget-object v2, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "id"

    const-string v14, "bigcontentviewtext"

    invoke-static {v10, v11, v14}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 282
    iget-object v2, v7, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->msgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v8

    :goto_2
    if-ltz v2, :cond_3

    .line 283
    new-instance v8, Landroid/widget/RemoteViews;

    iget-object v10, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string v14, "layout"

    const-string v15, "inflatelayout"

    invoke-static {v11, v14, v15}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-direct {v8, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 285
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "id"

    const-string v14, "inflateChatName"

    invoke-static {v10, v11, v14}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x8

    invoke-virtual {v8, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 287
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "id"

    const-string v14, "inflateText"

    invoke-static {v10, v11, v14}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    iget-object v11, v7, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->msgList:Ljava/util/ArrayList;

    .line 288
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    .line 287
    invoke-virtual {v8, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 290
    iget-object v10, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string v14, "id"

    const-string v15, "bigcontentviewtext"

    invoke-static {v11, v14, v15}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11, v8}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 293
    :cond_3
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    const-string v8, "com.goodgamestudios.empirefourkingdoms.channel"

    invoke-direct {v2, v1, v8}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, v7, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->contentTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " new messages"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 294
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 295
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 296
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    const-string v8, "status_icon24"

    invoke-static {v3, v4, v8}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 297
    invoke-virtual {v2, v12, v13, v13}, Landroidx/core/app/NotificationCompat$Builder;->setLights(III)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v6, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 298
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    iput-object v2, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_notification:Landroid/app/Notification;

    .line 300
    iget-object v2, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_bigContentView:Landroid/widget/RemoteViews;

    const-string v3, "bigcontentviewimage"

    iget-object v4, v7, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->pictureUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->publishImage(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_4
    if-le v7, v8, :cond_9

    .line 304
    iget-object v11, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "id"

    const-string v12, "bigcontentviewtext"

    invoke-static {v14, v15, v12}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    const/16 v11, 0xa

    .line 306
    new-array v11, v11, [Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;

    .line 307
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;

    .line 308
    iget v14, v12, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->orderInList:I

    aput-object v12, v11, v14

    goto :goto_3

    :cond_5
    const/4 v10, 0x1

    :goto_4
    if-gt v10, v7, :cond_8

    .line 311
    aget-object v12, v11, v10

    iget v12, v12, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->nbMsgInChat:I

    if-ne v12, v8, :cond_7

    .line 312
    new-instance v12, Landroid/widget/RemoteViews;

    iget-object v14, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-string v13, "layout"

    const-string v8, "inflatelayout"

    invoke-static {v15, v13, v8}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-direct {v12, v14, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 314
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v13, "id"

    const-string v14, "inflateChatName"

    invoke-static {v8, v13, v14}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    aget-object v13, v11, v10

    iget-object v13, v13, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->contentTitle:Ljava/lang/String;

    .line 315
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x14

    if-le v13, v14, :cond_6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v11, v10

    iget-object v15, v15, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->contentTitle:Ljava/lang/String;

    invoke-virtual {v15, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "..."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    :cond_6
    aget-object v13, v11, v10

    iget-object v13, v13, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->contentTitle:Ljava/lang/String;

    .line 314
    :goto_5
    invoke-virtual {v12, v8, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 316
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v13, "id"

    const-string v14, "inflateText"

    invoke-static {v8, v13, v14}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    aget-object v13, v11, v10

    iget-object v13, v13, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->msgList:Ljava/util/ArrayList;

    .line 317
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    .line 316
    invoke-virtual {v12, v8, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 319
    iget-object v8, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "id"

    const-string v15, "bigcontentviewtext"

    invoke-static {v13, v14, v15}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v8, v13, v12}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    goto :goto_6

    .line 321
    :cond_7
    new-instance v8, Landroid/widget/RemoteViews;

    iget-object v12, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "layout"

    const-string v15, "inflatelayout"

    invoke-static {v13, v14, v15}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-direct {v8, v12, v13}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 323
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "id"

    const-string v14, "inflateChatName"

    invoke-static {v12, v13, v14}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    aget-object v13, v11, v10

    iget-object v13, v13, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->contentTitle:Ljava/lang/String;

    invoke-virtual {v8, v12, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 325
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "id"

    const-string v14, "inflateText"

    invoke-static {v12, v13, v14}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v11, v10

    iget v14, v14, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->nbMsgInChat:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " messages"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 328
    iget-object v12, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "id"

    const-string v15, "bigcontentviewtext"

    invoke-static {v13, v14, v15}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13, v8}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    :goto_6
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x1

    const/16 v13, 0x1f4

    goto/16 :goto_4

    .line 332
    :cond_8
    iget-object v2, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "id"

    const-string v12, "bigcontentviewtitle"

    invoke-static {v8, v10, v12}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " new HelloPop messages"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 334
    iget-object v2, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "id"

    const-string v12, "bigcontentviewtime"

    invoke-static {v8, v10, v12}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const/4 v10, 0x1

    aget-object v12, v11, v10

    iget-object v10, v12, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->timeOfMsg:Ljava/lang/String;

    invoke-virtual {v2, v8, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 336
    iget-object v2, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "id"

    const-string v12, "bigcontentviewsmalllogo"

    invoke-static {v8, v10, v12}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 337
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v12, "drawable"

    const-string v13, "status_icon24"

    invoke-static {v10, v12, v13}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 336
    invoke-virtual {v2, v8, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 339
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    const-string v8, "com.goodgamestudios.empirefourkingdoms.channel"

    invoke-direct {v2, v1, v8}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " new HelloPop messages"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " new chats"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 340
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 341
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 342
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    const-string v7, "status_icon24"

    invoke-static {v3, v4, v7}, Lcom/distriqt/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const/16 v3, 0x1f4

    const v4, -0xffff01

    .line 343
    invoke-virtual {v2, v4, v3, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLights(III)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v6, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 344
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    iput-object v2, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_notification:Landroid/app/Notification;

    .line 346
    iget-object v2, v0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_bigContentView:Landroid/widget/RemoteViews;

    const-string v3, "bigcontentviewimage"

    const/4 v4, 0x1

    aget-object v4, v11, v4

    iget-object v4, v4, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->pictureUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->publishImage(Landroid/content/Context;Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_7
    return-void
.end method

.method public remove()V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->initialize()V

    .line 82
    iget-object v0, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->_nm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method
