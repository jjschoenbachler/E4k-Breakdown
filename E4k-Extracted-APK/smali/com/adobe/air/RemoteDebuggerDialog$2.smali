.class Lcom/adobe/air/RemoteDebuggerDialog$2;
.super Ljava/lang/Object;
.source "RemoteDebuggerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/RemoteDebuggerDialog;->createAndShowDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/RemoteDebuggerDialog;


# direct methods
.method constructor <init>(Lcom/adobe/air/RemoteDebuggerDialog;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/adobe/air/RemoteDebuggerDialog$2;->this$0:Lcom/adobe/air/RemoteDebuggerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 86
    iget-object p1, p0, Lcom/adobe/air/RemoteDebuggerDialog$2;->this$0:Lcom/adobe/air/RemoteDebuggerDialog;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/adobe/air/RemoteDebuggerDialog;->gotResultFromDialog(ZLjava/lang/String;)V

    return-void
.end method
