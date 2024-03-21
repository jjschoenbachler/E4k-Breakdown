.class public final Lcom/ironsource/mediationsdk/model/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/model/k$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Lcom/ironsource/mediationsdk/model/l;

.field public e:I

.field public f:I


# direct methods
.method private constructor <init>(ZZZLcom/ironsource/mediationsdk/model/l;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/model/k;->a:Z

    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/model/k;->b:Z

    iput-boolean p3, p0, Lcom/ironsource/mediationsdk/model/k;->c:Z

    iput-object p4, p0, Lcom/ironsource/mediationsdk/model/k;->d:Lcom/ironsource/mediationsdk/model/l;

    iput p5, p0, Lcom/ironsource/mediationsdk/model/k;->e:I

    iput p6, p0, Lcom/ironsource/mediationsdk/model/k;->f:I

    return-void
.end method

.method synthetic constructor <init>(ZZZLcom/ironsource/mediationsdk/model/l;IIB)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/ironsource/mediationsdk/model/k;-><init>(ZZZLcom/ironsource/mediationsdk/model/l;II)V

    return-void
.end method
