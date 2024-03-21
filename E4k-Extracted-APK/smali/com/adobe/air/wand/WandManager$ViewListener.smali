.class Lcom/adobe/air/wand/WandManager$ViewListener;
.super Ljava/lang/Object;
.source "WandManager.java"

# interfaces
.implements Lcom/adobe/air/wand/view/WandView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/wand/WandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/wand/WandManager;


# direct methods
.method private constructor <init>(Lcom/adobe/air/wand/WandManager;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/adobe/air/wand/WandManager$ViewListener;->this$0:Lcom/adobe/air/wand/WandManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/air/wand/WandManager;Lcom/adobe/air/wand/WandManager$1;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcom/adobe/air/wand/WandManager$ViewListener;-><init>(Lcom/adobe/air/wand/WandManager;)V

    return-void
.end method


# virtual methods
.method public getConnectionToken()Ljava/lang/String;
    .locals 1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager$ViewListener;->this$0:Lcom/adobe/air/wand/WandManager;

    invoke-static {v0}, Lcom/adobe/air/wand/WandManager;->access$400(Lcom/adobe/air/wand/WandManager;)Lcom/adobe/air/wand/connection/Connection;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/air/wand/connection/Connection;->getConnectionToken()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public onLoadCompanion(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 178
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/adobe/air/wand/WandManager$ViewListener;->this$0:Lcom/adobe/air/wand/WandManager;

    invoke-static {p1}, Lcom/adobe/air/wand/WandManager;->access$400(Lcom/adobe/air/wand/WandManager;)Lcom/adobe/air/wand/connection/Connection;

    move-result-object p1

    invoke-interface {p1}, Lcom/adobe/air/wand/connection/Connection;->onReadyForConnection()V

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/wand/WandManager$ViewListener;->this$0:Lcom/adobe/air/wand/WandManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/adobe/air/wand/WandManager;->access$502(Lcom/adobe/air/wand/WandManager;Z)Z

    :goto_0
    return-void
.end method
