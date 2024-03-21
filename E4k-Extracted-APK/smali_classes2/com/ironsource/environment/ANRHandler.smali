.class public Lcom/ironsource/environment/ANRHandler;
.super Ljava/lang/Thread;
.source "ANRHandler.java"


# static fields
.field private static final DEFAULT_ANR_LISTENER:Lcom/ironsource/environment/ANRListener;

.field private static final DEFAULT_INTERRUPTION_LISTENER:Lcom/ironsource/environment/InterruptionListener;

.field private static final DEFAULT_NUM_TRIES:I = 0x1


# instance fields
.field private _anrListener:Lcom/ironsource/environment/ANRListener;

.field private _ignoreDebugger:Z

.field private _interruptionListener:Lcom/ironsource/environment/InterruptionListener;

.field private _logThreadsWithoutStackTrace:Z

.field private _namePrefix:Ljava/lang/String;

.field private volatile _tick:I

.field private final _ticker:Ljava/lang/Runnable;

.field private final _timeoutInterval:I

.field private final _uiHandler:Landroid/os/Handler;

.field private triedCount:I

.field private tries:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/ironsource/environment/ANRHandler$1;

    invoke-direct {v0}, Lcom/ironsource/environment/ANRHandler$1;-><init>()V

    sput-object v0, Lcom/ironsource/environment/ANRHandler;->DEFAULT_ANR_LISTENER:Lcom/ironsource/environment/ANRListener;

    .line 50
    new-instance v0, Lcom/ironsource/environment/ANRHandler$2;

    invoke-direct {v0}, Lcom/ironsource/environment/ANRHandler$2;-><init>()V

    sput-object v0, Lcom/ironsource/environment/ANRHandler;->DEFAULT_INTERRUPTION_LISTENER:Lcom/ironsource/environment/InterruptionListener;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 57
    sget-object v0, Lcom/ironsource/environment/ANRHandler;->DEFAULT_ANR_LISTENER:Lcom/ironsource/environment/ANRListener;

    iput-object v0, p0, Lcom/ironsource/environment/ANRHandler;->_anrListener:Lcom/ironsource/environment/ANRListener;

    .line 58
    sget-object v0, Lcom/ironsource/environment/ANRHandler;->DEFAULT_INTERRUPTION_LISTENER:Lcom/ironsource/environment/InterruptionListener;

    iput-object v0, p0, Lcom/ironsource/environment/ANRHandler;->_interruptionListener:Lcom/ironsource/environment/InterruptionListener;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ironsource/environment/ANRHandler;->_uiHandler:Landroid/os/Handler;

    const-string v0, ""

    .line 63
    iput-object v0, p0, Lcom/ironsource/environment/ANRHandler;->_namePrefix:Ljava/lang/String;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/ironsource/environment/ANRHandler;->_logThreadsWithoutStackTrace:Z

    .line 65
    iput-boolean v0, p0, Lcom/ironsource/environment/ANRHandler;->_ignoreDebugger:Z

    .line 67
    iput v0, p0, Lcom/ironsource/environment/ANRHandler;->_tick:I

    const/4 v1, 0x1

    .line 69
    iput v1, p0, Lcom/ironsource/environment/ANRHandler;->tries:I

    .line 70
    iput v0, p0, Lcom/ironsource/environment/ANRHandler;->triedCount:I

    .line 79
    new-instance v0, Lcom/ironsource/environment/ANRHandler$3;

    invoke-direct {v0, p0}, Lcom/ironsource/environment/ANRHandler$3;-><init>(Lcom/ironsource/environment/ANRHandler;)V

    iput-object v0, p0, Lcom/ironsource/environment/ANRHandler;->_ticker:Ljava/lang/Runnable;

    .line 94
    iput p1, p0, Lcom/ironsource/environment/ANRHandler;->_timeoutInterval:I

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/environment/ANRHandler;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/ironsource/environment/ANRHandler;->_tick:I

    return p0
.end method

