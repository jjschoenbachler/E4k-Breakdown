.class public Lcom/adobe/air/AndroidGcmResultReceiver;
.super Landroid/os/ResultReceiver;
.source "AndroidGcmResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AndroidGcmResultReceiver$Receiver;
    }
.end annotation


# instance fields
.field private mReceiver:Lcom/adobe/air/AndroidGcmResultReceiver$Receiver;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/adobe/air/AndroidGcmResultReceiver;->mReceiver:Lcom/adobe/air/AndroidGcmResultReceiver$Receiver;

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/adobe/air/AndroidGcmResultReceiver;->mReceiver:Lcom/adobe/air/AndroidGcmResultReceiver$Receiver;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/adobe/air/AndroidGcmResultReceiver;->mReceiver:Lcom/adobe/air/AndroidGcmResultReceiver$Receiver;

    invoke-interface {v0, p1, p2}, Lcom/adobe/air/AndroidGcmResultReceiver$Receiver;->onReceiveResult(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setReceiver(Lcom/adobe/air/AndroidGcmResultReceiver$Receiver;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/adobe/air/AndroidGcmResultReceiver;->mReceiver:Lcom/adobe/air/AndroidGcmResultReceiver$Receiver;

    return-void
.end method
