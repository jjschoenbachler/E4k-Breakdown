.class public final Lcom/facebook/ads/redexgen/X/Xk;
.super Lcom/facebook/ads/redexgen/X/L8;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/9N;->A0B(Lcom/facebook/ads/redexgen/X/Xx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Xx;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xx;)V
    .locals 0

    .line 67139
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xk;->A00:Lcom/facebook/ads/redexgen/X/Xx;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/L8;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 2

    .line 67140
    invoke-static {}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->getDynamicLoader()Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    .line 67141
    .local p0, "dynamicLoader":Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;
    if-eqz v0, :cond_0

    .line 67142
    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createBidderTokenProviderApi()Lcom/facebook/ads/internal/api/BidderTokenProviderApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xk;->A00:Lcom/facebook/ads/redexgen/X/Xx;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/BidderTokenProviderApi;->getBidderToken(Landroid/content/Context;)Ljava/lang/String;

    .line 67143
    :cond_0
    return-void
.end method
