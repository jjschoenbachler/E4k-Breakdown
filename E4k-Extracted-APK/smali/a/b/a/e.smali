.class public La/b/a/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/SharedPreferences;

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La/b/a/e;->a:Landroid/content/Context;

    const-string v0, "com.onetrust.otpublisherssdk.Internal.preference"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 4
    iput-object p1, p0, La/b/a/e;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static synthetic a(La/b/a/e;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, La/b/a/e;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evaluated consent result ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OTEvaluateValues"

    invoke-static {v1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {p2}, La/b/a/c/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "consent logging disabled "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OTEvaluateValues"

    invoke-static {p2, p1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 34
    :cond_0
    :try_start_0
    new-instance v0, La/b/a/p/b;

    invoke-direct {v0, p1}, La/b/a/p/b;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    const/4 v2, 0x5

    .line 35
    invoke-virtual {v0, p1, v1, p2, v2}, La/b/a/p/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "error in updating consent : "

    .line 37
    invoke-static {p2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OTEvaluateValues"

    invoke-static {p2, p1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;La/b/a/p/h;)V
    .locals 2
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # La/b/a/p/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 11
    invoke-interface {p2}, La/b/a/p/h;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, La/b/a/d;

    invoke-direct {v1, p0, p2}, La/b/a/d;-><init>(La/b/a/e;La/b/a/p/h;)V

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "OTEvaluateValues"

    const-string p2, "evaluateJavascript call require api level 19 (KitKat)+"

    .line 27
    invoke-static {p1, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    new-instance p2, La/b/a/p/b;

    invoke-direct {p2, p3}, La/b/a/p/b;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p2}, La/b/a/p/b;->h()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, La/b/a/c/m;->d(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 7
    iput-boolean p3, p2, La/b/a/p/b;->c:Z

    .line 8
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p3, v0, :cond_1

    .line 9
    invoke-virtual {p0, p1, p2}, La/b/a/e;->a(Landroid/webkit/WebView;La/b/a/p/h;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;La/b/a/p/h;Landroid/content/Context;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # La/b/a/p/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "method = "

    .line 38
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, La/b/a/p/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onReceiveValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OTEvaluateValues"

    invoke-static {v1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-interface {p2, p1}, La/b/a/p/h;->a(Ljava/lang/String;)V

    .line 40
    instance-of v0, p2, La/b/a/p/g;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 42
    iput-boolean v1, p0, La/b/a/e;->c:Z

    .line 44
    :cond_0
    instance-of p2, p2, La/b/a/p/c;

    if-eqz p2, :cond_3

    .line 46
    iput-boolean v1, p0, La/b/a/e;->d:Z

    const-string p2, ""

    .line 47
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "IabType"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "cannot find iab version, JSONException = "

    .line 49
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DomainDataParser"

    invoke-static {v0, p1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, p2

    .line 51
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "iab version = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DomainDataParser"

    invoke-static {v0, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iput-object p1, p0, La/b/a/e;->e:Ljava/lang/String;

    .line 53
    iget-object p1, p0, La/b/a/e;->b:Landroid/content/SharedPreferences;

    const-string p2, "OT_IAB_VERSION"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    iget-object p1, p0, La/b/a/e;->b:Landroid/content/SharedPreferences;

    const-string p2, "OT_IAB_VERSION"

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, La/b/a/e;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 55
    iget-object p1, p0, La/b/a/e;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, La/b/a/e;->e:Ljava/lang/String;

    const-string v0, "OT_IAB_VERSION"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 58
    :cond_1
    iget-object p1, p0, La/b/a/e;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, La/b/a/e;->e:Ljava/lang/String;

    const-string v0, "OT_IAB_VERSION"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 60
    :cond_2
    :goto_1
    new-instance p1, La/b/a/p/b;

    invoke-direct {p1, p3}, La/b/a/p/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, La/b/a/p/b;->d()V

    .line 62
    :cond_3
    iget-boolean p1, p0, La/b/a/e;->d:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, La/b/a/e;->c:Z

    if-eqz p1, :cond_4

    const-string p1, "OTEvaluateValues"

    const-string p2, "Create event status"

    .line 63
    invoke-static {p1, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance p1, La/b/a/o;

    invoke-direct {p1, p3}, La/b/a/o;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {p1}, La/b/a/o;->a()V

    const/4 p2, 0x0

    .line 66
    invoke-virtual {p1, p2}, La/b/a/o;->a(Z)V

    :cond_4
    return-void
.end method

.method public b(Landroid/webkit/WebView;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance p2, La/b/a/p/c;

    invoke-direct {p2, p3}, La/b/a/p/c;-><init>(Landroid/content/Context;)V

    .line 3
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p3, v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, La/b/a/e;->a(Landroid/webkit/WebView;La/b/a/p/h;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/webkit/WebView;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance p2, La/b/a/p/d;

    invoke-direct {p2, p3}, La/b/a/p/d;-><init>(Landroid/content/Context;)V

    .line 3
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p3, v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, La/b/a/e;->a(Landroid/webkit/WebView;La/b/a/p/h;)V

    :cond_0
    return-void
.end method

.method public d(Landroid/webkit/WebView;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance p2, La/b/a/p/g;

    invoke-direct {p2, p3}, La/b/a/p/g;-><init>(Landroid/content/Context;)V

    .line 3
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p3, v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, La/b/a/e;->a(Landroid/webkit/WebView;La/b/a/p/h;)V

    :cond_0
    return-void
.end method
