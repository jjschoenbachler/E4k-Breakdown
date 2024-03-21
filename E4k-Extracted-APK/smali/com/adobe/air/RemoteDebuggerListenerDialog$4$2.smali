.class Lcom/adobe/air/RemoteDebuggerListenerDialog$4$2;
.super Ljava/lang/Object;
.source "RemoteDebuggerListenerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/RemoteDebuggerListenerDialog$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/air/RemoteDebuggerListenerDialog$4;

.field final synthetic val$dialogButtonHandler:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/adobe/air/RemoteDebuggerListenerDialog$4;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$4$2;->this$1:Lcom/adobe/air/RemoteDebuggerListenerDialog$4;

    iput-object p2, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$4$2;->val$dialogButtonHandler:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 157
    iget-object p2, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$4$2;->val$dialogButtonHandler:Landroid/content/DialogInterface$OnClickListener;

    const/4 p3, -0x1

    invoke-interface {p2, p1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
