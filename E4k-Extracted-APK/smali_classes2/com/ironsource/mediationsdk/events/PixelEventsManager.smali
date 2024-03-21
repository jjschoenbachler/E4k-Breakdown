.class public final Lcom/ironsource/mediationsdk/events/PixelEventsManager;
.super Lcom/ironsource/mediationsdk/events/BaseEventsManager;
.source "PixelEventsManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0014J\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0014J\u0008\u0010\n\u001a\u00020\u000bH\u0014J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\tH\u0014J\u0018\u0010\u000f\u001a\u00020\u000b2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0011H\u0014J\u0012\u0010\u0012\u001a\u00020\u000b2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0014J\u0012\u0010\u0013\u001a\u00020\r2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0014J\u0012\u0010\u0014\u001a\u00020\r2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0014J\u0012\u0010\u0015\u001a\u00020\r2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0014J\u0012\u0010\u0016\u001a\u00020\r2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/ironsource/mediationsdk/events/PixelEventsManager;",
        "Lcom/ironsource/mediationsdk/events/BaseEventsManager;",
        "()V",
        "getCurrentPlacement",
        "",
        "eventId",
        "",
        "getSessionDepth",
        "event",
        "Lcom/ironsource/eventsmodule/EventData;",
        "initConnectivitySensitiveEventsSet",
        "",
        "isTriggerEvent",
        "",
        "currentEvent",
        "saveCombinedEventListInCaseOfError",
        "combinedEventList",
        "Ljava/util/ArrayList;",
        "setCurrentPlacement",
        "shouldAddConnectionType",
        "shouldAddSessionDepth",
        "shouldExtractCurrentPlacement",
        "shouldIncludeCurrentPlacement",
        "mediationsdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ironsource/mediationsdk/events/PixelEventsManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/ironsource/mediationsdk/events/PixelEventsManager;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/events/PixelEventsManager;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/events/PixelEventsManager;->INSTANCE:Lcom/ironsource/mediationsdk/events/PixelEventsManager;

    const-string v1, "outcome"

    .line 19
    iput-object v1, v0, Lcom/ironsource/mediationsdk/events/PixelEventsManager;->mFormatterType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 20
    iput v1, v0, Lcom/ironsource/mediationsdk/events/PixelEventsManager;->mAdUnitType:I

    const-string v1, "PXL"

    .line 21
    iput-object v1, v0, Lcom/ironsource/mediationsdk/events/PixelEventsManager;->mEventType:Ljava/lang/String;

    .line 22
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/events/PixelEventsManager;->initState()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCurrentPlacement(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p1, ""

    return-object p1
.end method

.method protected getSessionDepth(Lcom/ironsource/eventsmodule/EventData;)I
    .locals 0
    .param p1    # Lcom/ironsource/eventsmodule/EventData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method

.method protected initConnectivitySensitiveEventsSet()V
    .locals 0

    return-void
.end method

.method protected isTriggerEvent(Lcom/ironsource/eventsmodule/EventData;)Z
    .locals 0
    .param p1    # Lcom/ironsource/eventsmodule/EventData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method

.method protected saveCombinedEventListInCaseOfError(Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected setCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)V
    .locals 0
    .param p1    # Lcom/ironsource/eventsmodule/EventData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method protected shouldAddConnectionType(Lcom/ironsource/eventsmodule/EventData;)Z
    .locals 0
    .param p1    # Lcom/ironsource/eventsmodule/EventData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method protected shouldAddSessionDepth(Lcom/ironsource/eventsmodule/EventData;)Z
    .locals 0
    .param p1    # Lcom/ironsource/eventsmodule/EventData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method protected shouldExtractCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z
    .locals 0
    .param p1    # Lcom/ironsource/eventsmodule/EventData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method protected shouldIncludeCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z
    .locals 0
    .param p1    # Lcom/ironsource/eventsmodule/EventData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method
