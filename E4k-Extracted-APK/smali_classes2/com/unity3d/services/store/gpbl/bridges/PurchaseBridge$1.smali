.class Lcom/unity3d/services/store/gpbl/bridges/PurchaseBridge$1;
.super Ljava/util/HashMap;
.source "PurchaseBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/store/gpbl/bridges/PurchaseBridge;-><init>(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "[",
        "Ljava/lang/Class;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .line 16
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "getOriginalJson"

    const/4 v1, 0x0

    .line 17
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Lcom/unity3d/services/store/gpbl/bridges/PurchaseBridge$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "getSignature"

    .line 18
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/services/store/gpbl/bridges/PurchaseBridge$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
