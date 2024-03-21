.class Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;
.super Ljava/lang/Object;
.source "AdUnitEventsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventLevelMapping"
.end annotation


# instance fields
.field private mMediationEventId:I

.field private mProviderEventId:I

.field final synthetic this$0:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;II)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;->this$0:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput p2, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;->mMediationEventId:I

    .line 239
    iput p3, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;->mProviderEventId:I

    return-void
.end method


# virtual methods
.method getEventId(Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;)I
    .locals 1

    .line 243
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;->MEDIATION:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;->mMediationEventId:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$EventLevelMapping;->mProviderEventId:I

    :goto_0
    return p1
.end method
