.class Lcom/adobe/air/AIRUpdateDialog$2;
.super Ljava/lang/Object;
.source "AIRUpdateDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AIRUpdateDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AIRUpdateDialog;


# direct methods
.method constructor <init>(Lcom/adobe/air/AIRUpdateDialog;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/adobe/air/AIRUpdateDialog$2;->this$0:Lcom/adobe/air/AIRUpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p3, 0x0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return p3

    .line 53
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 54
    invoke-static {}, Lcom/adobe/air/AIRUpdateDialog;->access$100()Lcom/adobe/air/AIRUpdateDialog;

    move-result-object p1

    invoke-static {}, Lcom/adobe/air/AIRUpdateDialog;->access$200()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0, p3}, Lcom/adobe/air/InstallOfferPingUtils;->PingAndExit(Landroid/app/Activity;Ljava/lang/String;ZZZ)V

    return v0
.end method
