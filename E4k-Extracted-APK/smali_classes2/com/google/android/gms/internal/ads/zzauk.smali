.class final Lcom/google/android/gms/internal/ads/zzauk;
.super Landroid/os/Handler;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/ads/zzaul;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final zza:I

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzaun;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaul;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/ads/zzauj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzauj<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final zze:J

.field private zzf:Ljava/io/IOException;

.field private zzg:I

.field private volatile zzh:Ljava/lang/Thread;

.field private volatile zzi:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaun;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzaul;Lcom/google/android/gms/internal/ads/zzauj;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lcom/google/android/gms/internal/ads/zzauj<",
            "TT;>;IJ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzb:Lcom/google/android/gms/internal/ads/zzaun;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzc:Lcom/google/android/gms/internal/ads/zzaul;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzd:Lcom/google/android/gms/internal/ads/zzauj;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzauk;->zza:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzauk;->zze:J

    return-void
.end method

.method private final zzd()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzf:Ljava/io/IOException;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzb:Lcom/google/android/gms/internal/ads/zzaun;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaun;->zza(Lcom/google/android/gms/internal/ads/zzaun;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzb:Lcom/google/android/gms/internal/ads/zzaun;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaun;->zzb(Lcom/google/android/gms/internal/ads/zzaun;)Lcom/google/android/gms/internal/ads/zzauk;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzi:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzauk;->zzd()V

    return-void

    .line 3
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzb:Lcom/google/android/gms/internal/ads/zzaun;

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaun;->zzc(Lcom/google/android/gms/internal/ads/zzaun;Lcom/google/android/gms/internal/ads/zzauk;)Lcom/google/android/gms/internal/ads/zzauk;

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzauk;->zze:J

    sub-long v6, v4, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzc:Lcom/google/android/gms/internal/ads/zzaul;

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaul;->zzd()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzd:Lcom/google/android/gms/internal/ads/zzauj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzc:Lcom/google/android/gms/internal/ads/zzaul;

    const/4 v8, 0x0

    .line 7
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzauj;->zzz(Lcom/google/android/gms/internal/ads/zzaul;JJZ)V

    return-void

    .line 8
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 9
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/IOException;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzf:Ljava/io/IOException;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzd:Lcom/google/android/gms/internal/ads/zzauj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzc:Lcom/google/android/gms/internal/ads/zzaul;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzf:Ljava/io/IOException;

    .line 10
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzauj;->zzy(Lcom/google/android/gms/internal/ads/zzaul;JJLjava/io/IOException;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzb:Lcom/google/android/gms/internal/ads/zzaun;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzf:Ljava/io/IOException;

    .line 11
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaun;->zzd(Lcom/google/android/gms/internal/ads/zzaun;Ljava/io/IOException;)Ljava/io/IOException;

    return-void

    :cond_3
    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzg:I

    add-int/2addr v0, p1

    .line 11
    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzg:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 p1, 0x1388

    .line 12
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v0, p1

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzauk;->zzb(J)V

    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzd:Lcom/google/android/gms/internal/ads/zzauj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzc:Lcom/google/android/gms/internal/ads/zzaul;

    .line 14
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzauj;->zzA(Lcom/google/android/gms/internal/ads/zzaul;JJ)V

    return-void

    .line 16
    :pswitch_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzd:Lcom/google/android/gms/internal/ads/zzauj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzc:Lcom/google/android/gms/internal/ads/zzaul;

    const/4 v8, 0x0

    .line 15
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzauj;->zzz(Lcom/google/android/gms/internal/ads/zzaul;JJZ)V

    return-void

    :cond_5
    :goto_1
    return-void

    .line 16
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final run()V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzh:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzc:Lcom/google/android/gms/internal/ads/zzaul;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaul;->zzd()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "load:"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzc:Lcom/google/android/gms/internal/ads/zzaul;

    .line 3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 7
    :cond_0
    new-instance v3, Ljava/lang/String;

    .line 3
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzavc;->zza(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzc:Lcom/google/android/gms/internal/ads/zzaul;

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaul;->zze()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzavc;->zzb()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzavc;->zzb()V

    .line 6
    throw v2

    .line 5
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzi:Z

    if-nez v2, :cond_3

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzauk;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "LoadTask"

    const-string v2, "Unexpected error loading stream"

    .line 8
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzi:Z

    if-nez v1, :cond_2

    const/4 v1, 0x4

    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzauk;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 10
    :cond_2
    throw v0

    :catch_1
    move-exception v0

    const-string v2, "LoadTask"

    const-string v3, "OutOfMemory error loading stream"

    .line 11
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzi:Z

    if-nez v2, :cond_3

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaum;

    .line 12
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzaum;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzauk;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_2
    move-exception v0

    const-string v2, "LoadTask"

    const-string v3, "Unexpected exception loading stream"

    .line 13
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzi:Z

    if-nez v2, :cond_3

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaum;

    .line 14
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzaum;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzauk;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_3
    nop

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzc:Lcom/google/android/gms/internal/ads/zzaul;

    .line 15
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaul;->zzd()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaup;->zzd(Z)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzi:Z

    if-nez v1, :cond_3

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzauk;->sendEmptyMessage(I)Z

    return-void

    :catch_4
    move-exception v0

    .line 3
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzi:Z

    if-nez v2, :cond_3

    .line 17
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzauk;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_3
    return-void
.end method

.method public final zza(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzf:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzg:I

    if-gt v1, p1, :cond_0

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzb(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzb:Lcom/google/android/gms/internal/ads/zzaun;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaun;->zzb(Lcom/google/android/gms/internal/ads/zzaun;)Lcom/google/android/gms/internal/ads/zzauk;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaup;->zzd(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzb:Lcom/google/android/gms/internal/ads/zzaun;

    .line 2
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzaun;->zzc(Lcom/google/android/gms/internal/ads/zzaun;Lcom/google/android/gms/internal/ads/zzauk;)Lcom/google/android/gms/internal/ads/zzauk;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzauk;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzauk;->zzd()V

    return-void
.end method

.method public final zzc(Z)V
    .locals 8

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzi:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzf:Ljava/io/IOException;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzauk;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzauk;->removeMessages(I)V

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzauk;->sendEmptyMessage(I)Z

    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzc:Lcom/google/android/gms/internal/ads/zzaul;

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaul;->zzc()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzh:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzh:Ljava/lang/Thread;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzb:Lcom/google/android/gms/internal/ads/zzaun;

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaun;->zzc(Lcom/google/android/gms/internal/ads/zzaun;Lcom/google/android/gms/internal/ads/zzauk;)Lcom/google/android/gms/internal/ads/zzauk;

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzd:Lcom/google/android/gms/internal/ads/zzauj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauk;->zzc:Lcom/google/android/gms/internal/ads/zzaul;

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzauk;->zze:J

    sub-long v5, v3, v5

    const/4 v7, 0x1

    .line 8
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzauj;->zzz(Lcom/google/android/gms/internal/ads/zzaul;JJZ)V

    return-void
.end method
