.class public La/b/a/m$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/a/m;->a(Landroid/webkit/WebView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/webkit/WebView;

.field public final synthetic b:I

.field public final synthetic c:La/b/a/m;


# direct methods
.method public constructor <init>(La/b/a/m;Landroid/webkit/WebView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/a/m$a;->c:La/b/a/m;

    iput-object p2, p0, La/b/a/m$a;->a:Landroid/webkit/WebView;

    iput p3, p0, La/b/a/m$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Banner loaded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OTWebViewClient"

    invoke-static {v1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p1}, La/b/a/c/m;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const-string v0, "true"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, La/b/a/m$a;->c:La/b/a/m;

    iget-object v0, p0, La/b/a/m$a;->a:Landroid/webkit/WebView;

    .line 6
    iget-boolean v2, p1, La/b/a/m;->c:Z

    if-eqz v2, :cond_0

    .line 7
    iget-object p1, p1, La/b/a/m;->a:La/b/a/c/o;

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0}, La/b/a/c/o;->a(ZZ)V

    goto :goto_0

    .line 10
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_3

    .line 11
    iget-object v1, p1, La/b/a/m;->d:Ljava/lang/String;

    new-instance v2, La/b/a/n;

    invoke-direct {v2, p1}, La/b/a/n;-><init>(La/b/a/m;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, La/b/a/m$a;->c:La/b/a/m;

    iget-object v0, p0, La/b/a/m$a;->a:Landroid/webkit/WebView;

    iget v2, p0, La/b/a/m$a;->b:I

    add-int/2addr v2, v1

    invoke-static {p1, v0, v2}, La/b/a/m;->a(La/b/a/m;Landroid/webkit/WebView;I)V

    goto :goto_0

    :cond_2
    const-string p1, "Got null on evaluating = "

    .line 15
    invoke-static {p1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, La/b/a/m$a;->c:La/b/a/m;

    .line 16
    iget-object v0, v0, La/b/a/m;->e:Ljava/lang/String;

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OTWebViewClient"

    invoke-static {v0, p1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object p1, p0, La/b/a/m$a;->c:La/b/a/m;

    iget-object v0, p0, La/b/a/m$a;->a:Landroid/webkit/WebView;

    iget v2, p0, La/b/a/m$a;->b:I

    add-int/2addr v2, v1

    invoke-static {p1, v0, v2}, La/b/a/m;->a(La/b/a/m;Landroid/webkit/WebView;I)V

    :cond_3
    :goto_0
    return-void
.end method
