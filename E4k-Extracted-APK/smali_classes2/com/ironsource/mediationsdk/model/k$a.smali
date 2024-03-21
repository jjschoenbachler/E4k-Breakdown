.class public final Lcom/ironsource/mediationsdk/model/k$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/model/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field private b:Z

.field private c:Z

.field private d:Lcom/ironsource/mediationsdk/model/l;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/model/k$a;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/model/k$a;->b:Z

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/model/k$a;->c:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ironsource/mediationsdk/model/k$a;->d:Lcom/ironsource/mediationsdk/model/l;

    iput v0, p0, Lcom/ironsource/mediationsdk/model/k$a;->e:I

    iput v0, p0, Lcom/ironsource/mediationsdk/model/k$a;->f:I

    return-void
.end method


# virtual methods
.method public final a(ZI)Lcom/ironsource/mediationsdk/model/k$a;
    .locals 0

    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/model/k$a;->c:Z

    iput p2, p0, Lcom/ironsource/mediationsdk/model/k$a;->f:I

    return-object p0
.end method

.method public final a(ZLcom/ironsource/mediationsdk/model/l;I)Lcom/ironsource/mediationsdk/model/k$a;
    .locals 0

    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/model/k$a;->b:Z

    if-nez p2, :cond_0

    sget-object p2, Lcom/ironsource/mediationsdk/model/l;->a:Lcom/ironsource/mediationsdk/model/l;

    :cond_0
    iput-object p2, p0, Lcom/ironsource/mediationsdk/model/k$a;->d:Lcom/ironsource/mediationsdk/model/l;

    iput p3, p0, Lcom/ironsource/mediationsdk/model/k$a;->e:I

    return-object p0
.end method

.method public final a()Lcom/ironsource/mediationsdk/model/k;
    .locals 9

    new-instance v8, Lcom/ironsource/mediationsdk/model/k;

    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/model/k$a;->a:Z

    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/model/k$a;->b:Z

    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/model/k$a;->c:Z

    iget-object v4, p0, Lcom/ironsource/mediationsdk/model/k$a;->d:Lcom/ironsource/mediationsdk/model/l;

    iget v5, p0, Lcom/ironsource/mediationsdk/model/k$a;->e:I

    iget v6, p0, Lcom/ironsource/mediationsdk/model/k$a;->f:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/ironsource/mediationsdk/model/k;-><init>(ZZZLcom/ironsource/mediationsdk/model/l;IIB)V

    return-object v8
.end method
