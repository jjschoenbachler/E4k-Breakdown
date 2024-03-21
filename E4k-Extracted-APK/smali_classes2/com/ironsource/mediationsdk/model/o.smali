.class public final Lcom/ironsource/mediationsdk/model/o;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/mediationsdk/model/Placement;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/ironsource/sdk/g/d;

.field public c:I

.field public d:Z

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:I

.field public k:Lcom/ironsource/mediationsdk/model/Placement;

.field public l:Lcom/ironsource/mediationsdk/utils/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/o;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/ironsource/sdk/g/d;

    invoke-direct {v0}, Lcom/ironsource/sdk/g/d;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/o;->b:Lcom/ironsource/sdk/g/d;

    return-void
.end method

.method public constructor <init>(IZIIILcom/ironsource/sdk/g/d;Lcom/ironsource/mediationsdk/utils/c;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/o;->a:Ljava/util/ArrayList;

    iput p1, p0, Lcom/ironsource/mediationsdk/model/o;->c:I

    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/model/o;->d:Z

    iput p3, p0, Lcom/ironsource/mediationsdk/model/o;->e:I

    iput p4, p0, Lcom/ironsource/mediationsdk/model/o;->h:I

    iput-object p6, p0, Lcom/ironsource/mediationsdk/model/o;->b:Lcom/ironsource/sdk/g/d;

    iput p5, p0, Lcom/ironsource/mediationsdk/model/o;->i:I

    iput-object p7, p0, Lcom/ironsource/mediationsdk/model/o;->l:Lcom/ironsource/mediationsdk/utils/c;

    iput p8, p0, Lcom/ironsource/mediationsdk/model/o;->j:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/mediationsdk/model/Placement;
    .locals 4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/model/Placement;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Placement;->isDefault()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/o;->k:Lcom/ironsource/mediationsdk/model/Placement;

    return-object v0
.end method
