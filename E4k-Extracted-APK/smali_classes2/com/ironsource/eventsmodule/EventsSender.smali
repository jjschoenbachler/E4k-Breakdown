.class public Lcom/ironsource/eventsmodule/EventsSender;
.super Ljava/lang/Object;
.source "EventsSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final APPLICATION_JSON:Ljava/lang/String; = "application/json"

.field private static final CONTENT_TYPE_FIELD:Ljava/lang/String; = "Content-Type"


# instance fields
.field combinedEventsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;"
        }
    .end annotation
.end field

.field dataToSend:Ljava/lang/String;

.field private extraData:Ljava/util/ArrayList;

.field private mResultListener:Lcom/ironsource/eventsmodule/IEventsSenderResultListener;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/eventsmodule/IEventsSenderResultListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/eventsmodule/IEventsSenderResultListener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/ironsource/eventsmodule/EventsSender;->mResultListener:Lcom/ironsource/eventsmodule/IEventsSenderResultListener;

    .line 32
    iput-object p2, p0, Lcom/ironsource/eventsmodule/EventsSender;->dataToSend:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/ironsource/eventsmodule/EventsSender;->url:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/ironsource/eventsmodule/EventsSender;->combinedEventsList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 42
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    new-instance v2, Landroid/util/Pair;

    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v2, p0, Lcom/ironsource/eventsmodule/EventsSender;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/eventsmodule/EventsSender;->dataToSend:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/ironsource/network/ISHttpService;->sendPOSTRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/network/Response;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 48
    iget v2, v1, Lcom/ironsource/network/Response;->responseCode:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    iget v1, v1, Lcom/ironsource/network/Response;->responseCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0xcc

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 53
    :catch_0
    :cond_1
    iget-object v1, p0, Lcom/ironsource/eventsmodule/EventsSender;->mResultListener:Lcom/ironsource/eventsmodule/IEventsSenderResultListener;

    if-eqz v1, :cond_2

    .line 54
    iget-object v1, p0, Lcom/ironsource/eventsmodule/EventsSender;->mResultListener:Lcom/ironsource/eventsmodule/IEventsSenderResultListener;

    iget-object v2, p0, Lcom/ironsource/eventsmodule/EventsSender;->extraData:Ljava/util/ArrayList;

    invoke-interface {v1, v2, v0}, Lcom/ironsource/eventsmodule/IEventsSenderResultListener;->onEventsSenderResult(Ljava/util/ArrayList;Z)V

    :cond_2
    return-void
.end method
