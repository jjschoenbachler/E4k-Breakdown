.class final Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilder$1;
.super Lcom/marpies/ane/facebook/utils/AsyncImageLoader;
.source "SharePhotoContentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilder;->createContentForParameters(Landroid/os/Bundle;Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilderCallback;

.field final synthetic val$imageURL:Ljava/lang/String;

.field final synthetic val$photo:Lcom/facebook/share/model/SharePhoto$Builder;


# direct methods
.method constructor <init>(Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilderCallback;Lcom/facebook/share/model/SharePhoto$Builder;Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilder$1;->val$callback:Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilderCallback;

    iput-object p2, p0, Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilder$1;->val$photo:Lcom/facebook/share/model/SharePhoto$Builder;

    iput-object p3, p0, Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilder$1;->val$imageURL:Ljava/lang/String;

    invoke-direct {p0}, Lcom/marpies/ane/facebook/utils/AsyncImageLoader;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 50
    invoke-super {p0, p1}, Lcom/marpies/ane/facebook/utils/AsyncImageLoader;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilder$1;->val$callback:Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilderCallback;

    iget-object v1, p0, Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilder$1;->val$photo:Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-static {p1, v1}, Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilder;->access$000(Landroid/graphics/Bitmap;Lcom/facebook/share/model/SharePhoto$Builder;)Lcom/facebook/share/model/SharePhotoContent;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilderCallback;->onPhotoContentBuilderSucceeded(Lcom/facebook/share/model/SharePhotoContent;)V

    goto :goto_1

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilder$1;->val$callback:Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilderCallback;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error loading \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilder$1;->val$imageURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' file."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilder$1;->val$imageURL:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " Perhaps missing READ_EXTERNAL_STORAGE permission?"

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilderCallback;->onPhotoContentBuilderFailed(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilder$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
