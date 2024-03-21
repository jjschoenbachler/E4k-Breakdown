.class public Lcom/ironsource/mediationsdk/AuctionResponseItem;
.super Ljava/lang/Object;
.source "AuctionResponseItem.java"


# instance fields
.field private mBurls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

.field private mInstanceName:Ljava/lang/String;

.field private mIsValid:Z

.field private mLurls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNurls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrice:Ljava/lang/String;

.field private mServerData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mInstanceName:Ljava/lang/String;

    const-string p1, ""

    .line 25
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mServerData:Ljava/lang/String;

    const-string p1, ""

    .line 26
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mPrice:Ljava/lang/String;

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mBurls:Ljava/util/List;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mLurls:Ljava/util/List;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mNurls:Ljava/util/List;

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mIsValid:Z

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/AuctionResponseItem;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 6

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mIsValid:Z

    :try_start_0
    const-string v1, "instance"

    .line 39
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "instance"

    .line 40
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mInstanceName:Ljava/lang/String;

    :cond_0
    const-string v1, "adMarkup"

    .line 51
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "adMarkup"

    .line 52
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mServerData:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "serverData"

    .line 53
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "serverData"

    .line 54
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mServerData:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, ""

    .line 57
    iput-object v1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mServerData:Ljava/lang/String;

    :goto_0
    const-string v1, "price"

    .line 60
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "price"

    .line 61
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mPrice:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v1, "0"

    .line 63
    iput-object v1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mPrice:Ljava/lang/String;

    .line 66
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mBurls:Ljava/util/List;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mLurls:Ljava/util/List;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mNurls:Ljava/util/List;

    const-string v1, "notifications"

    .line 70
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "notifications"

    .line 71
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "burl"

    .line 73
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "burl"

    .line 74
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 76
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 77
    iget-object v4, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mBurls:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const-string v2, "lurl"

    .line 81
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "lurl"

    .line 82
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 84
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 85
    iget-object v4, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mLurls:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    const-string v2, "nurl"

    .line 89
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "nurl"

    .line 90
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 92
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 93
    iget-object v3, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mNurls:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    const-string v2, "armData"

    .line 101
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v1, "armData"

    .line 102
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 105
    :cond_7
    new-instance p1, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/json/JSONObject;

    aput-object p2, v2, v0

    const/4 p2, 0x1

    aput-object v1, v2, p2

    invoke-static {v2}, Lcom/ironsource/mediationsdk/utilities/IronsourceJsonUtilities;->mergeJsonObjects([Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;-><init>(Lorg/json/JSONObject;)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mIsValid:Z

    return-void

    :catch_0
    move-exception p1

    .line 108
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuctionResponseItem exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBurls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mBurls:Ljava/util/List;

    return-object v0
.end method

.method public getImpressionData(Ljava/lang/String;)Lcom/ironsource/mediationsdk/impressionData/ImpressionData;
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mImpressionData:Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;-><init>(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V

    const-string v1, "${PLACEMENT_NAME}"

    .line 151
    invoke-virtual {v0, v1, p1}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->replaceMacroForPlacementWithValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getInstanceName()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mInstanceName:Ljava/lang/String;

    return-object v0
.end method

.method public getLurls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mLurls:Ljava/util/List;

    return-object v0
.end method

.method public getNurls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mNurls:Ljava/util/List;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getServerData()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mServerData:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/AuctionResponseItem;->mIsValid:Z

    return v0
.end method
