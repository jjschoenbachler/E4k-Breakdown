.class public final Lcom/appsflyer/internal/bq;
.super Lcom/appsflyer/internal/bk;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "af_purchase"

    .line 11
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1, p1}, Lcom/appsflyer/internal/bk;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName(Ljava/lang/String;)Lcom/appsflyer/internal/h;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/bq;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/appsflyer/internal/bk;->AFInAppEventParameterName(Ljava/lang/String;)Lcom/appsflyer/internal/h;

    move-result-object p1

    return-object p1
.end method
