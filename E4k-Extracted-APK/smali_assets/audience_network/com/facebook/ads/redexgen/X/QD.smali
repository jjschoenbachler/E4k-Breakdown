.class public final Lcom/facebook/ads/redexgen/X/QD;
.super Lcom/facebook/ads/redexgen/X/9c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/89;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/9c<",
        "Lcom/facebook/ads/redexgen/X/Ku;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/89;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/89;)V
    .locals 0

    .line 49933
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QD;->A00:Lcom/facebook/ads/redexgen/X/89;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9c;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Ku;)V
    .locals 1

    .line 49934
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QD;->A00:Lcom/facebook/ads/redexgen/X/89;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OI;->A0Y()V

    .line 49935
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/Ku;",
            ">;"
        }
    .end annotation

    .line 49936
    const-class v0, Lcom/facebook/ads/redexgen/X/Ku;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9a;)V
    .locals 0

    .line 49937
    check-cast p1, Lcom/facebook/ads/redexgen/X/Ku;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/QD;->A00(Lcom/facebook/ads/redexgen/X/Ku;)V

    return-void
.end method
