.class final Lcom/ironsource/mediationsdk/X$3;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/X;->b(Lcom/ironsource/mediationsdk/Z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/mediationsdk/X;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/X;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/X$3;->a:Lcom/ironsource/mediationsdk/X;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/X$3;->a:Lcom/ironsource/mediationsdk/X;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/X;->f()V

    return-void
.end method
