.class Lcom/adobe/air/RemoteDebuggerListenerDialog$4;
.super Ljava/lang/Object;
.source "RemoteDebuggerListenerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$dialogMessage:Ljava/lang/String;

.field final synthetic val$timeOutMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/air/RemoteDebuggerListenerDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$4;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    iput-object p2, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$4;->val$dialogMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$4;->val$timeOutMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 124
    iget-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$4;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-static {v0}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$600(Lcom/adobe/air/RemoteDebuggerListenerDialog;)I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$4;->val$dialogMessage:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$4;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-static {v4}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$600(Lcom/adobe/air/RemoteDebuggerListenerDialog;)I

    move-result v4

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$4;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-static {v1}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$608(Lcom/adobe/air/RemoteDebuggerListenerDialog;)I

    .line 128
    iget-object v1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$4;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-static {v1}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$700(Lcom/adobe/air/RemoteDebuggerListenerDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$4;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-static {v0}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$300(Lcom/adobe/air/RemoteDebuggerListenerDialog;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$4;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-static {v0}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$300(Lcom/adobe/air/RemoteDebuggerListenerDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 133
    iget-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$4;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-static {v0}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$700(Lcom/adobe/air/RemoteDebuggerListenerDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 135
    iget-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$4;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-static {v0}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$500(Lcom/adobe/air/RemoteDebuggerListenerDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$4;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    iget-object v1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$4;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-static {v1}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$500(Lcom/adobe/air/RemoteDebuggerListenerDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    iget-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$4;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$502(Lcom/adobe/air/RemoteDebuggerListenerDialog;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 142
    :cond_1
    new-instance v6, Lcom/adobe/air/RemoteDebuggerListenerDialog$4$1;

    invoke-direct {v6, p0}, Lcom/adobe/air/RemoteDebuggerListenerDialog$4$1;-><init>(Lcom/adobe/air/RemoteDebuggerListenerDialog$4;)V

    .line 150
    iget-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$4;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    iget-object v2, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$4;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    const-string v3, "Adobe AIR"

    iget-object v4, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$4;->val$timeOutMessage:Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$4;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    sget v5, Lcom/adobe/air/R$string;->button_continue:I

    .line 152
    invoke-virtual {v1, v5}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/adobe/air/RemoteDebuggerListenerDialog$4$2;

    invoke-direct {v7, p0, v6}, Lcom/adobe/air/RemoteDebuggerListenerDialog$4$2;-><init>(Lcom/adobe/air/RemoteDebuggerListenerDialog$4;Landroid/content/DialogInterface$OnClickListener;)V

    .line 150
    invoke-static/range {v2 .. v7}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$800(Lcom/adobe/air/RemoteDebuggerListenerDialog;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$702(Lcom/adobe/air/RemoteDebuggerListenerDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 163
    iget-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$4;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-static {v0}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$700(Lcom/adobe/air/RemoteDebuggerListenerDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method
