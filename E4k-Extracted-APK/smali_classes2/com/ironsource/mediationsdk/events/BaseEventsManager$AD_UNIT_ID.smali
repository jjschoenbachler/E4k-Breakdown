.class public final enum Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;
.super Ljava/lang/Enum;
.source "BaseEventsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/events/BaseEventsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AD_UNIT_ID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

.field public static final enum BANNER:Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

.field public static final enum INTERSTITIAL:Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

.field public static final enum NOT_SUPPORTED:Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

.field public static final enum OFFERWALL:Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

.field public static final enum REWARDED_VIDEO:Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;


# instance fields
.field private mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 49
    new-instance v0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

    const-string v1, "NOT_SUPPORTED"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;->NOT_SUPPORTED:Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

    .line 50
    new-instance v0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

    const-string v1, "OFFERWALL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;->OFFERWALL:Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

    .line 51
    new-instance v0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

    const-string v1, "INTERSTITIAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;->INTERSTITIAL:Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

    .line 52
    new-instance v0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

    const-string v1, "REWARDED_VIDEO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

    .line 53
    new-instance v0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

    const-string v1, "BANNER"

    const/4 v6, 0x4

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;->BANNER:Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

    const/4 v0, 0x5

    .line 48
    new-array v0, v0, [Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

    sget-object v1, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;->NOT_SUPPORTED:Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;->OFFERWALL:Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;->INTERSTITIAL:Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;->BANNER:Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;->$VALUES:[Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput p3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;
    .locals 1

    .line 48
    const-class v0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;
    .locals 1

    .line 48
    sget-object v0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;->$VALUES:[Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$AD_UNIT_ID;->mId:I

    return v0
.end method
