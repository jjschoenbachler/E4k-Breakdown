.class final Lcom/bugsnag/android/ThreadState;
.super Ljava/lang/Object;
.source "ThreadState.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# instance fields
.field private config:Lcom/bugsnag/android/Configuration;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/Configuration;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/bugsnag/android/ThreadState;->config:Lcom/bugsnag/android/Configuration;

    return-void
.end method


# virtual methods
.method public final toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 20
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 23
    new-instance v4, Lcom/bugsnag/android/ThreadState$1;

    invoke-direct {v4, p0}, Lcom/bugsnag/android/ThreadState$1;-><init>(Lcom/bugsnag/android/ThreadState;)V

    invoke-static {v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 29
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginArray()Lcom/bugsnag/android/JsonWriter;

    const/4 v4, 0x0

    .line 30
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 31
    aget-object v5, v3, v4

    check-cast v5, Ljava/lang/Thread;

    .line 35
    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    cmp-long v8, v6, v0

    if-eqz v8, :cond_0

    .line 36
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/StackTraceElement;

    .line 38
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    const-string v7, "id"

    .line 39
    invoke-virtual {p1, v7}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/bugsnag/android/JsonStream;->value(J)Lcom/bugsnag/android/JsonWriter;

    const-string v7, "name"

    .line 40
    invoke-virtual {p1, v7}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v5, "stacktrace"

    .line 41
    invoke-virtual {p1, v5}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v5

    new-instance v7, Lcom/bugsnag/android/Stacktrace;

    iget-object v8, p0, Lcom/bugsnag/android/ThreadState;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v7, v8, v6}, Lcom/bugsnag/android/Stacktrace;-><init>(Lcom/bugsnag/android/Configuration;[Ljava/lang/StackTraceElement;)V

    invoke-interface {v7, v5}, Lcom/bugsnag/android/JsonStream$Streamable;->toStream(Lcom/bugsnag/android/JsonStream;)V

    .line 42
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endObject()Lcom/bugsnag/android/JsonWriter;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endArray()Lcom/bugsnag/android/JsonWriter;

    return-void
.end method
