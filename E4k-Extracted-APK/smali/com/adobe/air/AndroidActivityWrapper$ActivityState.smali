.class public final enum Lcom/adobe/air/AndroidActivityWrapper$ActivityState;
.super Ljava/lang/Enum;
.source "AndroidActivityWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AndroidActivityWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActivityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adobe/air/AndroidActivityWrapper$ActivityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

.field public static final enum DESTROYED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

.field public static final enum PAUSED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

.field public static final enum RESTARTED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

.field public static final enum RESUMED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

.field public static final enum STARTED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

.field public static final enum STOPPED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 186
    new-instance v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    const-string v1, "STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->STARTED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    new-instance v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    const-string v1, "RESTARTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->RESTARTED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    new-instance v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    const-string v1, "RESUMED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->RESUMED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    new-instance v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    const-string v1, "PAUSED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->PAUSED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    new-instance v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    const-string v1, "STOPPED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->STOPPED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    new-instance v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    const-string v1, "DESTROYED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->DESTROYED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->STARTED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->RESTARTED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->RESUMED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->PAUSED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->STOPPED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->DESTROYED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    aput-object v1, v0, v7

    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->$VALUES:[Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/air/AndroidActivityWrapper$ActivityState;
    .locals 1

    .line 186
    const-class v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    return-object p0
.end method

.method public static values()[Lcom/adobe/air/AndroidActivityWrapper$ActivityState;
    .locals 1

    .line 186
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->$VALUES:[Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    invoke-virtual {v0}, [Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    return-object v0
.end method
