.class public final Lcom/appsflyer/internal/af;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/af$b;
    }
.end annotation


# static fields
.field public static AFInAppEventType:J = 0x1f4L
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static AFKeystoreWrapper:Lcom/appsflyer/internal/af$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static valueOf(Landroid/content/Context;Lcom/appsflyer/internal/af$b;)V
    .locals 1

    .line 24
    sput-object p1, Lcom/appsflyer/internal/af;->AFKeystoreWrapper:Lcom/appsflyer/internal/af$b;

    .line 25
    new-instance v0, Lcom/appsflyer/internal/af$5;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/af$5;-><init>(Lcom/appsflyer/internal/af$b;)V

    .line 101
    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    .line 103
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
