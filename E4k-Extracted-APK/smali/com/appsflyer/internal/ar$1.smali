.class public final Lcom/appsflyer/internal/ar$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/appsflyer/deeplink/DeepLinkResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Lcom/appsflyer/internal/ar;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/ar;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/appsflyer/internal/ar$1;->AFInAppEventParameterName:Lcom/appsflyer/internal/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1099
    iget-object v0, p0, Lcom/appsflyer/internal/ar$1;->AFInAppEventParameterName:Lcom/appsflyer/internal/ar;

    invoke-static {v0}, Lcom/appsflyer/internal/ar;->AFInAppEventType(Lcom/appsflyer/internal/ar;)Landroid/app/Application;

    move-result-object v0

    .line 1100
    iget-object v1, p0, Lcom/appsflyer/internal/ar$1;->AFInAppEventParameterName:Lcom/appsflyer/internal/ar;

    invoke-static {v1}, Lcom/appsflyer/internal/ar;->values(Lcom/appsflyer/internal/ar;)V

    .line 1101
    iget-object v1, p0, Lcom/appsflyer/internal/ar$1;->AFInAppEventParameterName:Lcom/appsflyer/internal/ar;

    invoke-static {v1, v0}, Lcom/appsflyer/internal/ar;->AFInAppEventParameterName(Lcom/appsflyer/internal/ar;Landroid/content/Context;)V

    .line 1102
    iget-object v1, p0, Lcom/appsflyer/internal/ar$1;->AFInAppEventParameterName:Lcom/appsflyer/internal/ar;

    invoke-static {v1, v0}, Lcom/appsflyer/internal/ar;->AFKeystoreWrapper(Lcom/appsflyer/internal/ar;Landroid/content/Context;)Lcom/appsflyer/deeplink/DeepLinkResult;

    move-result-object v0

    return-object v0
.end method
