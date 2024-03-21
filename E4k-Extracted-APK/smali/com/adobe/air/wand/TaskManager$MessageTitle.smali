.class public final enum Lcom/adobe/air/wand/TaskManager$MessageTitle;
.super Ljava/lang/Enum;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/wand/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageTitle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adobe/air/wand/TaskManager$MessageTitle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/air/wand/TaskManager$MessageTitle;

.field public static final enum ACCELEROMETER_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

.field public static final enum DRAW_IMAGE:Lcom/adobe/air/wand/TaskManager$MessageTitle;

.field public static final enum ERROR_LOG:Lcom/adobe/air/wand/TaskManager$MessageTitle;

.field public static final enum GESTURE_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

.field public static final enum GYROSCOPE_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

.field public static final enum HARDWARE_SPECIFICATIONS:Lcom/adobe/air/wand/TaskManager$MessageTitle;

.field public static final enum MAGNETOMETER_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

.field public static final enum TOUCH_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

.field public static final enum VIBRATE:Lcom/adobe/air/wand/TaskManager$MessageTitle;


# instance fields
.field private final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 69
    new-instance v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;

    const-string v1, "ACCELEROMETER_EVENT"

    const-string v2, "ACCELEROMETER_EVENT"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/adobe/air/wand/TaskManager$MessageTitle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;->ACCELEROMETER_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    .line 70
    new-instance v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;

    const-string v1, "MAGNETOMETER_EVENT"

    const-string v2, "MAGNETOMETER_EVENT"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/adobe/air/wand/TaskManager$MessageTitle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;->MAGNETOMETER_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    .line 71
    new-instance v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;

    const-string v1, "GYROSCOPE_EVENT"

    const-string v2, "GYROSCOPE_EVENT"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/adobe/air/wand/TaskManager$MessageTitle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;->GYROSCOPE_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    .line 73
    new-instance v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;

    const-string v1, "TOUCH_EVENT"

    const-string v2, "TOUCH_EVENT"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/adobe/air/wand/TaskManager$MessageTitle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;->TOUCH_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    .line 74
    new-instance v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;

    const-string v1, "GESTURE_EVENT"

    const-string v2, "GESTURE_EVENT"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/adobe/air/wand/TaskManager$MessageTitle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;->GESTURE_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    .line 76
    new-instance v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;

    const-string v1, "VIBRATE"

    const-string v2, "VIBRATE"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/adobe/air/wand/TaskManager$MessageTitle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;->VIBRATE:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    .line 78
    new-instance v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;

    const-string v1, "DRAW_IMAGE"

    const-string v2, "DRAW_IMAGE"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/adobe/air/wand/TaskManager$MessageTitle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;->DRAW_IMAGE:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    .line 79
    new-instance v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;

    const-string v1, "HARDWARE_SPECIFICATIONS"

    const-string v2, "HARDWARE_SPECIFICATIONS"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/adobe/air/wand/TaskManager$MessageTitle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;->HARDWARE_SPECIFICATIONS:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    .line 81
    new-instance v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;

    const-string v1, "ERROR_LOG"

    const-string v2, "ERROR_LOG"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/adobe/air/wand/TaskManager$MessageTitle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;->ERROR_LOG:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    const/16 v0, 0x9

    .line 67
    new-array v0, v0, [Lcom/adobe/air/wand/TaskManager$MessageTitle;

    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->ACCELEROMETER_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->MAGNETOMETER_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->GYROSCOPE_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->TOUCH_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->GESTURE_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    aput-object v1, v0, v7

    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->VIBRATE:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    aput-object v1, v0, v8

    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->DRAW_IMAGE:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    aput-object v1, v0, v9

    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->HARDWARE_SPECIFICATIONS:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    aput-object v1, v0, v10

    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->ERROR_LOG:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    aput-object v1, v0, v11

    sput-object v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;->$VALUES:[Lcom/adobe/air/wand/TaskManager$MessageTitle;

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

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput-object p3, p0, Lcom/adobe/air/wand/TaskManager$MessageTitle;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/air/wand/TaskManager$MessageTitle;
    .locals 1

    .line 67
    const-class v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adobe/air/wand/TaskManager$MessageTitle;

    return-object p0
.end method

.method public static values()[Lcom/adobe/air/wand/TaskManager$MessageTitle;
    .locals 1

    .line 67
    sget-object v0, Lcom/adobe/air/wand/TaskManager$MessageTitle;->$VALUES:[Lcom/adobe/air/wand/TaskManager$MessageTitle;

    invoke-virtual {v0}, [Lcom/adobe/air/wand/TaskManager$MessageTitle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/air/wand/TaskManager$MessageTitle;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager$MessageTitle;->mTitle:Ljava/lang/String;

    return-object v0
.end method
