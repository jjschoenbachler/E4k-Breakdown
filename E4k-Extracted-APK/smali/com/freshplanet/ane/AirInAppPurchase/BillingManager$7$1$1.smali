.class Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7$1$1;
.super Ljava/lang/Object;
.source "BillingManager.java"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7$1;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7$1;


# direct methods
.method constructor <init>(Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7$1;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7$1$1;->this$2:Lcom/freshplanet/ane/AirInAppPurchase/BillingManager$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
