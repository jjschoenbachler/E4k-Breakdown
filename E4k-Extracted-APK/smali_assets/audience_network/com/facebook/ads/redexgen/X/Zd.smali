.class public final Lcom/facebook/ads/redexgen/X/Zd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ZY;->A0J()Lcom/facebook/ads/redexgen/X/6v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ZY;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ZY;)V
    .locals 0

    .line 68596
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zd;->A00:Lcom/facebook/ads/redexgen/X/ZY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5J()Lcom/facebook/ads/redexgen/X/7A;
    .locals 2

    .line 68597
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zd;->A00:Lcom/facebook/ads/redexgen/X/ZY;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6o;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6o;-><init>(Lcom/facebook/ads/redexgen/X/Zd;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6m;->A0C(Ljava/util/HashMap;)Lcom/facebook/ads/redexgen/X/7A;

    move-result-object v0

    return-object v0
.end method
