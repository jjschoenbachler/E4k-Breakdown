.class Lcom/adobe/air/AdobeAIRWebView$1;
.super Landroid/webkit/WebViewClient;
.source "AdobeAIRWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AdobeAIRWebView;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AdobeAIRWebView;


# direct methods
.method constructor <init>(Lcom/adobe/air/AdobeAIRWebView;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/adobe/air/AdobeAIRWebView$1;->this$0:Lcom/adobe/air/AdobeAIRWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 105
    iget-object p1, p0, Lcom/adobe/air/AdobeAIRWebView$1;->this$0:Lcom/adobe/air/AdobeAIRWebView;

    invoke-static {p1}, Lcom/adobe/air/AdobeAIRWebView;->access$200(Lcom/adobe/air/AdobeAIRWebView;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "https://www.adobe.com/airgames/4/"

    .line 107
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/adobe/air/AdobeAIRWebView$1;->this$0:Lcom/adobe/air/AdobeAIRWebView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/adobe/air/AdobeAIRWebView;->access$202(Lcom/adobe/air/AdobeAIRWebView;Z)Z

    .line 114
    iget-object p1, p0, Lcom/adobe/air/AdobeAIRWebView$1;->this$0:Lcom/adobe/air/AdobeAIRWebView;

    invoke-static {p1}, Lcom/adobe/air/AdobeAIRWebView;->access$000(Lcom/adobe/air/AdobeAIRWebView;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 118
    iget-object p1, p0, Lcom/adobe/air/AdobeAIRWebView$1;->this$0:Lcom/adobe/air/AdobeAIRWebView;

    invoke-static {p1}, Lcom/adobe/air/AdobeAIRWebView;->access$000(Lcom/adobe/air/AdobeAIRWebView;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object p2, p0, Lcom/adobe/air/AdobeAIRWebView$1;->this$0:Lcom/adobe/air/AdobeAIRWebView;

    invoke-static {p2}, Lcom/adobe/air/AdobeAIRWebView;->access$300(Lcom/adobe/air/AdobeAIRWebView;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/adobe/air/AdobeAIRWebView$1;->this$0:Lcom/adobe/air/AdobeAIRWebView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/adobe/air/AdobeAIRWebView;->access$402(Lcom/adobe/air/AdobeAIRWebView;Z)Z

    .line 132
    iget-object p1, p0, Lcom/adobe/air/AdobeAIRWebView$1;->this$0:Lcom/adobe/air/AdobeAIRWebView;

    invoke-static {p1}, Lcom/adobe/air/AdobeAIRWebView;->access$300(Lcom/adobe/air/AdobeAIRWebView;)Landroid/webkit/WebView;

    move-result-object p1

    const-string p2, "file:///android_res/raw/startga.html"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 p1, 0x1

    if-eqz p2, :cond_6

    .line 52
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 53
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 59
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "https"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const-string v1, "https://www.adobe.com/airgames/4/"

    .line 61
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v3, "gamespace.adobe.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v3, "dh8vjmvwgc27o.cloudfront.net"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v3, "www.adobe.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v3, "play.google.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v3, "gaming.adobe.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_2
    :goto_0
    return v2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_5

    .line 80
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 81
    iget-object v0, p0, Lcom/adobe/air/AdobeAIRWebView$1;->this$0:Lcom/adobe/air/AdobeAIRWebView;

    invoke-static {v0}, Lcom/adobe/air/AdobeAIRWebView;->access$000(Lcom/adobe/air/AdobeAIRWebView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 87
    :cond_5
    iget-object v0, p0, Lcom/adobe/air/AdobeAIRWebView$1;->this$0:Lcom/adobe/air/AdobeAIRWebView;

    invoke-static {v0}, Lcom/adobe/air/AdobeAIRWebView;->access$100(Lcom/adobe/air/AdobeAIRWebView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_2
    return p1
.end method
