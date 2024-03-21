.class public La/b/a/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/webkit/WebView;

.field public final synthetic c:La/b/a/m;


# direct methods
.method public constructor <init>(La/b/a/m;ILandroid/webkit/WebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/a/l;->c:La/b/a/m;

    iput p2, p0, La/b/a/l;->a:I

    iput-object p3, p0, La/b/a/l;->b:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, La/b/a/l;->c:La/b/a/m;

    .line 2
    iget v1, v0, La/b/a/m;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v0, "evaluate banner load status, retry count = "

    .line 3
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/b/a/l;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OTWebViewClient"

    invoke-static {v1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, La/b/a/l;->c:La/b/a/m;

    iget-object v1, p0, La/b/a/l;->b:Landroid/webkit/WebView;

    iget v2, p0, La/b/a/l;->a:I

    .line 5
    invoke-virtual {v0, v1, v2}, La/b/a/m;->a(Landroid/webkit/WebView;I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, La/b/a/l;->b:Landroid/webkit/WebView;

    iget v2, p0, La/b/a/l;->a:I

    .line 7
    invoke-virtual {v0, v1, v2}, La/b/a/m;->b(Landroid/webkit/WebView;I)V

    :goto_0
    return-void
.end method
