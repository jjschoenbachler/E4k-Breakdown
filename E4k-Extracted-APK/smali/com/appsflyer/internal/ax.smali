.class public final Lcom/appsflyer/internal/ax;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final AFInAppEventParameterName:Landroid/app/Application;

.field public final AFInAppEventType:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/appsflyer/internal/ax;->AFInAppEventParameterName:Landroid/app/Application;

    .line 26
    iget-object p1, p0, Lcom/appsflyer/internal/ax;->AFInAppEventParameterName:Landroid/app/Application;

    invoke-static {p1}, Lcom/appsflyer/internal/ah;->values(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/ax;->AFInAppEventType:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final AFInAppEventType()Z
    .locals 3

    .line 83
    invoke-static {}, Lcom/appsflyer/internal/ah;->AFInAppEventParameterName()Lcom/appsflyer/internal/ah;

    iget-object v0, p0, Lcom/appsflyer/internal/ax;->AFInAppEventType:Landroid/content/SharedPreferences;

    const-string v1, "appsFlyerCount"

    const/4 v2, 0x0

    .line 3711
    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/ah;->values(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method
