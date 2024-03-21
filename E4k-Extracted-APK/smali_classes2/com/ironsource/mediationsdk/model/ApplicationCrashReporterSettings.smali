.class public Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;
.super Ljava/lang/Object;
.source "ApplicationCrashReporterSettings.java"


# instance fields
.field private defaultAnrTimeout:I

.field private ignoreDebugger:Z

.field private isANRIncluded:Z

.field private isEnabled:Z

.field private keyParamsToIncludeInReporter:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reporterKeyword:Ljava/lang/String;

.field private reporterURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->keyParamsToIncludeInReporter:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->isEnabled:Z

    .line 19
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->isANRIncluded:Z

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->ignoreDebugger:Z

    return-void
.end method


# virtual methods
.method public addKeyParamToInclude(Ljava/lang/String;)V
    .locals 1

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->keyParamsToIncludeInReporter:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getDefaultAnrTimeout()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->defaultAnrTimeout:I

    return v0
.end method

.method public getKeyParamsToIncludeInReporter()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->keyParamsToIncludeInReporter:Ljava/util/HashSet;

    return-object v0
.end method

.method public getReporterKeyword()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->reporterKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getReporterURL()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->reporterURL:Ljava/lang/String;

    return-object v0
.end method

.method public isANRIncluded()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->isANRIncluded:Z

    return v0
.end method

.method public isCrashReporterEnabled()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->isEnabled:Z

    return v0
.end method

.method public isIgnoreDebugger()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->ignoreDebugger:Z

    return v0
.end method

.method public setDefaultAnrTimeout(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->defaultAnrTimeout:I

    return-void
.end method

.method public setKeyParamsToIncludeInReporter(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->isEnabled:Z

    return-void
.end method

.method public setReporterKeyword(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->reporterKeyword:Ljava/lang/String;

    return-void
.end method

.method public setReporterURL(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->reporterURL:Ljava/lang/String;

    return-void
.end method

.method public shouldIgnoreDebugger(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->ignoreDebugger:Z

    return-void
.end method

.method public shouldIncludeANR(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->isANRIncluded:Z

    return-void
.end method
