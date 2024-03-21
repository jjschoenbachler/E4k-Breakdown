.class final Lcom/ironsource/mediationsdk/v$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/mediationsdk/v;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/v;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/v$1;->a:Lcom/ironsource/mediationsdk/v;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/ironsource/mediationsdk/v$1;->a:Lcom/ironsource/mediationsdk/v;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load timed out state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/v$1;->a:Lcom/ironsource/mediationsdk/v;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/v;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/v;->a(Lcom/ironsource/mediationsdk/v;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/v$1;->a:Lcom/ironsource/mediationsdk/v;

    sget-object v1, Lcom/ironsource/mediationsdk/y$a;->b:Lcom/ironsource/mediationsdk/y$a;

    sget-object v2, Lcom/ironsource/mediationsdk/y$a;->a:Lcom/ironsource/mediationsdk/y$a;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/v;->a(Lcom/ironsource/mediationsdk/y$a;Lcom/ironsource/mediationsdk/y$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ironsource/mediationsdk/v$1;->a:Lcom/ironsource/mediationsdk/v;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/v;->a(Lcom/ironsource/mediationsdk/v;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/ironsource/mediationsdk/v$1;->a:Lcom/ironsource/mediationsdk/v;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/v;->b(Lcom/ironsource/mediationsdk/v;)Lcom/ironsource/mediationsdk/sdk/d;

    move-result-object v2

    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v4, 0x41c

    const-string v5, "load timed out"

    invoke-direct {v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/v$1;->a:Lcom/ironsource/mediationsdk/v;

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/ironsource/mediationsdk/sdk/d;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/v;J)V

    :cond_0
    return-void
.end method
