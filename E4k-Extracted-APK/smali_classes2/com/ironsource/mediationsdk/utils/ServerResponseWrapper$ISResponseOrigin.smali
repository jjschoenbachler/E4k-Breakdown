.class public final enum Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;
.super Ljava/lang/Enum;
.source "ServerResponseWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ISResponseOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

.field public static final enum CACHE:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

.field public static final enum NOT_SET:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

.field public static final enum SERVER:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1401
    new-instance v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    const-string v1, "NOT_SET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;->NOT_SET:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    .line 1402
    new-instance v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    const-string v1, "CACHE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;->CACHE:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    .line 1403
    new-instance v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    const-string v1, "SERVER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;->SERVER:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    const/4 v0, 0x3

    .line 1400
    new-array v0, v0, [Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    sget-object v1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;->NOT_SET:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;->CACHE:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;->SERVER:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;->$VALUES:[Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1400
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;
    .locals 1

    .line 1400
    const-class v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;
    .locals 1

    .line 1400
    sget-object v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;->$VALUES:[Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    return-object v0
.end method
