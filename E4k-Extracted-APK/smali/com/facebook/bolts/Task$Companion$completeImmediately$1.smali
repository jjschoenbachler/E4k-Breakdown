.class final Lcom/facebook/bolts/Task$Companion$completeImmediately$1;
.super Ljava/lang/Object;
.source "Task.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/bolts/Task$Companion;->completeImmediately(Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003\"\u0004\u0008\u0002\u0010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "TContinuationResult",
        "TResult",
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
.field final synthetic $continuation:Lcom/facebook/bolts/Continuation;

.field final synthetic $ct:Lcom/facebook/bolts/CancellationToken;

.field final synthetic $task:Lcom/facebook/bolts/Task;

.field final synthetic $tcs:Lcom/facebook/bolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/bolts/Task$Companion$completeImmediately$1;->$ct:Lcom/facebook/bolts/CancellationToken;

    iput-object p2, p0, Lcom/facebook/bolts/Task$Companion$completeImmediately$1;->$tcs:Lcom/facebook/bolts/TaskCompletionSource;

    iput-object p3, p0, Lcom/facebook/bolts/Task$Companion$completeImmediately$1;->$continuation:Lcom/facebook/bolts/Continuation;

    iput-object p4, p0, Lcom/facebook/bolts/Task$Companion$completeImmediately$1;->$task:Lcom/facebook/bolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_1

    return-void

    .line 902
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/bolts/Task$Companion$completeImmediately$1;->$ct:Lcom/facebook/bolts/CancellationToken;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/bolts/Task$Companion$completeImmediately$1;->$ct:Lcom/facebook/bolts/CancellationToken;

    invoke-virtual {v0}, Lcom/facebook/bolts/CancellationToken;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 903
    iget-object v0, p0, Lcom/facebook/bolts/Task$Companion$completeImmediately$1;->$tcs:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/facebook/bolts/TaskCompletionSource;->setCancelled()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    .line 907
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/facebook/bolts/Task$Companion$completeImmediately$1;->$continuation:Lcom/facebook/bolts/Continuation;

    iget-object v1, p0, Lcom/facebook/bolts/Task$Companion$completeImmediately$1;->$task:Lcom/facebook/bolts/Task;

    invoke-interface {v0, v1}, Lcom/facebook/bolts/Continuation;->then(Lcom/facebook/bolts/Task;)Ljava/lang/Object;

    move-result-object v0

    .line 908
    iget-object v1, p0, Lcom/facebook/bolts/Task$Companion$completeImmediately$1;->$tcs:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lcom/facebook/bolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 912
    :try_start_3
    iget-object v1, p0, Lcom/facebook/bolts/Task$Companion$completeImmediately$1;->$tcs:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 910
    :catch_1
    iget-object v0, p0, Lcom/facebook/bolts/Task$Companion$completeImmediately$1;->$tcs:Lcom/facebook/bolts/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/facebook/bolts/TaskCompletionSource;->setCancelled()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :goto_0
    return-void

    :catch_2
    move-exception v0

    .line 914
    :try_start_4
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    return-void

    :catch_3
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
