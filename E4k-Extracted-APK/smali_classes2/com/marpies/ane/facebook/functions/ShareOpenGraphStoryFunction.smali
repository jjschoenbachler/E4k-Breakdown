.class public Lcom/marpies/ane/facebook/functions/ShareOpenGraphStoryFunction;
.super Lcom/marpies/ane/facebook/functions/BaseFunction;
.source "ShareOpenGraphStoryFunction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/BaseFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8

    .line 33
    invoke-super {p0, p1, p2}, Lcom/marpies/ane/facebook/functions/BaseFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    const/4 p1, 0x0

    .line 35
    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 36
    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 37
    aget-object v1, p2, v1

    invoke-static {v1}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 42
    aget-object v3, p2, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 43
    aget-object v3, p2, v2

    instance-of v3, v3, Lcom/adobe/fre/FREBitmapData;

    if-eqz v3, :cond_0

    .line 45
    :try_start_0
    aget-object v2, p2, v2

    check-cast v2, Lcom/adobe/fre/FREBitmapData;

    invoke-static {v2}, Lcom/marpies/ane/facebook/utils/BitmapDataUtils;->getBitmap(Lcom/adobe/fre/FREBitmapData;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_1

    :catch_0
    move-exception v2

    .line 49
    invoke-virtual {v2}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 47
    invoke-virtual {v2}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_0

    .line 52
    :cond_0
    aget-object v2, p2, v2

    invoke-static {v2}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, v4

    move-object v3, v2

    :goto_1
    const/4 v5, 0x4

    .line 55
    aget-object v6, p2, v5

    if-nez v6, :cond_2

    move-object v5, v4

    goto :goto_2

    :cond_2
    aget-object v5, p2, v5

    check-cast v5, Lcom/adobe/fre/FREArray;

    invoke-static {v5}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getBundleFromFREArray(Lcom/adobe/fre/FREArray;)Landroid/os/Bundle;

    move-result-object v5

    :goto_2
    const/4 v6, 0x5

    .line 56
    aget-object p2, p2, v6

    invoke-static {p2}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getIntFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/marpies/ane/facebook/functions/ShareOpenGraphStoryFunction;->mListenerID:I

    .line 58
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->OPEN_GRAPH_STORY:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    invoke-virtual {v7}, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".actionType"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".objectType"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".title"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".listenerID"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/marpies/ane/facebook/functions/ShareOpenGraphStoryFunction;->mListenerID:I

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v2, :cond_3

    .line 65
    sput-object v2, Lcom/marpies/ane/facebook/data/AIRFacebookSharedBitmap;->DATA:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_4

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".imageURL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    if-eqz v5, :cond_5

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".objectProperties"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 73
    :cond_5
    const-class p1, Lcom/marpies/ane/facebook/ShareActivity;

    invoke-static {p1, p2}, Lcom/marpies/ane/facebook/utils/AIR;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object v4
.end method
