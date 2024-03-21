.class Lcom/unity3d/services/store/gpbl/bridges/PurchaseHistoryRecordBridge$1;
.super Ljava/util/HashMap;
.source "PurchaseHistoryRecordBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/store/gpbl/bridges/PurchaseHistoryRecordBridge;-><init>(Ljava/lang/Object;)V
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
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "getOriginalJson"

    const/4 v1, 0x0

    .line 9
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/services/store/gpbl/bridges/PurchaseHistoryRecordBridge$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
