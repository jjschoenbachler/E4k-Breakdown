.class public Lcom/bugsnag/android/Error;
.super Ljava/lang/Object;
.source "Error.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# instance fields
.field private appData:Lcom/bugsnag/android/AppData;

.field private appState:Lcom/bugsnag/android/AppState;

.field private breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

.field private config:Lcom/bugsnag/android/Configuration;

.field private context:Ljava/lang/String;

.field private deviceData:Lcom/bugsnag/android/DeviceData;

.field private deviceState:Lcom/bugsnag/android/DeviceState;

.field private exception:Ljava/lang/Throwable;

.field private frames:[Ljava/lang/StackTraceElement;

.field private groupingHash:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private metaData:Lcom/bugsnag/android/MetaData;

.field private name:Ljava/lang/String;

.field private severity:Lcom/bugsnag/android/Severity;

.field private user:Lcom/bugsnag/android/User;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/Configuration;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/bugsnag/android/Severity;->WARNING:Lcom/bugsnag/android/Severity;

    iput-object v0, p0, Lcom/bugsnag/android/Error;->severity:Lcom/bugsnag/android/Severity;

    .line 27
    new-instance v0, Lcom/bugsnag/android/MetaData;

    invoke-direct {v0}, Lcom/bugsnag/android/MetaData;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/Error;->metaData:Lcom/bugsnag/android/MetaData;

    .line 40
    iput-object p1, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    .line 41
    iput-object p2, p0, Lcom/bugsnag/android/Error;->name:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/bugsnag/android/Error;->message:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/bugsnag/android/Error;->frames:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method constructor <init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/bugsnag/android/Severity;->WARNING:Lcom/bugsnag/android/Severity;

    iput-object v0, p0, Lcom/bugsnag/android/Error;->severity:Lcom/bugsnag/android/Severity;

    .line 27
    new-instance v0, Lcom/bugsnag/android/MetaData;

    invoke-direct {v0}, Lcom/bugsnag/android/MetaData;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/Error;->metaData:Lcom/bugsnag/android/MetaData;

    .line 35
    iput-object p1, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    .line 36
    iput-object p2, p0, Lcom/bugsnag/android/Error;->exception:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/bugsnag/android/Error;->metaData:Lcom/bugsnag/android/MetaData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bugsnag/android/MetaData;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public clearTab(Ljava/lang/String;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/bugsnag/android/Error;->metaData:Lcom/bugsnag/android/MetaData;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/MetaData;->clearTab(Ljava/lang/String;)V

    return-void
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/bugsnag/android/Error;->context:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bugsnag/android/Error;->context:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/bugsnag/android/Error;->context:Ljava/lang/String;

    return-object v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    iget-object v0, v0, Lcom/bugsnag/android/Configuration;->context:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    iget-object v0, v0, Lcom/bugsnag/android/Configuration;->context:Ljava/lang/String;

    return-object v0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/bugsnag/android/Error;->appState:Lcom/bugsnag/android/AppState;

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/bugsnag/android/Error;->appState:Lcom/bugsnag/android/AppState;

    invoke-virtual {v0}, Lcom/bugsnag/android/AppState;->getActiveScreenClass()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/bugsnag/android/Error;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getExceptionMessage()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/bugsnag/android/Error;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/bugsnag/android/Error;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/Error;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionName()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/bugsnag/android/Error;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/bugsnag/android/Error;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/Error;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaData()Lcom/bugsnag/android/MetaData;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/bugsnag/android/Error;->metaData:Lcom/bugsnag/android/MetaData;

    return-object v0
.end method

.method public getSeverity()Lcom/bugsnag/android/Severity;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/bugsnag/android/Error;->severity:Lcom/bugsnag/android/Severity;

    return-object v0
.end method

.method final setAppData(Lcom/bugsnag/android/AppData;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/bugsnag/android/Error;->appData:Lcom/bugsnag/android/AppData;

    return-void
.end method

.method final setAppState(Lcom/bugsnag/android/AppState;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/bugsnag/android/Error;->appState:Lcom/bugsnag/android/AppState;

    return-void
.end method

.method final setBreadcrumbs(Lcom/bugsnag/android/Breadcrumbs;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/bugsnag/android/Error;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    return-void
.end method

.method public setContext(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/bugsnag/android/Error;->context:Ljava/lang/String;

    return-void
.end method

.method final setDeviceData(Lcom/bugsnag/android/DeviceData;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/bugsnag/android/Error;->deviceData:Lcom/bugsnag/android/DeviceData;

    return-void
.end method

.method final setDeviceState(Lcom/bugsnag/android/DeviceState;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/bugsnag/android/Error;->deviceState:Lcom/bugsnag/android/DeviceState;

    return-void
.end method

.method public setGroupingHash(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/bugsnag/android/Error;->groupingHash:Ljava/lang/String;

    return-void
.end method

.method public setMetaData(Lcom/bugsnag/android/MetaData;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/bugsnag/android/Error;->metaData:Lcom/bugsnag/android/MetaData;

    return-void
.end method

.method public setSeverity(Lcom/bugsnag/android/Severity;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 160
    iput-object p1, p0, Lcom/bugsnag/android/Error;->severity:Lcom/bugsnag/android/Severity;

    :cond_0
    return-void
.end method

.method final setUser(Lcom/bugsnag/android/User;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    return-void
.end method

.method public setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 181
    new-instance v0, Lcom/bugsnag/android/User;

    invoke-direct {v0, p1, p2, p3}, Lcom/bugsnag/android/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    return-void
.end method

.method public setUserEmail(Ljava/lang/String;)V
    .locals 2

    .line 200
    new-instance v0, Lcom/bugsnag/android/User;

    iget-object v1, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    invoke-direct {v0, v1}, Lcom/bugsnag/android/User;-><init>(Lcom/bugsnag/android/User;)V

    iput-object v0, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    .line 201
    iget-object v0, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/User;->setEmail(Ljava/lang/String;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 2

    .line 190
    new-instance v0, Lcom/bugsnag/android/User;

    iget-object v1, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    invoke-direct {v0, v1}, Lcom/bugsnag/android/User;-><init>(Lcom/bugsnag/android/User;)V

    iput-object v0, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    .line 191
    iget-object v0, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/User;->setId(Ljava/lang/String;)V

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 2

    .line 210
    new-instance v0, Lcom/bugsnag/android/User;

    iget-object v1, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    invoke-direct {v0, v1}, Lcom/bugsnag/android/User;-><init>(Lcom/bugsnag/android/User;)V

    iput-object v0, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    .line 211
    iget-object v0, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/User;->setName(Ljava/lang/String;)V

    return-void
.end method

.method final shouldIgnoreClass()Z
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {p0}, Lcom/bugsnag/android/Error;->getExceptionName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/bugsnag/android/Configuration;->ignoreClasses:[Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, v0, Lcom/bugsnag/android/Configuration;->ignoreClasses:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 48
    new-array v0, v0, [Lcom/bugsnag/android/MetaData;

    iget-object v1, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    iget-object v1, v1, Lcom/bugsnag/android/Configuration;->metaData:Lcom/bugsnag/android/MetaData;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/bugsnag/android/Error;->metaData:Lcom/bugsnag/android/MetaData;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/bugsnag/android/MetaData;->merge([Lcom/bugsnag/android/MetaData;)Lcom/bugsnag/android/MetaData;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    iget-object v1, v1, Lcom/bugsnag/android/Configuration;->filters:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/MetaData;->setFilters([Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    const-string v1, "payloadVersion"

    .line 53
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    const-string v3, "2"

    invoke-virtual {v1, v3}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v1, "context"

    .line 54
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bugsnag/android/Error;->getContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v1, "severity"

    .line 55
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    iget-object v3, p0, Lcom/bugsnag/android/Error;->severity:Lcom/bugsnag/android/Severity;

    invoke-interface {v3, v1}, Lcom/bugsnag/android/JsonStream$Streamable;->toStream(Lcom/bugsnag/android/JsonStream;)V

    const-string v1, "metaData"

    .line 56
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bugsnag/android/JsonStream$Streamable;->toStream(Lcom/bugsnag/android/JsonStream;)V

    .line 58
    iget-object v0, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    iget-object v0, v0, Lcom/bugsnag/android/Configuration;->projectPackages:[Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "projectPackages"

    .line 59
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/JsonStream;->beginArray()Lcom/bugsnag/android/JsonWriter;

    .line 60
    iget-object v0, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    iget-object v0, v0, Lcom/bugsnag/android/Configuration;->projectPackages:[Ljava/lang/String;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 61
    invoke-virtual {p1, v3}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endArray()Lcom/bugsnag/android/JsonWriter;

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/bugsnag/android/Error;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    const-string v0, "exceptions"

    .line 68
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    new-instance v1, Lcom/bugsnag/android/Exceptions;

    iget-object v2, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    iget-object v3, p0, Lcom/bugsnag/android/Error;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Lcom/bugsnag/android/Exceptions;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;)V

    invoke-interface {v1, v0}, Lcom/bugsnag/android/JsonStream$Streamable;->toStream(Lcom/bugsnag/android/JsonStream;)V

    goto :goto_1

    :cond_2
    const-string v0, "exceptions"

    .line 70
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    new-instance v1, Lcom/bugsnag/android/Exceptions;

    iget-object v2, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    iget-object v3, p0, Lcom/bugsnag/android/Error;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/bugsnag/android/Error;->message:Ljava/lang/String;

    iget-object v5, p0, Lcom/bugsnag/android/Error;->frames:[Ljava/lang/StackTraceElement;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bugsnag/android/Exceptions;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    invoke-interface {v1, v0}, Lcom/bugsnag/android/JsonStream$Streamable;->toStream(Lcom/bugsnag/android/JsonStream;)V

    .line 74
    :goto_1
    iget-object v0, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    if-eqz v0, :cond_3

    const-string v0, "user"

    .line 75
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Error;->user:Lcom/bugsnag/android/User;

    invoke-interface {v1, v0}, Lcom/bugsnag/android/JsonStream$Streamable;->toStream(Lcom/bugsnag/android/JsonStream;)V

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/bugsnag/android/Error;->appData:Lcom/bugsnag/android/AppData;

    if-eqz v0, :cond_4

    const-string v0, "app"

    .line 80
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Error;->appData:Lcom/bugsnag/android/AppData;

    invoke-interface {v1, v0}, Lcom/bugsnag/android/JsonStream$Streamable;->toStream(Lcom/bugsnag/android/JsonStream;)V

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/bugsnag/android/Error;->appState:Lcom/bugsnag/android/AppState;

    if-eqz v0, :cond_5

    const-string v0, "appState"

    .line 84
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Error;->appState:Lcom/bugsnag/android/AppState;

    invoke-interface {v1, v0}, Lcom/bugsnag/android/JsonStream$Streamable;->toStream(Lcom/bugsnag/android/JsonStream;)V

    .line 87
    :cond_5
    iget-object v0, p0, Lcom/bugsnag/android/Error;->deviceData:Lcom/bugsnag/android/DeviceData;

    if-eqz v0, :cond_6

    const-string v0, "device"

    .line 88
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Error;->deviceData:Lcom/bugsnag/android/DeviceData;

    invoke-interface {v1, v0}, Lcom/bugsnag/android/JsonStream$Streamable;->toStream(Lcom/bugsnag/android/JsonStream;)V

    .line 91
    :cond_6
    iget-object v0, p0, Lcom/bugsnag/android/Error;->deviceState:Lcom/bugsnag/android/DeviceState;

    if-eqz v0, :cond_7

    const-string v0, "deviceState"

    .line 92
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Error;->deviceState:Lcom/bugsnag/android/DeviceState;

    invoke-interface {v1, v0}, Lcom/bugsnag/android/JsonStream$Streamable;->toStream(Lcom/bugsnag/android/JsonStream;)V

    .line 95
    :cond_7
    iget-object v0, p0, Lcom/bugsnag/android/Error;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    if-eqz v0, :cond_8

    const-string v0, "breadcrumbs"

    .line 96
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Error;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    invoke-interface {v1, v0}, Lcom/bugsnag/android/JsonStream$Streamable;->toStream(Lcom/bugsnag/android/JsonStream;)V

    .line 99
    :cond_8
    iget-object v0, p0, Lcom/bugsnag/android/Error;->groupingHash:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v0, "groupingHash"

    .line 100
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Error;->groupingHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    .line 103
    :cond_9
    iget-object v0, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    iget-boolean v0, v0, Lcom/bugsnag/android/Configuration;->sendThreads:Z

    if-eqz v0, :cond_a

    const-string v0, "threads"

    .line 104
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    new-instance v1, Lcom/bugsnag/android/ThreadState;

    iget-object v2, p0, Lcom/bugsnag/android/Error;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v1, v2}, Lcom/bugsnag/android/ThreadState;-><init>(Lcom/bugsnag/android/Configuration;)V

    invoke-interface {v1, v0}, Lcom/bugsnag/android/JsonStream$Streamable;->toStream(Lcom/bugsnag/android/JsonStream;)V

    .line 107
    :cond_a
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endObject()Lcom/bugsnag/android/JsonWriter;

    return-void
.end method
