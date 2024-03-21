.class public final Lcom/google/android/gms/ads/internal/zzi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/google/android/gms/internal/ads/zzaao;


# instance fields
.field final zza:Ljava/util/concurrent/CountDownLatch;

.field private final zzb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzaao;",
            ">;"
        }
    .end annotation
.end field

.field private final zzd:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzaao;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Z

.field private final zzf:Z

.field private final zzg:Z

.field private final zzh:Ljava/util/concurrent/Executor;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzfii;

.field private zzj:Landroid/content/Context;

.field private final zzk:Landroid/content/Context;

.field private zzl:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final zzn:Z

.field private zzo:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzb:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zza:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzj:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzk:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzi;->zzl:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzi;->zzm:Lcom/google/android/gms/internal/ads/zzcgz;

    .line 5
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzi;->zzh:Ljava/util/concurrent/Executor;

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbjl;->zzby:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p2

    .line 6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/zzi;->zzn:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzh:Ljava/util/concurrent/Executor;

    .line 8
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzfii;->zza(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Lcom/google/android/gms/internal/ads/zzfii;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzi:Lcom/google/android/gms/internal/ads/zzfii;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzbu:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzf:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzbz:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzg:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzbx:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzo:I

    goto :goto_0

    .line 25
    :cond_0
    iput v1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzo:I

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzj:Landroid/content/Context;

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzi;->zzi:Lcom/google/android/gms/internal/ads/zzfii;

    new-instance v0, Lcom/google/android/gms/ads/internal/zzh;

    .line 15
    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/zzh;-><init>(Lcom/google/android/gms/ads/internal/zzi;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfke;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzi;->zzj:Landroid/content/Context;

    .line 16
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfjk;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfii;)I

    move-result p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbjl;->zzbv:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p2

    .line 18
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {v2, v3, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzfke;-><init>(Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfjl;Z)V

    .line 19
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfke;->zzd(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzi;->zze:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzbT:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 22
    sget-object p1, Lcom/google/android/gms/internal/ads/zzchg;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzfsn;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 23
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zza()Lcom/google/android/gms/internal/ads/zzcgm;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgm;->zzp()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 24
    sget-object p1, Lcom/google/android/gms/internal/ads/zzchg;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzfsn;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 25
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzi;->run()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzi;)Lcom/google/android/gms/internal/ads/zzfii;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzi:Lcom/google/android/gms/internal/ads/zzfii;

    return-object p0
.end method

.method private final zze()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzaao;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzb:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzb:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 4
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 5
    aget-object v2, v2, v4

    check-cast v2, Landroid/view/MotionEvent;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzaao;->zzj(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    const/4 v6, 0x3

    if-ne v3, v6, :cond_1

    .line 6
    aget-object v3, v2, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v4, v2, v5

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    aget-object v2, v2, v5

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzaao;->zzk(III)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzb:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private final zzf(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzl:Lcom/google/android/gms/internal/ads/zzcgz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcgz;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzj:Landroid/content/Context;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzi;->zzh(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/ads/internal/zzi;->zzo:I

    .line 3
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzaar;->zzt(Ljava/lang/String;Landroid/content/Context;ZI)Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private final zzg()Lcom/google/android/gms/internal/ads/zzaao;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzd()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaao;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaao;

    return-object v0
.end method

.method private static final zzh(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzl:Lcom/google/android/gms/internal/ads/zzcgz;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzcgz;->zzd:Z

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbjl;->zzaH:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzd()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 4
    invoke-direct {p0, v3}, Lcom/google/android/gms/ads/internal/zzi;->zzf(Z)V

    iget v1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzo:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzh:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/ads/internal/zzg;

    .line 5
    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/ads/internal/zzg;-><init>(Lcom/google/android/gms/ads/internal/zzi;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzi;->zzl:Lcom/google/android/gms/internal/ads/zzcgz;

    .line 7
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzcgz;->zza:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzi;->zzj:Landroid/content/Context;

    .line 8
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/zzi;->zzh(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    iget-boolean v7, p0, Lcom/google/android/gms/ads/internal/zzi;->zzn:Z

    .line 9
    invoke-static {v5, v6, v3, v7}, Lcom/google/android/gms/internal/ads/zzaal;->zzf(Ljava/lang/String;Landroid/content/Context;ZZ)Lcom/google/android/gms/internal/ads/zzaal;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzi;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-boolean v6, p0, Lcom/google/android/gms/ads/internal/zzi;->zzg:Z

    if-eqz v6, :cond_2

    .line 11
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaal;->zzg()Z

    move-result v5

    if-nez v5, :cond_2

    iput v4, p0, Lcom/google/android/gms/ads/internal/zzi;->zzo:I

    .line 12
    invoke-direct {p0, v3}, Lcom/google/android/gms/ads/internal/zzi;->zzf(Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 17
    :try_start_2
    iput v4, p0, Lcom/google/android/gms/ads/internal/zzi;->zzo:I

    .line 13
    invoke-direct {p0, v3}, Lcom/google/android/gms/ads/internal/zzi;->zzf(Z)V

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzi;->zzi:Lcom/google/android/gms/internal/ads/zzfii;

    const/16 v4, 0x7ef

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    sub-long/2addr v6, v1

    .line 15
    invoke-virtual {v3, v4, v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzfii;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzi;->zza:Ljava/util/concurrent/CountDownLatch;

    .line 16
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzj:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzl:Lcom/google/android/gms/internal/ads/zzcgz;

    return-void

    :catchall_0
    move-exception v1

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi;->zza:Ljava/util/concurrent/CountDownLatch;

    .line 16
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzj:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzl:Lcom/google/android/gms/internal/ads/zzcgz;

    .line 17
    throw v1
.end method

.method public final zzb()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zza:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Interrupted during GADSignals creation."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zze;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method final synthetic zzc(Z)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi;->zzm:Lcom/google/android/gms/internal/ads/zzcgz;

    .line 2
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcgz;->zza:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzi;->zzk:Landroid/content/Context;

    .line 3
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/zzi;->zzh(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/ads/internal/zzi;->zzn:Z

    .line 4
    invoke-static {v2, v3, p1, v4}, Lcom/google/android/gms/internal/ads/zzaal;->zzf(Ljava/lang/String;Landroid/content/Context;ZZ)Lcom/google/android/gms/internal/ads/zzaal;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzq()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzi;->zzi:Lcom/google/android/gms/internal/ads/zzfii;

    const/16 v3, 0x7eb

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 7
    invoke-virtual {v2, v3, v4, v5, p1}, Lcom/google/android/gms/internal/ads/zzfii;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method protected final zzd()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzf:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zze:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzo:I

    return v0
.end method

.method public final zzj(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzaao;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->zze()V

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaao;->zzj(Landroid/view/MotionEvent;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzb:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzk(III)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzaao;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->zze()V

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaao;->zzk(III)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzb:Ljava/util/List;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzl(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzaao;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjl;->zzgV:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p3, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzM(Landroid/view/View;ILandroid/view/MotionEvent;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->zze()V

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzi;->zzh(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 8
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzaao;->zzl(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public final zzm(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/ads/internal/zzi;->zzl(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzn(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzaao;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaao;->zzn(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final zzo(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbjl;->zzgU:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p3

    .line 1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzb()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzaao;

    move-result-object p3

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbjl;->zzgV:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzM(Landroid/view/View;ILandroid/view/MotionEvent;)V

    :cond_0
    if-eqz p3, :cond_3

    .line 8
    invoke-interface {p3, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzaao;->zzo(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzaao;

    move-result-object p3

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbjl;->zzgV:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzM(Landroid/view/View;ILandroid/view/MotionEvent;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 13
    invoke-interface {p3, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzaao;->zzo(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method public final zzp(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzaao;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzi;->zze()V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzi;->zzh(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaao;->zzp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method
