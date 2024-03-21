.class Lcom/marpies/ane/facebook/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marpies/ane/facebook/LoginActivity;->initHelperObjects()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marpies/ane/facebook/LoginActivity;


# direct methods
.method constructor <init>(Lcom/marpies/ane/facebook/LoginActivity;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/marpies/ane/facebook/LoginActivity$1;->this$0:Lcom/marpies/ane/facebook/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/marpies/ane/facebook/LoginActivity$1;->this$0:Lcom/marpies/ane/facebook/LoginActivity;

    invoke-static {v0}, Lcom/marpies/ane/facebook/LoginActivity;->access$100(Lcom/marpies/ane/facebook/LoginActivity;)V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/marpies/ane/facebook/LoginActivity$1;->this$0:Lcom/marpies/ane/facebook/LoginActivity;

    invoke-static {v0, p1}, Lcom/marpies/ane/facebook/LoginActivity;->access$200(Lcom/marpies/ane/facebook/LoginActivity;Lcom/facebook/FacebookException;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/marpies/ane/facebook/LoginActivity$1;->this$0:Lcom/marpies/ane/facebook/LoginActivity;

    invoke-static {v0, p1}, Lcom/marpies/ane/facebook/LoginActivity;->access$000(Lcom/marpies/ane/facebook/LoginActivity;Lcom/facebook/login/LoginResult;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 158
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/marpies/ane/facebook/LoginActivity$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
