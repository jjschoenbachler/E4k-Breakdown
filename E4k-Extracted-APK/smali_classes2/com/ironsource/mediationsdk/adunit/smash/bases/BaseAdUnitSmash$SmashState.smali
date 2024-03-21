.class public final enum Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;
.super Ljava/lang/Enum;
.source "BaseAdUnitSmash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "SmashState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

.field public static final enum FAILED:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

.field public static final enum INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

.field public static final enum LOADED:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

.field public static final enum LOADING:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

.field public static final enum NONE:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

.field public static final enum READY_TO_LOAD:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

.field public static final enum SHOWING:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 311
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->NONE:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    .line 312
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    const-string v1, "INIT_IN_PROGRESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    .line 313
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    const-string v1, "READY_TO_LOAD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    .line 314
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    const-string v1, "LOADING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->LOADING:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    .line 315
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    const-string v1, "LOADED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->LOADED:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    .line 316
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    const-string v1, "SHOWING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->SHOWING:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    .line 317
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    const-string v1, "FAILED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->FAILED:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    const/4 v0, 0x7

    .line 310
    new-array v0, v0, [Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->NONE:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->LOADING:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->LOADED:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->SHOWING:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->FAILED:Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    aput-object v1, v0, v8

    sput-object v0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->$VALUES:[Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 310
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;
    .locals 1

    .line 310
    const-class v0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;
    .locals 1

    .line 310
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->$VALUES:[Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/adunit/smash/bases/BaseAdUnitSmash$SmashState;

    return-object v0
.end method
