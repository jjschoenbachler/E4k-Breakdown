.class public Lcom/marpies/ane/facebook/functions/ShareLinkFunction;
.super Lcom/marpies/ane/facebook/functions/BaseFunction;
.source "ShareLinkFunction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/BaseFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6

    .line 34
    invoke-super {p0, p1, p2}, Lcom/marpies/ane/facebook/functions/BaseFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    const/4 p1, 0x0

    .line 36
    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 37
    aget-object v1, p2, v0

    if-nez v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getBooleanFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    .line 38
    aget-object v2, p2, v1

    if-nez v2, :cond_1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    aget-object v1, p2, v1

    invoke-static {v1}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getBooleanFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    const/4 v2, 0x3

    .line 39
    aget-object v3, p2, v2

    const/4 v4, 0x0

    if-nez v3, :cond_2

    move-object v2, v4

    goto :goto_2

    :cond_2
    aget-object v2, p2, v2

    invoke-static {v2}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    const/4 v3, 0x4

    .line 40
    aget-object p2, p2, v3

    invoke-static {p2}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getIntFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/marpies/ane/facebook/functions/ShareLinkFunction;->mListenerID:I

    .line 42
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 43
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->MESSAGE_LINK:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->LINK:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    .line 44
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".type"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".listenerID"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/marpies/ane/facebook/functions/ShareLinkFunction;->mListenerID:I

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_4

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".contentURL"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 52
    new-instance p1, Lcom/facebook/share/ShareApi;

    invoke-static {p2}, Lcom/marpies/ane/facebook/utils/ShareLinkContentBuilder;->getContentForParameters(Landroid/os/Bundle;)Lcom/facebook/share/model/ShareLinkContent;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/share/ShareApi;-><init>(Lcom/facebook/share/model/ShareContent;)V

    if-eqz v2, :cond_5

    .line 54
    invoke-virtual {p1, v2}, Lcom/facebook/share/ShareApi;->setMessage(Ljava/lang/String;)V

    :cond_5
    const-string p2, "Sharing link without UI."

    .line 56
    invoke-static {p2}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    .line 57
    iget p2, p0, Lcom/marpies/ane/facebook/functions/ShareLinkFunction;->mListenerID:I

    invoke-static {p2}, Lcom/marpies/ane/facebook/utils/ShareWithoutUICallback;->getInstance(I)Lcom/marpies/ane/facebook/utils/ShareWithoutUICallback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/share/ShareApi;->share(Lcom/facebook/FacebookCallback;)V

    goto :goto_4

    .line 61
    :cond_6
    const-class p1, Lcom/marpies/ane/facebook/ShareActivity;

    invoke-static {p1, p2}, Lcom/marpies/ane/facebook/utils/AIR;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_4
    return-object v4
.end method
