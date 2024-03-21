.class Lcom/marpies/ane/facebook/ShareActivity$2;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marpies/ane/facebook/ShareActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marpies/ane/facebook/ShareActivity;


# direct methods
.method constructor <init>(Lcom/marpies/ane/facebook/ShareActivity;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/marpies/ane/facebook/ShareActivity$2;->this$0:Lcom/marpies/ane/facebook/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 366
    invoke-static {}, Lcom/marpies/ane/facebook/ShareActivity;->access$400()Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    move-result-object v0

    sget-object v1, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->NONE:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/marpies/ane/facebook/ShareActivity;->access$000()Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    move-result-object v0

    sget-object v1, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->APP_INVITE:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    if-ne v0, v1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/marpies/ane/facebook/ShareActivity$2;->this$0:Lcom/marpies/ane/facebook/ShareActivity;

    invoke-static {v0}, Lcom/marpies/ane/facebook/ShareActivity;->access$500(Lcom/marpies/ane/facebook/ShareActivity;)V

    :cond_0
    return-void
.end method
