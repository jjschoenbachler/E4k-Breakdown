.class Lcom/myflashlabs/richwebview/AirCommand$1;
.super Ljava/lang/Object;
.source "AirCommand.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/myflashlabs/richwebview/AirCommand;->showTestVersionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/myflashlabs/richwebview/AirCommand;


# direct methods
.method constructor <init>(Lcom/myflashlabs/richwebview/AirCommand;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand$1;->this$0:Lcom/myflashlabs/richwebview/AirCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 285
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 286
    iget-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand$1;->this$0:Lcom/myflashlabs/richwebview/AirCommand;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->access$002(Lcom/myflashlabs/richwebview/AirCommand;Z)Z

    return-void
.end method
