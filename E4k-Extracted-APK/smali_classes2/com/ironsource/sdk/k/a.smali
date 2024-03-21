.class public final Lcom/ironsource/sdk/k/a;
.super Landroid/os/Handler;


# instance fields
.field public a:Lcom/ironsource/sdk/k/c;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/ironsource/sdk/k/a;->a:Lcom/ironsource/sdk/k/c;

    if-nez v0, :cond_0

    const-string v0, "DownloadHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnPreCacheCompletion listener is null, msg: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3f8

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/ironsource/sdk/g/e;

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/ironsource/environment/a$1;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/sdk/g/e;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/sdk/k/a;->a:Lcom/ironsource/sdk/k/c;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ironsource/sdk/h/c;

    invoke-interface {v1, p1, v0}, Lcom/ironsource/sdk/k/c;->a(Lcom/ironsource/sdk/h/c;Lcom/ironsource/sdk/g/e;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ironsource/sdk/k/a;->a:Lcom/ironsource/sdk/k/c;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ironsource/sdk/h/c;

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/k/c;->a(Lcom/ironsource/sdk/h/c;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "DownloadHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage | Got exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
