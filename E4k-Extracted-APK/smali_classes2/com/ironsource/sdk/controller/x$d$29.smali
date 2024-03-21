.class final Lcom/ironsource/sdk/controller/x$d$29;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/x$d;->setTouchListener(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/sdk/controller/x$d;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/x$d;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/sdk/controller/x$d$29;->a:Lcom/ironsource/sdk/controller/x$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/ironsource/sdk/controller/x$d$29;->a:Lcom/ironsource/sdk/controller/x$d;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/x$d;->a:Lcom/ironsource/sdk/controller/x;

    new-instance v1, Lcom/ironsource/sdk/controller/x$h;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/x$d$29;->a:Lcom/ironsource/sdk/controller/x$d;

    iget-object v2, v2, Lcom/ironsource/sdk/controller/x$d;->a:Lcom/ironsource/sdk/controller/x;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/ironsource/sdk/controller/x$h;-><init>(Lcom/ironsource/sdk/controller/x;B)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/x;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
