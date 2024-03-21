.class public La/b/a/c/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Landroid/content/Context;

.field public b:La/b/a/p/h;

.field public final c:Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;

.field public d:La/b/a/c/o;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;La/b/a/p/h;La/b/a/c/o;Z)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # La/b/a/p/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # La/b/a/c/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La/b/a/c/d;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, La/b/a/c/d;->b:La/b/a/p/h;

    .line 4
    new-instance p1, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;

    invoke-direct {p1}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;-><init>()V

    iput-object p1, p0, La/b/a/c/d;->c:Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;

    .line 5
    iput-object p3, p0, La/b/a/c/d;->d:La/b/a/c/o;

    .line 6
    iput-boolean p4, p0, La/b/a/c/d;->f:Z

    return-void
.end method


# virtual methods
.method public evaluateConsentLoggingPayload(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Consent payload below 19? = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EvaluateBelow19"

    invoke-static {v1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, La/b/a/p/b;

    iget-object v1, p0, La/b/a/c/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, La/b/a/p/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La/b/a/c/d;->b:La/b/a/p/h;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, La/b/a/c/d;->c:Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;

    iget-object v1, p0, La/b/a/c/d;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public evaluateDomainData(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, La/b/a/p/c;

    iget-object v1, p0, La/b/a/c/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, La/b/a/p/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La/b/a/c/d;->b:La/b/a/p/h;

    .line 2
    iget-object v0, p0, La/b/a/c/d;->c:Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;

    iget-object v1, p0, La/b/a/c/d;->b:La/b/a/p/h;

    iget-object v2, p0, La/b/a/c/d;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, v1, v2}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Ljava/lang/String;La/b/a/p/h;Landroid/content/Context;)V

    return-void
.end method

.method public evaluateIsConsentGiven(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "true"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, La/b/a/c/d;->e:Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Consent given flag? = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EvaluateBelow19"

    invoke-static {v0, p1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public evaluateOptanonCookieData(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, La/b/a/p/g;

    iget-object v1, p0, La/b/a/c/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, La/b/a/p/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La/b/a/c/d;->b:La/b/a/p/h;

    .line 2
    iget-object v0, p0, La/b/a/c/d;->c:Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;

    iget-object v1, p0, La/b/a/c/d;->b:La/b/a/p/h;

    iget-object v2, p0, La/b/a/c/d;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, v1, v2}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Ljava/lang/String;La/b/a/p/h;Landroid/content/Context;)V

    return-void
.end method

.method public evaluateShowAlertNotice(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Banner allowed on geo-location? = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "forceLoad ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, La/b/a/c/d;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "consentGiven = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, La/b/a/c/d;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EvaluateBelow19"

    invoke-static {v1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "true"

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    iget-object v2, p0, La/b/a/c/d;->d:La/b/a/c/o;

    if-eqz v2, :cond_4

    .line 11
    invoke-static {p1}, La/b/a/c/m;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 12
    iget-boolean p1, p0, La/b/a/c/d;->f:Z

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_1

    .line 14
    iget-object p1, p0, La/b/a/c/d;->d:La/b/a/c/o;

    invoke-interface {p1, v2, v0}, La/b/a/c/o;->a(ZZ)V

    goto :goto_1

    .line 16
    :cond_1
    iget-object p1, p0, La/b/a/c/d;->d:La/b/a/c/o;

    invoke-interface {p1, v0, v0}, La/b/a/c/o;->a(ZZ)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 19
    iget-boolean p1, p0, La/b/a/c/d;->e:Z

    if-nez p1, :cond_3

    .line 20
    iget-object p1, p0, La/b/a/c/d;->d:La/b/a/c/o;

    invoke-interface {p1, v2, v0}, La/b/a/c/o;->a(ZZ)V

    goto :goto_1

    .line 22
    :cond_3
    iget-object p1, p0, La/b/a/c/d;->d:La/b/a/c/o;

    invoke-interface {p1, v0, v0}, La/b/a/c/o;->a(ZZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method public evaluateVendorConsentRequest(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, La/b/a/p/f;

    iget-object v1, p0, La/b/a/c/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, La/b/a/p/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La/b/a/c/d;->b:La/b/a/p/h;

    .line 2
    iget-object v0, p0, La/b/a/c/d;->c:Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;

    iget-object v1, p0, La/b/a/c/d;->b:La/b/a/p/h;

    iget-object v2, p0, La/b/a/c/d;->a:Landroid/content/Context;

    invoke-virtual {v0, p1, v1, v2}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Ljava/lang/String;La/b/a/p/h;Landroid/content/Context;)V

    return-void
.end method
