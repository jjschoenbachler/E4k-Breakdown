.class Lcom/adobe/air/AndroidWebView$2;
.super Landroid/webkit/WebViewClient;
.source "AndroidWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidWebView;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastPageStartedUrl:Ljava/lang/String;

.field private mNoCompleteForUrl:Z

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/adobe/air/AndroidWebView;

.field final synthetic val$webView:Lcom/adobe/air/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidWebView;Lcom/adobe/air/AndroidWebView;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView$2;->this$0:Lcom/adobe/air/AndroidWebView;

    iput-object p2, p0, Lcom/adobe/air/AndroidWebView$2;->val$webView:Lcom/adobe/air/AndroidWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x0

    .line 473
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView$2;->mUrl:Ljava/lang/String;

    .line 474
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView$2;->mLastPageStartedUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 475
    iput-boolean p1, p0, Lcom/adobe/air/AndroidWebView$2;->mNoCompleteForUrl:Z

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    .line 563
    iget-object p1, p0, Lcom/adobe/air/AndroidWebView$2;->mLastPageStartedUrl:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/adobe/air/AndroidWebView$2;->mLastPageStartedUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 564
    iget-object p1, p0, Lcom/adobe/air/AndroidWebView$2;->val$webView:Lcom/adobe/air/AndroidWebView;

    invoke-virtual {p1, p2}, Lcom/adobe/air/AndroidWebView;->onLocationChange(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 511
    iget-boolean v0, p0, Lcom/adobe/air/AndroidWebView$2;->mNoCompleteForUrl:Z

    if-eqz v0, :cond_0

    .line 515
    iput-boolean p1, p0, Lcom/adobe/air/AndroidWebView$2;->mNoCompleteForUrl:Z

    return-void

    .line 519
    :cond_0
    iput-object p2, p0, Lcom/adobe/air/AndroidWebView$2;->mUrl:Ljava/lang/String;

    .line 520
    iput-boolean p1, p0, Lcom/adobe/air/AndroidWebView$2;->mNoCompleteForUrl:Z

    .line 521
    iget-object p1, p0, Lcom/adobe/air/AndroidWebView$2;->val$webView:Lcom/adobe/air/AndroidWebView;

    invoke-virtual {p1, p2}, Lcom/adobe/air/AndroidWebView;->onLoadComplete(Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 480
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 483
    iput-object p2, p0, Lcom/adobe/air/AndroidWebView$2;->mUrl:Ljava/lang/String;

    .line 489
    iput-object p2, p0, Lcom/adobe/air/AndroidWebView$2;->mLastPageStartedUrl:Ljava/lang/String;

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x1

    .line 574
    iput-boolean p1, p0, Lcom/adobe/air/AndroidWebView$2;->mNoCompleteForUrl:Z

    const/16 p1, -0xa

    if-ne p2, p1, :cond_0

    .line 577
    iget-object p1, p0, Lcom/adobe/air/AndroidWebView$2;->val$webView:Lcom/adobe/air/AndroidWebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xc9d

    invoke-virtual {p1, p4, p2, p3}, Lcom/adobe/air/AndroidWebView;->onLoadError(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 579
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/AndroidWebView$2;->val$webView:Lcom/adobe/air/AndroidWebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p4, p2, p3}, Lcom/adobe/air/AndroidWebView;->onLoadError(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 527
    iget-object p1, p0, Lcom/adobe/air/AndroidWebView$2;->mUrl:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 531
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/AndroidWebView$2;->mUrl:Ljava/lang/String;

    .line 533
    new-instance v0, Lcom/adobe/air/AndroidWebView$2$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/adobe/air/AndroidWebView$2$1;-><init>(Lcom/adobe/air/AndroidWebView$2;Landroid/net/http/SslError;Ljava/lang/String;Landroid/webkit/SslErrorHandler;)V

    .line 553
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 497
    iget-object p1, p0, Lcom/adobe/air/AndroidWebView$2;->val$webView:Lcom/adobe/air/AndroidWebView;

    invoke-virtual {p1, p2}, Lcom/adobe/air/AndroidWebView;->onLocationChanging(Ljava/lang/String;)Z

    move-result p1

    .line 502
    iput-boolean p1, p0, Lcom/adobe/air/AndroidWebView$2;->mNoCompleteForUrl:Z

    return p1
.end method
