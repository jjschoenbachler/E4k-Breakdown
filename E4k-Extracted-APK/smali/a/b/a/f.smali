.class public La/b/a/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La/b/a/f;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OTActionListener;)V
    .locals 3
    .param p1    # Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OTActionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    iget-object v0, p0, La/b/a/f;->a:Landroid/content/Context;

    const-string v1, "com.onetrust.otpublisherssdk.Internal.preference"

    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "OT_EVALUATE_SHOW_BANNER_VALUE"

    .line 40
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning show banner = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OTEvaluateWV"

    invoke-static {v2, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-interface {p1, v0}, Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OTActionListener;->needToLoadOTBanner(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OTActionListener;)V
    .locals 10
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

    const-string v0, "OTEvaluateWV"

    const-string v1, "Loading banner webview in app context"

    .line 1
    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, La/b/a/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La/b/a/f;->b:Landroid/webkit/WebView;

    .line 3
    new-instance v2, La/b/a/q;

    iget-object v0, p0, La/b/a/f;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, La/b/a/q;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object v0, p0, La/b/a/f;->b:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, La/b/a/q;->a(Landroid/webkit/WebView;)V

    .line 6
    iget-object v0, p0, La/b/a/f;->b:Landroid/webkit/WebView;

    new-instance v1, La/b/a/m;

    new-instance v3, La/b/a/f$a;

    invoke-direct {v3, p0, p3}, La/b/a/f$a;-><init>(La/b/a/f;Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OTActionListener;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, La/b/a/m;-><init>(La/b/a/c/o;IZ)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const-string v0, "publisher_web_view_template.html"

    .line 29
    invoke-virtual {v2, v0}, La/b/a/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "OTEvaluateWV"

    const-string v1, "Error in reading asset file"

    .line 31
    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->g(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0, p3}, La/b/a/f;->a(Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OTActionListener;)V

    :cond_0
    const-string p3, "OTEvaluateWV"

    const-string v0, "Load webview data with base URL"

    .line 34
    invoke-static {p3, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object p3, p0, La/b/a/f;->b:Landroid/webkit/WebView;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, p2

    .line 36
    invoke-virtual/range {v2 .. v8}, La/b/a/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object v6

    const-string v5, "ot://ignored"

    const-string v7, "text/html"

    const-string v8, "utf-8"

    const-string v9, ""

    move-object v4, p3

    .line 37
    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
