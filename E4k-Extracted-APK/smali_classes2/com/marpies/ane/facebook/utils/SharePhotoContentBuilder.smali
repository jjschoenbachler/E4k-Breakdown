.class public Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilder;
.super Ljava/lang/Object;
.source "SharePhotoContentBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/graphics/Bitmap;Lcom/facebook/share/model/SharePhoto$Builder;)Lcom/facebook/share/model/SharePhotoContent;
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilder;->getPhotoContent(Landroid/graphics/Bitmap;Lcom/facebook/share/model/SharePhoto$Builder;)Lcom/facebook/share/model/SharePhotoContent;

    move-result-object p0

    return-object p0
.end method

.method public static createContentForParameters(Landroid/os/Bundle;Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilderCallback;)V
    .locals 3

    .line 36
    new-instance v0, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".userGenerated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/SharePhoto$Builder;->setUserGenerated(Z)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    .line 39
    sget-object v1, Lcom/marpies/ane/facebook/data/AIRFacebookSharedBitmap;->DATA:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    const-string p0, "Sharing photo using BitmapData."

    .line 40
    invoke-static {p0}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    .line 41
    sget-object p0, Lcom/marpies/ane/facebook/data/AIRFacebookSharedBitmap;->DATA:Landroid/graphics/Bitmap;

    invoke-static {p0, v0}, Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilder;->getPhotoContent(Landroid/graphics/Bitmap;Lcom/facebook/share/model/SharePhoto$Builder;)Lcom/facebook/share/model/SharePhotoContent;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilderCallback;->onPhotoContentBuilderSucceeded(Lcom/facebook/share/model/SharePhotoContent;)V

    goto :goto_0

    .line 44
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".imageURL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Loading photo from URL before sharing."

    .line 45
    invoke-static {v1}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".imageURL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 47
    new-instance v1, Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilder$1;

    invoke-direct {v1, p1, v0, p0}, Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilder$1;-><init>(Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilderCallback;Lcom/facebook/share/model/SharePhoto$Builder;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    .line 57
    invoke-virtual {v1, p1}, Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilder$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    const-string p0, "Invalid bitmap data encountered."

    .line 59
    invoke-interface {p1, p0}, Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilderCallback;->onPhotoContentBuilderFailed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static getPhotoContent(Landroid/graphics/Bitmap;Lcom/facebook/share/model/SharePhoto$Builder;)Lcom/facebook/share/model/SharePhotoContent;
    .locals 0

    .line 64
    invoke-virtual {p1, p0}, Lcom/facebook/share/model/SharePhoto$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$Builder;

    .line 65
    new-instance p0, Lcom/facebook/share/model/SharePhotoContent$Builder;

    invoke-direct {p0}, Lcom/facebook/share/model/SharePhotoContent$Builder;-><init>()V

    .line 66
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/SharePhotoContent$Builder;->addPhoto(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhotoContent$Builder;

    move-result-object p0

    .line 67
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhotoContent$Builder;->build()Lcom/facebook/share/model/SharePhotoContent;

    move-result-object p0

    return-object p0
.end method
