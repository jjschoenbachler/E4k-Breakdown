.class final Lcom/bugsnag/android/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# instance fields
.field private config:Lcom/bugsnag/android/Configuration;

.field private errorFiles:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private errors:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/bugsnag/android/Error;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bugsnag/android/Configuration;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/bugsnag/android/Notification;->config:Lcom/bugsnag/android/Configuration;

    .line 21
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/bugsnag/android/Notification;->errors:Ljava/util/Collection;

    .line 22
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/bugsnag/android/Notification;->errorFiles:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method final addError(Lcom/bugsnag/android/Error;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/bugsnag/android/Notification;->errors:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final addError(Ljava/io/File;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/bugsnag/android/Notification;->errorFiles:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final deliver()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bugsnag/android/HttpClient$NetworkException;,
            Lcom/bugsnag/android/HttpClient$BadResponseException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/bugsnag/android/Notification;->config:Lcom/bugsnag/android/Configuration;

    iget-object v0, v0, Lcom/bugsnag/android/Configuration;->endpoint:Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v1, Lcom/bugsnag/android/JsonStream;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v4}, Lcom/bugsnag/android/JsonStream;-><init>(Ljava/io/Writer;)V

    invoke-interface {p0, v1}, Lcom/bugsnag/android/JsonStream$Streamable;->toStream(Lcom/bugsnag/android/JsonStream;)V

    invoke-virtual {v1}, Lcom/bugsnag/android/JsonStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v3}, Lcom/bugsnag/android/AppData;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    div-int/lit8 v3, v1, 0x64
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-static {v2}, Lcom/bugsnag/android/AppData;->close(Ljava/net/URLConnection;)V

    .line 65
    iget-object v0, p0, Lcom/bugsnag/android/Notification;->errors:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget-object v1, p0, Lcom/bugsnag/android/Notification;->errorFiles:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 64
    :cond_0
    :try_start_5
    new-instance v3, Lcom/bugsnag/android/HttpClient$BadResponseException;

    invoke-direct {v3, v0, v1}, Lcom/bugsnag/android/HttpClient$BadResponseException;-><init>(Ljava/lang/String;I)V

    throw v3

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v3

    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    :goto_0
    invoke-static {v3}, Lcom/bugsnag/android/AppData;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_1
    :try_start_6
    new-instance v3, Lcom/bugsnag/android/HttpClient$NetworkException;

    invoke-direct {v3, v0, v1}, Lcom/bugsnag/android/HttpClient$NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    :goto_2
    invoke-static {v2}, Lcom/bugsnag/android/AppData;->close(Ljava/net/URLConnection;)V

    throw v0
.end method

.method public final toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    const-string v0, "apiKey"

    .line 30
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Notification;->config:Lcom/bugsnag/android/Configuration;

    iget-object v1, v1, Lcom/bugsnag/android/Configuration;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v0, "notifier"

    .line 33
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    invoke-static {}, Lcom/bugsnag/android/Notifier;->getInstance()Lcom/bugsnag/android/Notifier;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bugsnag/android/JsonStream$Streamable;->toStream(Lcom/bugsnag/android/JsonStream;)V

    const-string v0, "events"

    .line 36
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/JsonStream;->beginArray()Lcom/bugsnag/android/JsonWriter;

    .line 39
    iget-object v0, p0, Lcom/bugsnag/android/Notification;->errors:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bugsnag/android/Error;

    .line 40
    invoke-interface {v1, p1}, Lcom/bugsnag/android/JsonStream$Streamable;->toStream(Lcom/bugsnag/android/JsonStream;)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/Notification;->errorFiles:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 45
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/io/File;)V

    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endArray()Lcom/bugsnag/android/JsonWriter;

    .line 52
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endObject()Lcom/bugsnag/android/JsonWriter;

    return-void
.end method
