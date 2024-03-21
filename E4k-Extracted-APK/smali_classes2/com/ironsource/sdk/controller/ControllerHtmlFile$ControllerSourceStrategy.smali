.class public final enum Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;
.super Ljava/lang/Enum;
.source "ControllerHtmlFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/ControllerHtmlFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ControllerSourceStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

.field public static final enum FETCH_FOR_NEXT_SESSION_LOAD_FROM_LOCAL:Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

.field public static final enum FETCH_FROM_SERVER_NO_FALLBACK:Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

.field public static final enum FETCH_FROM_SERVER_WITH_LOCAL_FALLBACK:Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 276
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

    const-string v1, "FETCH_FROM_SERVER_NO_FALLBACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;->FETCH_FROM_SERVER_NO_FALLBACK:Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

    .line 277
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

    const-string v1, "FETCH_FROM_SERVER_WITH_LOCAL_FALLBACK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;->FETCH_FROM_SERVER_WITH_LOCAL_FALLBACK:Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

    .line 278
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

    const-string v1, "FETCH_FOR_NEXT_SESSION_LOAD_FROM_LOCAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;->FETCH_FOR_NEXT_SESSION_LOAD_FROM_LOCAL:Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

    const/4 v0, 0x3

    .line 275
    new-array v0, v0, [Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

    sget-object v1, Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;->FETCH_FROM_SERVER_NO_FALLBACK:Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;->FETCH_FROM_SERVER_WITH_LOCAL_FALLBACK:Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;->FETCH_FOR_NEXT_SESSION_LOAD_FROM_LOCAL:Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;->$VALUES:[Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 275
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;
    .locals 1

    .line 275
    const-class v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;
    .locals 1

    .line 275
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;->$VALUES:[Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

    invoke-virtual {v0}, [Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/sdk/controller/ControllerHtmlFile$ControllerSourceStrategy;

    return-object v0
.end method
