.class public final enum Lcom/ironsource/sdk/controller/WebController$State;
.super Ljava/lang/Enum;
.source "WebController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/WebController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/sdk/controller/WebController$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/sdk/controller/WebController$State;

.field public static final enum Display:Lcom/ironsource/sdk/controller/WebController$State;

.field public static final enum Gone:Lcom/ironsource/sdk/controller/WebController$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 3878
    new-instance v0, Lcom/ironsource/sdk/controller/WebController$State;

    const-string v1, "Display"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/sdk/controller/WebController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/controller/WebController$State;->Display:Lcom/ironsource/sdk/controller/WebController$State;

    .line 3879
    new-instance v0, Lcom/ironsource/sdk/controller/WebController$State;

    const-string v1, "Gone"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ironsource/sdk/controller/WebController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/controller/WebController$State;->Gone:Lcom/ironsource/sdk/controller/WebController$State;

    const/4 v0, 0x2

    .line 3877
    new-array v0, v0, [Lcom/ironsource/sdk/controller/WebController$State;

    sget-object v1, Lcom/ironsource/sdk/controller/WebController$State;->Display:Lcom/ironsource/sdk/controller/WebController$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/sdk/controller/WebController$State;->Gone:Lcom/ironsource/sdk/controller/WebController$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ironsource/sdk/controller/WebController$State;->$VALUES:[Lcom/ironsource/sdk/controller/WebController$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3877
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/sdk/controller/WebController$State;
    .locals 1

    .line 3877
    const-class v0, Lcom/ironsource/sdk/controller/WebController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/sdk/controller/WebController$State;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/sdk/controller/WebController$State;
    .locals 1

    .line 3877
    sget-object v0, Lcom/ironsource/sdk/controller/WebController$State;->$VALUES:[Lcom/ironsource/sdk/controller/WebController$State;

    invoke-virtual {v0}, [Lcom/ironsource/sdk/controller/WebController$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/sdk/controller/WebController$State;

    return-object v0
.end method
