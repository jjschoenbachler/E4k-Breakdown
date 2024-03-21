.class public Lcom/adobe/air/utils/PerfTimer;
.super Ljava/lang/Object;
.source "PerfTimer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AIRPerfTimer"


# instance fields
.field private m_timer:Landroid/util/TimingLogger;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/adobe/air/utils/PerfTimer;->m_timer:Landroid/util/TimingLogger;

    .line 43
    new-instance v0, Landroid/util/TimingLogger;

    const-string v1, "AIRPerfTimer"

    invoke-direct {v0, v1, p1}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/air/utils/PerfTimer;->m_timer:Landroid/util/TimingLogger;

    return-void
.end method


# virtual methods
.method public final newBlock(Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-static {}, Lcom/adobe/air/utils/AIRLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/adobe/air/utils/PerfTimer;->m_timer:Landroid/util/TimingLogger;

    invoke-virtual {v0, p1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 61
    invoke-static {}, Lcom/adobe/air/utils/AIRLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/adobe/air/utils/PerfTimer;->m_timer:Landroid/util/TimingLogger;

    invoke-virtual {v0}, Landroid/util/TimingLogger;->dumpToLog()V

    :cond_0
    return-void
.end method
