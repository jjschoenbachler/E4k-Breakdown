.class interface abstract Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$GetProductInfoFinishedListener;
.super Ljava/lang/Object;
.source "BillingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshplanet/ane/AirInAppPurchase/BillingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "GetProductInfoFinishedListener"
.end annotation


# virtual methods
.method public abstract onGetProductInfoFinishedListener(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation
.end method
