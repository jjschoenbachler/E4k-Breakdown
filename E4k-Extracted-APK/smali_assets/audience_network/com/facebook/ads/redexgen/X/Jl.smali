.class public final Lcom/facebook/ads/redexgen/X/Jl;
.super Lcom/facebook/ads/redexgen/X/9c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/9c<",
        "Lcom/facebook/ads/redexgen/X/LG;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7c;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7c;)V
    .locals 0

    .line 41173
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jl;->A00:Lcom/facebook/ads/redexgen/X/7c;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9c;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/LG;)V
    .locals 2

    .line 41174
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jl;->A00:Lcom/facebook/ads/redexgen/X/7c;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7c;->setVisibility(I)V

    .line 41175
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/LG;",
            ">;"
        }
    .end annotation

    .line 41176
    const-class v0, Lcom/facebook/ads/redexgen/X/LG;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9a;)V
    .locals 0

    .line 41177
    check-cast p1, Lcom/facebook/ads/redexgen/X/LG;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Jl;->A00(Lcom/facebook/ads/redexgen/X/LG;)V

    return-void
.end method
