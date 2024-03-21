.class Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HDMIUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/flashplayer/HDMIUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HdmiBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/flashplayer/HDMIUtils;


# direct methods
.method constructor <init>(Lcom/adobe/flashplayer/HDMIUtils;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;->this$0:Lcom/adobe/flashplayer/HDMIUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 179
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 180
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "com.motorola.intent.action.EXTDISP_STATUS_CONNECTION"

    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_5

    const-string p1, "hdmi"

    .line 189
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 192
    iget-object p2, p0, Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;->this$0:Lcom/adobe/flashplayer/HDMIUtils;

    invoke-static {p2}, Lcom/adobe/flashplayer/HDMIUtils;->access$000(Lcom/adobe/flashplayer/HDMIUtils;)Z

    move-result p2

    if-eq p1, p2, :cond_5

    .line 194
    iget-object p2, p0, Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;->this$0:Lcom/adobe/flashplayer/HDMIUtils;

    invoke-static {p2, p1}, Lcom/adobe/flashplayer/HDMIUtils;->access$002(Lcom/adobe/flashplayer/HDMIUtils;Z)Z

    .line 195
    iget-object p1, p0, Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;->this$0:Lcom/adobe/flashplayer/HDMIUtils;

    invoke-static {p1, v1}, Lcom/adobe/flashplayer/HDMIUtils;->access$102(Lcom/adobe/flashplayer/HDMIUtils;Z)Z

    goto :goto_2

    :cond_1
    const-string v0, "com.motorola.intent.action.EXTDISP_STATUS_DISPLAY"

    .line 199
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_5

    const-string p1, "hdmi"

    .line 204
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 207
    iget-object p2, p0, Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;->this$0:Lcom/adobe/flashplayer/HDMIUtils;

    invoke-static {p2}, Lcom/adobe/flashplayer/HDMIUtils;->access$200(Lcom/adobe/flashplayer/HDMIUtils;)Z

    move-result p2

    if-eq p1, p2, :cond_5

    .line 209
    iget-object p2, p0, Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;->this$0:Lcom/adobe/flashplayer/HDMIUtils;

    invoke-static {p2, p1}, Lcom/adobe/flashplayer/HDMIUtils;->access$202(Lcom/adobe/flashplayer/HDMIUtils;Z)Z

    .line 210
    iget-object p1, p0, Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;->this$0:Lcom/adobe/flashplayer/HDMIUtils;

    invoke-static {p1, v1}, Lcom/adobe/flashplayer/HDMIUtils;->access$102(Lcom/adobe/flashplayer/HDMIUtils;Z)Z

    goto :goto_2

    :cond_2
    const-string v0, "com.motorola.intent.action.externaldisplaystate"

    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 219
    iget-object p1, p0, Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;->this$0:Lcom/adobe/flashplayer/HDMIUtils;

    const-string v0, "hdmi"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-static {p1, v0}, Lcom/adobe/flashplayer/HDMIUtils;->access$202(Lcom/adobe/flashplayer/HDMIUtils;Z)Z

    .line 220
    iget-object p1, p0, Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;->this$0:Lcom/adobe/flashplayer/HDMIUtils;

    const-string v0, "hdcp"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-static {p1, v2}, Lcom/adobe/flashplayer/HDMIUtils;->access$302(Lcom/adobe/flashplayer/HDMIUtils;Z)Z

    .line 225
    iget-object p1, p0, Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;->this$0:Lcom/adobe/flashplayer/HDMIUtils;

    invoke-static {p1, v1}, Lcom/adobe/flashplayer/HDMIUtils;->access$102(Lcom/adobe/flashplayer/HDMIUtils;Z)Z

    :cond_5
    :goto_2
    return-void
.end method
