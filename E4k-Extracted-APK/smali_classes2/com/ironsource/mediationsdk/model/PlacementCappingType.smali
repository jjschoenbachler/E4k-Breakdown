.class public final enum Lcom/ironsource/mediationsdk/model/PlacementCappingType;
.super Ljava/lang/Enum;
.source "PlacementCappingType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/model/PlacementCappingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/mediationsdk/model/PlacementCappingType;

.field public static final enum PER_DAY:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

.field public static final enum PER_HOUR:Lcom/ironsource/mediationsdk/model/PlacementCappingType;


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    const-string v1, "PER_DAY"

    const-string v2, "d"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_DAY:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    new-instance v0, Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    const-string v1, "PER_HOUR"

    const-string v2, "h"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_HOUR:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    sget-object v1, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_DAY:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_HOUR:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->$VALUES:[Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/PlacementCappingType;
    .locals 1

    .line 6
    const-class v0, Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/model/PlacementCappingType;
    .locals 1

    .line 6
    sget-object v0, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->$VALUES:[Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/model/PlacementCappingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->value:Ljava/lang/String;

    return-object v0
.end method
