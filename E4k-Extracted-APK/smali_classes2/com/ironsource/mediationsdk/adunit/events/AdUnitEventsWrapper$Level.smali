.class public final enum Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;
.super Ljava/lang/Enum;
.source "AdUnitEventsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;

.field public static final enum MEDIATION:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;

.field public static final enum PROVIDER:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 21
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;

    const-string v1, "MEDIATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;->MEDIATION:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;

    .line 22
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;

    const-string v1, "PROVIDER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;->PROVIDER:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;

    const/4 v0, 0x2

    .line 20
    new-array v0, v0, [Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;->MEDIATION:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;->PROVIDER:Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;->$VALUES:[Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;
    .locals 1

    .line 20
    const-class v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;
    .locals 1

    .line 20
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;->$VALUES:[Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/adunit/events/AdUnitEventsWrapper$Level;

    return-object v0
.end method
