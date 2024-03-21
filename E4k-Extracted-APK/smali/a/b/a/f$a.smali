.class public La/b/a/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/b/a/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OTActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OTActionListener;

.field public final synthetic b:La/b/a/f;


# direct methods
.method public constructor <init>(La/b/a/f;Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OTActionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/a/f$a;->b:La/b/a/f;

    iput-object p2, p0, La/b/a/f$a;->a:Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OTActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "OTEvaluateWV"

    const-string v1, "onReceivedError on evaluateWebViewInBackGround."

    .line 2
    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    const-string p1, "OTEvaluateWV"

    const-string p2, "Banner view is not shown to user, not expecting window change event."

    .line 1
    invoke-static {p1, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "need to show banner ? = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OTEvaluateWV"

    invoke-static {v0, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance p2, La/b/a/c/m;

    invoke-direct {p2}, La/b/a/c/m;-><init>()V

    iget-object v0, p0, La/b/a/f$a;->b:La/b/a/f;

    .line 7
    iget-object v0, v0, La/b/a/f;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {p2, v0, p1}, La/b/a/c/m;->b(Landroid/content/Context;Z)V

    .line 9
    iget-object p2, p0, La/b/a/f$a;->a:Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OTActionListener;

    if-eqz p2, :cond_0

    .line 10
    invoke-interface {p2, p1}, Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OTActionListener;->needToLoadOTBanner(Z)V

    .line 11
    iget-object p1, p0, La/b/a/f$a;->b:La/b/a/f;

    .line 12
    iget-object p1, p1, La/b/a/f;->b:Landroid/webkit/WebView;

    .line 13
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    return-void
.end method
