.class Lcom/adobe/air/ListenErrorDialog$3;
.super Ljava/lang/Object;
.source "ListenErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/ListenErrorDialog;->createAndShowDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/ListenErrorDialog;


# direct methods
.method constructor <init>(Lcom/adobe/air/ListenErrorDialog;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/adobe/air/ListenErrorDialog$3;->this$0:Lcom/adobe/air/ListenErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/adobe/air/ListenErrorDialog$3;->this$0:Lcom/adobe/air/ListenErrorDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/adobe/air/ListenErrorDialog;->gotResultFromDialog(Z)V

    return-void
.end method
