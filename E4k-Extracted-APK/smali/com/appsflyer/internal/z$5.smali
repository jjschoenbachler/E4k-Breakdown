.class final Lcom/appsflyer/internal/z$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/z;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic valueOf:Lcom/appsflyer/internal/z;

.field private synthetic values:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/z;Ljava/util/Map;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/appsflyer/internal/z$5;->valueOf:Lcom/appsflyer/internal/z;

    iput-object p2, p0, Lcom/appsflyer/internal/z$5;->values:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/appsflyer/internal/z$5;->valueOf:Lcom/appsflyer/internal/z;

    iget-object v1, p0, Lcom/appsflyer/internal/z$5;->values:Ljava/util/Map;

    iget-object v2, p0, Lcom/appsflyer/internal/z$5;->valueOf:Lcom/appsflyer/internal/z;

    invoke-static {v2}, Lcom/appsflyer/internal/z;->AFInAppEventParameterName(Lcom/appsflyer/internal/z;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/appsflyer/internal/z$5;->valueOf:Lcom/appsflyer/internal/z;

    invoke-static {v3}, Lcom/appsflyer/internal/z;->valueOf(Lcom/appsflyer/internal/z;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/appsflyer/internal/z;->values(Lcom/appsflyer/internal/z;Ljava/util/Map;Ljava/util/Map;Ljava/lang/ref/WeakReference;)V

    return-void
.end method
