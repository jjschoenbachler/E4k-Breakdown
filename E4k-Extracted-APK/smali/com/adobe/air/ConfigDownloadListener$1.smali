.class Lcom/adobe/air/ConfigDownloadListener$1;
.super Landroid/content/BroadcastReceiver;
.source "ConfigDownloadListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/ConfigDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/adobe/air/ConfigDownloadListener;


# direct methods
.method constructor <init>(Lcom/adobe/air/ConfigDownloadListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/adobe/air/ConfigDownloadListener$1;->this$0:Lcom/adobe/air/ConfigDownloadListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string p1, "ConfigDownloadListenerBR"

    .line 46
    iput-object p1, p0, Lcom/adobe/air/ConfigDownloadListener$1;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.adobe.air.DownloadConfigComplete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/adobe/air/ConfigDownloadListener$1;->isInitialStickyBroadcast()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "com.adobe.air.DownloadConfigCompleteTime"

    .line 68
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 70
    iget-object p2, p0, Lcom/adobe/air/ConfigDownloadListener$1;->this$0:Lcom/adobe/air/ConfigDownloadListener;

    invoke-static {p2}, Lcom/adobe/air/ConfigDownloadListener;->access$000(Lcom/adobe/air/ConfigDownloadListener;)J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 84
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 87
    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->applyDownloadedConfig()V

    :cond_2
    return-void
.end method
