.class Lcom/marpies/ane/facebook/ShareActivity$1;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marpies/ane/facebook/ShareActivity;->sharePhoto(Landroid/os/Bundle;)V
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

    .line 103
    iput-object p1, p0, Lcom/marpies/ane/facebook/ShareActivity$1;->this$0:Lcom/marpies/ane/facebook/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoContentBuilderFailed(Ljava/lang/String;)V
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ShareActivity] sharing photo with UI - error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    const-string v0, "shareError"

    .line 113
    iget-object v1, p0, Lcom/marpies/ane/facebook/ShareActivity$1;->this$0:Lcom/marpies/ane/facebook/ShareActivity;

    invoke-static {v1}, Lcom/marpies/ane/facebook/ShareActivity;->access$200(Lcom/marpies/ane/facebook/ShareActivity;)I

    move-result v1

    invoke-static {v1, p1}, Lcom/marpies/ane/facebook/utils/StringUtils;->getEventErrorJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/marpies/ane/facebook/ShareActivity$1;->this$0:Lcom/marpies/ane/facebook/ShareActivity;

    invoke-static {p1}, Lcom/marpies/ane/facebook/ShareActivity;->access$300(Lcom/marpies/ane/facebook/ShareActivity;)V

    return-void
.end method

.method public onPhotoContentBuilderSucceeded(Lcom/facebook/share/model/SharePhotoContent;)V
    .locals 3

    const-string v0, "[ShareActivity] sharing photo with UI - success"

    .line 106
    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/marpies/ane/facebook/ShareActivity$1;->this$0:Lcom/marpies/ane/facebook/ShareActivity;

    invoke-static {}, Lcom/marpies/ane/facebook/ShareActivity;->access$000()Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    move-result-object v1

    sget-object v2, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->MESSAGE_PHOTO:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/marpies/ane/facebook/ShareActivity;->access$100(Lcom/marpies/ane/facebook/ShareActivity;Lcom/facebook/share/model/ShareContent;Ljava/lang/Boolean;)V

    return-void
.end method
