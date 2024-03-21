.class Lcom/ironsource/adapters/applovin/AppLovinAdapter$8;
.super Ljava/lang/Object;
.source "AppLovinAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/applovin/AppLovinAdapter;->releaseMemory(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$8;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$8;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    iget-object v0, v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/adview/AppLovinAdView;

    .line 626
    invoke-virtual {v1}, Lcom/applovin/adview/AppLovinAdView;->destroy()V

    goto :goto_0

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$8;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    iget-object v0, v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToAppLovinBannerListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 630
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$8;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    iget-object v0, v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 631
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$8;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    iget-object v0, v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 632
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$8;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    iget-object v0, v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->mZoneIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method
