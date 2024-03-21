.class public final enum Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;
.super Ljava/lang/Enum;
.source "BaseAdUnitManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ManagerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

.field public static final enum AUCTION:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

.field public static final enum LOADING:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

.field public static final enum NONE:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

.field public static final enum READY_TO_LOAD:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

.field public static final enum READY_TO_SHOW:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

.field public static final enum SHOWING:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 263
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->NONE:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    .line 264
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    const-string v1, "READY_TO_LOAD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    .line 265
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    const-string v1, "AUCTION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->AUCTION:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    .line 266
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    const-string v1, "LOADING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->LOADING:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    .line 267
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    const-string v1, "READY_TO_SHOW"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->READY_TO_SHOW:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    .line 268
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    const-string v1, "SHOWING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->SHOWING:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    const/4 v0, 0x6

    .line 262
    new-array v0, v0, [Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->NONE:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->AUCTION:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->LOADING:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->READY_TO_SHOW:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->SHOWING:Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    aput-object v1, v0, v7

    sput-object v0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->$VALUES:[Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 262
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;
    .locals 1

    .line 262
    const-class v0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;
    .locals 1

    .line 262
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->$VALUES:[Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/adunit/manager/BaseAdUnitManager$ManagerState;

    return-object v0
.end method
