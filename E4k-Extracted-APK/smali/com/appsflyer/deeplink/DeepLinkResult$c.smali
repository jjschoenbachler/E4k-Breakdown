.class public final enum Lcom/appsflyer/deeplink/DeepLinkResult$c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/deeplink/DeepLinkResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/deeplink/DeepLinkResult$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFInAppEventParameterName:Lcom/appsflyer/deeplink/DeepLinkResult$c;

.field public static final enum AFInAppEventType:Lcom/appsflyer/deeplink/DeepLinkResult$c;

.field public static final enum AFKeystoreWrapper:Lcom/appsflyer/deeplink/DeepLinkResult$c;

.field private static final synthetic valueOf:[Lcom/appsflyer/deeplink/DeepLinkResult$c;

.field public static final enum values:Lcom/appsflyer/deeplink/DeepLinkResult$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 50
    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult$c;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/deeplink/DeepLinkResult$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$c;->AFKeystoreWrapper:Lcom/appsflyer/deeplink/DeepLinkResult$c;

    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult$c;

    const-string v1, "NETWORK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appsflyer/deeplink/DeepLinkResult$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$c;->AFInAppEventType:Lcom/appsflyer/deeplink/DeepLinkResult$c;

    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult$c;

    const-string v1, "HTTP_STATUS_CODE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appsflyer/deeplink/DeepLinkResult$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$c;->AFInAppEventParameterName:Lcom/appsflyer/deeplink/DeepLinkResult$c;

    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult$c;

    const-string v1, "UNEXPECTED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/appsflyer/deeplink/DeepLinkResult$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$c;->values:Lcom/appsflyer/deeplink/DeepLinkResult$c;

    const/4 v0, 0x4

    .line 49
    new-array v0, v0, [Lcom/appsflyer/deeplink/DeepLinkResult$c;

    sget-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$c;->AFKeystoreWrapper:Lcom/appsflyer/deeplink/DeepLinkResult$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$c;->AFInAppEventType:Lcom/appsflyer/deeplink/DeepLinkResult$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$c;->AFInAppEventParameterName:Lcom/appsflyer/deeplink/DeepLinkResult$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$c;->values:Lcom/appsflyer/deeplink/DeepLinkResult$c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$c;->valueOf:[Lcom/appsflyer/deeplink/DeepLinkResult$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/deeplink/DeepLinkResult$c;
    .locals 1

    .line 49
    const-class v0, Lcom/appsflyer/deeplink/DeepLinkResult$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/deeplink/DeepLinkResult$c;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/deeplink/DeepLinkResult$c;
    .locals 1

    .line 49
    sget-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$c;->valueOf:[Lcom/appsflyer/deeplink/DeepLinkResult$c;

    invoke-virtual {v0}, [Lcom/appsflyer/deeplink/DeepLinkResult$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/deeplink/DeepLinkResult$c;

    return-object v0
.end method
