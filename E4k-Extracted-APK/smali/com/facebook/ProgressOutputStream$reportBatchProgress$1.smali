.class final Lcom/facebook/ProgressOutputStream$reportBatchProgress$1;
.super Ljava/lang/Object;
.source "ProgressOutputStream.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ProgressOutputStream;->reportBatchProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/facebook/GraphRequestBatch$Callback;

.field final synthetic this$0:Lcom/facebook/ProgressOutputStream;


# direct methods
.method constructor <init>(Lcom/facebook/ProgressOutputStream;Lcom/facebook/GraphRequestBatch$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ProgressOutputStream$reportBatchProgress$1;->this$0:Lcom/facebook/ProgressOutputStream;

    iput-object p2, p0, Lcom/facebook/ProgressOutputStream$reportBatchProgress$1;->$callback:Lcom/facebook/GraphRequestBatch$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    return-void

    .line 51
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream$reportBatchProgress$1;->$callback:Lcom/facebook/GraphRequestBatch$Callback;

    move-object v1, v0

    check-cast v1, Lcom/facebook/GraphRequestBatch$OnProgressCallback;

    iget-object v0, p0, Lcom/facebook/ProgressOutputStream$reportBatchProgress$1;->this$0:Lcom/facebook/ProgressOutputStream;

    invoke-static {v0}, Lcom/facebook/ProgressOutputStream;->access$getRequests$p(Lcom/facebook/ProgressOutputStream;)Lcom/facebook/GraphRequestBatch;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ProgressOutputStream$reportBatchProgress$1;->this$0:Lcom/facebook/ProgressOutputStream;

    invoke-virtual {v0}, Lcom/facebook/ProgressOutputStream;->getBatchProgress()J

    move-result-wide v3

    iget-object v0, p0, Lcom/facebook/ProgressOutputStream$reportBatchProgress$1;->this$0:Lcom/facebook/ProgressOutputStream;

    invoke-virtual {v0}, Lcom/facebook/ProgressOutputStream;->getMaxProgress()J

    move-result-wide v5

    invoke-interface/range {v1 .. v6}, Lcom/facebook/GraphRequestBatch$OnProgressCallback;->onBatchProgress(Lcom/facebook/GraphRequestBatch;JJ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 52
    :try_start_2
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
