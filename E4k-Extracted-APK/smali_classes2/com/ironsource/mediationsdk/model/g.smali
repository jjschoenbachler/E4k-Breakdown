.class public final Lcom/ironsource/mediationsdk/model/g;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/ironsource/mediationsdk/model/o;

.field public b:Lcom/ironsource/mediationsdk/model/h;

.field public c:Lcom/ironsource/mediationsdk/model/i;

.field public d:Lcom/ironsource/mediationsdk/model/e;

.field public e:Lcom/ironsource/sdk/f/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/model/o;Lcom/ironsource/mediationsdk/model/h;Lcom/ironsource/mediationsdk/model/i;Lcom/ironsource/mediationsdk/model/e;Lcom/ironsource/sdk/f/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/g;->a:Lcom/ironsource/mediationsdk/model/o;

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/ironsource/mediationsdk/model/g;->b:Lcom/ironsource/mediationsdk/model/h;

    :cond_1
    if-eqz p3, :cond_2

    iput-object p3, p0, Lcom/ironsource/mediationsdk/model/g;->c:Lcom/ironsource/mediationsdk/model/i;

    :cond_2
    if-eqz p4, :cond_3

    iput-object p4, p0, Lcom/ironsource/mediationsdk/model/g;->d:Lcom/ironsource/mediationsdk/model/e;

    :cond_3
    iput-object p5, p0, Lcom/ironsource/mediationsdk/model/g;->e:Lcom/ironsource/sdk/f/a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/sdk/f/a;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/g;->e:Lcom/ironsource/sdk/f/a;

    return-object v0
.end method
