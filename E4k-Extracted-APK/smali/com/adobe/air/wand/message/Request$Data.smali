.class public Lcom/adobe/air/wand/message/Request$Data;
.super Lcom/adobe/air/wand/message/Message$Data;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/wand/message/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field mArguments:Lcom/adobe/air/wand/message/MessageDataArray;


# direct methods
.method public constructor <init>(Lcom/adobe/air/wand/message/MessageDataArray;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/adobe/air/wand/message/Message$Data;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/adobe/air/wand/message/Request$Data;->mArguments:Lcom/adobe/air/wand/message/MessageDataArray;

    .line 52
    invoke-virtual {p0, p1}, Lcom/adobe/air/wand/message/Request$Data;->setArguments(Lcom/adobe/air/wand/message/MessageDataArray;)V

    return-void
.end method


# virtual methods
.method public getArguments()Lcom/adobe/air/wand/message/MessageDataArray;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/adobe/air/wand/message/Request$Data;->mArguments:Lcom/adobe/air/wand/message/MessageDataArray;

    return-object v0
.end method

.method public setArguments(Lcom/adobe/air/wand/message/MessageDataArray;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/adobe/air/wand/message/Request$Data;->mArguments:Lcom/adobe/air/wand/message/MessageDataArray;

    return-void
.end method
