.class Lcom/ironsource/adapters/applovin/AppLovinAdapter$7;
.super Ljava/lang/Object;
.source "AppLovinAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/applovin/AppLovinAdapter;->destroyBanner(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

.field final synthetic val$adView:Lcom/applovin/adview/AppLovinAdView;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/applovin/AppLovinAdapter;Lcom/applovin/adview/AppLovinAdView;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$7;->this$0:Lcom/ironsource/adapters/applovin/AppLovinAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$7;->val$adView:Lcom/applovin/adview/AppLovinAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$7;->val$adView:Lcom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/AppLovinAdapter$7;->val$adView:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->destroy()V

    :cond_0
    return-void
.end method
