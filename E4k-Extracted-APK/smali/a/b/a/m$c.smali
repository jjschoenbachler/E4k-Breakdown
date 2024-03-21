.class public La/b/a/m$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/a/m;->b(Landroid/webkit/WebView;I)V
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
    iput-object p1, p0, La/b/a/m$c;->c:La/b/a/m;

    iput-object p2, p0, La/b/a/m$c;->a:Landroid/webkit/WebView;

    iput p3, p0, La/b/a/m$c;->b:I

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

    if-nez v0, :cond_1

    const-string v0, "true"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, La/b/a/m$c;->c:La/b/a/m;

    .line 6
    iget-object p1, p1, La/b/a/m;->a:La/b/a/c/o;

    .line 7
    invoke-interface {p1, v1, v0}, La/b/a/c/o;->a(ZZ)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, La/b/a/m$c;->c:La/b/a/m;

    .line 10
    iget-object p1, p1, La/b/a/m;->a:La/b/a/c/o;

    .line 11
    invoke-interface {p1, v0, v0}, La/b/a/c/o;->a(ZZ)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, La/b/a/m$c;->c:La/b/a/m;

    iget-object v0, p0, La/b/a/m$c;->a:Landroid/webkit/WebView;

    iget v2, p0, La/b/a/m$c;->b:I

    add-int/2addr v2, v1

    invoke-static {p1, v0, v2}, La/b/a/m;->a(La/b/a/m;Landroid/webkit/WebView;I)V

    :goto_0
    return-void
.end method
