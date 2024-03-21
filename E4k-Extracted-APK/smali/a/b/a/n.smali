.class public La/b/a/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:La/b/a/m;


# direct methods
.method public constructor <init>(La/b/a/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/a/n;->a:La/b/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Load banner on device? = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OTWebViewClient"

    invoke-static {v1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p1}, La/b/a/c/m;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "true"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, La/b/a/n;->a:La/b/a/m;

    .line 6
    iget-object p1, p1, La/b/a/m;->a:La/b/a/c/o;

    const/4 v0, 0x1

    .line 7
    invoke-interface {p1, v0, v1}, La/b/a/c/o;->a(ZZ)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, La/b/a/n;->a:La/b/a/m;

    .line 10
    iget-object p1, p1, La/b/a/m;->a:La/b/a/c/o;

    .line 11
    invoke-interface {p1, v1, v1}, La/b/a/c/o;->a(ZZ)V

    goto :goto_0

    :cond_1
    const-string p1, "Got null on evaluating = "

    .line 15
    invoke-static {p1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, La/b/a/n;->a:La/b/a/m;

    .line 16
    iget-object v0, v0, La/b/a/m;->d:Ljava/lang/String;

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OTWebViewClient"

    invoke-static {v0, p1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object p1, p0, La/b/a/n;->a:La/b/a/m;

    .line 19
    iget-object p1, p1, La/b/a/m;->a:La/b/a/c/o;

    .line 20
    invoke-interface {p1, v1, v1}, La/b/a/c/o;->a(ZZ)V

    :goto_0
    return-void
.end method
