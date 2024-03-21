.class public Lcom/adobe/air/AndroidWebView$WebViewCustomView;
.super Ljava/lang/Object;
.source "AndroidWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AndroidWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebViewCustomView"
.end annotation


# instance fields
.field private mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCustomViewHolder:Landroid/widget/FrameLayout;

.field final synthetic this$0:Lcom/adobe/air/AndroidWebView;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AndroidWebView;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->this$0:Lcom/adobe/air/AndroidWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCustomViewHolder:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->getOverlaysLayout(Z)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCustomViewHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCustomViewHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCustomViewHolder:Landroid/widget/FrameLayout;

    .line 147
    iget-object v1, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 148
    iput-object v0, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void

    .line 88
    :cond_0
    iput-object p2, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 91
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/adobe/air/AndroidActivityWrapper;->getView()Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    .line 92
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adobe/air/AndroidActivityWrapper;->getOverlaysLayout(Z)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :cond_1
    new-instance v0, Lcom/adobe/air/AndroidWebView$WebViewCustomView$1;

    iget-object v1, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->this$0:Lcom/adobe/air/AndroidWebView;

    invoke-static {v1}, Lcom/adobe/air/AndroidWebView;->access$000(Lcom/adobe/air/AndroidWebView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adobe/air/AndroidWebView$WebViewCustomView$1;-><init>(Lcom/adobe/air/AndroidWebView$WebViewCustomView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCustomViewHolder:Landroid/widget/FrameLayout;

    .line 114
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCustomViewHolder:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 115
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 116
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCustomViewHolder:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    invoke-direct {p2, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 123
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCustomViewHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object p1, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCustomViewHolder:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 126
    iget-object p1, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCustomViewHolder:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    return-void
.end method
