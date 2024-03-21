.class public final enum Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;
.super Ljava/lang/Enum;
.source "ControllerHtmlFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/ControllerHtmlFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadedControllerSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

.field public static final enum CONTROLLER_FROM_SERVER:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

.field public static final enum FAILED_RENAME_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

.field public static final enum FALLBACK_CONTROLLER_RECOVERY:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

.field public static final enum MISSING_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

.field public static final enum NONE:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

.field public static final enum PREPARED_CONTROLLER_LOADED:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;


# instance fields
.field private mControllerSourceCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 282
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->NONE:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    .line 283
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    const-string v1, "PREPARED_CONTROLLER_LOADED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->PREPARED_CONTROLLER_LOADED:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    .line 284
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    const-string v1, "CONTROLLER_FROM_SERVER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->CONTROLLER_FROM_SERVER:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    .line 285
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    const-string v1, "MISSING_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->MISSING_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    .line 286
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    const-string v1, "FAILED_RENAME_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->FAILED_RENAME_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    .line 287
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    const-string v1, "FALLBACK_CONTROLLER_RECOVERY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->FALLBACK_CONTROLLER_RECOVERY:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    const/4 v0, 0x6

    .line 281
    new-array v0, v0, [Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    sget-object v1, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->NONE:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->PREPARED_CONTROLLER_LOADED:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->CONTROLLER_FROM_SERVER:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->MISSING_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->FAILED_RENAME_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->FALLBACK_CONTROLLER_RECOVERY:Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    aput-object v1, v0, v7

    sput-object v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->$VALUES:[Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 291
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 292
    iput p3, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->mControllerSourceCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;
    .locals 1

    .line 281
    const-class v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;
    .locals 1

    .line 281
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->$VALUES:[Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    invoke-virtual {v0}, [Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 296
    iget v0, p0, Lcom/ironsource/sdk/controller/ControllerHtmlFile$LoadedControllerSource;->mControllerSourceCode:I

    return v0
.end method
