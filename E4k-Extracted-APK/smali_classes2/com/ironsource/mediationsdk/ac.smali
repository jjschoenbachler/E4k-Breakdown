.class public final Lcom/ironsource/mediationsdk/ac;
.super Lcom/ironsource/mediationsdk/sdk/b;


# static fields
.field private static final c:Lcom/ironsource/mediationsdk/ac;


# instance fields
.field public a:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

.field public b:Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ironsource/mediationsdk/ac;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/ac;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/ac;->c:Lcom/ironsource/mediationsdk/ac;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/sdk/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/ac;->a:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    return-void
.end method

.method public static a()Lcom/ironsource/mediationsdk/ac;
    .locals 1

    sget-object v0, Lcom/ironsource/mediationsdk/ac;->c:Lcom/ironsource/mediationsdk/ac;

    return-object v0
.end method

.method static synthetic a(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ac;->f(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/ironsource/mediationsdk/ac;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/mediationsdk/ac;->a:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    return-object p0
.end method

.method static synthetic a(Lcom/ironsource/mediationsdk/ac;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object p0

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic b(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ac;->f(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/ironsource/mediationsdk/ac;)Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/mediationsdk/ac;->b:Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    return-object p0
.end method

.method static synthetic c(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ac;->f(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ac;->f(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ac;->f(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ac;->f(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ac;->f(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ac;->f(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ac;->f(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ac;->f(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ac;->f(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ac;->f(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ac;->f(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/ac;->f(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ac;->a:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/ac$14;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/ac$14;-><init>(Lcom/ironsource/mediationsdk/ac;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ac;->b:Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/ac$15;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/ac$15;-><init>(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ac;->a:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ac;->a:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    instance-of v0, v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManualListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/ac$12;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/ac$12;-><init>(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ac;->b:Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ac;->b:Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    instance-of v0, v0, Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoManualListener;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/ac$13;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/ac$13;-><init>(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ac;->a:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/ac$7;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/ac$7;-><init>(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ac;->b:Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/ac$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/mediationsdk/ac$8;-><init>(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ac;->a:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/ac$5;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/ac$5;-><init>(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/model/Placement;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ac;->b:Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/ac$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/mediationsdk/ac$6;-><init>(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final a(ZLcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ac;->a:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/ac$18;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/ac$18;-><init>(Lcom/ironsource/mediationsdk/ac;Z)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ac;->b:Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ac;->b:Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    instance-of v0, v0, Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoListener;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/ac$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/mediationsdk/ac$2;-><init>(Lcom/ironsource/mediationsdk/ac;ZLcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ac;->a:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/ac$3;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/ac$3;-><init>(Lcom/ironsource/mediationsdk/ac;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ac;->a:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/ac$16;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/ac$16;-><init>(Lcom/ironsource/mediationsdk/ac;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ac;->b:Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/ac$17;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/ac$17;-><init>(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final b(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ac;->a:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/ac$9;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/ac$9;-><init>(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/model/Placement;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/ac;->b:Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoBaseListener;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/ac$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/mediationsdk/ac$10;-><init>(Lcom/ironsource/mediationsdk/ac;Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ac;->a:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ironsource/environment/e/c;->a:Lcom/ironsource/environment/e/c;

    new-instance v1, Lcom/ironsource/mediationsdk/ac$4;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/ac$4;-><init>(Lcom/ironsource/mediationsdk/ac;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/e/c;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
