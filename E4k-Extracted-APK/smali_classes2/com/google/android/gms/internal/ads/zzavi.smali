.class final Lcom/google/android/gms/internal/ads/zzavi;
.super Landroid/os/HandlerThread;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final zza:[I

.field private zzb:Landroid/os/Handler;

.field private zzc:Landroid/graphics/SurfaceTexture;

.field private zzd:Ljava/lang/Error;

.field private zze:Ljava/lang/RuntimeException;

.field private zzf:Lcom/google/android/gms/internal/ads/zzavk;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "dummySurface"

    .line 1
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavi;->zza:[I

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 14

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzc:Landroid/graphics/SurfaceTexture;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzf:Lcom/google/android/gms/internal/ads/zzavk;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzc:Landroid/graphics/SurfaceTexture;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zza:[I

    .line 3
    invoke-static {v2, p1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzavi;->quit()Z

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 28
    :try_start_2
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzf:Lcom/google/android/gms/internal/ads/zzavk;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzc:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavi;->zza:[I

    .line 3
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 4
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_3
    const-string v0, "DummySurface"

    const-string v1, "Failed to release dummy surface"

    .line 5
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :goto_1
    return v2

    :catchall_2
    move-exception p1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzavi;->quit()Z

    .line 7
    throw p1

    .line 6
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzc:Landroid/graphics/SurfaceTexture;

    .line 8
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return v2

    .line 9
    :pswitch_2
    :try_start_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_2
    invoke-static {v3}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    goto :goto_3

    :cond_1
    const/4 v4, 0x0

    :goto_3
    const-string v5, "eglGetDisplay failed"

    .line 11
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzaup;->zze(ZLjava/lang/Object;)V

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 12
    invoke-static {v0, v4, v3, v4, v2}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v4

    const-string v5, "eglInitialize failed"

    .line 13
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzaup;->zze(ZLjava/lang/Object;)V

    const/16 v4, 0x11

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    new-array v12, v2, [Landroid/opengl/EGLConfig;

    new-array v13, v2, [I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x0

    move-object v4, v0

    move-object v7, v12

    move-object v10, v13

    .line 14
    invoke-static/range {v4 .. v11}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v4

    if-eqz v4, :cond_2

    aget v4, v13, v3

    if-lez v4, :cond_2

    aget-object v4, v12, v3

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_4

    :cond_2
    const/4 v4, 0x0

    :goto_4
    const-string v5, "eglChooseConfig failed"

    .line 15
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzaup;->zze(ZLjava/lang/Object;)V

    aget-object v4, v12, v3

    const/4 v5, 0x5

    if-eqz p1, :cond_3

    new-array v6, v5, [I

    fill-array-data v6, :array_1

    goto :goto_5

    :cond_3
    const/4 v6, 0x3

    .line 28
    new-array v6, v6, [I

    fill-array-data v6, :array_2

    .line 15
    :goto_5
    sget-object v7, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 16
    invoke-static {v0, v4, v7, v6, v3}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v6

    if-eqz v6, :cond_4

    const/4 v7, 0x1

    goto :goto_6

    :cond_4
    const/4 v7, 0x0

    :goto_6
    const-string v8, "eglCreateContext failed"

    .line 17
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzaup;->zze(ZLjava/lang/Object;)V

    if-eqz p1, :cond_5

    const/4 v5, 0x7

    new-array v5, v5, [I

    fill-array-data v5, :array_3

    goto :goto_7

    .line 28
    :cond_5
    new-array v5, v5, [I

    fill-array-data v5, :array_4

    .line 18
    :goto_7
    invoke-static {v0, v4, v5, v3}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v5, 0x1

    goto :goto_8

    :cond_6
    const/4 v5, 0x0

    :goto_8
    const-string v7, "eglCreatePbufferSurface failed"

    .line 19
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzaup;->zze(ZLjava/lang/Object;)V

    .line 20
    invoke-static {v0, v4, v4, v6}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    const-string v4, "eglMakeCurrent failed"

    .line 21
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzaup;->zze(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavi;->zza:[I

    .line 22
    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzavi;->zza:[I

    .line 23
    aget v3, v4, v3

    invoke-direct {v0, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzc:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzc:Landroid/graphics/SurfaceTexture;

    .line 24
    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzavk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzc:Landroid/graphics/SurfaceTexture;

    .line 25
    invoke-direct {v0, p0, v3, p1, v1}, Lcom/google/android/gms/internal/ads/zzavk;-><init>(Lcom/google/android/gms/internal/ads/zzavi;Landroid/graphics/SurfaceTexture;ZLcom/google/android/gms/internal/ads/zzavj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzf:Lcom/google/android/gms/internal/ads/zzavk;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    monitor-enter p0

    .line 27
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 28
    monitor-exit p0

    goto :goto_9

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1

    :catchall_4
    move-exception p1

    goto :goto_a

    :catch_0
    move-exception p1

    :try_start_6
    const-string v0, "DummySurface"

    const-string v1, "Failed to initialize dummy surface"

    .line 26
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzd:Ljava/lang/Error;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    monitor-enter p0

    .line 27
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 28
    monitor-exit p0

    goto :goto_9

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw p1

    :catch_1
    move-exception p1

    :try_start_8
    const-string v0, "DummySurface"

    const-string v1, "Failed to initialize dummy surface"

    .line 29
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zze:Ljava/lang/RuntimeException;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    monitor-enter p0

    .line 27
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 28
    monitor-exit p0

    :goto_9
    return v2

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw p1

    :goto_a
    monitor-enter p0

    .line 27
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 28
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 30
    throw p1

    :catchall_7
    move-exception p1

    .line 28
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw p1

    :goto_b
    nop

    goto :goto_b

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3027
        0x3038
        0x3033
        0x4
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x32c0
        0x1
        0x3038
    .end array-data

    :array_2
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data

    :array_3
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x32c0
        0x1
        0x3038
    .end array-data

    :array_4
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzb:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final zza(Z)Lcom/google/android/gms/internal/ads/zzavk;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzavi;->start()V

    new-instance v0, Landroid/os/Handler;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzavi;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzb:Landroid/os/Handler;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzb:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzf:Lcom/google/android/gms/internal/ads/zzavk;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zze:Ljava/lang/RuntimeException;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzd:Ljava/lang/Error;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 4
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zze:Ljava/lang/RuntimeException;

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzd:Ljava/lang/Error;

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzf:Lcom/google/android/gms/internal/ads/zzavk;

    return-object p1

    :cond_2
    throw p1

    .line 7
    :cond_3
    throw p1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :goto_1
    nop

    goto :goto_1
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavi;->zzb:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
