.class public final enum Lcom/appsflyer/internal/s$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/s$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFInAppEventParameterName:Lcom/appsflyer/internal/s$b;

.field public static final enum AFInAppEventType:Lcom/appsflyer/internal/s$b;

.field public static final enum AFKeystoreWrapper:Lcom/appsflyer/internal/s$b;

.field private static final synthetic AFVersionDeclaration:[Lcom/appsflyer/internal/s$b;

.field public static final enum AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/s$b;

.field public static final enum valueOf:Lcom/appsflyer/internal/s$b;

.field public static final enum values:Lcom/appsflyer/internal/s$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 404
    new-instance v0, Lcom/appsflyer/internal/s$b;

    const-string v1, "EMPTY_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/s$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/s$b;->AFKeystoreWrapper:Lcom/appsflyer/internal/s$b;

    .line 410
    new-instance v0, Lcom/appsflyer/internal/s$b;

    const-string v1, "NONEMPTY_ARRAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appsflyer/internal/s$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/s$b;->AFInAppEventType:Lcom/appsflyer/internal/s$b;

    .line 416
    new-instance v0, Lcom/appsflyer/internal/s$b;

    const-string v1, "EMPTY_OBJECT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appsflyer/internal/s$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/s$b;->values:Lcom/appsflyer/internal/s$b;

    .line 422
    new-instance v0, Lcom/appsflyer/internal/s$b;

    const-string v1, "DANGLING_KEY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/appsflyer/internal/s$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/s$b;->AFInAppEventParameterName:Lcom/appsflyer/internal/s$b;

    .line 428
    new-instance v0, Lcom/appsflyer/internal/s$b;

    const-string v1, "NONEMPTY_OBJECT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/appsflyer/internal/s$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/s$b;->valueOf:Lcom/appsflyer/internal/s$b;

    .line 434
    new-instance v0, Lcom/appsflyer/internal/s$b;

    const-string v1, "NULL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/appsflyer/internal/s$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/internal/s$b;->AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/s$b;

    const/4 v0, 0x6

    .line 398
    new-array v0, v0, [Lcom/appsflyer/internal/s$b;

    sget-object v1, Lcom/appsflyer/internal/s$b;->AFKeystoreWrapper:Lcom/appsflyer/internal/s$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/s$b;->AFInAppEventType:Lcom/appsflyer/internal/s$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appsflyer/internal/s$b;->values:Lcom/appsflyer/internal/s$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appsflyer/internal/s$b;->AFInAppEventParameterName:Lcom/appsflyer/internal/s$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appsflyer/internal/s$b;->valueOf:Lcom/appsflyer/internal/s$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/appsflyer/internal/s$b;->AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/s$b;

    aput-object v1, v0, v7

    sput-object v0, Lcom/appsflyer/internal/s$b;->AFVersionDeclaration:[Lcom/appsflyer/internal/s$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 398
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/s$b;
    .locals 1

    .line 398
    const-class v0, Lcom/appsflyer/internal/s$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/s$b;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/s$b;
    .locals 1

    .line 398
    sget-object v0, Lcom/appsflyer/internal/s$b;->AFVersionDeclaration:[Lcom/appsflyer/internal/s$b;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/s$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/s$b;

    return-object v0
.end method
