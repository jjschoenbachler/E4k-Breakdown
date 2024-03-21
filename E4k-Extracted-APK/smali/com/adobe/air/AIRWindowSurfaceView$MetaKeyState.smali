.class final enum Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;
.super Ljava/lang/Enum;
.source "AIRWindowSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AIRWindowSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MetaKeyState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

.field public static final enum ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

.field public static final enum INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

.field public static final enum LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

.field public static final enum PRESSED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 203
    new-instance v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    const-string v1, "INACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 204
    new-instance v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    const-string v1, "ACTIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 205
    new-instance v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    const-string v1, "PRESSED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->PRESSED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 206
    new-instance v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    const-string v1, "LOCKED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    const/4 v0, 0x4

    .line 201
    new-array v0, v0, [Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->PRESSED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->$VALUES:[Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 201
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;
    .locals 1

    .line 201
    const-class v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    return-object p0
.end method

.method public static values()[Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;
    .locals 1

    .line 201
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->$VALUES:[Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    invoke-virtual {v0}, [Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    return-object v0
.end method
