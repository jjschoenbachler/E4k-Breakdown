.class public Lcom/ironsource/mediationsdk/impressionData/ImpressionData;
.super Ljava/lang/Object;
.source "ImpressionData.java"


# static fields
.field public static final IMPRESSION_DATA_KEY_ABTEST:Ljava/lang/String; = "ab"

.field public static final IMPRESSION_DATA_KEY_AD_NETWORK:Ljava/lang/String; = "adNetwork"

.field public static final IMPRESSION_DATA_KEY_AD_UNIT:Ljava/lang/String; = "adUnit"

.field public static final IMPRESSION_DATA_KEY_AUCTION_ID:Ljava/lang/String; = "auctionId"

.field public static final IMPRESSION_DATA_KEY_COUNTRY:Ljava/lang/String; = "country"

.field public static final IMPRESSION_DATA_KEY_ENCRYPTED_CPM:Ljava/lang/String; = "encryptedCPM"

.field public static final IMPRESSION_DATA_KEY_INSTANCE_ID:Ljava/lang/String; = "instanceId"

.field public static final IMPRESSION_DATA_KEY_INSTANCE_NAME:Ljava/lang/String; = "instanceName"

.field public static final IMPRESSION_DATA_KEY_LIFETIME_REVENUE:Ljava/lang/String; = "lifetimeRevenue"

.field public static final IMPRESSION_DATA_KEY_PLACEMENT:Ljava/lang/String; = "placement"

.field public static final IMPRESSION_DATA_KEY_PRECISION:Ljava/lang/String; = "precision"

.field public static final IMPRESSION_DATA_KEY_REVENUE:Ljava/lang/String; = "revenue"

.field public static final IMPRESSION_DATA_KEY_SEGMENT_NAME:Ljava/lang/String; = "segmentName"


# instance fields
.field private ab:Ljava/lang/String;

.field private adNetwork:Ljava/lang/String;

.field private adUnit:Ljava/lang/String;

.field private allData:Lorg/json/JSONObject;

.field private auctionId:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private df:Ljava/text/DecimalFormat;

.field private encryptedCPM:Ljava/lang/String;

.field private instanceId:Ljava/lang/String;

.field private instanceName:Ljava/lang/String;

.field private lifetimeRevenue:Ljava/lang/Double;

.field private placement:Ljava/lang/String;

.field private precision:Ljava/lang/String;

.field private revenue:Ljava/lang/Double;

.field private segmentName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V
    .locals 2
    .param p1    # Lcom/ironsource/mediationsdk/impressionData/ImpressionData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->auctionId:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->adUnit:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->country:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->ab:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->segmentName:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->placement:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->adNetwork:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->instanceName:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->instanceId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->revenue:Ljava/lang/Double;

    .line 38
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->precision:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->lifetimeRevenue:Ljava/lang/Double;

    .line 40
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->encryptedCPM:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#####"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->df:Ljava/text/DecimalFormat;

    .line 74
    iget-object v0, p1, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->allData:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->allData:Lorg/json/JSONObject;

    .line 75
    iget-object v0, p1, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->auctionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->auctionId:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->adUnit:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->adUnit:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->country:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->country:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->ab:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->ab:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->segmentName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->segmentName:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->placement:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->placement:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->adNetwork:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->adNetwork:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->instanceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->instanceName:Ljava/lang/String;

    .line 83
    iget-object v0, p1, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->instanceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->instanceId:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->precision:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->precision:Ljava/lang/String;

    .line 85
    iget-object v0, p1, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->encryptedCPM:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->encryptedCPM:Ljava/lang/String;

    .line 86
    iget-object v0, p1, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->lifetimeRevenue:Ljava/lang/Double;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->lifetimeRevenue:Ljava/lang/Double;

    .line 87
    iget-object p1, p1, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->revenue:Ljava/lang/Double;

    iput-object p1, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->revenue:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->auctionId:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->adUnit:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->country:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->ab:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->segmentName:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->placement:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->adNetwork:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->instanceName:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->instanceId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->revenue:Ljava/lang/Double;

    .line 38
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->precision:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->lifetimeRevenue:Ljava/lang/Double;

    .line 40
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->encryptedCPM:Ljava/lang/String;

    .line 42
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#.#####"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->df:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_2

    .line 47
    :try_start_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->allData:Lorg/json/JSONObject;

    const-string v1, "auctionId"

    .line 48
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->auctionId:Ljava/lang/String;

    const-string v1, "adUnit"

    .line 49
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->adUnit:Ljava/lang/String;

    const-string v1, "country"

    .line 50
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->country:Ljava/lang/String;

    const-string v1, "ab"

    .line 51
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->ab:Ljava/lang/String;

    const-string v1, "segmentName"

    .line 52
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->segmentName:Ljava/lang/String;

    const-string v1, "placement"

    .line 53
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->placement:Ljava/lang/String;

    const-string v1, "adNetwork"

    .line 54
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->adNetwork:Ljava/lang/String;

    const-string v1, "instanceName"

    .line 55
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->instanceName:Ljava/lang/String;

    const-string v1, "instanceId"

    .line 56
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->instanceId:Ljava/lang/String;

    const-string v1, "precision"

    .line 57
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->precision:Ljava/lang/String;

    const-string v1, "encryptedCPM"

    .line 58
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->encryptedCPM:Ljava/lang/String;

    const-string v1, "lifetimeRevenue"

    .line 61
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 62
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->lifetimeRevenue:Ljava/lang/Double;

    const-string v1, "revenue"

    .line 63
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 64
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->revenue:Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 67
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error parsing impression "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public getAb()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->ab:Ljava/lang/String;

    return-object v0
.end method

.method public getAdNetwork()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->adNetwork:Ljava/lang/String;

    return-object v0
.end method

.method public getAdUnit()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->adUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getAllData()Lorg/json/JSONObject;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->allData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getAuctionId()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->auctionId:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptedCPM()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->encryptedCPM:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceName()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->instanceName:Ljava/lang/String;

    return-object v0
.end method

.method public getLifetimeRevenue()Ljava/lang/Double;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->lifetimeRevenue:Ljava/lang/Double;

    return-object v0
.end method

.method public getPlacement()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->placement:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecision()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->precision:Ljava/lang/String;

    return-object v0
.end method

.method public getRevenue()Ljava/lang/Double;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->revenue:Ljava/lang/Double;

    return-object v0
.end method

.method public getSegmentName()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->segmentName:Ljava/lang/String;

    return-object v0
.end method

.method public replaceMacroForPlacementWithValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->placement:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->placement:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->placement:Ljava/lang/String;

    .line 93
    iget-object p1, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->allData:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    .line 95
    :try_start_0
    iget-object p1, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->allData:Lorg/json/JSONObject;

    const-string p2, "placement"

    iget-object v0, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->placement:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 98
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "auctionId: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->auctionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", adUnit: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->adUnit:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", country: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->country:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ab: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->ab:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", segmentName: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->segmentName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", placement: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->placement:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", adNetwork: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->adNetwork:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", instanceName: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->instanceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", instanceId: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->instanceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", revenue: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->revenue:Ljava/lang/Double;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->df:Ljava/text/DecimalFormat;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->revenue:Ljava/lang/Double;

    .line 171
    invoke-virtual {v2, v4}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", precision: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->precision:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", lifetimeRevenue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->lifetimeRevenue:Ljava/lang/Double;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->df:Ljava/text/DecimalFormat;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->lifetimeRevenue:Ljava/lang/Double;

    .line 173
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", encryptedCPM: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->encryptedCPM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
