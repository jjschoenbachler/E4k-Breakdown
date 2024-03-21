.class public final Lcom/ironsource/mediationsdk/utils/o;
.super Ljava/lang/Object;


# static fields
.field private static f:Lcom/ironsource/mediationsdk/utils/o;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/ironsource/sdk/a/e;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/utils/o;->a:I

    iput v0, p0, Lcom/ironsource/mediationsdk/utils/o;->b:I

    iput v0, p0, Lcom/ironsource/mediationsdk/utils/o;->c:I

    iput v0, p0, Lcom/ironsource/mediationsdk/utils/o;->d:I

    new-instance v0, Lcom/ironsource/sdk/a/e;

    invoke-direct {v0}, Lcom/ironsource/sdk/a/e;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/o;->e:Lcom/ironsource/sdk/a/e;

    iget v0, p0, Lcom/ironsource/mediationsdk/utils/o;->a:I

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/utils/o;->d(I)V

    iget v0, p0, Lcom/ironsource/mediationsdk/utils/o;->b:I

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/utils/o;->e(I)V

    iget v0, p0, Lcom/ironsource/mediationsdk/utils/o;->d:I

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/utils/o;->f(I)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/ironsource/mediationsdk/utils/o;
    .locals 2

    const-class v0, Lcom/ironsource/mediationsdk/utils/o;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ironsource/mediationsdk/utils/o;->f:Lcom/ironsource/mediationsdk/utils/o;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ironsource/mediationsdk/utils/o;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/utils/o;-><init>()V

    sput-object v1, Lcom/ironsource/mediationsdk/utils/o;->f:Lcom/ironsource/mediationsdk/utils/o;

    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/utils/o;->f:Lcom/ironsource/mediationsdk/utils/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static c(I)Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private d(I)V
    .locals 1

    iput p1, p0, Lcom/ironsource/mediationsdk/utils/o;->a:I

    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/o;->e:Lcom/ironsource/sdk/a/e;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/a/e;->b(I)V

    return-void
.end method

.method private e(I)V
    .locals 1

    iput p1, p0, Lcom/ironsource/mediationsdk/utils/o;->b:I

    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/o;->e:Lcom/ironsource/sdk/a/e;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/a/e;->a(I)V

    return-void
.end method

.method private f(I)V
    .locals 1

    iput p1, p0, Lcom/ironsource/mediationsdk/utils/o;->d:I

    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/o;->e:Lcom/ironsource/sdk/a/e;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/a/e;->c(I)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/o;->c(I)Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/utils/o;->a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/utils/o$1;->a:[I

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget p1, p0, Lcom/ironsource/mediationsdk/utils/o;->d:I

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/o;->f(I)V

    goto :goto_0

    :pswitch_1
    iget p1, p0, Lcom/ironsource/mediationsdk/utils/o;->b:I

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/o;->e(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_2
    :try_start_1
    iget p1, p0, Lcom/ironsource/mediationsdk/utils/o;->a:I

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/o;->d(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_3
    :try_start_2
    iget p1, p0, Lcom/ironsource/mediationsdk/utils/o;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ironsource/mediationsdk/utils/o;->c:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized b(I)I
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/o;->c(I)Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/utils/o;->b(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I
    .locals 2

    monitor-enter p0

    const/4 v0, -0x1

    if-nez p1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/ironsource/mediationsdk/utils/o$1;->a:[I

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->ordinal()I

    move-result p1

    aget p1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch p1, :pswitch_data_0

    monitor-exit p0

    return v0

    :pswitch_0
    :try_start_1
    iget p1, p0, Lcom/ironsource/mediationsdk/utils/o;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :pswitch_1
    :try_start_2
    iget p1, p0, Lcom/ironsource/mediationsdk/utils/o;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :pswitch_2
    :try_start_3
    iget p1, p0, Lcom/ironsource/mediationsdk/utils/o;->a:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    :pswitch_3
    :try_start_4
    iget p1, p0, Lcom/ironsource/mediationsdk/utils/o;->c:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
