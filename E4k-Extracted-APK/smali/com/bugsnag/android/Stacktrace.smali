.class final Lcom/bugsnag/android/Stacktrace;
.super Ljava/lang/Object;
.source "Stacktrace.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# instance fields
.field private config:Lcom/bugsnag/android/Configuration;

.field private stacktrace:[Ljava/lang/StackTraceElement;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/Configuration;[Ljava/lang/StackTraceElement;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/bugsnag/android/Stacktrace;->config:Lcom/bugsnag/android/Configuration;

    .line 15
    iput-object p2, p0, Lcom/bugsnag/android/Stacktrace;->stacktrace:[Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public final toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginArray()Lcom/bugsnag/android/JsonWriter;

    .line 21
    iget-object v0, p0, Lcom/bugsnag/android/Stacktrace;->stacktrace:[Ljava/lang/StackTraceElement;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 23
    :try_start_0
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    const-string v4, "method"

    .line 24
    invoke-virtual {p1, v4}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v4, "file"

    .line 25
    invoke-virtual {p1, v4}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, "Unknown"

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v4, "lineNumber"

    .line 26
    invoke-virtual {p1, v4}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/bugsnag/android/JsonStream;->value(J)Lcom/bugsnag/android/JsonWriter;

    .line 28
    iget-object v4, p0, Lcom/bugsnag/android/Stacktrace;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/bugsnag/android/Configuration;->inProject(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "inProject"

    .line 29
    invoke-virtual {p1, v3}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/bugsnag/android/JsonStream;->value(Z)Lcom/bugsnag/android/JsonWriter;

    .line 32
    :cond_1
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endObject()Lcom/bugsnag/android/JsonWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 34
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endArray()Lcom/bugsnag/android/JsonWriter;

    return-void
.end method
