.class final Lcom/ironsource/sdk/b/d$1;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/b/d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/sdk/b/d;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/b/d;)V
    .locals 3

    iput-object p1, p0, Lcom/ironsource/sdk/b/d$1;->a:Lcom/ironsource/sdk/b/d;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "isVisible"

    iget-object v0, p0, Lcom/ironsource/sdk/b/d$1;->a:Lcom/ironsource/sdk/b/d;

    iget v0, v0, Lcom/ironsource/sdk/b/d;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/sdk/b/d$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "isWindowVisible"

    iget-object v0, p0, Lcom/ironsource/sdk/b/d$1;->a:Lcom/ironsource/sdk/b/d;

    iget v0, v0, Lcom/ironsource/sdk/b/d;->c:I

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/sdk/b/d$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "isShown"

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/sdk/b/d$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "isViewVisible"

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/sdk/b/d$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
