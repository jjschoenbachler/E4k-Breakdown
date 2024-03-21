.class Lcom/applovin/impl/mediation/c/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/c/e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/mediation/c/e;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/mediation/c/e$1;->a:Lcom/applovin/impl/mediation/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "MAX SDK Not Initialized In Test Mode"

    const-string v1, "Test ads may not load. Please force close and restart the app if you experience issues."

    iget-object v2, p0, Lcom/applovin/impl/mediation/c/e$1;->a:Lcom/applovin/impl/mediation/c/e;

    invoke-static {v2}, Lcom/applovin/impl/mediation/c/e;->a(Lcom/applovin/impl/mediation/c/e;)Lcom/applovin/impl/sdk/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/n;->an()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/Utils;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
