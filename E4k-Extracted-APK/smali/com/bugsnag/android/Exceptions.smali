.class final Lcom/bugsnag/android/Exceptions;
.super Ljava/lang/Object;
.source "Exceptions.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# instance fields
.field private config:Lcom/bugsnag/android/Configuration;

.field private exception:Ljava/lang/Throwable;

.field private frames:[Ljava/lang/StackTraceElement;

.field private message:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/Configuration;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/bugsnag/android/Exceptions;->config:Lcom/bugsnag/android/Configuration;

    .line 22
    iput-object p2, p0, Lcom/bugsnag/android/Exceptions;->name:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/bugsnag/android/Exceptions;->message:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/bugsnag/android/Exceptions;->frames:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method constructor <init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/bugsnag/android/Exceptions;->config:Lcom/bugsnag/android/Configuration;

    .line 17
    iput-object p2, p0, Lcom/bugsnag/android/Exceptions;->exception:Ljava/lang/Throwable;

    return-void
.end method

.method private exceptionToStream(Lcom/bugsnag/android/JsonStream;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/bugsnag/android/Stacktrace;

    iget-object v1, p0, Lcom/bugsnag/android/Exceptions;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p4}, Lcom/bugsnag/android/Stacktrace;-><init>(Lcom/bugsnag/android/Configuration;[Ljava/lang/StackTraceElement;)V

    .line 46
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    const-string p4, "errorClass"

    .line 47
    invoke-virtual {p1, p4}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string p2, "message"

    .line 48
    invoke-virtual {p1, p2}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string p2, "stacktrace"

    .line 49
    invoke-virtual {p1, p2}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/bugsnag/android/JsonStream$Streamable;->toStream(Lcom/bugsnag/android/JsonStream;)V

    .line 50
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endObject()Lcom/bugsnag/android/JsonWriter;

    return-void
.end method


# virtual methods
.method public final toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginArray()Lcom/bugsnag/android/JsonWriter;

    .line 30
    iget-object v0, p0, Lcom/bugsnag/android/Exceptions;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/bugsnag/android/Exceptions;->exception:Ljava/lang/Throwable;

    :goto_0
    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/bugsnag/android/Exceptions;->exceptionToStream(Lcom/bugsnag/android/JsonStream;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/Exceptions;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/bugsnag/android/Exceptions;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/bugsnag/android/Exceptions;->frames:[Ljava/lang/StackTraceElement;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/bugsnag/android/Exceptions;->exceptionToStream(Lcom/bugsnag/android/JsonStream;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 41
    :cond_1
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endArray()Lcom/bugsnag/android/JsonWriter;

    return-void
.end method
