.class final Lcom/ironsource/mediationsdk/n$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/n;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/mediationsdk/n;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/n;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/n$1;->a:Lcom/ironsource/mediationsdk/n;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/n$1;->cancel()Z

    iget-object v0, p0, Lcom/ironsource/mediationsdk/n$1;->a:Lcom/ironsource/mediationsdk/n;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/n;)Lcom/ironsource/mediationsdk/n$a;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/n$a;->b:Lcom/ironsource/mediationsdk/n$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/n$1;->a:Lcom/ironsource/mediationsdk/n;

    sget-object v1, Lcom/ironsource/mediationsdk/n$a;->a:Lcom/ironsource/mediationsdk/n$a;

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/n;Lcom/ironsource/mediationsdk/n$a;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/n$1;->a:Lcom/ironsource/mediationsdk/n;

    const-string v1, "init timed out"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/n;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/n$1;->a:Lcom/ironsource/mediationsdk/n;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/n;->b(Lcom/ironsource/mediationsdk/n;)Lcom/ironsource/mediationsdk/sdk/a;

    move-result-object v0

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v3, 0x25f

    const-string v4, "Timed out"

    invoke-direct {v1, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lcom/ironsource/mediationsdk/n$1;->a:Lcom/ironsource/mediationsdk/n;

    invoke-interface {v0, v1, v3, v2}, Lcom/ironsource/mediationsdk/sdk/a;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/n;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/n$1;->a:Lcom/ironsource/mediationsdk/n;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/n;)Lcom/ironsource/mediationsdk/n$a;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/n$a;->c:Lcom/ironsource/mediationsdk/n$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/n$1;->a:Lcom/ironsource/mediationsdk/n;

    sget-object v1, Lcom/ironsource/mediationsdk/n$a;->e:Lcom/ironsource/mediationsdk/n$a;

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/n;Lcom/ironsource/mediationsdk/n$a;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/n$1;->a:Lcom/ironsource/mediationsdk/n;

    const-string v1, "load timed out"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/n;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/n$1;->a:Lcom/ironsource/mediationsdk/n;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/n;->b(Lcom/ironsource/mediationsdk/n;)Lcom/ironsource/mediationsdk/sdk/a;

    move-result-object v0

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v3, 0x260

    const-string v4, "Timed out"

    invoke-direct {v1, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/n$1;->a:Lcom/ironsource/mediationsdk/n;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/n;)Lcom/ironsource/mediationsdk/n$a;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/n$a;->d:Lcom/ironsource/mediationsdk/n$a;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/n$1;->a:Lcom/ironsource/mediationsdk/n;

    sget-object v1, Lcom/ironsource/mediationsdk/n$a;->e:Lcom/ironsource/mediationsdk/n$a;

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/n;Lcom/ironsource/mediationsdk/n$a;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/n$1;->a:Lcom/ironsource/mediationsdk/n;

    const-string v1, "reload timed out"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/n;->a(Lcom/ironsource/mediationsdk/n;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/n$1;->a:Lcom/ironsource/mediationsdk/n;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/n;->b(Lcom/ironsource/mediationsdk/n;)Lcom/ironsource/mediationsdk/sdk/a;

    move-result-object v0

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v3, 0x261

    const-string v4, "Timed out"

    invoke-direct {v1, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/n$1;->a:Lcom/ironsource/mediationsdk/n;

    invoke-interface {v0, v1, v3, v2}, Lcom/ironsource/mediationsdk/sdk/a;->b(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/n;Z)V

    :cond_2
    return-void
.end method
