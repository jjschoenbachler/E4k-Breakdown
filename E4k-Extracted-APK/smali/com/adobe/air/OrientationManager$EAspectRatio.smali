.class public final enum Lcom/adobe/air/OrientationManager$EAspectRatio;
.super Ljava/lang/Enum;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/OrientationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EAspectRatio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adobe/air/OrientationManager$EAspectRatio;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/air/OrientationManager$EAspectRatio;

.field public static final enum LANDSCAPE:Lcom/adobe/air/OrientationManager$EAspectRatio;

.field public static final enum PORTRAIT:Lcom/adobe/air/OrientationManager$EAspectRatio;

.field public static final enum UNKNOWN:Lcom/adobe/air/OrientationManager$EAspectRatio;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 45
    new-instance v0, Lcom/adobe/air/OrientationManager$EAspectRatio;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/air/OrientationManager$EAspectRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/air/OrientationManager$EAspectRatio;->UNKNOWN:Lcom/adobe/air/OrientationManager$EAspectRatio;

    new-instance v0, Lcom/adobe/air/OrientationManager$EAspectRatio;

    const-string v1, "PORTRAIT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/adobe/air/OrientationManager$EAspectRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/air/OrientationManager$EAspectRatio;->PORTRAIT:Lcom/adobe/air/OrientationManager$EAspectRatio;

    new-instance v0, Lcom/adobe/air/OrientationManager$EAspectRatio;

    const-string v1, "LANDSCAPE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/adobe/air/OrientationManager$EAspectRatio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/air/OrientationManager$EAspectRatio;->LANDSCAPE:Lcom/adobe/air/OrientationManager$EAspectRatio;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adobe/air/OrientationManager$EAspectRatio;

    sget-object v1, Lcom/adobe/air/OrientationManager$EAspectRatio;->UNKNOWN:Lcom/adobe/air/OrientationManager$EAspectRatio;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/air/OrientationManager$EAspectRatio;->PORTRAIT:Lcom/adobe/air/OrientationManager$EAspectRatio;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/air/OrientationManager$EAspectRatio;->LANDSCAPE:Lcom/adobe/air/OrientationManager$EAspectRatio;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adobe/air/OrientationManager$EAspectRatio;->$VALUES:[Lcom/adobe/air/OrientationManager$EAspectRatio;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/air/OrientationManager$EAspectRatio;
    .locals 1

    .line 45
    const-class v0, Lcom/adobe/air/OrientationManager$EAspectRatio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adobe/air/OrientationManager$EAspectRatio;

    return-object p0
.end method

.method public static values()[Lcom/adobe/air/OrientationManager$EAspectRatio;
    .locals 1

    .line 45
    sget-object v0, Lcom/adobe/air/OrientationManager$EAspectRatio;->$VALUES:[Lcom/adobe/air/OrientationManager$EAspectRatio;

    invoke-virtual {v0}, [Lcom/adobe/air/OrientationManager$EAspectRatio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/air/OrientationManager$EAspectRatio;

    return-object v0
.end method