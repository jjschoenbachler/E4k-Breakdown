.class public final enum Lcom/ironsource/mediationsdk/a/b$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/a/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/mediationsdk/a/b$a;

.field public static final enum b:Lcom/ironsource/mediationsdk/a/b$a;

.field public static final enum c:Lcom/ironsource/mediationsdk/a/b$a;

.field public static final enum d:Lcom/ironsource/mediationsdk/a/b$a;

.field public static final enum e:Lcom/ironsource/mediationsdk/a/b$a;

.field private static final synthetic g:[Lcom/ironsource/mediationsdk/a/b$a;


# instance fields
.field f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/ironsource/mediationsdk/a/b$a;

    const-string v1, "NOT_SUPPORTED"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/a/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/a/b$a;->a:Lcom/ironsource/mediationsdk/a/b$a;

    new-instance v0, Lcom/ironsource/mediationsdk/a/b$a;

    const-string v1, "OFFERWALL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/ironsource/mediationsdk/a/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/a/b$a;->b:Lcom/ironsource/mediationsdk/a/b$a;

    new-instance v0, Lcom/ironsource/mediationsdk/a/b$a;

    const-string v1, "INTERSTITIAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/ironsource/mediationsdk/a/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/a/b$a;->c:Lcom/ironsource/mediationsdk/a/b$a;

    new-instance v0, Lcom/ironsource/mediationsdk/a/b$a;

    const-string v1, "REWARDED_VIDEO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/ironsource/mediationsdk/a/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/a/b$a;->d:Lcom/ironsource/mediationsdk/a/b$a;

    new-instance v0, Lcom/ironsource/mediationsdk/a/b$a;

    const-string v1, "BANNER"

    const/4 v6, 0x4

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lcom/ironsource/mediationsdk/a/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/a/b$a;->e:Lcom/ironsource/mediationsdk/a/b$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ironsource/mediationsdk/a/b$a;

    sget-object v1, Lcom/ironsource/mediationsdk/a/b$a;->a:Lcom/ironsource/mediationsdk/a/b$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/mediationsdk/a/b$a;->b:Lcom/ironsource/mediationsdk/a/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/mediationsdk/a/b$a;->c:Lcom/ironsource/mediationsdk/a/b$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ironsource/mediationsdk/a/b$a;->d:Lcom/ironsource/mediationsdk/a/b$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ironsource/mediationsdk/a/b$a;->e:Lcom/ironsource/mediationsdk/a/b$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ironsource/mediationsdk/a/b$a;->g:[Lcom/ironsource/mediationsdk/a/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ironsource/mediationsdk/a/b$a;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/a/b$a;
    .locals 1

    const-class v0, Lcom/ironsource/mediationsdk/a/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/a/b$a;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/a/b$a;
    .locals 1

    sget-object v0, Lcom/ironsource/mediationsdk/a/b$a;->g:[Lcom/ironsource/mediationsdk/a/b$a;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/a/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/a/b$a;

    return-object v0
.end method
