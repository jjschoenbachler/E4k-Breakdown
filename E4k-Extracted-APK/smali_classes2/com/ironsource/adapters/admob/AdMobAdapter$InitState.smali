.class final enum Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;
.super Ljava/lang/Enum;
.source "AdMobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

.field public static final enum INIT_STATE_FAILED:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

.field public static final enum INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

.field public static final enum INIT_STATE_NONE:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

.field public static final enum INIT_STATE_SUCCESS:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 83
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    const-string v1, "INIT_STATE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    .line 84
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    const-string v1, "INIT_STATE_IN_PROGRESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    .line 85
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    const-string v1, "INIT_STATE_SUCCESS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    .line 86
    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    const-string v1, "INIT_STATE_FAILED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->INIT_STATE_FAILED:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    const/4 v0, 0x4

    .line 82
    new-array v0, v0, [Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->INIT_STATE_FAILED:Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->$VALUES:[Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;
    .locals 1

    .line 82
    const-class v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;
    .locals 1

    .line 82
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->$VALUES:[Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    invoke-virtual {v0}, [Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/adapters/admob/AdMobAdapter$InitState;

    return-object v0
.end method
