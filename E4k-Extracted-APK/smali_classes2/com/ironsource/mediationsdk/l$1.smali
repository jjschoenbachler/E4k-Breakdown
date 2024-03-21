.class final Lcom/ironsource/mediationsdk/l$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/l;->a(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field private synthetic b:Lcom/ironsource/mediationsdk/logger/IronSourceError;

.field private synthetic c:Z

.field private synthetic d:Lcom/ironsource/mediationsdk/l;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/l;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/l$1;->d:Lcom/ironsource/mediationsdk/l;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/l$1;->a:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iput-object p3, p0, Lcom/ironsource/mediationsdk/l$1;->b:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    iput-boolean p4, p0, Lcom/ironsource/mediationsdk/l$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/l$1;->d:Lcom/ironsource/mediationsdk/l;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/l$1;->a:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/l$1;->b:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/l$1;->c:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/l;->b(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    return-void
.end method
