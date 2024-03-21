.class public Lcom/marpies/ane/facebook/utils/ShareWithoutUICallback;
.super Ljava/lang/Object;
.source "ShareWithoutUICallback.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/share/Sharer$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static mInstance:Lcom/marpies/ane/facebook/utils/ShareWithoutUICallback;

.field private static mListenerID:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(I)Lcom/marpies/ane/facebook/utils/ShareWithoutUICallback;
    .locals 1

    .line 35
    sget-object v0, Lcom/marpies/ane/facebook/utils/ShareWithoutUICallback;->mInstance:Lcom/marpies/ane/facebook/utils/ShareWithoutUICallback;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/marpies/ane/facebook/utils/ShareWithoutUICallback;

    invoke-direct {v0}, Lcom/marpies/ane/facebook/utils/ShareWithoutUICallback;-><init>()V

    sput-object v0, Lcom/marpies/ane/facebook/utils/ShareWithoutUICallback;->mInstance:Lcom/marpies/ane/facebook/utils/ShareWithoutUICallback;

    .line 38
    :cond_0
    sput p0, Lcom/marpies/ane/facebook/utils/ShareWithoutUICallback;->mListenerID:I

    .line 39
    sget-object p0, Lcom/marpies/ane/facebook/utils/ShareWithoutUICallback;->mInstance:Lcom/marpies/ane/facebook/utils/ShareWithoutUICallback;

    return-object p0
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const-string v0, "Share callback - cancelled"

    .line 50
    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    const-string v0, "shareCancel"

    .line 51
    sget v1, Lcom/marpies/ane/facebook/utils/ShareWithoutUICallback;->mListenerID:I

    invoke-static {v1}, Lcom/marpies/ane/facebook/utils/StringUtils;->getListenerJSONString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ShareActivity] share callback - error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    const-string v0, "shareError"

    .line 57
    sget v1, Lcom/marpies/ane/facebook/utils/ShareWithoutUICallback;->mListenerID:I

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/marpies/ane/facebook/utils/StringUtils;->getEventErrorJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/share/Sharer$Result;)V
    .locals 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Share callback - success, post ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/share/Sharer$Result;->getPostId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    const-string v0, "shareSuccess"

    .line 45
    sget v1, Lcom/marpies/ane/facebook/utils/ShareWithoutUICallback;->mListenerID:I

    const-string v2, "postID"

    invoke-virtual {p1}, Lcom/facebook/share/Sharer$Result;->getPostId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/marpies/ane/facebook/utils/StringUtils;->getSingleValueJSONString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lcom/facebook/share/Sharer$Result;

    invoke-virtual {p0, p1}, Lcom/marpies/ane/facebook/utils/ShareWithoutUICallback;->onSuccess(Lcom/facebook/share/Sharer$Result;)V

    return-void
.end method
