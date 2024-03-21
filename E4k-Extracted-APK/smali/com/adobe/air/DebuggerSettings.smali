.class public final Lcom/adobe/air/DebuggerSettings;
.super Ljava/lang/Object;
.source "DebuggerSettings.java"


# instance fields
.field private debuggerPort:I

.field private host:Ljava/lang/String;

.field private listenForConn:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/adobe/air/DebuggerSettings;->debuggerPort:I

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/adobe/air/DebuggerSettings;->host:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/adobe/air/DebuggerSettings;->listenForConn:Z

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Z)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/adobe/air/DebuggerSettings;->debuggerPort:I

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/adobe/air/DebuggerSettings;->host:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/adobe/air/DebuggerSettings;->listenForConn:Z

    .line 32
    iput p1, p0, Lcom/adobe/air/DebuggerSettings;->debuggerPort:I

    .line 33
    iput-object p2, p0, Lcom/adobe/air/DebuggerSettings;->host:Ljava/lang/String;

    .line 34
    iput-boolean p3, p0, Lcom/adobe/air/DebuggerSettings;->listenForConn:Z

    return-void
.end method


# virtual methods
.method public getDebuggerPort()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/adobe/air/DebuggerSettings;->debuggerPort:I

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/adobe/air/DebuggerSettings;->host:Ljava/lang/String;

    return-object v0
.end method

.method public setDebugerPort(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/adobe/air/DebuggerSettings;->debuggerPort:I

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/adobe/air/DebuggerSettings;->host:Ljava/lang/String;

    return-void
.end method

.method public setListen(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/adobe/air/DebuggerSettings;->listenForConn:Z

    return-void
.end method

.method public shouldListen()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/adobe/air/DebuggerSettings;->listenForConn:Z

    return v0
.end method
