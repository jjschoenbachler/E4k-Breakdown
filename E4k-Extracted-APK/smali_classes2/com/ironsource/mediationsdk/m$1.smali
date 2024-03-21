.class final Lcom/ironsource/mediationsdk/m$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/m;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/mediationsdk/m;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/m;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/m$1;->a:Lcom/ironsource/mediationsdk/m;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/m$1;->a:Lcom/ironsource/mediationsdk/m;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/m;->a(Lcom/ironsource/mediationsdk/m;)V

    return-void
.end method
