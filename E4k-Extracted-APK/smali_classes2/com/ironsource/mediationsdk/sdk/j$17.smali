.class final Lcom/ironsource/mediationsdk/sdk/j$17;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/sdk/j;->onRewardedVideoAdStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/mediationsdk/sdk/j;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/sdk/j;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/sdk/j$17;->a:Lcom/ironsource/mediationsdk/sdk/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/j$17;->a:Lcom/ironsource/mediationsdk/sdk/j;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/sdk/j;->b(Lcom/ironsource/mediationsdk/sdk/j;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdStarted()V

    return-void
.end method
