.class public final Lcom/facebook/ads/redexgen/X/Q5;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/OI;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/OI;)V
    .locals 0

    .line 49867
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 49868
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Q5;->A00:Lcom/facebook/ads/redexgen/X/OI;

    .line 49869
    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 1

    .line 49870
    const/4 v0, 0x0

    return v0
.end method

.method public final onChange(Z)V
    .locals 1

    .line 49871
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q5;->A00:Lcom/facebook/ads/redexgen/X/OI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OI;->A0Z()V

    .line 49872
    return-void
.end method
