.class public Lcom/marpies/ane/facebook/functions/ShowAppInviteDialogFunction;
.super Lcom/marpies/ane/facebook/functions/BaseFunction;
.source "ShowAppInviteDialogFunction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/BaseFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4

    .line 31
    invoke-super {p0, p1, p2}, Lcom/marpies/ane/facebook/functions/BaseFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    const/4 p1, 0x0

    .line 33
    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 34
    aget-object v1, p2, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    .line 35
    aget-object p2, p2, v1

    invoke-static {p2}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getIntFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/marpies/ane/facebook/functions/ShowAppInviteDialogFunction;->mListenerID:I

    .line 37
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".type"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->APP_INVITE:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    invoke-virtual {v3}, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".appLinkURL"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".listenerID"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/marpies/ane/facebook/functions/ShowAppInviteDialogFunction;->mListenerID:I

    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v0, :cond_1

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".imageURL"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_1
    const-class p1, Lcom/marpies/ane/facebook/ShareActivity;

    invoke-static {p1, p2}, Lcom/marpies/ane/facebook/utils/AIR;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object v2
.end method
