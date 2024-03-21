.class public Lcom/ironsource/mediationsdk/utils/SessionCappingInstance;
.super Ljava/lang/Object;
.source "SessionCappingInstance.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/utils/SessionCappingManager$SmashSessionCappingInterface;


# instance fields
.field private mInstanceName:Ljava/lang/String;

.field private mMaxAdsPerSession:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/SessionCappingInstance;->mInstanceName:Ljava/lang/String;

    .line 11
    iput p2, p0, Lcom/ironsource/mediationsdk/utils/SessionCappingInstance;->mMaxAdsPerSession:I

    return-void
.end method


# virtual methods
.method public getInstanceName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/SessionCappingInstance;->mInstanceName:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAdsPerSession()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/SessionCappingInstance;->mMaxAdsPerSession:I

    return v0
.end method
