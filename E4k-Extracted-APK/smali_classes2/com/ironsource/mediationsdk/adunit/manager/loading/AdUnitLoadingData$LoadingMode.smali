.class public final enum Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;
.super Ljava/lang/Enum;
.source "AdUnitLoadingData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

.field public static final enum AUTOMATIC_LOAD_AFTER_CLOSE:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

.field public static final enum AUTOMATIC_LOAD_WHILE_SHOW:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

.field public static final enum MANUAL:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

.field public static final enum MANUAL_WITH_AUTOMATIC_RELOAD:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 9
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    const-string v1, "MANUAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->MANUAL:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    .line 10
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    const-string v1, "MANUAL_WITH_AUTOMATIC_RELOAD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->MANUAL_WITH_AUTOMATIC_RELOAD:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    .line 11
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    const-string v1, "AUTOMATIC_LOAD_AFTER_CLOSE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->AUTOMATIC_LOAD_AFTER_CLOSE:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    .line 12
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    const-string v1, "AUTOMATIC_LOAD_WHILE_SHOW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->AUTOMATIC_LOAD_WHILE_SHOW:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    const/4 v0, 0x4

    .line 8
    new-array v0, v0, [Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->MANUAL:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->MANUAL_WITH_AUTOMATIC_RELOAD:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->AUTOMATIC_LOAD_AFTER_CLOSE:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->AUTOMATIC_LOAD_WHILE_SHOW:Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->$VALUES:[Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;
    .locals 1

    .line 8
    const-class v0, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;
    .locals 1

    .line 8
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->$VALUES:[Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/adunit/manager/loading/AdUnitLoadingData$LoadingMode;

    return-object v0
.end method
