.class Lcom/adobe/air/RemoteDebuggerListenerDialog$3;
.super Ljava/lang/Object;
.source "RemoteDebuggerListenerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    .line 104
    iput-object p1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$3;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 107
    iget-object p2, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$3;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-static {p2}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$300(Lcom/adobe/air/RemoteDebuggerListenerDialog;)Landroid/os/Handler;

    move-result-object p2

    iget-object p3, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$3;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-static {p3}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$200(Lcom/adobe/air/RemoteDebuggerListenerDialog;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    iget-object p2, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$3;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-static {p2}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$400(Lcom/adobe/air/RemoteDebuggerListenerDialog;)V

    .line 109
    iget-object p2, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$3;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    iget-object p3, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$3;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-static {p3}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$500(Lcom/adobe/air/RemoteDebuggerListenerDialog;)Landroid/content/BroadcastReceiver;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 110
    iget-object p2, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$3;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$502(Lcom/adobe/air/RemoteDebuggerListenerDialog;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 111
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 112
    iget-object p1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$3;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-virtual {p1}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->finish()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
