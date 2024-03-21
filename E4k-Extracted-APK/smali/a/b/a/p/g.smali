.class public La/b/a/p/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/b/a/p/h;


# instance fields
.field public a:Landroid/content/Context;

.field public final b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La/b/a/p/g;->a:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, La/b/a/p/g;->b:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "JSON.stringify(window.OneTrust.otCookieData)"

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, La/b/a/p/g;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public final a(Ljava/lang/String;ZZ)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p1}, La/b/a/c/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 7
    :try_start_0
    new-instance v1, La/b/a/c/f;

    invoke-direct {v1, p1}, La/b/a/c/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, La/b/a/c/f;->a()La/b/a/c/g;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cookie string = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " parsing error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OCSPValues"

    .line 11
    invoke-static {v2, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 14
    :goto_0
    iget-object v2, p0, La/b/a/p/g;->b:Landroid/content/SharedPreferences;

    const-string v3, "optanonCookieConsentGroups"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 15
    iget-object v0, v1, La/b/a/c/g;->a:Ljava/lang/String;

    .line 16
    :cond_1
    iget-object v1, p0, La/b/a/p/g;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "optanon cookie data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OCSPValues"

    invoke-static {v4, v3}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "completeOptanonCookie"

    .line 18
    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "optanonCookieConsentGroups"

    .line 19
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 21
    new-instance p1, La/b/a/c/m;

    invoke-direct {p1}, La/b/a/c/m;-><init>()V

    iget-object v1, p0, La/b/a/p/g;->a:Landroid/content/Context;

    invoke-virtual {p1, v1}, La/b/a/c/m;->b(Landroid/content/Context;)V

    .line 24
    invoke-static {v0}, La/b/a/c/m;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 25
    new-instance p1, La/b/a/b;

    iget-object v1, p0, La/b/a/p/g;->a:Landroid/content/Context;

    invoke-direct {p1, v1}, La/b/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2, v0, p2}, La/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    if-eqz p3, :cond_3

    const-string p1, "OCSPValues"

    const-string p2, "Create event status for CCPA changes"

    .line 30
    invoke-static {p1, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance p1, La/b/a/o;

    iget-object p2, p0, La/b/a/p/g;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, La/b/a/o;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p1}, La/b/a/o;->a()V

    const/4 p2, 0x1

    .line 33
    invoke-virtual {p1, p2}, La/b/a/o;->a(Z)V

    :cond_3
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "OCSPValues"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "javascript:evalObj.evaluateOptanonCookieData(JSON.stringify(window.OneTrust.otCookieData))"

    return-object v0
.end method
