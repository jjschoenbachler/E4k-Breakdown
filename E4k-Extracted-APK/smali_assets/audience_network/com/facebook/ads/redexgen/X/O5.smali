.class public final Lcom/facebook/ads/redexgen/X/O5;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/O6;->A0E()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/O6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/O6;)V
    .locals 0

    .line 46702
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O5;->A00:Lcom/facebook/ads/redexgen/X/O6;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 46703
    sget v0, Lcom/facebook/ads/redexgen/X/8z;->A2e:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/O6;->A02(I)V

    .line 46704
    const/4 v0, 0x1

    return v0
.end method
