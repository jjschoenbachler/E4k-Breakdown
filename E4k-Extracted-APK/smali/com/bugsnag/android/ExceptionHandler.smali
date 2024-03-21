.class final Lcom/bugsnag/android/ExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private clientMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/bugsnag/android/Client;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private originalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/ExceptionHandler;->clientMap:Ljava/util/WeakHashMap;

    .line 45
    iput-object p1, p0, Lcom/bugsnag/android/ExceptionHandler;->originalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method static disable(Lcom/bugsnag/android/Client;)V
    .locals 2

    .line 31
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 32
    instance-of v1, v0, Lcom/bugsnag/android/ExceptionHandler;

    if-eqz v1, :cond_0

    .line 34
    check-cast v0, Lcom/bugsnag/android/ExceptionHandler;

    .line 35
    iget-object v1, v0, Lcom/bugsnag/android/ExceptionHandler;->clientMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object p0, v0, Lcom/bugsnag/android/ExceptionHandler;->clientMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->size()I

    move-result p0

    if-nez p0, :cond_0

    .line 39
    iget-object p0, v0, Lcom/bugsnag/android/ExceptionHandler;->originalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method

.method static enable(Lcom/bugsnag/android/Client;)V
    .locals 2

    .line 14
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 18
    instance-of v1, v0, Lcom/bugsnag/android/ExceptionHandler;

    if-eqz v1, :cond_0

    .line 19
    check-cast v0, Lcom/bugsnag/android/ExceptionHandler;

    goto :goto_0

    .line 21
    :cond_0
    new-instance v1, Lcom/bugsnag/android/ExceptionHandler;

    invoke-direct {v1, v0}, Lcom/bugsnag/android/ExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 22
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    move-object v0, v1

    .line 26
    :goto_0
    iget-object v0, v0, Lcom/bugsnag/android/ExceptionHandler;->clientMap:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/bugsnag/android/ExceptionHandler;->clientMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bugsnag/android/Client;

    .line 51
    sget-object v2, Lcom/bugsnag/android/Severity;->ERROR:Lcom/bugsnag/android/Severity;

    invoke-virtual {v1, p2, v2}, Lcom/bugsnag/android/Client;->notify(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/ExceptionHandler;->originalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/bugsnag/android/ExceptionHandler;->originalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    .line 58
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Exception in thread \"%s\" "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 59
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    return-void
.end method
