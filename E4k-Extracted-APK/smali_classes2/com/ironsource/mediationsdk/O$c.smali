.class abstract Lcom/ironsource/mediationsdk/O$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "c"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field protected c:Lcom/ironsource/mediationsdk/J$a;

.field private synthetic d:Lcom/ironsource/mediationsdk/O;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/O;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/O$c;->d:Lcom/ironsource/mediationsdk/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/O$c;->a:Z

    new-instance p1, Lcom/ironsource/mediationsdk/O$c$1;

    invoke-direct {p1, p0}, Lcom/ironsource/mediationsdk/O$c$1;-><init>(Lcom/ironsource/mediationsdk/O$c;)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/O$c;->c:Lcom/ironsource/mediationsdk/J$a;

    return-void
.end method
