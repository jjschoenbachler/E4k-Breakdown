.class final Lcom/ironsource/mediationsdk/H$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/H;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/mediationsdk/H;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/H;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/H$1;->a:Lcom/ironsource/mediationsdk/H;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/H$1;->cancel()Z

    iget-object v0, p0, Lcom/ironsource/mediationsdk/H$1;->a:Lcom/ironsource/mediationsdk/H;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/H;->a:Lcom/ironsource/mediationsdk/b$a;

    sget-object v1, Lcom/ironsource/mediationsdk/b$a;->h:Lcom/ironsource/mediationsdk/b$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/H$1;->a:Lcom/ironsource/mediationsdk/H;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/H;->a(Lcom/ironsource/mediationsdk/H;)Lcom/ironsource/mediationsdk/sdk/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/H$1;->a:Lcom/ironsource/mediationsdk/H;

    sget-object v1, Lcom/ironsource/mediationsdk/b$a;->b:Lcom/ironsource/mediationsdk/b$a;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/H;->a(Lcom/ironsource/mediationsdk/b$a;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/H$1;->a:Lcom/ironsource/mediationsdk/H;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/H;->a(Lcom/ironsource/mediationsdk/H;)Lcom/ironsource/mediationsdk/sdk/i;

    move-result-object v0

    const-string v1, "Timeout"

    const-string v2, "Interstitial"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/H$1;->a:Lcom/ironsource/mediationsdk/H;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/mediationsdk/sdk/i;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/H;)V

    :cond_0
    return-void
.end method
