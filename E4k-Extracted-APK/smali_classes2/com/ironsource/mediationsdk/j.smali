.class public final Lcom/ironsource/mediationsdk/j;
.super Ljava/lang/Object;


# static fields
.field private static final b:Lcom/ironsource/mediationsdk/j;


# instance fields
.field a:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ironsource/mediationsdk/j;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/j;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/j;->b:Lcom/ironsource/mediationsdk/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/j;->a:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    return-void
.end method

.method public static a()Lcom/ironsource/mediationsdk/j;
    .locals 1

    sget-object v0, Lcom/ironsource/mediationsdk/j;->b:Lcom/ironsource/mediationsdk/j;

    return-object v0
.end method

.method static synthetic a(Lcom/ironsource/mediationsdk/j;)Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/mediationsdk/j;->a:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/j;->a:Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyBannerListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/j$1;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/j$1;-><init>(Lcom/ironsource/mediationsdk/j;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
