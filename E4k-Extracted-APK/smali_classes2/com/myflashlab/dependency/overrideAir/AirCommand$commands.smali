.class final enum Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;
.super Ljava/lang/Enum;
.source "AirCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myflashlab/dependency/overrideAir/AirCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "commands"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;

.field public static final enum applyToAneLab:Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;

.field public static final enum myflashlabDebugger:Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 42
    new-instance v0, Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;

    const-string v1, "myflashlabDebugger"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;->myflashlabDebugger:Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;

    .line 43
    new-instance v0, Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;

    const-string v1, "applyToAneLab"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;->applyToAneLab:Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;

    const/4 v0, 0x2

    .line 40
    new-array v0, v0, [Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;

    sget-object v1, Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;->myflashlabDebugger:Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;

    aput-object v1, v0, v2

    sget-object v1, Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;->applyToAneLab:Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;

    aput-object v1, v0, v3

    sput-object v0, Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;->$VALUES:[Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;
    .locals 1

    .line 40
    const-class v0, Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;

    return-object p0
.end method

.method public static values()[Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;
    .locals 1

    .line 40
    sget-object v0, Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;->$VALUES:[Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;

    invoke-virtual {v0}, [Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;

    return-object v0
.end method
