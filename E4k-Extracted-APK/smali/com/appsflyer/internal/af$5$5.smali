.class final Lcom/appsflyer/internal/af$5$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/af$5;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Lcom/appsflyer/internal/af$5;

.field private synthetic values:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/af$5;Landroid/app/Activity;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/appsflyer/internal/af$5$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/af$5;

    iput-object p2, p0, Lcom/appsflyer/internal/af$5$5;->values:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/appsflyer/internal/af$5$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/af$5;

    iget-boolean v0, v0, Lcom/appsflyer/internal/af$5;->valueOf:Z

    if-nez v0, :cond_0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/af$5$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/af$5;

    iget-object v0, v0, Lcom/appsflyer/internal/af$5;->AFInAppEventType:Lcom/appsflyer/internal/af$b;

    iget-object v1, p0, Lcom/appsflyer/internal/af$5$5;->values:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/af$b;->valueOf(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Listener thrown an exception: "

    .line 39
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/appsflyer/internal/af$5$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/af$5;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appsflyer/internal/af$5;->AFInAppEventParameterName:Z

    .line 42
    iget-object v0, p0, Lcom/appsflyer/internal/af$5$5;->AFInAppEventParameterName:Lcom/appsflyer/internal/af$5;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appsflyer/internal/af$5;->valueOf:Z

    return-void
.end method
