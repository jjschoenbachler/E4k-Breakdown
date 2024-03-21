.class final enum Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;
.super Ljava/lang/Enum;
.source "UnityAdsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/unityads/UnityAdsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EInitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;

.field public static final enum INIT_FAIL:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;

.field public static final enum INIT_IN_PROGRESS:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;

.field public static final enum INIT_SUCCESS:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;

.field public static final enum NOT_INIT:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 71
    new-instance v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;

    const-string v1, "NOT_INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;->NOT_INIT:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;

    .line 72
    new-instance v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;

    const-string v1, "INIT_IN_PROGRESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;->INIT_IN_PROGRESS:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;

    .line 73
    new-instance v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;

    const-string v1, "INIT_SUCCESS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;->INIT_SUCCESS:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;

    .line 74
    new-instance v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;

    const-string v1, "INIT_FAIL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;->INIT_FAIL:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;

    const/4 v0, 0x4

    .line 70
    new-array v0, v0, [Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;

    sget-object v1, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;->NOT_INIT:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;->INIT_IN_PROGRESS:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;->INIT_SUCCESS:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;->INIT_FAIL:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;->$VALUES:[Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;
    .locals 1

    .line 70
    const-class v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;
    .locals 1

    .line 70
    sget-object v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;->$VALUES:[Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;

    invoke-virtual {v0}, [Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/adapters/unityads/UnityAdsAdapter$EInitState;

    return-object v0
.end method
