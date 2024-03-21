.class Lcom/adobe/air/RemoteDebuggerListenerDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "RemoteDebuggerListenerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/RemoteDebuggerListenerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;


# direct methods
.method constructor <init>(Lcom/adobe/air/RemoteDebuggerListenerDialog;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$1;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/adobe/air/RemoteDebuggerListenerDialog$1;->isInitialStickyBroadcast()Z

    move-result p1

    if-nez p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$1;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-virtual {p1}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "debuggerPort"

    .line 79
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x1f00

    .line 81
    :goto_0
    iget-object p2, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$1;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-static {p2}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$000(Lcom/adobe/air/RemoteDebuggerListenerDialog;)I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 82
    iget-object p1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$1;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-static {p1}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$100(Lcom/adobe/air/RemoteDebuggerListenerDialog;)V

    :cond_1
    return-void
.end method
