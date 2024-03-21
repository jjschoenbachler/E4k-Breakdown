.class public Lcom/ironsource/sdk/IronSourceAdInstance;
.super Ljava/lang/Object;
.source "IronSourceAdInstance.java"


# instance fields
.field private adListener:Lcom/ironsource/sdk/listeners/OnAdProductListener;

.field private extraParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private inAppBidding:Z

.field private isInitialized:Z

.field private name:Ljava/lang/String;

.field private final rewarded:Z

.field private size:Lcom/ironsource/sdk/ISNAdSize;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;Lcom/ironsource/sdk/listeners/OnAdProductListener;Lcom/ironsource/sdk/ISNAdSize;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnAdProductListener;",
            "Lcom/ironsource/sdk/ISNAdSize;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->isInitialized:Z

    .line 34
    iput-object p1, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->id:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->name:Ljava/lang/String;

    .line 36
    iput-boolean p3, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->rewarded:Z

    .line 37
    iput-boolean p4, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->inAppBidding:Z

    .line 38
    iput-object p5, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->extraParams:Ljava/util/Map;

    .line 39
    iput-object p6, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->adListener:Lcom/ironsource/sdk/listeners/OnAdProductListener;

    .line 40
    iput-object p7, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->size:Lcom/ironsource/sdk/ISNAdSize;

    return-void
.end method


# virtual methods
.method public convertToMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "instanceId"

    .line 125
    iget-object v2, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "instanceName"

    .line 126
    iget-object v2, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rewarded"

    .line 127
    iget-boolean v2, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->rewarded:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "inAppBidding"

    .line 128
    iget-boolean v2, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->inAppBidding:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "apiVersion"

    const/4 v2, 0x2

    .line 129
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "width"

    .line 130
    iget-object v2, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->size:Lcom/ironsource/sdk/ISNAdSize;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->size:Lcom/ironsource/sdk/ISNAdSize;

    invoke-virtual {v2}, Lcom/ironsource/sdk/ISNAdSize;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "height"

    .line 131
    iget-object v2, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->size:Lcom/ironsource/sdk/ISNAdSize;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->size:Lcom/ironsource/sdk/ISNAdSize;

    invoke-virtual {v2}, Lcom/ironsource/sdk/ISNAdSize;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "0"

    :goto_1
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "label"

    .line 132
    iget-object v2, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->size:Lcom/ironsource/sdk/ISNAdSize;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->size:Lcom/ironsource/sdk/ISNAdSize;

    invoke-virtual {v2}, Lcom/ironsource/sdk/ISNAdSize;->getLabel()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const-string v2, ""

    :goto_2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isBanner"

    .line 133
    invoke-virtual {p0}, Lcom/ironsource/sdk/IronSourceAdInstance;->isBanner()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->extraParams:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->extraParams:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_3
    return-object v0
.end method

.method public final getAdListener()Lcom/ironsource/sdk/listeners/OnAdProductListener;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->adListener:Lcom/ironsource/sdk/listeners/OnAdProductListener;

    return-object v0
.end method

.method public getExtraParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->extraParams:Ljava/util/Map;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Lcom/ironsource/sdk/ISNAdSize;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->size:Lcom/ironsource/sdk/ISNAdSize;

    return-object v0
.end method

.method public isBanner()Z
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/ironsource/sdk/IronSourceAdInstance;->getSize()Lcom/ironsource/sdk/ISNAdSize;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ironsource/sdk/IronSourceAdInstance;->getSize()Lcom/ironsource/sdk/ISNAdSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/ISNAdSize;->isDrawable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInAppBidding()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->inAppBidding:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->isInitialized:Z

    return v0
.end method

.method public isRewarded()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->rewarded:Z

    return v0
.end method

.method public setInitialized(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/ironsource/sdk/IronSourceAdInstance;->isInitialized:Z

    return-void
.end method
