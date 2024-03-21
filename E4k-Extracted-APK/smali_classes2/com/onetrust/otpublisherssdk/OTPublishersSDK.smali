.class public Lcom/onetrust/otpublisherssdk/OTPublishersSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OneTrustDataDownloadListener;,
        Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OTActionListener;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Landroid/os/Handler;

.field public d:Ljava/lang/Runnable;

.field public e:La/b/a/f;

.field public f:La/b/a/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OTPublishersSDK"

    .line 2
    iput-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->b:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, La/b/a/c/m;->c(Landroid/content/Context;)Z

    const-string v0, ""

    .line 2
    invoke-static {p0, p1, v0}, La/b/a/c/m;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "JSURLToLoad"

    .line 4
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ZI)Landroid/content/Intent;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    const-class v2, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x8000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "JSURLToLoad"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-static {p2}, La/b/a/c/m;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ApplicationIdToLoad"

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p1, "force_load_banner"

    .line 9
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "OTBannerLoadType"

    .line 10
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public clearOneTrustDataDownloadListener()V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-static {}, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->getInstance()Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->clearOtPrefetchListener()V

    return-void
.end method

.method public downloadOneTrustData(Landroid/widget/FrameLayout;Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OneTrustDataDownloadListener;)V
    .locals 3
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OneTrustDataDownloadListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->b:Ljava/lang/String;

    const-string v1, "downloadOneTrustData method called with OTContainer."

    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->b:Ljava/lang/String;

    const-string v1, "downloadOneTrustData method called with null OTContainer."

    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    const-string v1, "com.onetrust.otpublisherssdk.Internal.preference"

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 7
    new-instance v1, La/b/a/c/c;

    invoke-direct {v1}, La/b/a/c/c;-><init>()V

    iget-object v2, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {v1, v2, p2, v0}, La/b/a/c/c;->a(Landroid/content/Context;Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OneTrustDataDownloadListener;Landroid/content/SharedPreferences;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 10
    :cond_1
    new-instance p2, La/b/a/i;

    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-direct {p2, v1, p1}, La/b/a/i;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iput-object p2, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->f:La/b/a/i;

    const-string p1, "JS_TO_LOAD"

    const-string p2, ""

    .line 11
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "APPLICATION_ID_TO_LOAD"

    const-string v1, ""

    .line 12
    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 13
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Javascript to load = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplicationId to load = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->b:Ljava/lang/String;

    const-string v1, "evaluating Webview in backGround started"

    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->f:La/b/a/i;

    invoke-virtual {v0, p1, p2}, La/b/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public downloadOneTrustData(Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OneTrustDataDownloadListener;)V
    .locals 5
    .param p1    # Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OneTrustDataDownloadListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->b:Ljava/lang/String;

    const-string v1, "downloadOneTrustData method called."

    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    const-string v1, "com.onetrust.otpublisherssdk.Internal.preference"

    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 20
    new-instance v1, La/b/a/c/c;

    invoke-direct {v1}, La/b/a/c/c;-><init>()V

    iget-object v3, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    .line 21
    invoke-virtual {v1, v3, p1, v0}, La/b/a/c/c;->a(Landroid/content/Context;Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OneTrustDataDownloadListener;Landroid/content/SharedPreferences;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    const-string v0, "com.onetrust.otpublisherssdk.Internal.preference"

    .line 24
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "JS_TO_LOAD"

    const-string v3, ""

    .line 25
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "APPLICATION_ID_TO_LOAD"

    const-string v4, ""

    .line 26
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v3, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;

    invoke-direct {v3, p1}, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    invoke-virtual {v3, v1, v0, v2, p1}, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a(Ljava/lang/String;Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object p1

    .line 28
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public enableZoom(Z)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    const-string v1, "com.onetrust.otpublisherssdk.Internal.preference"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OT_IS_ZOOM_ENABLED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getConsentStatusForGroupId(Ljava/lang/String;)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-static {v0}, La/b/a/c/m;->c(Landroid/content/Context;)Z

    .line 2
    new-instance v0, La/b/a/b;

    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, La/b/a/b;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, p1}, La/b/a/b;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getConsentStatusForSDKId(Ljava/lang/String;)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-static {v0}, La/b/a/c/m;->c(Landroid/content/Context;)Z

    .line 2
    new-instance v0, La/b/a/o;

    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, La/b/a/o;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0}, La/b/a/o;->a()V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, La/b/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v1, v0, La/b/a/o;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, v0, La/b/a/o;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_1
    return p1
.end method

.method public getInstance(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-static {v0}, La/b/a/c/m;->c(Landroid/content/Context;)Z

    .line 12
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, p1, v1}, La/b/a/c/m;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 13
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a(Ljava/lang/String;Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public getInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-static {v0}, La/b/a/c/m;->c(Landroid/content/Context;)Z

    .line 9
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, La/b/a/c/m;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a(Ljava/lang/String;Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public getInstance(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-static {v0}, La/b/a/c/m;->c(Landroid/content/Context;)Z

    .line 6
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, La/b/a/c/m;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a(Ljava/lang/String;Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public getInstance(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-static {v0}, La/b/a/c/m;->c(Landroid/content/Context;)Z

    .line 15
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, p1, v1}, La/b/a/c/m;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    const/4 v1, 0x1

    .line 16
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a(Ljava/lang/String;Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public getOneTrustDataDownloadStatus()Lcom/onetrust/otpublisherssdk/DownloadStatus;
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, La/b/a/k;->a()La/b/a/k;

    move-result-object v0

    .line 2
    iget-object v1, v0, La/b/a/k;->b:Lcom/onetrust/otpublisherssdk/DownloadStatus;

    const-string v2, "getDownloadStatus :  "

    invoke-virtual {v0, v2, v1}, La/b/a/k;->a(Ljava/lang/String;Lcom/onetrust/otpublisherssdk/DownloadStatus;)V

    .line 3
    iget-object v0, v0, La/b/a/k;->b:Lcom/onetrust/otpublisherssdk/DownloadStatus;

    return-object v0
.end method

.method public initializeCCPA([Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 8
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "com.onetrust.otpublisherssdk.Internal.preference"

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "KEY_CCPA_CUSTOM_GROUP_IDS"

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    if-eqz p1, :cond_2

    .line 5
    array-length v5, p1

    if-nez v5, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 9
    array-length v6, p1

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v7, p1, v3

    .line 10
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 13
    invoke-interface {v4, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    :goto_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "KEY_CCPA_GEOLOCATIONS"

    .line 15
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p2, "KEY_EXPLICIT_NOTICE"

    .line 16
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string p2, "KEY_AGREEMENT_TERMS_APPLIES"

    .line 17
    invoke-interface {p1, p2, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 18
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ccpa initialized? = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "IABUSPrivacy_String"

    invoke-interface {v1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IABCCPA_Consent"

    invoke-static {p2, p1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "IABUSPrivacy_String"

    .line 20
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "IABCCPA_Consent"

    const-string p2, "initializing CCPA first time"

    .line 21
    invoke-static {p1, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "IABUSPrivacy_String"

    const-string p3, "1---"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    return-void
.end method

.method public initializeOneTrustPublishersSDK(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, La/b/a/c/m;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, La/b/a/c/m;

    invoke-direct {p1}, La/b/a/c/m;-><init>()V

    iget-object p2, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, La/b/a/c/m;->b(Landroid/content/Context;)V

    return-void
.end method

.method public initializeOneTrustPublishersSDK(Ljava/lang/String;Ljava/lang/String;Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OTActionListener;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OTActionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 3
    new-instance v0, La/b/a/c/m;

    invoke-direct {v0}, La/b/a/c/m;-><init>()V

    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, La/b/a/c/m;->b(Landroid/content/Context;)V

    .line 4
    new-instance v0, La/b/a/f;

    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, La/b/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->e:La/b/a/f;

    .line 5
    new-instance v0, La/b/a/a/d;

    invoke-direct {v0}, La/b/a/a/d;-><init>()V

    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, La/b/a/a/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, La/b/a/c/m;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-static {v0}, La/b/a/c/m;->c(Landroid/content/Context;)Z

    .line 9
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Javascript to load = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplicationId to load = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->c:Landroid/os/Handler;

    .line 12
    new-instance v0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/onetrust/otpublisherssdk/OTPublishersSDK$a;-><init>(Lcom/onetrust/otpublisherssdk/OTPublishersSDK;Ljava/lang/String;Ljava/lang/String;Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OTActionListener;)V

    iput-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->d:Ljava/lang/Runnable;

    .line 19
    iget-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->c:Landroid/os/Handler;

    iget-object p2, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->d:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->b:Ljava/lang/String;

    const-string p2, "Network not available."

    invoke-static {p1, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    .line 23
    iget-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->e:La/b/a/f;

    invoke-virtual {p1, p3}, La/b/a/f;->a(Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OTActionListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isBannerShown()I
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-static {v0}, La/b/a/c/m;->c(Landroid/content/Context;)Z

    .line 2
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    const-string v1, "com.onetrust.otpublisherssdk.Internal.preference"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "OT_BANNER_SHOWN_TO_USER"

    const/4 v2, -0x1

    .line 4
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isOneTrustDataDownloadInProgress()Z
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->getOneTrustDataDownloadStatus()Lcom/onetrust/otpublisherssdk/DownloadStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onetrust/otpublisherssdk/DownloadStatus;->getDownloadStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public loadPreferenceCenter()Landroid/content/Intent;
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2
    new-instance v0, La/b/a/c/m;

    invoke-direct {v0}, La/b/a/c/m;-><init>()V

    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, La/b/a/c/m;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public loadPreferenceCenter(Z)Landroid/content/Intent;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    new-instance v0, La/b/a/c/m;

    invoke-direct {v0}, La/b/a/c/m;-><init>()V

    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, La/b/a/c/m;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->b:Ljava/lang/String;

    const-string v1, "sdk handler removed"

    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->e:La/b/a/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, v0, La/b/a/f;->b:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V

    .line 5
    iput-object v1, v0, La/b/a/f;->b:Landroid/webkit/WebView;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->f:La/b/a/i;

    if-eqz v0, :cond_1

    .line 7
    iget-object v2, v0, La/b/a/i;->e:Landroid/webkit/WebView;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V

    .line 9
    iput-object v1, v0, La/b/a/i;->e:Landroid/webkit/WebView;

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->c:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 11
    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public optIntoSaleOfData()V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    new-instance v0, La/b/a/p/a;

    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, La/b/a/p/a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, La/b/a/p/a;->a(ZZ)V

    return-void
.end method

.method public optOutOfSaleOfData()V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    new-instance v0, La/b/a/p/a;

    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, La/b/a/p/a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, La/b/a/p/a;->a(ZZ)V

    return-void
.end method

.method public overrideConsentProfile(Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-static {v0}, La/b/a/c/m;->c(Landroid/content/Context;)Z

    .line 2
    invoke-static {p1}, La/b/a/c/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    new-instance v0, La/b/a/p/b;

    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, La/b/a/p/b;-><init>(Landroid/content/Context;)V

    .line 6
    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    .line 7
    :try_start_0
    invoke-virtual {v0}, La/b/a/p/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, La/b/a/c/m;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v0, p1}, La/b/a/p/b;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 12
    invoke-virtual {v0, p1}, La/b/a/p/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v0, p1}, La/b/a/p/b;->c(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, La/b/a/p/b;->i()Lorg/json/JSONObject;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, La/b/a/p/b;->a(Ljava/lang/String;)V

    const-string v3, "ConsentLog"

    const-string v4, "ConsentLog: Consent logging on updateConsentProfile."

    .line 16
    invoke-static {v3, v4}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v3, La/b/a/a/c;

    invoke-direct {v3, v1}, La/b/a/a/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "https://cookies2-ds.dev.otdev.org/request/v1/"

    :try_start_1
    invoke-virtual {v3, v1, v2}, La/b/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "ConsentLog"

    const-string v2, "Invalid Purpose submitted"

    .line 20
    invoke-static {v1, v2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v1, "ConsentLog"

    const-string v2, "empty consent passed"

    .line 23
    invoke-static {v1, v2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "error while updating profile"

    .line 28
    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConsentLog"

    invoke-static {v2, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_4
    :goto_0
    invoke-virtual {v0, p1}, La/b/a/p/b;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public overrideDataSubjectIdentifier(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-static {v0}, La/b/a/c/m;->c(Landroid/content/Context;)Z

    .line 2
    invoke-static {p1}, La/b/a/c/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->setDataSubjectIdentifier(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    :try_start_0
    new-instance v0, La/b/a/p/b;

    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, La/b/a/p/b;-><init>(Landroid/content/Context;)V

    .line 7
    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    const-string v2, ""

    const/4 v3, 0x4

    invoke-virtual {v0, v1, p1, v2, v3}, La/b/a/p/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 9
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->b:Ljava/lang/String;

    const-string v1, "error in updating consent : "

    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public registerOneTrustDataDownloadListener(Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OneTrustDataDownloadListener;)Z
    .locals 1
    .param p1    # Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OneTrustDataDownloadListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-static {}, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->getInstance()Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->setOtPrefetchListener(Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OneTrustDataDownloadListener;)Z

    move-result p1

    return p1
.end method

.method public setBannerRenderProperty(I)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Banner render type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Utils"

    invoke-static {v2, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.onetrust.otpublisherssdk.Internal.preference"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OT_BANNER_RENDER_TYPE"

    .line 5
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setDataSubjectIdentifier(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->b:Ljava/lang/String;

    const-string v0, "setDataSubjectIdentifier: Pass a valid identifier!!"

    invoke-static {p1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->b:Ljava/lang/String;

    const-string v0, "cleared data subject identifier."

    invoke-static {p1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance p1, La/b/a/c/m;

    invoke-direct {p1}, La/b/a/c/m;-><init>()V

    invoke-virtual {p1}, La/b/a/c/m;->a()Ljava/lang/String;

    move-result-object p1

    .line 8
    :cond_1
    new-instance v0, La/b/a/p/b;

    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, La/b/a/p/b;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, La/b/a/p/b;->a(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public setShouldCreateProfile(Z)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create profile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Utils"

    invoke-static {v2, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.onetrust.otpublisherssdk.Internal.preference"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OTT_CREATE_CONSENT_PROFILE"

    .line 5
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public shouldShowBanner()I
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-static {v0}, La/b/a/c/m;->c(Landroid/content/Context;)Z

    .line 2
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    const-string v1, "com.onetrust.otpublisherssdk.Internal.preference"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "APP_SHOULD_SHOW_BANNER"

    const/4 v2, -0x1

    .line 4
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public unRegisterOneTrustDataDownloadListener(Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OneTrustDataDownloadListener;)Z
    .locals 1
    .param p1    # Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OneTrustDataDownloadListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-static {}, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->getInstance()Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->removeOtPrefetchListener(Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OneTrustDataDownloadListener;)Z

    move-result p1

    return p1
.end method

.method public updateGoogleAdMobNetworkExtrasBundle(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->b:Ljava/lang/String;

    const-string p2, "Bundle initialized to null"

    invoke-static {p1, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->getConsentStatusForSDKId(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "consent not collected for sdkId or wrong sdkId passed. sdkId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 8
    iget-object p2, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->b:Ljava/lang/String;

    const-string v0, "NPA set to bundle"

    invoke-static {p2, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "npa"

    const-string v0, "1"

    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->b:Ljava/lang/String;

    const-string p2, "NPA not set, consent given"

    invoke-static {p1, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateGoogleAdMobNetworkExtrasBundle(Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    if-nez p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->b:Ljava/lang/String;

    const-string p2, "Bundle initialized to null"

    invoke-static {p1, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 15
    :cond_0
    invoke-virtual {p0, p2}, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->getConsentStatusForSDKId(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 17
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "consent not collected for sdkId or wrong sdkId passed. sdkId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " defaultValue = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_3

    .line 20
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "npa"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 23
    iget-object p2, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->b:Ljava/lang/String;

    const-string p3, "NPA set to bundle"

    invoke-static {p2, p3}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "npa"

    const-string p3, "1"

    .line 24
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->b:Ljava/lang/String;

    const-string p2, "NPA not set, consent given"

    invoke-static {p1, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public writeLogsToFile(ZZ)V
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;

    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/OTPublisherSDKLogs.log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const v3, 0xf4240

    invoke-virtual {v0, v1, v2, v3}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->open(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->b:Ljava/lang/String;

    const-string v1, "Write To File Should be Enabled!"

    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_1
    :goto_0
    sput-boolean p2, La/b/a/a/a;->b:Z

    .line 5
    sput-boolean p1, La/b/a/a/a;->a:Z

    return-void
.end method
