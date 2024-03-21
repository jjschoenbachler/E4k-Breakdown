.class public final enum Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;
.super Ljava/lang/Enum;
.source "ISNEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/data/ISNEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackButtonState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;

.field public static final enum Controller:Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;

.field public static final enum Device:Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;

.field public static final enum None:Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    new-instance v0, Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;->None:Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;

    .line 39
    new-instance v0, Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;

    const-string v1, "Device"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;->Device:Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;

    .line 40
    new-instance v0, Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;

    const-string v1, "Controller"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;->Controller:Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;

    const/4 v0, 0x3

    .line 37
    new-array v0, v0, [Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;

    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;->None:Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;->Device:Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;->Controller:Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;->$VALUES:[Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;
    .locals 1

    .line 37
    const-class v0, Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;
    .locals 1

    .line 37
    sget-object v0, Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;->$VALUES:[Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;

    invoke-virtual {v0}, [Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/sdk/data/ISNEnums$BackButtonState;

    return-object v0
.end method
