.class public Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source ""

# interfaces
.implements La/b/a/c/o;


# instance fields
.field public a:Landroid/content/SharedPreferences;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Landroid/webkit/WebView;

.field public f:I

.field public g:I

.field public h:Ljava/lang/Boolean;

.field public i:Ljava/lang/Boolean;

.field public j:La/b/a/q;

.field public k:Z

.field public l:Z

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->d:Z

    .line 49
    iput-boolean v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->k:Z

    .line 50
    iput-boolean v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->l:Z

    const-string v0, ""

    .line 52
    iput-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->n:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a:Landroid/content/SharedPreferences;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)La/b/a/p/h;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 215
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a:Landroid/content/SharedPreferences;

    const-string v1, "OT_IAB_VERSION"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAB2"

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "OTPublishersSDKActivity"

    const-string v1, "evaluating IAB 2.0 data"

    .line 217
    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v0, La/b/a/p/e;

    invoke-direct {v0, p1}, La/b/a/p/e;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v1, "IAB"

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OTPublishersSDKActivity"

    const-string v1, "evaluating IAB 1.0 data"

    .line 220
    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v0, La/b/a/p/f;

    invoke-direct {v0, p1}, La/b/a/p/f;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 224
    :cond_1
    new-instance v0, La/b/a/p/f;

    invoke-direct {v0, p1}, La/b/a/p/f;-><init>(Landroid/content/Context;)V

    .line 225
    new-instance p1, La/b/a/p/e;

    invoke-direct {p1, p0}, La/b/a/p/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, La/b/a/p/e;->d()V

    .line 226
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 227
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "IABConsent_CMPPresent"

    .line 228
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "IABConsent_CMPPresent"

    .line 229
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "IABConsent_SubjectToGDPR"

    .line 230
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "IABConsent_ConsentString"

    .line 231
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "IABConsent_ParsedPurposeConsents"

    .line 232
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "IABConsent_ParsedVendorConsents"

    .line 233
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 235
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "IAB1.0SPV"

    const-string v1, "IAB 1.0 preferences deprecated and deleted"

    .line 236
    invoke-static {p1, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public a()V
    .locals 6

    .line 190
    iget v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "com.onetrust.otpublisherssdk.Internal.preference"

    const/4 v1, 0x0

    .line 191
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "OT_FILE_DOWNLOADED_STATUS"

    const-wide/16 v2, -0x1

    .line 192
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File download status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OTPublishersSDKActivity"

    invoke-static {v3, v2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    const/4 v4, 0x5

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    const-string v0, "OTPublishersSDKActivity"

    const-string v1, "Download Status: Web View Load Failed. Cache Exists."

    .line 195
    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v0, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;

    const/4 v1, 0x1

    const-string v2, "Download Status: Web View Load Failed. Cache Exists."

    invoke-direct {v0, v1, v2}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, v4}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;I)V

    goto :goto_0

    :cond_0
    const-string v0, "OTPublishersSDKActivity"

    const-string v1, "Download Status: No network. No Cached Data found."

    .line 200
    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v0, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;

    const/4 v1, -0x1

    const-string v2, "Download Status: Web View Load Failed. Cache doesn\'t Exist."

    invoke-direct {v0, v1, v2}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, v4}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;I)V

    :cond_1
    :goto_0
    const-string v0, "OTPublishersSDKActivity"

    const-string v1, "onReceivedError on webview loading time, finishing activity."

    .line 206
    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

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

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evaluated consent result ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OTPublishersSDKActivity"

    invoke-static {v1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {p2}, La/b/a/c/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "consent logging disabled "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OTPublishersSDKActivity"

    invoke-static {p2, p1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 261
    :cond_0
    :try_start_0
    new-instance v0, La/b/a/p/b;

    invoke-direct {v0, p1}, La/b/a/p/b;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    const/4 v2, 0x5

    .line 262
    invoke-virtual {v0, p1, v1, p2, v2}, La/b/a/p/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "error in updating consent : "

    .line 264
    invoke-static {p2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OTPublishersSDKActivity"

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

    .line 237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 238
    invoke-interface {p2}, La/b/a/p/h;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, La/b/a/h;

    invoke-direct {v1, p0, p2}, La/b/a/h;-><init>(Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;La/b/a/p/h;)V

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "OTPublishersSDKActivity"

    const-string p2, "evaluateJavascript call require api level 19 (KitKat)+"

    .line 254
    invoke-static {p1, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 30
    iget v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fetchJSDetails called for PREFETCH_BANNER_LOAD. No need to evaluate. url- "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OTPublishersSDKActivity"

    invoke-static {p2, p1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchJSDetails of URL = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OTPublishersSDKActivity"

    invoke-static {v1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->k:Z

    .line 37
    iput-boolean v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->l:Z

    .line 38
    invoke-static {p2}, La/b/a/c/m;->d(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "http://otsdk://consentChanged"

    .line 40
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "http://otsdk//consentChanged"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_7

    .line 41
    iget-boolean v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->c:Z

    if-nez v1, :cond_4

    const-string v1, "OTPublishersSDKActivity"

    const-string v3, "User interacted with the banner, setting App should show banner to false."

    .line 42
    invoke-static {v1, v3}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "APP_SHOULD_SHOW_BANNER"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 45
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_5

    .line 46
    invoke-virtual {p0, p0}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Landroid/content/Context;)La/b/a/p/h;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Landroid/webkit/WebView;La/b/a/p/h;)V

    goto :goto_3

    .line 48
    :cond_5
    invoke-virtual {p0, p0}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Landroid/content/Context;)La/b/a/p/h;

    move-result-object v0

    .line 49
    new-instance v3, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;

    invoke-direct {v3}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;-><init>()V

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "below19"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, La/b/a/p/h;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EvaluateBelow19"

    invoke-static {v4, v3}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-interface {v0}, La/b/a/p/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 52
    :goto_3
    invoke-virtual {p0, p1, p2, p0}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->b(Landroid/webkit/WebView;Ljava/lang/String;Landroid/content/Context;)V

    .line 53
    invoke-virtual {p0, p1, p2, p0}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/content/Context;)V

    .line 54
    new-instance p2, La/b/a/p/b;

    invoke-direct {p2, p0}, La/b/a/p/b;-><init>(Landroid/content/Context;)V

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_6

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Landroid/webkit/WebView;La/b/a/p/h;)V

    goto :goto_4

    .line 58
    :cond_6
    new-instance v0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;

    invoke-direct {v0}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "below19"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, La/b/a/p/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EvaluateBelow19"

    invoke-static {v1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p2}, La/b/a/p/b;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 61
    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->i:Ljava/lang/Boolean;

    .line 62
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_8

    .line 63
    :cond_7
    invoke-static {p2}, La/b/a/c/m;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    const-string p1, "about:blank"

    .line 65
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "ot://ignored"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    const/4 p1, 0x1

    goto :goto_6

    :cond_a
    :goto_5
    const/4 p1, 0x0

    :goto_6
    if-eqz p1, :cond_c

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "external url : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OTPublishersSDKActivity"

    invoke-static {v1, p1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "androidx.browser.customtabs.CustomTabsIntent$Builder"

    .line 67
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_7

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Utils"

    invoke-static {v1, p1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    if-eqz v0, :cond_b

    .line 71
    :try_start_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 72
    new-instance p2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {p2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    .line 73
    invoke-virtual {p2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p2

    .line 74
    invoke-virtual {p2, p0, p1}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    const-string p1, "Utils"

    const-string p2, "Could not find class androidx.browser.customtabs.CustomTabsIntent$Builder, add implementation \'androidx.browser:browser:1.0.0\' to gradle file"

    .line 76
    invoke-static {p1, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_b
    const-string p1, "OTPublishersSDKActivity"

    const-string p2, "Could not find class androidx.browser.customtabs.CustomTabsIntent$Builder, add implementation \'androidx.browser:browser:1.0.0\' to gradle file"

    .line 77
    invoke-static {p1, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_8
    return-void
.end method

.method public final a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/content/Context;)V
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

    .line 208
    new-instance p2, La/b/a/p/c;

    invoke-direct {p2, p3}, La/b/a/p/c;-><init>(Landroid/content/Context;)V

    .line 210
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p3, v0, :cond_0

    .line 211
    invoke-virtual {p0, p1, p2}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Landroid/webkit/WebView;La/b/a/p/h;)V

    goto :goto_0

    .line 212
    :cond_0
    new-instance p3, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;

    invoke-direct {p3}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;-><init>()V

    .line 213
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "below19"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, La/b/a/p/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "EvaluateBelow19"

    invoke-static {v0, p3}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-interface {p2}, La/b/a/p/h;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final a(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;I)V
    .locals 2
    .param p1    # Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 78
    invoke-static {}, La/b/a/k;->a()La/b/a/k;

    move-result-object v0

    new-instance v1, Lcom/onetrust/otpublisherssdk/DownloadStatus;

    invoke-direct {v1, p1, p2}, Lcom/onetrust/otpublisherssdk/DownloadStatus;-><init>(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;I)V

    const-string p2, "setDownloadStatus :  "

    .line 79
    invoke-virtual {v0, p2, v1}, La/b/a/k;->a(Ljava/lang/String;Lcom/onetrust/otpublisherssdk/DownloadStatus;)V

    .line 80
    iput-object v1, v0, La/b/a/k;->b:Lcom/onetrust/otpublisherssdk/DownloadStatus;

    .line 81
    invoke-static {}, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->getInstance()Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->sendCallback(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;)V

    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    move v6, p2

    move-object v1, p3

    const/4 v2, 0x0

    .line 2
    iput-boolean v2, v0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->d:Z

    .line 3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_3

    const-string v3, "com.onetrust.otpublisherssdk.Internal.preference"

    .line 4
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "OT_FILE_DOWNLOADED_STATUS"

    const-wide/16 v7, -0x1

    .line 5
    invoke-interface {v2, v3, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File download status = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "OTPublishersSDKActivity"

    invoke-static {v7, v5}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v8, Ljava/io/File;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v7, "offline_publisher_web_view_template.html"

    invoke-direct {v8, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    const-wide/16 v9, 0x0

    cmp-long v5, v2, v9

    if-lez v5, :cond_2

    const/4 v2, 0x1

    if-ne v6, v2, :cond_0

    .line 9
    iget-object v2, v0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->j:La/b/a/q;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "./"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v7, v0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->c:Z

    move-object v1, v2

    move-object v2, p4

    move-object v4, p1

    move/from16 v5, p5

    move v6, p2

    invoke-virtual/range {v1 .. v7}, La/b/a/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v6, v2, :cond_1

    const-string v2, "file://"

    .line 12
    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/scripttemplates/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offline file path :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OTPublishersSDKActivity"

    invoke-static {v2, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v1, v0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->j:La/b/a/q;

    iget-boolean v7, v0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->c:Z

    move-object v2, p4

    move-object v4, p1

    move/from16 v5, p5

    move v6, p2

    invoke-virtual/range {v1 .. v7}, La/b/a/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p4

    .line 17
    :goto_0
    new-instance v2, La/b/a/c/m;

    invoke-direct {v2}, La/b/a/c/m;-><init>()V

    const-string v3, "offline_publisher_web_view_template.html"

    invoke-virtual {v2, p0, v3, v1}, La/b/a/c/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "OTPublishersSDKActivity"

    const-string v2, "loading url from file"

    .line 20
    invoke-static {v1, v2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v1, v0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->e:Landroid/webkit/WebView;

    const-string v2, "file://"

    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "OTPublishersSDKActivity"

    const-string v2, "offline mode loading failed."

    .line 22
    invoke-static {v1, v2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->setResult(I)V

    .line 24
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_1

    :cond_3
    const-string v1, "OTPublishersSDKActivity"

    const-string v2, "offline mode loading failed, pathURL does not exist."

    .line 27
    invoke-static {v1, v2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->setResult(I)V

    .line 29
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;La/b/a/p/h;Landroid/content/Context;)V
    .locals 3
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

    .line 265
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

    const-string v1, "OTPublishersSDKActivity"

    invoke-static {v1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-interface {p2, p1}, La/b/a/p/h;->a(Ljava/lang/String;)V

    .line 267
    instance-of v0, p2, La/b/a/p/g;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 269
    iput-boolean v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->l:Z

    .line 271
    :cond_0
    instance-of v0, p2, La/b/a/p/c;

    if-eqz v0, :cond_3

    .line 273
    iput-boolean v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->k:Z

    const-string v0, ""

    .line 274
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "IabType"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "cannot find iab version, JSONException = "

    .line 276
    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "DomainDataParser"

    invoke-static {v2, p1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    .line 278
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iab version = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DomainDataParser"

    invoke-static {v2, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iput-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->n:Ljava/lang/String;

    .line 280
    iget-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a:Landroid/content/SharedPreferences;

    const-string v0, "OT_IAB_VERSION"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 281
    iget-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a:Landroid/content/SharedPreferences;

    const-string v0, "OT_IAB_VERSION"

    const-string v2, ""

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 282
    iget-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->n:Ljava/lang/String;

    const-string v2, "OT_IAB_VERSION"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 285
    :cond_1
    iget-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->n:Ljava/lang/String;

    const-string v2, "OT_IAB_VERSION"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 287
    :cond_2
    :goto_1
    new-instance p1, La/b/a/p/b;

    invoke-direct {p1, p0}, La/b/a/p/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, La/b/a/p/b;->d()V

    .line 289
    :cond_3
    iget-boolean p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->k:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->l:Z

    if-eqz p1, :cond_4

    const-string p1, "OTPublishersSDKActivity"

    const-string v0, "Create event status"

    .line 290
    invoke-static {p1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance p1, La/b/a/o;

    invoke-direct {p1, p3}, La/b/a/o;-><init>(Landroid/content/Context;)V

    .line 292
    invoke-virtual {p1}, La/b/a/o;->a()V

    .line 293
    iget-object p3, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->i:Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p3}, La/b/a/o;->a(Z)V

    .line 295
    :cond_4
    instance-of p1, p2, La/b/a/p/f;

    if-eqz p1, :cond_5

    const-string p1, "OTPublishersSDKActivity"

    const-string p2, "closing webview"

    .line 296
    invoke-static {p1, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setResult(I)V

    :cond_5
    return-void
.end method

.method public a(ZZ)V
    .locals 8

    .line 82
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->e:Landroid/webkit/WebView;

    const-string v1, ""

    invoke-virtual {p0, v0, v1, p0}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->b(Landroid/webkit/WebView;Ljava/lang/String;Landroid/content/Context;)V

    .line 83
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->e:Landroid/webkit/WebView;

    const-string v1, ""

    invoke-virtual {p0, v0, v1, p0}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/content/Context;)V

    .line 84
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->e:Landroid/webkit/WebView;

    .line 85
    new-instance v1, La/b/a/p/d;

    invoke-direct {v1, p0}, La/b/a/p/d;-><init>(Landroid/content/Context;)V

    .line 87
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 88
    invoke-virtual {p0, v0, v1}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Landroid/webkit/WebView;La/b/a/p/h;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->e:Landroid/webkit/WebView;

    .line 90
    new-instance v1, La/b/a/p/b;

    invoke-direct {v1, p0}, La/b/a/p/b;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {v1}, La/b/a/p/b;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, La/b/a/c/m;->d(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_1

    goto :goto_0

    .line 95
    :cond_1
    iput-boolean v4, v1, La/b/a/p/b;->c:Z

    .line 96
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_2

    .line 97
    invoke-virtual {p0, v0, v1}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Landroid/webkit/WebView;La/b/a/p/h;)V

    goto :goto_0

    .line 98
    :cond_2
    new-instance v1, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;

    invoke-direct {v1}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;-><init>()V

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "below19"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "javascript:evalObj.evaluateConsentLoggingPayload(JSON.stringify(OneTrust.GetDomainData().ConsentIntegrationData));"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EvaluateBelow19"

    invoke-static {v2, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "javascript:evalObj.evaluateConsentLoggingPayload(JSON.stringify(OneTrust.GetDomainData().ConsentIntegrationData));"

    .line 100
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 101
    :goto_0
    iget-boolean v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->b:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->d:Z

    if-eqz v0, :cond_5

    if-eqz p1, :cond_3

    .line 104
    iget-boolean v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->c:Z

    if-nez v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "LAST_DOWNLOADED_TIMESTAMP"

    invoke-interface {v0, v5, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_4

    .line 107
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->e:Landroid/webkit/WebView;

    new-instance v3, La/b/a/g;

    invoke-direct {v3, p0}, La/b/a/g;-><init>(Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;)V

    const-string v5, "OneTrust.mobileOnlineURL"

    invoke-virtual {v0, v5, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_1

    :cond_4
    const-string v0, "OTPublishersSDKActivity"

    const-string v3, "new flow offline not supported below API 19"

    .line 138
    invoke-static {v0, v3}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_5
    :goto_1
    iget v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->o:I

    const/4 v3, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v0, v3, :cond_a

    const/4 p2, 0x3

    if-ne v0, p2, :cond_7

    if-eqz p1, :cond_6

    .line 141
    iget-boolean p2, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->c:Z

    if-nez p2, :cond_6

    const-string p2, "OTPublishersSDKActivity"

    const-string v0, "Evaluate banner returned show banner true. Set App needs to show banner true."

    .line 142
    invoke-static {p2, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object p2, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "APP_SHOULD_SHOW_BANNER"

    invoke-interface {p2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    :cond_6
    if-nez p1, :cond_7

    .line 145
    iget-boolean p2, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->c:Z

    if-nez p2, :cond_7

    const-string p2, "OTPublishersSDKActivity"

    const-string v0, "Evaluate banner returned show banner false."

    .line 146
    invoke-static {p2, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p2, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "APP_SHOULD_SHOW_BANNER"

    invoke-interface {p2, v0, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_7
    :goto_2
    if-eqz p1, :cond_8

    .line 151
    iget-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "OT_BANNER_SHOWN_TO_USER"

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 152
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->h:Ljava/lang/Boolean;

    .line 153
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 154
    iget p2, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->g:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 155
    iget p2, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->f:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 156
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 157
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "banner view loaded w = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " h = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->g:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OTPublishersSDKActivity"

    invoke-static {p2, p1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 159
    :cond_8
    iget-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a:Landroid/content/SharedPreferences;

    const-string p2, "OT_BANNER_SHOWN_TO_USER"

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v5, :cond_9

    .line 161
    iget-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "OT_BANNER_SHOWN_TO_USER"

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_9
    const-string p1, "OTPublishersSDKActivity"

    const-string p2, "No need to show banner, finishing banner view."

    .line 163
    invoke-static {p1, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    goto/16 :goto_5

    :cond_a
    if-eqz p1, :cond_b

    .line 167
    iget-boolean v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->c:Z

    if-nez v0, :cond_b

    const-string p1, "OTPublishersSDKActivity"

    const-string v0, "Prefetch evaluate banner returned show banner true. Will set App needs to show banner once download complete."

    .line 168
    invoke-static {p1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "SHOULD_SHOW_BANNER"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    :cond_b
    if-nez p1, :cond_c

    .line 171
    iget-boolean p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->c:Z

    if-nez p1, :cond_c

    const-string p1, "OTPublishersSDKActivity"

    const-string v0, "Prefetch evaluate banner returned show banner false."

    .line 172
    invoke-static {p1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "SHOULD_SHOW_BANNER"

    invoke-interface {p1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_c
    :goto_3
    if-eqz p2, :cond_e

    const-string p1, "com.onetrust.otpublisherssdk.Internal.preference"

    .line 174
    invoke-virtual {p0, p1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "OT_FILE_DOWNLOADED_STATUS"

    const-wide/16 v6, -0x1

    .line 175
    invoke-interface {p1, p2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File download status = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OTPublishersSDKActivity"

    invoke-static {v3, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    cmp-long v3, p1, v1

    if-lez v3, :cond_d

    const-string p1, "OTPublishersSDKActivity"

    const-string p2, "Download Status: Timeout Encountered. Cache Exists."

    .line 178
    invoke-static {p1, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance p1, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;

    const-string p2, "Download Status: Timeout Encountered. Cache Exists."

    invoke-direct {p1, v4, p2}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;I)V

    goto :goto_4

    :cond_d
    const-string p1, "OTPublishersSDKActivity"

    const-string p2, "Download Status: Timeout Encountered. Cache doesn\'t Exist"

    .line 183
    invoke-static {p1, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance p1, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;

    const-string p2, "Download Status: Timeout Encountered. Cache doesn\'t Exist"

    invoke-direct {p1, v5, p2}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;I)V

    .line 189
    :cond_e
    :goto_4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    :goto_5
    return-void
.end method

.method public final b(Landroid/webkit/WebView;Ljava/lang/String;Landroid/content/Context;)V
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
    invoke-virtual {p0, p1, p2}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Landroid/webkit/WebView;La/b/a/p/h;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p3, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;

    invoke-direct {p3}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;-><init>()V

    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "below19"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, La/b/a/p/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "EvaluateBelow19"

    invoke-static {v0, p3}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-interface {p2}, La/b/a/p/h;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "JSURLToLoad"

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->c:Z

    if-nez v0, :cond_0

    const-string v0, "Please save or update your settings before navigating away."

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "OTPublishersSDKActivity"

    const-string v1, "config changed"

    .line 1
    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "OTPublishersSDKActivity"

    const-string v0, "OneTrust SDK version : 6.15.0"

    .line 2
    invoke-static {p1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "OTPublishersSDKActivity"

    const-string v0, "started loading webview"

    .line 3
    invoke-static {p1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string p1, "***********************************"

    const-string v0, "DEVICE LOGS -***********************************"

    .line 4
    invoke-static {p1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "MODEL"

    invoke-static {v0, p1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "Manufacture"

    invoke-static {v0, p1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget-object p1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v0, "SDK"

    invoke-static {v0, p1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v0, "BRAND"

    invoke-static {v0, p1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v0, "Version Code"

    invoke-static {v0, p1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "***********************************"

    const-string v0, "SDK LOGS -***********************************"

    .line 10
    invoke-static {p1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "OTPublishersSDKActivity"

    const-string v0, "error while getting device logs"

    .line 11
    invoke-static {p1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :goto_0
    :try_start_1
    new-instance p1, La/b/a/a/d;

    invoke-direct {p1}, La/b/a/a/d;-><init>()V

    invoke-virtual {p1, p0}, La/b/a/a/d;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p1, "OTPublishersSDKActivity"

    const-string v0, "error while getting signal strength"

    .line 16
    invoke-static {p1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p1, 0x0

    .line 17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->h:Ljava/lang/Boolean;

    .line 18
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->i:Ljava/lang/Boolean;

    .line 20
    iput-boolean p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->c:Z

    .line 22
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const-string v4, "JSURLToLoad"

    .line 24
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->m:Ljava/lang/String;

    const-string v4, "ApplicationIdToLoad"

    .line 25
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 26
    invoke-static {v4}, La/b/a/c/m;->d(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x2

    goto :goto_2

    :cond_0
    const/4 v5, 0x1

    :goto_2
    const-string v6, "force_load_banner"

    .line 29
    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->c:Z

    const-string v6, "OTBannerLoadType"

    .line 30
    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->o:I

    goto :goto_3

    :cond_1
    move-object v4, v2

    const/4 v5, 0x1

    .line 33
    :goto_3
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v13, -0x1

    if-eqz v0, :cond_2

    .line 34
    invoke-virtual {p0, v13}, Landroidx/appcompat/app/AppCompatActivity;->setResult(I)V

    .line 35
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    :cond_2
    const-string v0, "com.onetrust.otpublisherssdk.Internal.preference"

    .line 36
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a:Landroid/content/SharedPreferences;

    .line 38
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v6, 0x10

    invoke-virtual {v0, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 40
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 41
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v6, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->g:I

    .line 42
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v6, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->f:I

    .line 45
    iget-object v6, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a:Landroid/content/SharedPreferences;

    const-string v7, "OT_BANNER_RENDER_TYPE"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v1, :cond_5

    .line 47
    iget v6, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->o:I

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a:Landroid/content/SharedPreferences;

    const-string v8, "APP_SHOULD_SHOW_BANNER"

    .line 48
    invoke-interface {v6, v8, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v3, :cond_4

    :cond_3
    iget-boolean v6, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->c:Z

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->o:I

    if-eq v6, v1, :cond_5

    :cond_4
    const-string v0, "OTPublishersSDKActivity"

    const-string v1, "Rendering full screen window."

    .line 50
    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_4

    :cond_5
    const-string v1, "OTPublishersSDKActivity"

    const-string v6, "Setting window height and width to zero."

    .line 55
    invoke-static {v1, v6}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 57
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 58
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 59
    :goto_4
    sget v0, Lcom/onetrust/otpublisherssdk/R$layout;->publisher_webview:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Javascript to load = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OTPublishersSDKActivity"

    invoke-static {v1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplicationId to load = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OTPublishersSDKActivity"

    invoke-static {v1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Banner load type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OTPublishersSDKActivity"

    invoke-static {v1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-boolean v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->c:Z

    if-eqz v0, :cond_6

    const-string v0, "OTPublishersSDKActivity"

    const-string v1, "Loading  =  preference center."

    .line 65
    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    const-string v0, "OTPublishersSDKActivity"

    const-string v1, "Loading  =  banner."

    .line 67
    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_5
    sget v0, Lcom/onetrust/otpublisherssdk/R$id;->web_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->e:Landroid/webkit/WebView;

    .line 70
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/onetrust/otpublisherssdk/R$color;->otColorBackground:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 71
    new-instance v0, La/b/a/q;

    invoke-direct {v0, p0}, La/b/a/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->j:La/b/a/q;

    .line 73
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->e:Landroid/webkit/WebView;

    .line 74
    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->j:La/b/a/q;

    invoke-virtual {v1, v0}, La/b/a/q;->a(Landroid/webkit/WebView;)V

    .line 76
    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a:Landroid/content/SharedPreferences;

    const-string v6, "OT_IS_ZOOM_ENABLED"

    invoke-interface {v1, v6, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 77
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 78
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 79
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 82
    :cond_7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge p1, v1, :cond_8

    .line 83
    new-instance p1, La/b/a/c/d;

    iget-boolean v6, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->c:Z

    invoke-direct {p1, p0, v2, p0, v6}, La/b/a/c/d;-><init>(Landroid/content/Context;La/b/a/p/h;La/b/a/c/o;Z)V

    const-string v6, "evalObj"

    invoke-virtual {v0, p1, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    :cond_8
    new-instance p1, La/b/a/m;

    iget-boolean v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->c:Z

    invoke-direct {p1, p0, v5, v0}, La/b/a/m;-><init>(La/b/a/c/o;IZ)V

    .line 86
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 88
    new-instance p1, La/b/a/a/d;

    invoke-direct {p1}, La/b/a/a/d;-><init>()V

    invoke-virtual {p1, p0}, La/b/a/a/d;->b(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->b:Z

    .line 90
    :try_start_2
    iget-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->m:Ljava/lang/String;

    invoke-static {p1}, La/b/a/c/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception p1

    const-string v0, "getJSPathUrl exception = "

    .line 93
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OTPublishersSDKActivity"

    invoke-static {v0, p1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v2

    .line 96
    :goto_6
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->j:La/b/a/q;

    const-string v2, "publisher_web_view_template.html"

    invoke-virtual {v0, v2}, La/b/a/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, -0x2

    .line 99
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->setResult(I)V

    .line 100
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    :cond_9
    const/4 v10, 0x0

    const-string v2, "OTPublishersSDKActivity"

    const-string v6, "started loading webview from html"

    .line 103
    invoke-static {v2, v6}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-boolean v2, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->c:Z

    if-nez v2, :cond_f

    .line 105
    iget v2, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->o:I

    if-eq v2, v7, :cond_e

    .line 106
    iget-boolean v2, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->b:Z

    if-eqz v2, :cond_d

    .line 107
    iput-boolean v3, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->d:Z

    if-ne v5, v3, :cond_a

    .line 109
    invoke-static {p0}, La/b/a/c/m;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 110
    iget-object v2, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->m:Ljava/lang/String;

    invoke-static {p0, v2, p1}, La/b/a/c/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_b

    const-string v1, "OTPublishersSDKActivity"

    const-string v2, "loading data with base url"

    .line 115
    invoke-static {v1, v2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->e:Landroid/webkit/WebView;

    iget-object v6, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->j:La/b/a/q;

    iget-object v8, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->m:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->c:Z

    const/4 v10, 0x0

    move-object v7, v0

    move-object v9, v4

    move v11, v5

    invoke-virtual/range {v6 .. v12}, La/b/a/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object v8

    const-string v7, "ot://ignored"

    const-string v9, "text/html"

    const-string v10, "utf-8"

    const-string v11, ""

    move-object v6, v1

    invoke-virtual/range {v6 .. v11}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "OTPublishersSDKActivity"

    const-string v2, "loading data with base url called"

    .line 119
    invoke-static {v1, v2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->f(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 122
    :cond_b
    iget-object v6, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->j:La/b/a/q;

    iget-object v8, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->m:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->c:Z

    move-object v7, v0

    move-object v9, v4

    move v11, v5

    invoke-virtual/range {v6 .. v12}, La/b/a/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v1, La/b/a/c/m;

    invoke-direct {v1}, La/b/a/c/m;-><init>()V

    const-string v2, "publisher_web_view_template.html"

    invoke-virtual {v1, p0, v2, v0}, La/b/a/c/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "publisher_web_view_template.html"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "OTPublishersSDKActivity"

    const-string v3, "loading from file below API 19"

    .line 128
    invoke-static {v2, v3}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v2, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->e:Landroid/webkit/WebView;

    const-string v3, "file://"

    invoke-static {v3}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    const-string v1, "OTPublishersSDKActivity"

    const-string v2, "offline mode loading failed."

    .line 131
    invoke-static {v1, v2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0, v13}, Landroidx/appcompat/app/AppCompatActivity;->setResult(I)V

    .line 133
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    .line 136
    :goto_7
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "offline_publisher_web_view_template.html"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "./"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OT_JS_CONTENT_TO_REPLACE"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 139
    new-instance v0, La/b/a/c/m;

    invoke-direct {v0}, La/b/a/c/m;-><init>()V

    const-string v1, "offline_publisher_web_view_template.html"

    invoke-virtual {v0, p0, v1, p1}, La/b/a/c/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_d
    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, v4

    move v8, v5

    move-object v9, p1

    move-object v10, v0

    .line 140
    invoke-virtual/range {v6 .. v11}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_8

    :cond_e
    const-string v1, "OTPublishersSDKActivity"

    const-string v2, "Loading offline Banner."

    .line 143
    invoke-static {v1, v2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, v4

    move v8, v5

    move-object v9, p1

    move-object v10, v0

    .line 145
    invoke-virtual/range {v6 .. v11}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_8

    :cond_f
    const-string v1, "OTPublishersSDKActivity"

    const-string v2, "Loading offline preference center."

    .line 148
    invoke-static {v1, v2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, v4

    move v8, v5

    move-object v9, p1

    move-object v10, v0

    .line 150
    invoke-virtual/range {v6 .. v11}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    :cond_10
    :goto_8
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " key press key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " key action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OTPublishersSDKActivity"

    invoke-static {v1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/onetrust/otpublisherssdk/R$color;->otColorBackground:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    return v1

    .line 14
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
