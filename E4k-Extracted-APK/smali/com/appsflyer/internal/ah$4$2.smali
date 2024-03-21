.class final Lcom/appsflyer/internal/ah$4$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/ah$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic valueOf:Lcom/appsflyer/internal/ah$4;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/ah$4;)V
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/appsflyer/internal/ah$4$2;->valueOf:Lcom/appsflyer/internal/ah$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    const-string v0, "Install Referrer collected locally"

    .line 771
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 772
    new-instance v0, Lcom/appsflyer/internal/be;

    invoke-direct {v0}, Lcom/appsflyer/internal/be;-><init>()V

    iget-object v1, p0, Lcom/appsflyer/internal/ah$4$2;->valueOf:Lcom/appsflyer/internal/ah$4;

    iget-object v1, v1, Lcom/appsflyer/internal/ah$4;->AFInAppEventType:Lcom/appsflyer/internal/ah;

    invoke-static {v1}, Lcom/appsflyer/internal/ah;->values(Lcom/appsflyer/internal/ah;)Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1053
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iput-object v1, v0, Lcom/appsflyer/internal/h;->valueOf:Landroid/app/Application;

    .line 773
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/ah$4$2;->valueOf:Lcom/appsflyer/internal/ah$4;

    iget-object v1, v1, Lcom/appsflyer/internal/ah$4;->AFInAppEventType:Lcom/appsflyer/internal/ah;

    iget-object v2, p0, Lcom/appsflyer/internal/ah$4$2;->valueOf:Lcom/appsflyer/internal/ah$4;

    iget-object v2, v2, Lcom/appsflyer/internal/ah$4;->AFInAppEventType:Lcom/appsflyer/internal/ah;

    invoke-static {v2}, Lcom/appsflyer/internal/ah;->values(Lcom/appsflyer/internal/ah;)Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/ah;->values(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/appsflyer/internal/ah;->AFKeystoreWrapper(Lcom/appsflyer/internal/ah;Lcom/appsflyer/internal/h;Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 774
    iget-object v1, p0, Lcom/appsflyer/internal/ah$4$2;->valueOf:Lcom/appsflyer/internal/ah$4;

    iget-object v1, v1, Lcom/appsflyer/internal/ah$4;->AFInAppEventType:Lcom/appsflyer/internal/ah;

    invoke-static {v1, v0}, Lcom/appsflyer/internal/ah;->AFInAppEventParameterName(Lcom/appsflyer/internal/ah;Lcom/appsflyer/internal/h;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 776
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
