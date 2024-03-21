.class Lcom/adobe/air/AIRUpdateDialog$1;
.super Ljava/lang/Object;
.source "AIRUpdateDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 26
    iput-object p1, p0, Lcom/adobe/air/AIRUpdateDialog$1;->this$0:Lcom/adobe/air/AIRUpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 30
    iget-object p1, p0, Lcom/adobe/air/AIRUpdateDialog$1;->this$0:Lcom/adobe/air/AIRUpdateDialog;

    invoke-virtual {p1}, Lcom/adobe/air/AIRUpdateDialog;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "airDownloadURL"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    iget-object p2, p0, Lcom/adobe/air/AIRUpdateDialog$1;->this$0:Lcom/adobe/air/AIRUpdateDialog;

    invoke-static {p2}, Lcom/adobe/air/AIRUpdateDialog;->access$000(Lcom/adobe/air/AIRUpdateDialog;)Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/adobe/air/AndroidActivityWrapper;->LaunchMarketPlaceForAIR(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/adobe/air/AIRUpdateDialog;->access$100()Lcom/adobe/air/AIRUpdateDialog;

    move-result-object p1

    invoke-static {}, Lcom/adobe/air/AIRUpdateDialog;->access$200()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v0, v1}, Lcom/adobe/air/InstallOfferPingUtils;->PingAndExit(Landroid/app/Activity;Ljava/lang/String;ZZZ)V

    return-void
.end method
