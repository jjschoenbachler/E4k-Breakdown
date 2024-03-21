.class Lcom/goodgamestudios/extension/ConsentDialogActivity$1;
.super Ljava/lang/Object;
.source "ConsentDialogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodgamestudios/extension/ConsentDialogActivity;->hideLoadingSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodgamestudios/extension/ConsentDialogActivity;


# direct methods
.method constructor <init>(Lcom/goodgamestudios/extension/ConsentDialogActivity;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/goodgamestudios/extension/ConsentDialogActivity$1;->this$0:Lcom/goodgamestudios/extension/ConsentDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/goodgamestudios/extension/ConsentDialogActivity$1;->this$0:Lcom/goodgamestudios/extension/ConsentDialogActivity;

    invoke-static {v0}, Lcom/goodgamestudios/extension/ConsentDialogActivity;->access$000(Lcom/goodgamestudios/extension/ConsentDialogActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
