.class public final enum Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;
.super Ljava/lang/Enum;
.source "ProgBannerSmash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/ProgBannerSmash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "BannerSmashState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

.field public static final enum DESTROYED:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

.field public static final enum INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

.field public static final enum LOADED:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

.field public static final enum LOADING:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

.field public static final enum LOAD_FAILED:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

.field public static final enum NONE:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

.field public static final enum READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 74
    new-instance v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->NONE:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    .line 75
    new-instance v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    const-string v1, "INIT_IN_PROGRESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    .line 76
    new-instance v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    const-string v1, "READY_TO_LOAD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    .line 77
    new-instance v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    const-string v1, "LOADING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->LOADING:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    .line 78
    new-instance v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    const-string v1, "LOADED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->LOADED:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    .line 79
    new-instance v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    const-string v1, "LOAD_FAILED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->LOAD_FAILED:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    .line 80
    new-instance v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    const-string v1, "DESTROYED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->DESTROYED:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    const/4 v0, 0x7

    .line 73
    new-array v0, v0, [Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    sget-object v1, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->NONE:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->READY_TO_LOAD:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->LOADING:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->LOADED:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->LOAD_FAILED:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->DESTROYED:Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    aput-object v1, v0, v8

    sput-object v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->$VALUES:[Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;
    .locals 1

    .line 73
    const-class v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;
    .locals 1

    .line 73
    sget-object v0, Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->$VALUES:[Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/ProgBannerSmash$BannerSmashState;

    return-object v0
.end method
