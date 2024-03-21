.class final Lcom/bugsnag/android/ErrorStore;
.super Ljava/lang/Object;
.source "ErrorStore.java"


# instance fields
.field private final config:Lcom/bugsnag/android/Configuration;

.field private final path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/Configuration;Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/bugsnag/android/ErrorStore;->config:Lcom/bugsnag/android/Configuration;

    const/4 p1, 0x0

    .line 24
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/bugsnag-errors/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 26
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "Could not prepare error storage directory"

    .line 29
    invoke-static {p2}, Lcom/bugsnag/android/AppData;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "Could not prepare error storage directory"

    .line 33
    invoke-static {v0, p2}, Lcom/bugsnag/android/AppData;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    :goto_0
    iput-object p1, p0, Lcom/bugsnag/android/ErrorStore;->path:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/bugsnag/android/ErrorStore;)Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/bugsnag/android/ErrorStore;->path:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/bugsnag/android/ErrorStore;)Lcom/bugsnag/android/Configuration;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/bugsnag/android/ErrorStore;->config:Lcom/bugsnag/android/Configuration;

    return-object p0
.end method


# virtual methods
.method final flush()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/bugsnag/android/ErrorStore;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    new-instance v0, Lcom/bugsnag/android/ErrorStore$1;

    invoke-direct {v0, p0}, Lcom/bugsnag/android/ErrorStore$1;-><init>(Lcom/bugsnag/android/ErrorStore;)V

    invoke-static {v0}, Lcom/bugsnag/android/Async;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method final write(Lcom/bugsnag/android/Error;)V
    .locals 6

    .line 76
    iget-object v0, p0, Lcom/bugsnag/android/ErrorStore;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "%s%d.json"

    const/4 v1, 0x2

    .line 78
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/bugsnag/android/ErrorStore;->path:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 81
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    :try_start_1
    new-instance v1, Lcom/bugsnag/android/JsonStream;

    invoke-direct {v1, v2}, Lcom/bugsnag/android/JsonStream;-><init>(Ljava/io/Writer;)V

    .line 84
    invoke-interface {p1, v1}, Lcom/bugsnag/android/JsonStream$Streamable;->toStream(Lcom/bugsnag/android/JsonStream;)V

    .line 85
    invoke-virtual {v1}, Lcom/bugsnag/android/JsonStream;->close()V

    const-string p1, "Saved unsent error to disk (%s) "

    .line 87
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bugsnag/android/AppData;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    invoke-static {v2}, Lcom/bugsnag/android/AppData;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_0
    :try_start_2
    const-string v2, "Couldn\'t save unsent error to disk (%s) "

    .line 89
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bugsnag/android/AppData;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 91
    invoke-static {v1}, Lcom/bugsnag/android/AppData;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :goto_1
    invoke-static {v2}, Lcom/bugsnag/android/AppData;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method
