.class synthetic Lcom/myflashlab/dependency/overrideAir/AirCommand$1;
.super Ljava/lang/Object;
.source "AirCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myflashlab/dependency/overrideAir/AirCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$myflashlab$dependency$overrideAir$AirCommand$commands:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    invoke-static {}, Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;->values()[Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/myflashlab/dependency/overrideAir/AirCommand$1;->$SwitchMap$com$myflashlab$dependency$overrideAir$AirCommand$commands:[I

    :try_start_0
    sget-object v0, Lcom/myflashlab/dependency/overrideAir/AirCommand$1;->$SwitchMap$com$myflashlab$dependency$overrideAir$AirCommand$commands:[I

    sget-object v1, Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;->myflashlabDebugger:Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;

    invoke-virtual {v1}, Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/myflashlab/dependency/overrideAir/AirCommand$1;->$SwitchMap$com$myflashlab$dependency$overrideAir$AirCommand$commands:[I

    sget-object v1, Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;->applyToAneLab:Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;

    invoke-virtual {v1}, Lcom/myflashlab/dependency/overrideAir/AirCommand$commands;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
