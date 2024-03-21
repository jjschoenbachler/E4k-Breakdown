.class public final enum Lcom/appsflyer/internal/bs$e;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/bs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/bs$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFInAppEventParameterName:Lcom/appsflyer/internal/bs$e;

.field public static final enum AFInAppEventType:Lcom/appsflyer/internal/bs$e;

.field private static final synthetic valueOf:[Lcom/appsflyer/internal/bs$e;

.field public static final enum values:Lcom/appsflyer/internal/bs$e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 56
    new-instance v0, Lcom/appsflyer/internal/bs$e;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/bs$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/bs$e;->AFInAppEventParameterName:Lcom/appsflyer/internal/bs$e;

    new-instance v0, Lcom/appsflyer/internal/bs$e;

    const-string v1, "STARTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appsflyer/internal/bs$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/bs$e;->values:Lcom/appsflyer/internal/bs$e;

    new-instance v0, Lcom/appsflyer/internal/bs$e;

    const-string v1, "FINISHED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appsflyer/internal/bs$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/bs$e;->AFInAppEventType:Lcom/appsflyer/internal/bs$e;

    const/4 v0, 0x3

    .line 55
    new-array v0, v0, [Lcom/appsflyer/internal/bs$e;

    sget-object v1, Lcom/appsflyer/internal/bs$e;->AFInAppEventParameterName:Lcom/appsflyer/internal/bs$e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/bs$e;->values:Lcom/appsflyer/internal/bs$e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appsflyer/internal/bs$e;->AFInAppEventType:Lcom/appsflyer/internal/bs$e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/appsflyer/internal/bs$e;->valueOf:[Lcom/appsflyer/internal/bs$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/bs$e;
    .locals 1

    .line 55
    const-class v0, Lcom/appsflyer/internal/bs$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/bs$e;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/bs$e;
    .locals 1

    .line 55
    sget-object v0, Lcom/appsflyer/internal/bs$e;->valueOf:[Lcom/appsflyer/internal/bs$e;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/bs$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/bs$e;

    return-object v0
.end method
