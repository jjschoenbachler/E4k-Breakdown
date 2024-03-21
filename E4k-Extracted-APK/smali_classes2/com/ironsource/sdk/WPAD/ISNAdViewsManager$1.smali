.class Lcom/ironsource/sdk/WPAD/ISNAdViewsManager$1;
.super Ljava/lang/Object;
.source "ISNAdViewsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->loadWithUrl(Lcom/ironsource/sdk/ISNAdView/ISNAdViewDelegate;Lorg/json/JSONObject;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$adViewId:Ljava/lang/String;

.field final synthetic val$webPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager$1;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;

    iput-object p2, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager$1;->val$webPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    iput-object p3, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager$1;->val$adViewId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 84
    new-instance v0, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;

    iget-object v1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager$1;->val$webPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    iget-object v2, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/sdk/WPAD/ISNAdViewContainer;-><init>(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;Landroid/content/Context;)V

    .line 85
    iget-object v1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager$1;->this$0:Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;

    invoke-static {v1}, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->access$000(Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager$1;->val$adViewId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
