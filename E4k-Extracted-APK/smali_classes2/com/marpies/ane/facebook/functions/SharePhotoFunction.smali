.class public Lcom/marpies/ane/facebook/functions/SharePhotoFunction;
.super Lcom/marpies/ane/facebook/functions/BaseFunction;
.source "SharePhotoFunction.java"

# interfaces
.implements Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilderCallback;


# instance fields
.field private mShareMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/BaseFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7

    .line 38
    invoke-super {p0, p1, p2}, Lcom/marpies/ane/facebook/functions/BaseFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    const/4 p1, 0x1

    .line 40
    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getBooleanFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x2

    .line 41
    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getBooleanFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x3

    .line 42
    aget-object v1, p2, v1

    invoke-static {v1}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getBooleanFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    .line 43
    aget-object v3, p2, v2

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    aget-object v2, p2, v2

    invoke-static {v2}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/marpies/ane/facebook/functions/SharePhotoFunction;->mShareMessage:Ljava/lang/String;

    const/4 v2, 0x5

    .line 44
    aget-object v2, p2, v2

    invoke-static {v2}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getIntFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/marpies/ane/facebook/functions/SharePhotoFunction;->mListenerID:I

    const/4 v2, 0x0

    .line 49
    aget-object v3, p2, v2

    if-eqz v3, :cond_2

    .line 50
    aget-object p2, p2, v2

    .line 51
    instance-of v2, p2, Lcom/adobe/fre/FREBitmapData;

    if-eqz v2, :cond_1

    .line 53
    :try_start_0
    check-cast p2, Lcom/adobe/fre/FREBitmapData;

    invoke-static {p2}, Lcom/marpies/ane/facebook/utils/BitmapDataUtils;->getBitmap(Lcom/adobe/fre/FREBitmapData;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    goto :goto_2

    :catch_0
    move-exception p2

    .line 57
    invoke-virtual {p2}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p2

    .line 55
    invoke-virtual {p2}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_1

    .line 60
    :cond_1
    invoke-static {p2}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    move-object p2, v4

    goto :goto_2

    :cond_2
    :goto_1
    move-object p2, v4

    move-object v2, p2

    .line 64
    :goto_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 65
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->MESSAGE_PHOTO:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->PHOTO:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    .line 66
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".listenerID"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v5, p0, Lcom/marpies/ane/facebook/functions/SharePhotoFunction;->mListenerID:I

    invoke-virtual {v3, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_4

    .line 70
    sput-object p2, Lcom/marpies/ane/facebook/data/AIRFacebookSharedBitmap;->DATA:Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_4
    if-eqz v2, :cond_5

    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".imageURL"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_5
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".userGenerated"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v3, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 80
    invoke-static {v3, p0}, Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilder;->createContentForParameters(Landroid/os/Bundle;Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilderCallback;)V

    goto :goto_5

    .line 82
    :cond_6
    const-class p1, Lcom/marpies/ane/facebook/ShareActivity;

    invoke-static {p1, v3}, Lcom/marpies/ane/facebook/utils/AIR;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_5
    return-object v4
.end method

.method public onPhotoContentBuilderFailed(Ljava/lang/String;)V
    .locals 2

    const-string v0, "shareError"

    .line 108
    iget v1, p0, Lcom/marpies/ane/facebook/functions/SharePhotoFunction;->mListenerID:I

    invoke-static {v1, p1}, Lcom/marpies/ane/facebook/utils/StringUtils;->getEventErrorJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPhotoContentBuilderSucceeded(Lcom/facebook/share/model/SharePhotoContent;)V
    .locals 1

    const-string v0, "Sharing photo without UI."

    .line 98
    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/facebook/share/ShareApi;

    invoke-direct {v0, p1}, Lcom/facebook/share/ShareApi;-><init>(Lcom/facebook/share/model/ShareContent;)V

    .line 100
    iget-object p1, p0, Lcom/marpies/ane/facebook/functions/SharePhotoFunction;->mShareMessage:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/marpies/ane/facebook/functions/SharePhotoFunction;->mShareMessage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/facebook/share/ShareApi;->setMessage(Ljava/lang/String;)V

    .line 103
    :cond_0
    iget p1, p0, Lcom/marpies/ane/facebook/functions/SharePhotoFunction;->mListenerID:I

    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/ShareWithoutUICallback;->getInstance(I)Lcom/marpies/ane/facebook/utils/ShareWithoutUICallback;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/ShareApi;->share(Lcom/facebook/FacebookCallback;)V

    return-void
.end method
