.class Lcom/adobe/air/RemoteDebuggerListenerDialog$2;
.super Ljava/lang/Object;
.source "RemoteDebuggerListenerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 94
    iput-object p1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$2;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 96
    iget-object p2, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$2;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-static {p2}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$300(Lcom/adobe/air/RemoteDebuggerListenerDialog;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$2;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-static {v0}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$200(Lcom/adobe/air/RemoteDebuggerListenerDialog;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    iget-object p2, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$2;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-static {p2}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$400(Lcom/adobe/air/RemoteDebuggerListenerDialog;)V

    .line 98
    iget-object p2, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$2;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    iget-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$2;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-static {v0}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$500(Lcom/adobe/air/RemoteDebuggerListenerDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    iget-object p2, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$2;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$502(Lcom/adobe/air/RemoteDebuggerListenerDialog;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 100
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 101
    iget-object p1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$2;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-virtual {p1}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->finish()V

    return-void
.end method
