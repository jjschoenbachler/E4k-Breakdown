.class public final Lcom/facebook/ads/redexgen/X/1q;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/9I;

.field public final A02:Ljava/lang/String;

.field public final A03:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/9I;Ljava/lang/String;J)V
    .locals 0

    .line 4884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4885
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1q;->A03:Lorg/json/JSONObject;

    .line 4886
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/1q;->A01:Lcom/facebook/ads/redexgen/X/9I;

    .line 4887
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/1q;->A02:Ljava/lang/String;

    .line 4888
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/1q;->A00:J

    .line 4889
    return-void
.end method


# virtual methods
.method public final A00()J
    .locals 2

    .line 4890
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1q;->A00:J

    return-wide v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/9I;
    .locals 1

    .line 4891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1q;->A01:Lcom/facebook/ads/redexgen/X/9I;

    return-object v0
.end method

.method public final A02()Ljava/lang/String;
    .locals 1

    .line 4892
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1q;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A03()Lorg/json/JSONObject;
    .locals 1

    .line 4893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1q;->A03:Lorg/json/JSONObject;

    return-object v0
.end method
