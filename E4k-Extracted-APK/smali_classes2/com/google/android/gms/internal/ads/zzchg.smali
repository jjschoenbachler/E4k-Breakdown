.class public final Lcom/google/android/gms/internal/ads/zzchg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzfsn;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzfsn;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzfsn;

.field public static final zzd:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final zze:Lcom/google/android/gms/internal/ads/zzfsn;

.field public static final zzf:Lcom/google/android/gms/internal/ads/zzfsn;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfkz;->zza()Lcom/google/android/gms/internal/ads/zzfkw;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzchc;

    const-string v1, "Default"

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzchc;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzchc;

    const-string v1, "Default"

    .line 6
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzchc;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    const v3, 0x7fffffff

    const-wide/16 v4, 0xa

    move-object v1, v0

    .line 7
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 4
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzche;

    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzche;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzchf;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzchg;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 9
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfkz;->zza()Lcom/google/android/gms/internal/ads/zzfkw;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzchc;

    const-string v4, "Loader"

    .line 11
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzchc;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x5

    .line 12
    invoke-interface {v0, v4, v3, v1}, Lcom/google/android/gms/internal/ads/zzfkw;->zza(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_1

    .line 25
    :cond_1
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 13
    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v10, Lcom/google/android/gms/internal/ads/zzchc;

    const-string v3, "Loader"

    .line 14
    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/ads/zzchc;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x5

    const/4 v5, 0x5

    const-wide/16 v6, 0xa

    move-object v3, v0

    .line 15
    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 12
    :goto_1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzche;

    .line 17
    invoke-direct {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzche;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzchf;)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzchg;->zzb:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 18
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfkz;->zza()Lcom/google/android/gms/internal/ads/zzfkw;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzchc;

    const-string v4, "Activeview"

    .line 20
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzchc;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-interface {v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzfkw;->zzc(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_2

    .line 33
    :cond_2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 22
    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v10, Lcom/google/android/gms/internal/ads/zzchc;

    const-string v3, "Activeview"

    .line 23
    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/ads/zzchc;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide/16 v6, 0xa

    move-object v3, v0

    .line 24
    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 21
    :goto_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzche;

    .line 26
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzche;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzchf;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzchg;->zzc:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/zzchb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzchc;

    const-string v3, "Schedule"

    .line 28
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/zzchc;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 29
    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzchb;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzchg;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzchd;

    .line 30
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzchd;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzche;

    .line 31
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzche;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzchf;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzchg;->zze:Lcom/google/android/gms/internal/ads/zzfsn;

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfst;->zza()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzche;

    .line 33
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzche;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzchf;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzchg;->zzf:Lcom/google/android/gms/internal/ads/zzfsn;

    return-void
.end method
