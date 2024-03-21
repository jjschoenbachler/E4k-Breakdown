.class final Lcom/ironsource/mediationsdk/O$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/O;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/mediationsdk/O;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/O;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/O$2;->a:Lcom/ironsource/mediationsdk/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/ironsource/mediationsdk/O$2;->a:Lcom/ironsource/mediationsdk/O;

    new-instance v7, Lcom/ironsource/mediationsdk/O$2$1;

    const-wide/32 v3, 0xea60

    const-wide/16 v5, 0x3a98

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/mediationsdk/O$2$1;-><init>(Lcom/ironsource/mediationsdk/O$2;JJ)V

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/O$2$1;->start()Landroid/os/CountDownTimer;

    move-result-object v1

    iput-object v1, v0, Lcom/ironsource/mediationsdk/O;->j:Landroid/os/CountDownTimer;

    return-void
.end method
