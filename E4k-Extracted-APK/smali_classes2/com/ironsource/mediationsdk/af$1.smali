.class final Lcom/ironsource/mediationsdk/af$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/af;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/mediationsdk/af;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/af;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/af$1;->a:Lcom/ironsource/mediationsdk/af;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/af$1;->a:Lcom/ironsource/mediationsdk/af;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/af;->a:Lcom/ironsource/mediationsdk/ag;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/ag;->e()V

    return-void
.end method
