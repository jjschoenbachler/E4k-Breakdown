.class public final Lcom/ironsource/environment/events/EventsProvider;
.super Ljava/lang/Object;
.source "EventsProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0008\u001a\u00020\tR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/ironsource/environment/events/EventsProvider;",
        "",
        "()V",
        "mEventsKeyList",
        "Ljava/util/ArrayList;",
        "",
        "mGlobalDataReader",
        "Lcom/ironsource/environment/globaldata/GlobalDataReader;",
        "getEventsData",
        "Lorg/json/JSONObject;",
        "environment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final mEventsKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalDataReader:Lcom/ironsource/environment/globaldata/GlobalDataReader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/ironsource/environment/events/EventsKeys;

    invoke-direct {v1}, Lcom/ironsource/environment/events/EventsKeys;-><init>()V

    invoke-virtual {v1}, Lcom/ironsource/environment/events/EventsKeys;->getEventsBaseKeys()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ironsource/environment/events/EventsProvider;->mEventsKeyList:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Lcom/ironsource/environment/globaldata/GlobalDataReader;

    invoke-direct {v0}, Lcom/ironsource/environment/globaldata/GlobalDataReader;-><init>()V

    iput-object v0, p0, Lcom/ironsource/environment/events/EventsProvider;->mGlobalDataReader:Lcom/ironsource/environment/globaldata/GlobalDataReader;

    return-void
.end method


# virtual methods
.method public final getEventsData()Lorg/json/JSONObject;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/ironsource/environment/events/EventsProvider;->mGlobalDataReader:Lcom/ironsource/environment/globaldata/GlobalDataReader;

    iget-object v1, p0, Lcom/ironsource/environment/events/EventsProvider;->mEventsKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataReader;->getDataByKeys(Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "mGlobalDataReader.getDataByKeys(mEventsKeyList)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
