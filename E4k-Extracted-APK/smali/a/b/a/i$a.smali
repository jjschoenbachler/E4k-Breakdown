.class public La/b/a/i$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/b/a/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:La/b/a/i;


# direct methods
.method public constructor <init>(La/b/a/i;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/a/i$a;->b:La/b/a/i;

    iput-object p2, p0, La/b/a/i$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "OTWebView"

    const-string v1, "onReceivedError on evaluateWebViewInBackGround."

    .line 2
    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    const-string p1, "OTWebView"

    const-string p2, "Banner view is not shown to user, not expecting window change event."

    .line 1
    invoke-static {p1, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(ZZ)V
    .locals 7

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "need to show banner ? = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OTWebView"

    invoke-static {v1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, La/b/a/i$a;->b:La/b/a/i;

    iget-object v1, p0, La/b/a/i$a;->a:Ljava/lang/String;

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    .line 5
    iget-object v4, v0, La/b/a/i;->b:La/b/a/c/l/a;

    .line 6
    iget-object v4, v4, La/b/a/c/l/a;->a:Landroid/content/SharedPreferences;

    .line 7
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "LAST_DOWNLOADED_TIMESTAMP"

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 9
    :cond_0
    iget-object v4, v0, La/b/a/i;->e:Landroid/webkit/WebView;

    .line 10
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_1

    .line 11
    new-instance v5, La/b/a/j;

    invoke-direct {v5, v0, v1}, La/b/a/j;-><init>(La/b/a/i;Ljava/lang/String;)V

    const-string v1, "OneTrust.mobileOnlineURL"

    invoke-virtual {v4, v1, v5}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_1
    const-string v1, "OTWebView"

    const-string v4, "new flow offline not supported below API 19"

    .line 43
    invoke-static {v1, v4}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :goto_0
    iget-object v1, v0, La/b/a/i;->c:La/b/a/e;

    iget-object v4, v0, La/b/a/i;->e:Landroid/webkit/WebView;

    iget-object v5, v0, La/b/a/i;->d:Landroid/content/Context;

    const-string v6, ""

    invoke-virtual {v1, v4, v6, v5}, La/b/a/e;->d(Landroid/webkit/WebView;Ljava/lang/String;Landroid/content/Context;)V

    .line 45
    iget-object v1, v0, La/b/a/i;->c:La/b/a/e;

    iget-object v4, v0, La/b/a/i;->e:Landroid/webkit/WebView;

    iget-object v5, v0, La/b/a/i;->d:Landroid/content/Context;

    const-string v6, ""

    invoke-virtual {v1, v4, v6, v5}, La/b/a/e;->b(Landroid/webkit/WebView;Ljava/lang/String;Landroid/content/Context;)V

    .line 46
    iget-object v1, v0, La/b/a/i;->c:La/b/a/e;

    iget-object v4, v0, La/b/a/i;->e:Landroid/webkit/WebView;

    iget-object v5, v0, La/b/a/i;->d:Landroid/content/Context;

    const-string v6, ""

    invoke-virtual {v1, v4, v6, v5}, La/b/a/e;->c(Landroid/webkit/WebView;Ljava/lang/String;Landroid/content/Context;)V

    .line 47
    iget-object v1, v0, La/b/a/i;->c:La/b/a/e;

    iget-object v4, v0, La/b/a/i;->e:Landroid/webkit/WebView;

    iget-object v5, v0, La/b/a/i;->d:Landroid/content/Context;

    const-string v6, ""

    invoke-virtual {v1, v4, v6, v5}, La/b/a/e;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    const-string v4, "OTWebView"

    const-string v5, "Prefetch evaluate banner returned show banner true. Will set App needs to show banner once download complete."

    .line 50
    invoke-static {v4, v5}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v4, v0, La/b/a/i;->b:La/b/a/c/l/a;

    .line 53
    iget-object v4, v4, La/b/a/c/l/a;->a:Landroid/content/SharedPreferences;

    .line 54
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "SHOULD_SHOW_BANNER"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_2
    const-string v4, "OTWebView"

    const-string v5, "Prefetch evaluate banner returned show banner false."

    .line 56
    invoke-static {v4, v5}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v4, v0, La/b/a/i;->b:La/b/a/c/l/a;

    .line 58
    iget-object v4, v4, La/b/a/c/l/a;->a:Landroid/content/SharedPreferences;

    .line 59
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "SHOULD_SHOW_BANNER"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    if-eqz p2, :cond_4

    .line 62
    iget-object p2, v0, La/b/a/i;->b:La/b/a/c/l/a;

    .line 63
    iget-object p2, p2, La/b/a/c/l/a;->a:Landroid/content/SharedPreferences;

    const-string v4, "OT_FILE_DOWNLOADED_STATUS"

    const-wide/16 v5, -0x1

    .line 64
    invoke-interface {p2, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File download status = "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v6, "OTWebView"

    invoke-static {v6, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x5

    cmp-long v6, v4, v2

    if-lez v6, :cond_3

    const-string v2, "OTWebView"

    const-string v3, "Download Status: Timeout Encountered. Cache Exists."

    .line 67
    invoke-static {v2, v3}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v2, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;

    const-string v3, "Download Status: Timeout Encountered. Cache Exists."

    invoke-direct {v2, v1, v3}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, p2}, La/b/a/i;->a(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;I)V

    goto :goto_2

    :cond_3
    const-string v1, "OTWebView"

    const-string v2, "Download Status: Timeout Encountered. Cache doesn\'t Exist"

    .line 72
    invoke-static {v1, v2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v1, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;

    const/4 v2, -0x1

    const-string v3, "Download Status: Timeout Encountered. Cache doesn\'t Exist"

    invoke-direct {v1, v2, v3}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, p2}, La/b/a/i;->a(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;I)V

    .line 74
    :cond_4
    :goto_2
    new-instance p2, La/b/a/c/m;

    invoke-direct {p2}, La/b/a/c/m;-><init>()V

    iget-object v0, p0, La/b/a/i$a;->b:La/b/a/i;

    .line 75
    iget-object v0, v0, La/b/a/i;->d:Landroid/content/Context;

    .line 76
    invoke-virtual {p2, v0, p1}, La/b/a/c/m;->b(Landroid/content/Context;Z)V

    return-void
.end method
