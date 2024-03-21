.class public Lcom/marpies/ane/facebook/ShareActivity;
.super Landroid/app/Activity;
.source "ShareActivity.java"


# static fields
.field public static extraPrefix:Ljava/lang/String; = "com.marpies.ane.facebook.ShareActivity"

.field private static mShareCallbackType:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

.field private static mShareType:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;


# instance fields
.field private mCallbackManager:Lcom/facebook/CallbackManager;

.field private mListenerID:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/marpies/ane/facebook/data/AIRFacebookShareType;
    .locals 1

    .line 42
    sget-object v0, Lcom/marpies/ane/facebook/ShareActivity;->mShareType:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    return-object v0
.end method

.method static synthetic access$100(Lcom/marpies/ane/facebook/ShareActivity;Lcom/facebook/share/model/ShareContent;Ljava/lang/Boolean;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/marpies/ane/facebook/ShareActivity;->shareContentWithNativeUI(Lcom/facebook/share/model/ShareContent;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/marpies/ane/facebook/ShareActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/marpies/ane/facebook/ShareActivity;->onGameRequestCancelled()V

    return-void
.end method

.method static synthetic access$1100(Lcom/marpies/ane/facebook/ShareActivity;Lcom/facebook/FacebookException;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/marpies/ane/facebook/ShareActivity;->onGameRequestError(Lcom/facebook/FacebookException;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/marpies/ane/facebook/ShareActivity;Lcom/facebook/share/widget/AppInviteDialog$Result;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/marpies/ane/facebook/ShareActivity;->onAppInviteSucceeded(Lcom/facebook/share/widget/AppInviteDialog$Result;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/marpies/ane/facebook/ShareActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/marpies/ane/facebook/ShareActivity;->onAppInviteCancelled()V

    return-void
.end method

.method static synthetic access$1400(Lcom/marpies/ane/facebook/ShareActivity;Lcom/facebook/FacebookException;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/marpies/ane/facebook/ShareActivity;->onAppInviteError(Lcom/facebook/FacebookException;)V

    return-void
.end method

.method static synthetic access$200(Lcom/marpies/ane/facebook/ShareActivity;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/marpies/ane/facebook/ShareActivity;->mListenerID:I

    return p0
.end method

.method static synthetic access$300(Lcom/marpies/ane/facebook/ShareActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/marpies/ane/facebook/ShareActivity;->onShareFinish()V

    return-void
.end method

.method static synthetic access$400()Lcom/marpies/ane/facebook/data/AIRFacebookShareType;
    .locals 1

    .line 42
    sget-object v0, Lcom/marpies/ane/facebook/ShareActivity;->mShareCallbackType:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    return-object v0
.end method

.method static synthetic access$500(Lcom/marpies/ane/facebook/ShareActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/marpies/ane/facebook/ShareActivity;->dispatchAppInviteCancel()V

    return-void
.end method

.method static synthetic access$600(Lcom/marpies/ane/facebook/ShareActivity;Lcom/facebook/share/Sharer$Result;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/marpies/ane/facebook/ShareActivity;->onShareSucceeded(Lcom/facebook/share/Sharer$Result;)V

    return-void
.end method

.method static synthetic access$700(Lcom/marpies/ane/facebook/ShareActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/marpies/ane/facebook/ShareActivity;->onShareCancelled()V

    return-void
.end method

.method static synthetic access$800(Lcom/marpies/ane/facebook/ShareActivity;Lcom/facebook/FacebookException;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/marpies/ane/facebook/ShareActivity;->onShareError(Lcom/facebook/FacebookException;)V

    return-void
.end method

.method static synthetic access$900(Lcom/marpies/ane/facebook/ShareActivity;Lcom/facebook/share/widget/GameRequestDialog$Result;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/marpies/ane/facebook/ShareActivity;->onGameRequestSucceeded(Lcom/facebook/share/widget/GameRequestDialog$Result;)V

    return-void
.end method

.method private dispatchAppInviteCancel()V
    .locals 4

    const-string v0, "shareCancel"

    .line 294
    iget v1, p0, Lcom/marpies/ane/facebook/ShareActivity;->mListenerID:I

    const-string v2, "appInvite"

    const-string v3, "true"

    invoke-static {v1, v2, v3}, Lcom/marpies/ane/facebook/utils/StringUtils;->getSingleValueJSONString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-direct {p0}, Lcom/marpies/ane/facebook/ShareActivity;->onShareFinish()V

    return-void
.end method

.method private getAppInviteCallback()Lcom/facebook/FacebookCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/widget/AppInviteDialog$Result;",
            ">;"
        }
    .end annotation

    .line 420
    new-instance v0, Lcom/marpies/ane/facebook/ShareActivity$5;

    invoke-direct {v0, p0}, Lcom/marpies/ane/facebook/ShareActivity$5;-><init>(Lcom/marpies/ane/facebook/ShareActivity;)V

    return-object v0
.end method

.method private getGameRequestCallback()Lcom/facebook/FacebookCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/widget/GameRequestDialog$Result;",
            ">;"
        }
    .end annotation

    .line 401
    new-instance v0, Lcom/marpies/ane/facebook/ShareActivity$4;

    invoke-direct {v0, p0}, Lcom/marpies/ane/facebook/ShareActivity$4;-><init>(Lcom/marpies/ane/facebook/ShareActivity;)V

    return-object v0
.end method

.method private getShareCallback()Lcom/facebook/FacebookCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;"
        }
    .end annotation

    .line 382
    new-instance v0, Lcom/marpies/ane/facebook/ShareActivity$3;

    invoke-direct {v0, p0}, Lcom/marpies/ane/facebook/ShareActivity$3;-><init>(Lcom/marpies/ane/facebook/ShareActivity;)V

    return-object v0
.end method

.method private onAppInviteCancelled()V
    .locals 1

    .line 275
    sget-object v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->APP_INVITE:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    sput-object v0, Lcom/marpies/ane/facebook/ShareActivity;->mShareCallbackType:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    const-string v0, "[ShareActivity] app invite callback - cancelled"

    .line 276
    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    .line 277
    invoke-direct {p0}, Lcom/marpies/ane/facebook/ShareActivity;->dispatchAppInviteCancel()V

    return-void
.end method

.method private onAppInviteError(Lcom/facebook/FacebookException;)V
    .locals 6

    .line 281
    sget-object v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->APP_INVITE:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    sput-object v0, Lcom/marpies/ane/facebook/ShareActivity;->mShareCallbackType:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ShareActivity] app invite callback - error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    const-string v0, "shareError"

    .line 283
    sget-object v1, Lcom/marpies/ane/facebook/utils/StringUtils;->locale:Ljava/util/Locale;

    const-string v2, "{ \"listenerID\": %d, \"errorMessage\": \"%s\", \"appInvite\": \"true\" }"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/marpies/ane/facebook/ShareActivity;->mListenerID:I

    .line 286
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 287
    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/StringUtils;->removeLineBreaks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 283
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-direct {p0}, Lcom/marpies/ane/facebook/ShareActivity;->onShareFinish()V

    return-void
.end method

.method private onAppInviteSucceeded(Lcom/facebook/share/widget/AppInviteDialog$Result;)V
    .locals 3

    .line 265
    sget-object p1, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->APP_INVITE:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    sput-object p1, Lcom/marpies/ane/facebook/ShareActivity;->mShareCallbackType:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    const-string p1, "[ShareActivity] app invite callback - success"

    .line 266
    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    const-string p1, "shareSuccess"

    .line 267
    iget v0, p0, Lcom/marpies/ane/facebook/ShareActivity;->mListenerID:I

    const-string v1, "appInvite"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lcom/marpies/ane/facebook/utils/StringUtils;->getSingleValueJSONString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-direct {p0}, Lcom/marpies/ane/facebook/ShareActivity;->onShareFinish()V

    return-void
.end method

.method private onGameRequestCancelled()V
    .locals 2

    .line 320
    sget-object v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->GAME_REQUEST:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    sput-object v0, Lcom/marpies/ane/facebook/ShareActivity;->mShareCallbackType:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    const-string v0, "[ShareActivity] game request callback - cancelled"

    .line 321
    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    const-string v0, "gameRequestCancel"

    .line 322
    iget v1, p0, Lcom/marpies/ane/facebook/ShareActivity;->mListenerID:I

    invoke-static {v1}, Lcom/marpies/ane/facebook/utils/StringUtils;->getListenerJSONString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-direct {p0}, Lcom/marpies/ane/facebook/ShareActivity;->onShareFinish()V

    return-void
.end method

.method private onGameRequestError(Lcom/facebook/FacebookException;)V
    .locals 2

    .line 328
    sget-object v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->GAME_REQUEST:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    sput-object v0, Lcom/marpies/ane/facebook/ShareActivity;->mShareCallbackType:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ShareActivity] game request callback - error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    const-string v0, "gameRequestError"

    .line 330
    iget v1, p0, Lcom/marpies/ane/facebook/ShareActivity;->mListenerID:I

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/marpies/ane/facebook/utils/StringUtils;->getEventErrorJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-direct {p0}, Lcom/marpies/ane/facebook/ShareActivity;->onShareFinish()V

    return-void
.end method

.method private onGameRequestSucceeded(Lcom/facebook/share/widget/GameRequestDialog$Result;)V
    .locals 6

    .line 303
    sget-object v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->GAME_REQUEST:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    sput-object v0, Lcom/marpies/ane/facebook/ShareActivity;->mShareCallbackType:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    const-string v0, "[ShareActivity] game request callback - success"

    .line 304
    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    const-string v0, "gameRequestSuccess"

    .line 305
    sget-object v1, Lcom/marpies/ane/facebook/utils/StringUtils;->locale:Ljava/util/Locale;

    const-string v2, "{ \"request_id\": \"%s\", \"recipients\": %s, \"listenerID\": %d }"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 310
    invoke-virtual {p1}, Lcom/facebook/share/widget/GameRequestDialog$Result;->getRequestId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 311
    invoke-virtual {p1}, Lcom/facebook/share/widget/GameRequestDialog$Result;->getRequestRecipients()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    iget p1, p0, Lcom/marpies/ane/facebook/ShareActivity;->mListenerID:I

    .line 312
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 307
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 305
    invoke-static {v0, p1}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-direct {p0}, Lcom/marpies/ane/facebook/ShareActivity;->onShareFinish()V

    return-void
.end method

.method private onShareCancelled()V
    .locals 2

    .line 245
    sget-object v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->LINK:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    sput-object v0, Lcom/marpies/ane/facebook/ShareActivity;->mShareCallbackType:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    const-string v0, "[ShareActivity] share callback - cancelled"

    .line 246
    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    const-string v0, "shareCancel"

    .line 247
    iget v1, p0, Lcom/marpies/ane/facebook/ShareActivity;->mListenerID:I

    invoke-static {v1}, Lcom/marpies/ane/facebook/utils/StringUtils;->getListenerJSONString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/marpies/ane/facebook/ShareActivity;->onShareFinish()V

    return-void
.end method

.method private onShareError(Lcom/facebook/FacebookException;)V
    .locals 2

    .line 253
    sget-object v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->LINK:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    sput-object v0, Lcom/marpies/ane/facebook/ShareActivity;->mShareCallbackType:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    .line 254
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

    .line 255
    iget v1, p0, Lcom/marpies/ane/facebook/ShareActivity;->mListenerID:I

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/marpies/ane/facebook/utils/StringUtils;->getEventErrorJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0}, Lcom/marpies/ane/facebook/ShareActivity;->onShareFinish()V

    return-void
.end method

.method private onShareFinish()V
    .locals 1

    .line 337
    sget-object v0, Lcom/marpies/ane/facebook/data/AIRFacebookSharedBitmap;->DATA:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 338
    sget-object v0, Lcom/marpies/ane/facebook/data/AIRFacebookSharedBitmap;->DATA:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 339
    sput-object v0, Lcom/marpies/ane/facebook/data/AIRFacebookSharedBitmap;->DATA:Landroid/graphics/Bitmap;

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/marpies/ane/facebook/ShareActivity;->finish()V

    return-void
.end method

.method private onShareSucceeded(Lcom/facebook/share/Sharer$Result;)V
    .locals 3

    .line 229
    sget-object v0, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->LINK:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    sput-object v0, Lcom/marpies/ane/facebook/ShareActivity;->mShareCallbackType:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ShareActivity] share callback - success, post ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/share/Sharer$Result;->getPostId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p1}, Lcom/facebook/share/Sharer$Result;->getPostId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "shareSuccess"

    if-nez p1, :cond_0

    .line 234
    iget p1, p0, Lcom/marpies/ane/facebook/ShareActivity;->mListenerID:I

    .line 237
    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/StringUtils;->getListenerJSONString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/marpies/ane/facebook/ShareActivity;->mListenerID:I

    const-string v2, "postID"

    .line 238
    invoke-static {v1, v2, p1}, Lcom/marpies/ane/facebook/utils/StringUtils;->getSingleValueJSONString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 234
    :goto_0
    invoke-static {v0, p1}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-direct {p0}, Lcom/marpies/ane/facebook/ShareActivity;->onShareFinish()V

    return-void
.end method

.method private shareContentWithNativeUI(Lcom/facebook/share/model/ShareContent;Ljava/lang/Boolean;)V
    .locals 2

    .line 158
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 159
    new-instance p2, Lcom/facebook/share/widget/MessageDialog;

    invoke-direct {p2, p0}, Lcom/facebook/share/widget/MessageDialog;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 161
    :cond_0
    new-instance p2, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {p2, p0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/marpies/ane/facebook/ShareActivity;->mCallbackManager:Lcom/facebook/CallbackManager;

    invoke-direct {p0}, Lcom/marpies/ane/facebook/ShareActivity;->getShareCallback()Lcom/facebook/FacebookCallback;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/facebook/internal/FacebookDialogBase;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 164
    invoke-virtual {p2, p1}, Lcom/facebook/internal/FacebookDialogBase;->show(Ljava/lang/Object;)V

    return-void
.end method

.method private shareLink(Landroid/os/Bundle;)V
    .locals 2

    .line 97
    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/ShareLinkContentBuilder;->getContentForParameters(Landroid/os/Bundle;)Lcom/facebook/share/model/ShareLinkContent;

    move-result-object p1

    const-string v0, "[ShareActivity] sharing link content."

    .line 98
    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/marpies/ane/facebook/ShareActivity;->mShareType:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    sget-object v1, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->MESSAGE_LINK:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/marpies/ane/facebook/ShareActivity;->shareContentWithNativeUI(Lcom/facebook/share/model/ShareContent;Ljava/lang/Boolean;)V

    return-void
.end method

.method private shareOpenGraphStory(Landroid/os/Bundle;)V
    .locals 6

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".objectType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;

    invoke-direct {v1}, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;-><init>()V

    const-string v2, "og:type"

    .line 123
    invoke-virtual {v1, v2, v0}, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    move-result-object v1

    check-cast v1, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;

    const-string v2, "og:title"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".title"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    move-result-object v1

    check-cast v1, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".objectProperties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".objectProperties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 129
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    goto :goto_0

    .line 133
    :cond_0
    sget-object v2, Lcom/marpies/ane/facebook/data/AIRFacebookSharedBitmap;->DATA:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    const-string v2, "og:image"

    .line 134
    new-instance v3, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v3}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    sget-object v4, Lcom/marpies/ane/facebook/data/AIRFacebookSharedBitmap;->DATA:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/facebook/share/model/SharePhoto$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;->putPhoto(Ljava/lang/String;Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    goto :goto_1

    .line 135
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".imageURL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "og:image"

    .line 136
    new-instance v3, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v3}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".imageURL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/share/model/SharePhoto$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;->putPhoto(Ljava/lang/String;Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    .line 140
    :cond_2
    :goto_1
    new-instance v2, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;

    invoke-direct {v2}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".actionType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;->setActionType(Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphAction$Builder;

    move-result-object p1

    .line 143
    invoke-virtual {v1}, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;->build()Lcom/facebook/share/model/ShareOpenGraphObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;->putObject(Ljava/lang/String;Lcom/facebook/share/model/ShareOpenGraphObject;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;

    .line 146
    new-instance v1, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;

    invoke-direct {v1}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;-><init>()V

    .line 147
    invoke-virtual {v1, v0}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->setPreviewPropertyName(Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphContent$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;->build()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->setAction(Lcom/facebook/share/model/ShareOpenGraphAction;)Lcom/facebook/share/model/ShareOpenGraphContent$Builder;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->build()Lcom/facebook/share/model/ShareOpenGraphContent;

    move-result-object p1

    const-string v0, "[ShareActivity] sharing Open Graph story."

    .line 151
    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 153
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/marpies/ane/facebook/ShareActivity;->shareContentWithNativeUI(Lcom/facebook/share/model/ShareContent;Ljava/lang/Boolean;)V

    return-void
.end method

.method private sharePhoto(Landroid/os/Bundle;)V
    .locals 1

    .line 103
    new-instance v0, Lcom/marpies/ane/facebook/ShareActivity$1;

    invoke-direct {v0, p0}, Lcom/marpies/ane/facebook/ShareActivity$1;-><init>(Lcom/marpies/ane/facebook/ShareActivity;)V

    invoke-static {p1, v0}, Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilder;->createContentForParameters(Landroid/os/Bundle;Lcom/marpies/ane/facebook/utils/SharePhotoContentBuilderCallback;)V

    return-void
.end method

.method private showAppInviteDialog(Landroid/os/Bundle;)V
    .locals 3

    .line 168
    new-instance v0, Lcom/facebook/share/model/AppInviteContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/AppInviteContent$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".appLinkURL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/AppInviteContent$Builder;->setApplinkUrl(Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$Builder;

    move-result-object v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".imageURL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".imageURL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/AppInviteContent$Builder;->setPreviewImageUrl(Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$Builder;

    :cond_0
    const-string p1, "[ShareActivity] showing AppInvite dialog."

    .line 174
    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    .line 176
    new-instance p1, Lcom/facebook/share/widget/AppInviteDialog;

    invoke-direct {p1, p0}, Lcom/facebook/share/widget/AppInviteDialog;-><init>(Landroid/app/Activity;)V

    .line 177
    iget-object v1, p0, Lcom/marpies/ane/facebook/ShareActivity;->mCallbackManager:Lcom/facebook/CallbackManager;

    invoke-direct {p0}, Lcom/marpies/ane/facebook/ShareActivity;->getAppInviteCallback()Lcom/facebook/FacebookCallback;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/facebook/share/widget/AppInviteDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 178
    invoke-virtual {v0}, Lcom/facebook/share/model/AppInviteContent$Builder;->build()Lcom/facebook/share/model/AppInviteContent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/share/widget/AppInviteDialog;->show(Lcom/facebook/share/model/AppInviteContent;)V

    return-void
.end method

.method private showGameRequestDialog(Landroid/os/Bundle;)V
    .locals 4

    .line 182
    new-instance v0, Lcom/facebook/share/model/GameRequestContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/GameRequestContent$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setMessage(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".actionType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".actionType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/share/model/GameRequestContent$ActionType;->valueOf(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$ActionType;

    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setActionType(Lcom/facebook/share/model/GameRequestContent$ActionType;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 188
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTitle(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 191
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".objectID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".objectID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setObjectId(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 194
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".friendsFilter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".friendsFilter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/share/model/GameRequestContent$Filters;->valueOf(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Filters;

    move-result-object v1

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting friends filter to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/facebook/share/model/GameRequestContent$Filters;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setFilters(Lcom/facebook/share/model/GameRequestContent$Filters;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 199
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setData(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 202
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".suggestedFriends"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".suggestedFriends"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setSuggestions(Ljava/util/List;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 205
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".recipients"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".recipients"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setRecipients(Ljava/util/List;)Lcom/facebook/share/model/GameRequestContent$Builder;

    :cond_6
    const-string p1, "[ShareActivity] showing GameRequest dialog."

    .line 209
    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    .line 211
    new-instance p1, Lcom/facebook/share/widget/GameRequestDialog;

    invoke-direct {p1, p0}, Lcom/facebook/share/widget/GameRequestDialog;-><init>(Landroid/app/Activity;)V

    .line 212
    iget-object v1, p0, Lcom/marpies/ane/facebook/ShareActivity;->mCallbackManager:Lcom/facebook/CallbackManager;

    invoke-direct {p0}, Lcom/marpies/ane/facebook/ShareActivity;->getGameRequestCallback()Lcom/facebook/FacebookCallback;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/facebook/share/widget/GameRequestDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 213
    invoke-virtual {v0}, Lcom/facebook/share/model/GameRequestContent$Builder;->build()Lcom/facebook/share/model/GameRequestContent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/share/widget/GameRequestDialog;->show(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 359
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 360
    iget-object v0, p0, Lcom/marpies/ane/facebook/ShareActivity;->mCallbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 362
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/marpies/ane/facebook/ShareActivity$2;

    invoke-direct {p2, p0}, Lcom/marpies/ane/facebook/ShareActivity$2;-><init>(Lcom/marpies/ane/facebook/ShareActivity;)V

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 354
    invoke-direct {p0}, Lcom/marpies/ane/facebook/ShareActivity;->onShareFinish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object p1

    iput-object p1, p0, Lcom/marpies/ane/facebook/ShareActivity;->mCallbackManager:Lcom/facebook/CallbackManager;

    .line 59
    sget-object p1, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->NONE:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    sput-object p1, Lcom/marpies/ane/facebook/ShareActivity;->mShareCallbackType:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    .line 61
    invoke-virtual {p0}, Lcom/marpies/ane/facebook/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".listenerID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/marpies/ane/facebook/ShareActivity;->mListenerID:I

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/marpies/ane/facebook/ShareActivity;->extraPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->valueOf(Ljava/lang/String;)Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    move-result-object v0

    sput-object v0, Lcom/marpies/ane/facebook/ShareActivity;->mShareType:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    .line 65
    sget-object v0, Lcom/marpies/ane/facebook/ShareActivity$6;->$SwitchMap$com$marpies$ane$facebook$data$AIRFacebookShareType:[I

    sget-object v1, Lcom/marpies/ane/facebook/ShareActivity;->mShareType:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    invoke-virtual {v1}, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ShareActivity] - Unknown share type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/marpies/ane/facebook/ShareActivity;->mShareType:Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    invoke-virtual {v0}, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/AIR;->log(Ljava/lang/String;)V

    return-void

    .line 81
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/marpies/ane/facebook/ShareActivity;->showGameRequestDialog(Landroid/os/Bundle;)V

    return-void

    .line 78
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/marpies/ane/facebook/ShareActivity;->showAppInviteDialog(Landroid/os/Bundle;)V

    return-void

    .line 75
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/marpies/ane/facebook/ShareActivity;->shareOpenGraphStory(Landroid/os/Bundle;)V

    return-void

    .line 72
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/marpies/ane/facebook/ShareActivity;->sharePhoto(Landroid/os/Bundle;)V

    return-void

    .line 68
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/marpies/ane/facebook/ShareActivity;->shareLink(Landroid/os/Bundle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
