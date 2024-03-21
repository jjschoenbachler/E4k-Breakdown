.class Lcom/unity3d/services/core/device/reader/pii/PiiDataSelector$1;
.super Ljava/util/HashMap;
.source "PiiDataSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/device/reader/pii/PiiDataSelector;->getUserBehavioralAttribute()Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/services/core/device/reader/pii/PiiDataSelector;


# direct methods
.method constructor <init>(Lcom/unity3d/services/core/device/reader/pii/PiiDataSelector;)V
    .locals 1

    .line 57
    iput-object p1, p0, Lcom/unity3d/services/core/device/reader/pii/PiiDataSelector$1;->this$0:Lcom/unity3d/services/core/device/reader/pii/PiiDataSelector;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "user.nonBehavioral"

    .line 58
    iget-object v0, p0, Lcom/unity3d/services/core/device/reader/pii/PiiDataSelector$1;->this$0:Lcom/unity3d/services/core/device/reader/pii/PiiDataSelector;

    invoke-static {v0}, Lcom/unity3d/services/core/device/reader/pii/PiiDataSelector;->access$000(Lcom/unity3d/services/core/device/reader/pii/PiiDataSelector;)Lcom/unity3d/services/core/device/reader/pii/PiiTrackingStatusReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/services/core/device/reader/pii/PiiTrackingStatusReader;->getUserNonBehavioralFlag()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/unity3d/services/core/device/reader/pii/PiiDataSelector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
