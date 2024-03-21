.class final Lcom/ironsource/mediationsdk/t$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/mediationsdk/t;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/t;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/t$1;->a:Lcom/ironsource/mediationsdk/t;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load timed out state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/t$1;->a:Lcom/ironsource/mediationsdk/t;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/t;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/t$1;->a:Lcom/ironsource/mediationsdk/t;

    sget-object v1, Lcom/ironsource/mediationsdk/y$a;->b:Lcom/ironsource/mediationsdk/y$a;

    sget-object v2, Lcom/ironsource/mediationsdk/y$a;->a:Lcom/ironsource/mediationsdk/y$a;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/t;->a(Lcom/ironsource/mediationsdk/y$a;Lcom/ironsource/mediationsdk/y$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ironsource/mediationsdk/t$1;->a:Lcom/ironsource/mediationsdk/t;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/t;->a(Lcom/ironsource/mediationsdk/t;)J

    move-result-wide v2

    sub-long v8, v0, v2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/t$1;->a:Lcom/ironsource/mediationsdk/t;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/t;->b(Lcom/ironsource/mediationsdk/t;)Lcom/ironsource/mediationsdk/sdk/c;

    move-result-object v4

    new-instance v5, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v0, 0x260

    const-string v1, "load timed out"

    invoke-direct {v5, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/t$1;->a:Lcom/ironsource/mediationsdk/t;

    const/4 v7, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/ironsource/mediationsdk/sdk/c;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/t;ZJ)V

    :cond_0
    return-void
.end method
