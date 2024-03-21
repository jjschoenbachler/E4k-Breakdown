.class Lcom/ironsource/environment/globaldata/GlobalDataManager$1;
.super Ljava/lang/Object;
.source "GlobalDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/environment/globaldata/GlobalDataManager;->collectAdvertisingID(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/environment/globaldata/GlobalDataManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/ironsource/environment/globaldata/GlobalDataManager;Landroid/content/Context;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/ironsource/environment/globaldata/GlobalDataManager$1;->this$0:Lcom/ironsource/environment/globaldata/GlobalDataManager;

    iput-object p2, p0, Lcom/ironsource/environment/globaldata/GlobalDataManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/environment/globaldata/GlobalDataManager$1;->this$0:Lcom/ironsource/environment/globaldata/GlobalDataManager;

    iget-object v1, p0, Lcom/ironsource/environment/globaldata/GlobalDataManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->access$100(Lcom/ironsource/environment/globaldata/GlobalDataManager;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :catch_0
    iget-object v0, p0, Lcom/ironsource/environment/globaldata/GlobalDataManager$1;->this$0:Lcom/ironsource/environment/globaldata/GlobalDataManager;

    invoke-static {v0}, Lcom/ironsource/environment/globaldata/GlobalDataManager;->access$200(Lcom/ironsource/environment/globaldata/GlobalDataManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
