.class Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;
.super Ljava/lang/Object;
.source "MultiMsgNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshplanet/nativeExtensions/MultiMsgNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChatListItem"
.end annotation


# instance fields
.field public contentText:Ljava/lang/String;

.field public contentTitle:Ljava/lang/String;

.field msgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public nbMsgInChat:I

.field public orderInList:I

.field public pictureUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/freshplanet/nativeExtensions/MultiMsgNotification;

.field public timeOfMsg:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/freshplanet/nativeExtensions/MultiMsgNotification;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->this$0:Lcom/freshplanet/nativeExtensions/MultiMsgNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;->msgList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/freshplanet/nativeExtensions/MultiMsgNotification;Lcom/freshplanet/nativeExtensions/MultiMsgNotification$1;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/freshplanet/nativeExtensions/MultiMsgNotification$ChatListItem;-><init>(Lcom/freshplanet/nativeExtensions/MultiMsgNotification;)V

    return-void
.end method
