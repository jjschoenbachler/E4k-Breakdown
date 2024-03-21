.class public final Lcom/ironsource/environment/auction/AuctionProvider;
.super Ljava/lang/Object;
.source "AuctionProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0006\u0010\u000b\u001a\u00020\tR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/ironsource/environment/auction/AuctionProvider;",
        "",
        "()V",
        "mAuctionKeyList",
        "Ljava/util/ArrayList;",
        "",
        "mGlobalDataReader",
        "Lcom/ironsource/environment/globaldata/GlobalDataReader;",
        "formatDataMetaData",
        "Lorg/json/JSONObject;",
        "tokenData",
        "getAuctionData",
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
.field private final mAuctionKeyList:Ljava/util/ArrayList;
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

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/ironsource/environment/auction/AuctionKeys;

    invoke-direct {v1}, Lcom/ironsource/environment/auction/AuctionKeys;-><init>()V

    invoke-virtual {v1}, Lcom/ironsource/environment/auction/AuctionKeys;->getAuctionBaseKeys()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ironsource/environment/auction/AuctionProvider;->mAuctionKeyList:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Lcom/ironsource/environment/globaldata/GlobalDataReader;

    invoke-direct {v0}, Lcom/ironsource/environment/globaldata/GlobalDataReader;-><init>()V

    iput-object v0, p0, Lcom/ironsource/environment/auction/AuctionProvider;->mGlobalDataReader:Lcom/ironsource/environment/globaldata/GlobalDataReader;

    return-void
.end method

.method private final formatDataMetaData(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    const-string v0, "md"

    .line 20
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/ironsource/environment/globaldata/GlobalDataUtils;->joinJSONsStringLists(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "md"

    .line 23
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final getAuctionData()Lorg/json/JSONObject;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/ironsource/environment/auction/AuctionProvider;->mGlobalDataReader:Lcom/ironsource/environment/globaldata/GlobalDataReader;

    iget-object v1, p0, Lcom/ironsource/environment/auction/AuctionProvider;->mAuctionKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataReader;->getDataByKeys(Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "mGlobalDataReader.getDataByKeys(mAuctionKeyList)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, v0}, Lcom/ironsource/environment/auction/AuctionProvider;->formatDataMetaData(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
