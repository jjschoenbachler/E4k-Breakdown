.class public final enum Lcom/appsflyer/deeplink/DeepLinkResult$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/deeplink/DeepLinkResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/deeplink/DeepLinkResult$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFInAppEventType:Lcom/appsflyer/deeplink/DeepLinkResult$b;

.field public static final enum AFKeystoreWrapper:Lcom/appsflyer/deeplink/DeepLinkResult$b;

.field public static final enum valueOf:Lcom/appsflyer/deeplink/DeepLinkResult$b;

.field private static final synthetic values:[Lcom/appsflyer/deeplink/DeepLinkResult$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 46
    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult$b;

    const-string v1, "FOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/deeplink/DeepLinkResult$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$b;->AFInAppEventType:Lcom/appsflyer/deeplink/DeepLinkResult$b;

    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult$b;

    const-string v1, "NOT_FOUND"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appsflyer/deeplink/DeepLinkResult$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$b;->valueOf:Lcom/appsflyer/deeplink/DeepLinkResult$b;

    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult$b;

    const-string v1, "ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appsflyer/deeplink/DeepLinkResult$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$b;->AFKeystoreWrapper:Lcom/appsflyer/deeplink/DeepLinkResult$b;

    const/4 v0, 0x3

    .line 45
    new-array v0, v0, [Lcom/appsflyer/deeplink/DeepLinkResult$b;

    sget-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$b;->AFInAppEventType:Lcom/appsflyer/deeplink/DeepLinkResult$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$b;->valueOf:Lcom/appsflyer/deeplink/DeepLinkResult$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$b;->AFKeystoreWrapper:Lcom/appsflyer/deeplink/DeepLinkResult$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$b;->values:[Lcom/appsflyer/deeplink/DeepLinkResult$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/deeplink/DeepLinkResult$b;
    .locals 1

    .line 45
    const-class v0, Lcom/appsflyer/deeplink/DeepLinkResult$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/deeplink/DeepLinkResult$b;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/deeplink/DeepLinkResult$b;
    .locals 1

    .line 45
    sget-object v0, Lcom/appsflyer/deeplink/DeepLinkResult$b;->values:[Lcom/appsflyer/deeplink/DeepLinkResult$b;

    invoke-virtual {v0}, [Lcom/appsflyer/deeplink/DeepLinkResult$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/deeplink/DeepLinkResult$b;

    return-object v0
.end method
