.class Lcom/applovin/impl/sdk/z$1;
.super Lcom/applovin/impl/sdk/utils/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/z;-><init>(Lcom/applovin/impl/sdk/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/z;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/z;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/z$1;->a:Lcom/applovin/impl/sdk/z;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/utils/a;->onActivityResumed(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/z$1;->a:Lcom/applovin/impl/sdk/z;

    invoke-static {p1}, Lcom/applovin/impl/sdk/z;->a(Lcom/applovin/impl/sdk/z;)V

    return-void
.end method
