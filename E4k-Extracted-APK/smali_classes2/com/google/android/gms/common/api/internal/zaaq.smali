.class abstract Lcom/google/android/gms/common/api/internal/zaaq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zab:Lcom/google/android/gms/common/api/internal/zaar;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/common/api/internal/zaah;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaq;->zab:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaq;->zab:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zak(Lcom/google/android/gms/common/api/internal/zaar;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaq;->zab:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zak(Lcom/google/android/gms/common/api/internal/zaar;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaaq;->zaa()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaq;->zab:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zak(Lcom/google/android/gms/common/api/internal/zaar;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaq;->zab:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zaar;->zal(Lcom/google/android/gms/common/api/internal/zaar;)Lcom/google/android/gms/common/api/internal/zabd;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zabd;->zas(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaq;->zab:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zak(Lcom/google/android/gms/common/api/internal/zaar;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    goto :goto_0

    .line 5
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaq;->zab:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zaar;->zak(Lcom/google/android/gms/common/api/internal/zaar;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6
    throw v0

    :goto_2
    nop

    goto :goto_2
.end method

.method protected abstract zaa()V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method