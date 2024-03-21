.class final enum Lcom/appsflyer/internal/i$e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/i$e;",
        ">;"
    }
.end annotation


# static fields
.field private static enum AFInAppEventParameterName:Lcom/appsflyer/internal/i$e;

.field private static enum AFInAppEventType:Lcom/appsflyer/internal/i$e;

.field private static enum AFKeystoreWrapper:Lcom/appsflyer/internal/i$e;

.field private static final synthetic AppsFlyer2dXConversionCallback:[Lcom/appsflyer/internal/i$e;

.field private static enum init:Lcom/appsflyer/internal/i$e;

.field private static enum values:Lcom/appsflyer/internal/i$e;


# instance fields
.field valueOf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 223
    new-instance v0, Lcom/appsflyer/internal/i$e;

    const-string v1, "UNKNOWN"

    const-string v2, "uk"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/appsflyer/internal/i$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/i$e;->AFInAppEventParameterName:Lcom/appsflyer/internal/i$e;

    new-instance v0, Lcom/appsflyer/internal/i$e;

    const-string v1, "ACCELEROMETER"

    const-string v2, "am"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/appsflyer/internal/i$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/i$e;->AFInAppEventType:Lcom/appsflyer/internal/i$e;

    new-instance v0, Lcom/appsflyer/internal/i$e;

    const-string v1, "MAGNETOMETER"

    const-string v2, "mm"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/appsflyer/internal/i$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/i$e;->values:Lcom/appsflyer/internal/i$e;

    new-instance v0, Lcom/appsflyer/internal/i$e;

    const-string v1, "RESERVED"

    const-string v2, "rs"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/appsflyer/internal/i$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/i$e;->AFKeystoreWrapper:Lcom/appsflyer/internal/i$e;

    new-instance v0, Lcom/appsflyer/internal/i$e;

    const-string v1, "GYROSCOPE"

    const-string v2, "gs"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/appsflyer/internal/i$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/i$e;->init:Lcom/appsflyer/internal/i$e;

    const/4 v0, 0x5

    .line 222
    new-array v0, v0, [Lcom/appsflyer/internal/i$e;

    sget-object v1, Lcom/appsflyer/internal/i$e;->AFInAppEventParameterName:Lcom/appsflyer/internal/i$e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appsflyer/internal/i$e;->AFInAppEventType:Lcom/appsflyer/internal/i$e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appsflyer/internal/i$e;->values:Lcom/appsflyer/internal/i$e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appsflyer/internal/i$e;->AFKeystoreWrapper:Lcom/appsflyer/internal/i$e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/appsflyer/internal/i$e;->init:Lcom/appsflyer/internal/i$e;

    aput-object v1, v0, v7

    sput-object v0, Lcom/appsflyer/internal/i$e;->AppsFlyer2dXConversionCallback:[Lcom/appsflyer/internal/i$e;

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

    .line 227
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 228
    iput-object p3, p0, Lcom/appsflyer/internal/i$e;->valueOf:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/i$e;
    .locals 1

    .line 222
    const-class v0, Lcom/appsflyer/internal/i$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/i$e;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/i$e;
    .locals 1

    .line 222
    sget-object v0, Lcom/appsflyer/internal/i$e;->AppsFlyer2dXConversionCallback:[Lcom/appsflyer/internal/i$e;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/i$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/i$e;

    return-object v0
.end method
