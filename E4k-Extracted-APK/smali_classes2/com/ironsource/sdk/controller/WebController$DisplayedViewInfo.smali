.class Lcom/ironsource/sdk/controller/WebController$DisplayedViewInfo;
.super Ljava/lang/Object;
.source "WebController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/WebController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DisplayedViewInfo"
.end annotation


# instance fields
.field mDemandSourceId:Ljava/lang/String;

.field mProductType:Lcom/ironsource/sdk/data/ISNEnums$ProductType;


# direct methods
.method public constructor <init>(Lcom/ironsource/sdk/data/ISNEnums$ProductType;Ljava/lang/String;)V
    .locals 0

    .line 4127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4128
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController$DisplayedViewInfo;->mProductType:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    .line 4129
    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController$DisplayedViewInfo;->mDemandSourceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getDemandSourceId()Ljava/lang/String;
    .locals 1

    .line 4137
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$DisplayedViewInfo;->mDemandSourceId:Ljava/lang/String;

    return-object v0
.end method

.method getProductType()Lcom/ironsource/sdk/data/ISNEnums$ProductType;
    .locals 1

    .line 4133
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$DisplayedViewInfo;->mProductType:Lcom/ironsource/sdk/data/ISNEnums$ProductType;

    return-object v0
.end method
