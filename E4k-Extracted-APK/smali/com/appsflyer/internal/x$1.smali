.class final Lcom/appsflyer/internal/x$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Lcom/appsflyer/internal/x$a;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/x$a;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/appsflyer/internal/x$1;->AFInAppEventParameterName:Lcom/appsflyer/internal/x$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 28
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onLvlResult"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 29
    aget-object p1, p3, v1

    if-eqz p1, :cond_0

    .line 30
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const/4 p2, 0x1

    .line 33
    aget-object v1, p3, p2

    if-eqz v1, :cond_1

    .line 34
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p2, v0

    .line 37
    :goto_1
    iget-object p3, p0, Lcom/appsflyer/internal/x$1;->AFInAppEventParameterName:Lcom/appsflyer/internal/x$a;

    if-eqz p3, :cond_4

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 39
    iget-object p3, p0, Lcom/appsflyer/internal/x$1;->AFInAppEventParameterName:Lcom/appsflyer/internal/x$a;

    invoke-interface {p3, p1, p2}, Lcom/appsflyer/internal/x$a;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    if-nez p2, :cond_3

    .line 41
    iget-object p1, p0, Lcom/appsflyer/internal/x$1;->AFInAppEventParameterName:Lcom/appsflyer/internal/x$a;

    const-string p2, "onLvlResult with error"

    new-instance p3, Ljava/lang/Exception;

    const-string v1, "AFLVL Invalid signature"

    invoke-direct {p3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2, p3}, Lcom/appsflyer/internal/x$a;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 43
    :cond_3
    iget-object p1, p0, Lcom/appsflyer/internal/x$1;->AFInAppEventParameterName:Lcom/appsflyer/internal/x$a;

    const-string p2, "onLvlResult with error"

    new-instance p3, Ljava/lang/Exception;

    const-string v1, "AFLVL Invalid signedData"

    invoke-direct {p3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2, p3}, Lcom/appsflyer/internal/x$a;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_4
    const-string p1, "onLvlResult invocation succeeded, but listener is null"

    .line 46
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    goto :goto_2

    .line 48
    :cond_5
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onLvlFailure"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 49
    iget-object p1, p0, Lcom/appsflyer/internal/x$1;->AFInAppEventParameterName:Lcom/appsflyer/internal/x$a;

    if-eqz p1, :cond_7

    .line 50
    aget-object p1, p3, v1

    if-eqz p1, :cond_6

    .line 51
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Exception;

    .line 52
    iget-object p2, p0, Lcom/appsflyer/internal/x$1;->AFInAppEventParameterName:Lcom/appsflyer/internal/x$a;

    const-string p3, "onLvlFailure with exception"

    invoke-interface {p2, p3, p1}, Lcom/appsflyer/internal/x$a;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 54
    :cond_6
    iget-object p1, p0, Lcom/appsflyer/internal/x$1;->AFInAppEventParameterName:Lcom/appsflyer/internal/x$a;

    const-string p2, "onLvlFailure"

    new-instance p3, Ljava/lang/Exception;

    const-string v1, "unknown"

    invoke-direct {p3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2, p3}, Lcom/appsflyer/internal/x$a;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_7
    const-string p1, "onLvlFailure: listener is null"

    .line 57
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    goto :goto_2

    .line 61
    :cond_8
    iget-object p1, p0, Lcom/appsflyer/internal/x$1;->AFInAppEventParameterName:Lcom/appsflyer/internal/x$a;

    if-eqz p1, :cond_9

    .line 62
    iget-object p1, p0, Lcom/appsflyer/internal/x$1;->AFInAppEventParameterName:Lcom/appsflyer/internal/x$a;

    const-string p2, "lvlInvocation failed"

    new-instance p3, Ljava/lang/Exception;

    const-string v1, "com.appsflyer.lvl.AppsFlyerLVL$resultListener invocation failed"

    invoke-direct {p3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2, p3}, Lcom/appsflyer/internal/x$a;->AFInAppEventType(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_9
    :goto_2
    return-object v0
.end method
