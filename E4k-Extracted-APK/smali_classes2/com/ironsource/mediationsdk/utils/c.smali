.class public final Lcom/ironsource/mediationsdk/utils/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J

.field public m:Z

.field public n:Z

.field public o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Z

.field public q:Z

.field public r:I

.field public s:Z


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/c;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/c;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/c;->a:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/ironsource/mediationsdk/utils/c;->i:J

    iput-wide v1, p0, Lcom/ironsource/mediationsdk/utils/c;->j:J

    iput-wide v1, p0, Lcom/ironsource/mediationsdk/utils/c;->k:J

    iput-wide v1, p0, Lcom/ironsource/mediationsdk/utils/c;->l:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/utils/c;->m:Z

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/utils/c;->n:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/utils/c;->o:Ljava/util/ArrayList;

    iput v0, p0, Lcom/ironsource/mediationsdk/utils/c;->g:I

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/c;->p:Z

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/c;->q:Z

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/c;->r:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IIJZJJJJZZIZZZIZ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/ironsource/mediationsdk/utils/c;->c:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/ironsource/mediationsdk/utils/c;->d:Ljava/lang/String;

    move v1, p3

    iput v1, v0, Lcom/ironsource/mediationsdk/utils/c;->e:I

    move v1, p4

    iput v1, v0, Lcom/ironsource/mediationsdk/utils/c;->f:I

    move-wide v1, p5

    iput-wide v1, v0, Lcom/ironsource/mediationsdk/utils/c;->h:J

    move v1, p7

    iput-boolean v1, v0, Lcom/ironsource/mediationsdk/utils/c;->a:Z

    move/from16 v1, p21

    iput-boolean v1, v0, Lcom/ironsource/mediationsdk/utils/c;->b:Z

    move-wide v1, p8

    iput-wide v1, v0, Lcom/ironsource/mediationsdk/utils/c;->i:J

    move-wide v1, p10

    iput-wide v1, v0, Lcom/ironsource/mediationsdk/utils/c;->j:J

    move-wide v1, p12

    iput-wide v1, v0, Lcom/ironsource/mediationsdk/utils/c;->k:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/ironsource/mediationsdk/utils/c;->l:J

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/ironsource/mediationsdk/utils/c;->m:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/ironsource/mediationsdk/utils/c;->n:Z

    move/from16 v1, p18

    iput v1, v0, Lcom/ironsource/mediationsdk/utils/c;->g:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ironsource/mediationsdk/utils/c;->o:Ljava/util/ArrayList;

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/ironsource/mediationsdk/utils/c;->p:Z

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/ironsource/mediationsdk/utils/c;->q:Z

    move/from16 v1, p22

    iput v1, v0, Lcom/ironsource/mediationsdk/utils/c;->r:I

    move/from16 v1, p23

    iput-boolean v1, v0, Lcom/ironsource/mediationsdk/utils/c;->s:Z

    return-void
.end method
