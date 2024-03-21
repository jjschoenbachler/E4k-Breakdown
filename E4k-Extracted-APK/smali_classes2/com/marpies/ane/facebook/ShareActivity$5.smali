.class Lcom/marpies/ane/facebook/ShareActivity$5;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marpies/ane/facebook/ShareActivity;->getAppInviteCallback()Lcom/facebook/FacebookCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/share/widget/AppInviteDialog$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marpies/ane/facebook/ShareActivity;


# direct methods
.method constructor <init>(Lcom/marpies/ane/facebook/ShareActivity;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/marpies/ane/facebook/ShareActivity$5;->this$0:Lcom/marpies/ane/facebook/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/marpies/ane/facebook/ShareActivity$5;->this$0:Lcom/marpies/ane/facebook/ShareActivity;

    invoke-static {v0}, Lcom/marpies/ane/facebook/ShareActivity;->access$1300(Lcom/marpies/ane/facebook/ShareActivity;)V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/marpies/ane/facebook/ShareActivity$5;->this$0:Lcom/marpies/ane/facebook/ShareActivity;

    invoke-static {v0, p1}, Lcom/marpies/ane/facebook/ShareActivity;->access$1400(Lcom/marpies/ane/facebook/ShareActivity;Lcom/facebook/FacebookException;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/share/widget/AppInviteDialog$Result;)V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/marpies/ane/facebook/ShareActivity$5;->this$0:Lcom/marpies/ane/facebook/ShareActivity;

    invoke-static {v0, p1}, Lcom/marpies/ane/facebook/ShareActivity;->access$1200(Lcom/marpies/ane/facebook/ShareActivity;Lcom/facebook/share/widget/AppInviteDialog$Result;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 420
    check-cast p1, Lcom/facebook/share/widget/AppInviteDialog$Result;

    invoke-virtual {p0, p1}, Lcom/marpies/ane/facebook/ShareActivity$5;->onSuccess(Lcom/facebook/share/widget/AppInviteDialog$Result;)V

    return-void
.end method
