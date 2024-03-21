.class Lcom/myflashlabs/richwebview/CustomTabActivityHelper$1;
.super Landroidx/browser/customtabs/CustomTabsCallback;
.source "CustomTabActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->getSession()Landroidx/browser/customtabs/CustomTabsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/myflashlabs/richwebview/CustomTabActivityHelper;


# direct methods
.method constructor <init>(Lcom/myflashlabs/richwebview/CustomTabActivityHelper;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper$1;->this$0:Lcom/myflashlabs/richwebview/CustomTabActivityHelper;

    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 1

    .line 168
    sget-object p2, Lcom/myflashlabs/richwebview/ExConst;->EMBEDDED_BROWSER_NAVIGATION_EVENT:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/myflashlabs/richwebview/MyExtension;->toDispatch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