.method static synthetic access$002(Lcom/ironsource/environment/ANRHandler;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/ironsource/environment/ANRHandler;->_tick:I

    return p1
.end method

.method private flattenST([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 239
    array-length v1, p1

    if-lez v1, :cond_1

    .line 240
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getTriedCount()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/ironsource/environment/ANRHandler;->triedCount:I

    return v0
.end method

.method public getTries()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/ironsource/environment/ANRHandler;->tries:I

    return v0
.end method

.method public run()V
    .locals 5

    const-string v0, "|ANR-ANRHandler|"

    .line 185
    invoke-virtual {p0, v0}, Lcom/ironsource/environment/ANRHandler;->setName(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 190
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ironsource/environment/ANRHandler;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/ironsource/environment/ANRHandler;->triedCount:I

    iget v2, p0, Lcom/ironsource/environment/ANRHandler;->tries:I

    if-ge v1, v2, :cond_4

    .line 191
    iget v1, p0, Lcom/ironsource/environment/ANRHandler;->_tick:I

    .line 192
    iget-object v2, p0, Lcom/ironsource/environment/ANRHandler;->_uiHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/ironsource/environment/ANRHandler;->_ticker:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    :try_start_0
    iget v2, p0, Lcom/ironsource/environment/ANRHandler;->_timeoutInterval:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    iget v2, p0, Lcom/ironsource/environment/ANRHandler;->_tick:I

    if-ne v2, v1, :cond_3

    .line 204
    iget-boolean v1, p0, Lcom/ironsource/environment/ANRHandler;->_ignoreDebugger:Z

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    iget v1, p0, Lcom/ironsource/environment/ANRHandler;->_tick:I

    if-eq v1, v0, :cond_1

    const-string v0, "ANRHandler"

    const-string v1, "An ANR was detected but ignored because the debugger is connected (you can prevent this with setIgnoreDebugger(true))"

    .line 206
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_1
    iget v0, p0, Lcom/ironsource/environment/ANRHandler;->_tick:I

    goto :goto_0

    .line 214
    :cond_2
    iget v1, p0, Lcom/ironsource/environment/ANRHandler;->triedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ironsource/environment/ANRHandler;->triedCount:I

    .line 216
    iget-object v1, p0, Lcom/ironsource/environment/ANRHandler;->_anrListener:Lcom/ironsource/environment/ANRListener;

    invoke-interface {v1}, Lcom/ironsource/environment/ANRListener;->onAppNotResponding()V

    .line 219
    sget-object v1, Lcom/ironsource/environment/CrashReporter;->ANRFinalStack:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ironsource/environment/CrashReporter;->ANRFinalStack:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    new-instance v1, Lcom/ironsource/environment/ExceptionLog;

    sget-object v2, Lcom/ironsource/environment/CrashReporter;->ANRFinalStack:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ANR"

    invoke-direct {v1, v2, v3, v4}, Lcom/ironsource/environment/ExceptionLog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v1}, Lcom/ironsource/environment/ExceptionLog;->Save()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 227
    iput v1, p0, Lcom/ironsource/environment/ANRHandler;->triedCount:I

    goto :goto_0

    :catch_0
    move-exception v0

    .line 198
    iget-object v1, p0, Lcom/ironsource/environment/ANRHandler;->_interruptionListener:Lcom/ironsource/environment/InterruptionListener;

    invoke-interface {v1, v0}, Lcom/ironsource/environment/InterruptionListener;->onInterrupted(Ljava/lang/InterruptedException;)V

    return-void

    .line 232
    :cond_4
    iget v0, p0, Lcom/ironsource/environment/ANRHandler;->triedCount:I

    iget v1, p0, Lcom/ironsource/environment/ANRHandler;->tries:I

    if-lt v0, v1, :cond_5

    .line 233
    iget-object v0, p0, Lcom/ironsource/environment/ANRHandler;->_anrListener:Lcom/ironsource/environment/ANRListener;

    invoke-interface {v0}, Lcom/ironsource/environment/ANRListener;->onANRHandlerDogGivingUp()V

    :cond_5
    return-void
.end method

.method public setANRListener(Lcom/ironsource/environment/ANRListener;)Lcom/ironsource/environment/ANRHandler;
    .locals 0

    if-nez p1, :cond_0

    .line 106
    sget-object p1, Lcom/ironsource/environment/ANRHandler;->DEFAULT_ANR_LISTENER:Lcom/ironsource/environment/ANRListener;

    iput-object p1, p0, Lcom/ironsource/environment/ANRHandler;->_anrListener:Lcom/ironsource/environment/ANRListener;

    goto :goto_0

    .line 109
    :cond_0
    iput-object p1, p0, Lcom/ironsource/environment/ANRHandler;->_anrListener:Lcom/ironsource/environment/ANRListener;

    :goto_0
    return-object p0
.end method

.method public setIgnoreDebugger(Z)Lcom/ironsource/environment/ANRHandler;
    .locals 0

    .line 179
    iput-boolean p1, p0, Lcom/ironsource/environment/ANRHandler;->_ignoreDebugger:Z

    return-object p0
.end method

.method public setInterruptionListener(Lcom/ironsource/environment/InterruptionListener;)Lcom/ironsource/environment/ANRHandler;
    .locals 0

    if-nez p1, :cond_0

    .line 123
    sget-object p1, Lcom/ironsource/environment/ANRHandler;->DEFAULT_INTERRUPTION_LISTENER:Lcom/ironsource/environment/InterruptionListener;

    iput-object p1, p0, Lcom/ironsource/environment/ANRHandler;->_interruptionListener:Lcom/ironsource/environment/InterruptionListener;

    goto :goto_0

    .line 126
    :cond_0
    iput-object p1, p0, Lcom/ironsource/environment/ANRHandler;->_interruptionListener:Lcom/ironsource/environment/InterruptionListener;

    :goto_0
    return-object p0
.end method

.method public setLogThreadsWithoutStackTrace(Z)Lcom/ironsource/environment/ANRHandler;
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/ironsource/environment/ANRHandler;->_logThreadsWithoutStackTrace:Z

    return-object p0
.end method

.method public setReportMainThreadOnly()Lcom/ironsource/environment/ANRHandler;
    .locals 1

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/ironsource/environment/ANRHandler;->_namePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setReportThreadNamePrefix(Ljava/lang/String;)Lcom/ironsource/environment/ANRHandler;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 142
    :cond_0
    iput-object p1, p0, Lcom/ironsource/environment/ANRHandler;->_namePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setTries(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/ironsource/environment/ANRHandler;->tries:I

    return-void
.end method
