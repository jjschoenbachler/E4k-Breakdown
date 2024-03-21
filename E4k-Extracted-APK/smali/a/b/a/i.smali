.class public La/b/a/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Landroid/widget/FrameLayout;

.field public final b:La/b/a/c/l/a;

.field public final c:La/b/a/e;

.field public d:Landroid/content/Context;

.field public e:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, La/b/a/i;->a:Landroid/widget/FrameLayout;

    .line 3
    iput-object p1, p0, La/b/a/i;->d:Landroid/content/Context;

    .line 4
    new-instance p2, La/b/a/c/l/a;

    invoke-direct {p2, p1}, La/b/a/c/l/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, La/b/a/i;->b:La/b/a/c/l/a;

    .line 5
    new-instance p2, La/b/a/e;

    invoke-direct {p2, p1}, La/b/a/e;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, La/b/a/i;->c:La/b/a/e;

    return-void
.end method

.method public static synthetic a(La/b/a/i;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, La/b/a/i;->d:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const-string v0, "OTWebView"

    const-string v1, "Download Status: Cache lifetime not expired."

    .line 63
    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;

    const-string v1, "Download Status: Cache lifetime not expired."

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, La/b/a/i;->a(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;I)V

    return-void
.end method

.method public final a(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;I)V
    .locals 2
    .param p1    # Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 65
    invoke-static {}, La/b/a/k;->a()La/b/a/k;

    move-result-object v0

    new-instance v1, Lcom/onetrust/otpublisherssdk/DownloadStatus;

    invoke-direct {v1, p1, p2}, Lcom/onetrust/otpublisherssdk/DownloadStatus;-><init>(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;I)V

    const-string p2, "setDownloadStatus :  "

    .line 66
    invoke-virtual {v0, p2, v1}, La/b/a/k;->a(Ljava/lang/String;Lcom/onetrust/otpublisherssdk/DownloadStatus;)V

    .line 67
    iput-object v1, v0, La/b/a/k;->b:Lcom/onetrust/otpublisherssdk/DownloadStatus;

    .line 68
    invoke-static {}, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->getInstance()Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->sendCallback(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "OTWebView"

    const-string v1, "Loading banner webview in app context"

    .line 2
    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, La/b/a/i;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La/b/a/i;->e:Landroid/webkit/WebView;

    .line 4
    iget-object v0, p0, La/b/a/i;->a:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, La/b/a/i;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 7
    :cond_0
    new-instance v2, La/b/a/q;

    iget-object v0, p0, La/b/a/i;->d:Landroid/content/Context;

    invoke-direct {v2, v0}, La/b/a/q;-><init>(Landroid/content/Context;)V

    .line 8
    iget-object v0, p0, La/b/a/i;->e:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, La/b/a/q;->a(Landroid/webkit/WebView;)V

    .line 10
    iget-object v0, p0, La/b/a/i;->e:Landroid/webkit/WebView;

    new-instance v1, La/b/a/m;

    new-instance v3, La/b/a/i$a;

    invoke-direct {v3, p0, p1}, La/b/a/i$a;-><init>(La/b/a/i;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, La/b/a/m;-><init>(La/b/a/c/o;IZ)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const-string v0, "publisher_web_view_template.html"

    .line 32
    invoke-virtual {v2, v0}, La/b/a/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "OTWebView"

    const-string p2, "Error in reading asset file"

    .line 34
    invoke-static {p1, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->g(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object p1, p0, La/b/a/i;->b:La/b/a/c/l/a;

    .line 36
    iget-object p1, p1, La/b/a/c/l/a;->a:Landroid/content/SharedPreferences;

    const-string p2, "OT_FILE_DOWNLOADED_STATUS"

    const-wide/16 v0, -0x1

    .line 37
    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File download status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OTWebView"

    invoke-static {v1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    const/4 v2, 0x3

    cmp-long v3, p1, v0

    if-lez v3, :cond_1

    const-string p1, "OTWebView"

    const-string p2, "Download Status: Download Interrupted. Cache Exists."

    .line 40
    invoke-static {p1, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance p1, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;

    const/4 p2, 0x1

    const-string v0, "Download Status: Download Interrupted. Cache Exists."

    invoke-direct {p1, p2, v0}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1, v2}, La/b/a/i;->a(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;I)V

    goto :goto_0

    :cond_1
    const-string p1, "OTWebView"

    const-string p2, "Download Status: Download Interrupted. Cache doesn\'t Exist"

    .line 45
    invoke-static {p1, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance p1, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;

    const/4 p2, -0x1

    const-string v0, "Download Status: Download Interrupted. Cache doesn\'t Exist"

    invoke-direct {p1, p2, v0}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1, v2}, La/b/a/i;->a(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;I)V

    goto :goto_0

    :cond_2
    const-string v1, "OTWebView"

    const-string v3, "Load webview data with base URL"

    .line 52
    invoke-static {v1, v3}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v1, p0, La/b/a/i;->e:Landroid/webkit/WebView;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    .line 54
    invoke-virtual/range {v2 .. v8}, La/b/a/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object v6

    const-string v5, "ot://ignored"

    const-string v7, "text/html"

    const-string v8, "utf-8"

    const-string v9, ""

    move-object v4, v1

    .line 55
    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance p2, Ljava/io/File;

    iget-object v1, p0, La/b/a/i;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "offline_publisher_web_view_template.html"

    invoke-direct {p2, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_3

    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "./"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OT_JS_CONTENT_TO_REPLACE"

    invoke-virtual {v0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 62
    new-instance p2, La/b/a/c/m;

    invoke-direct {p2}, La/b/a/c/m;-><init>()V

    iget-object v0, p0, La/b/a/i;->d:Landroid/content/Context;

    const-string v1, "offline_publisher_web_view_template.html"

    invoke-virtual {p2, v0, v1, p1}, La/b/a/c/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
