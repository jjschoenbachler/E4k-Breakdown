.class public Lcom/adobe/air/wand/view/TouchSensor;
.super Ljava/lang/Object;
.source "TouchSensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/wand/view/TouchSensor$Listener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TouchSensor"


# instance fields
.field private mGestureEventListening:Z

.field private mListener:Lcom/adobe/air/wand/view/TouchSensor$Listener;

.field private mTouchEventListening:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/adobe/air/wand/view/TouchSensor;->mListener:Lcom/adobe/air/wand/view/TouchSensor$Listener;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/TouchSensor;->mTouchEventListening:Z

    .line 32
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/TouchSensor;->mGestureEventListening:Z

    return-void
.end method


# virtual methods
.method public TouchListener()V
    .locals 0

    return-void
.end method

.method public activeGestureListening()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/TouchSensor;->mGestureEventListening:Z

    return v0
.end method

.method public activeTouchListening()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/TouchSensor;->mTouchEventListening:Z

    return v0
.end method

.method dispatchEvent(Lcom/adobe/air/TouchEventData;)V
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/TouchSensor;->mTouchEventListening:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/view/TouchSensor;->mListener:Lcom/adobe/air/wand/view/TouchSensor$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/view/TouchSensor;->mListener:Lcom/adobe/air/wand/view/TouchSensor$Listener;

    invoke-interface {v0, p1}, Lcom/adobe/air/wand/view/TouchSensor$Listener;->onTouchEvent(Lcom/adobe/air/TouchEventData;)V

    :cond_0
    return-void
.end method

.method dispatchEvent(Lcom/adobe/air/wand/view/GestureEventData;)V
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/TouchSensor;->mGestureEventListening:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/view/TouchSensor;->mListener:Lcom/adobe/air/wand/view/TouchSensor$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/view/TouchSensor;->mListener:Lcom/adobe/air/wand/view/TouchSensor$Listener;

    invoke-interface {v0, p1}, Lcom/adobe/air/wand/view/TouchSensor$Listener;->onGestureEvent(Lcom/adobe/air/wand/view/GestureEventData;)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/adobe/air/wand/view/TouchSensor$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 39
    iput-object p1, p0, Lcom/adobe/air/wand/view/TouchSensor;->mListener:Lcom/adobe/air/wand/view/TouchSensor$Listener;

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Invalid Listener"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startGestureEventListening()V
    .locals 1

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/TouchSensor;->mGestureEventListening:Z

    return-void
.end method

.method public startTouchEventListening()V
    .locals 1

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/TouchSensor;->mTouchEventListening:Z

    return-void
.end method

.method public stopGestureEventListening()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/TouchSensor;->mGestureEventListening:Z

    return-void
.end method

.method public stopTouchEventListening()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/adobe/air/wand/view/TouchSensor;->mTouchEventListening:Z

    return-void
.end method
