.class public final enum Lcom/ironsource/mediationsdk/b$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/mediationsdk/b$a;

.field public static final enum b:Lcom/ironsource/mediationsdk/b$a;

.field public static final enum c:Lcom/ironsource/mediationsdk/b$a;

.field public static final enum d:Lcom/ironsource/mediationsdk/b$a;

.field public static final enum e:Lcom/ironsource/mediationsdk/b$a;

.field public static final enum f:Lcom/ironsource/mediationsdk/b$a;

.field public static final enum g:Lcom/ironsource/mediationsdk/b$a;

.field public static final enum h:Lcom/ironsource/mediationsdk/b$a;

.field public static final enum i:Lcom/ironsource/mediationsdk/b$a;

.field public static final enum j:Lcom/ironsource/mediationsdk/b$a;

.field public static final enum k:Lcom/ironsource/mediationsdk/b$a;

.field private static final synthetic m:[Lcom/ironsource/mediationsdk/b$a;


# instance fields
.field public l:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/ironsource/mediationsdk/b$a;

    const-string v1, "NOT_INITIATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ironsource/mediationsdk/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/b$a;->a:Lcom/ironsource/mediationsdk/b$a;

    new-instance v0, Lcom/ironsource/mediationsdk/b$a;

    const-string v1, "INIT_FAILED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/ironsource/mediationsdk/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/b$a;->b:Lcom/ironsource/mediationsdk/b$a;

    new-instance v0, Lcom/ironsource/mediationsdk/b$a;

    const-string v1, "INITIATED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/ironsource/mediationsdk/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/b$a;->c:Lcom/ironsource/mediationsdk/b$a;

    new-instance v0, Lcom/ironsource/mediationsdk/b$a;

    const-string v1, "AVAILABLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/ironsource/mediationsdk/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/b$a;->d:Lcom/ironsource/mediationsdk/b$a;

    new-instance v0, Lcom/ironsource/mediationsdk/b$a;

    const-string v1, "NOT_AVAILABLE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/ironsource/mediationsdk/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/b$a;->e:Lcom/ironsource/mediationsdk/b$a;

    new-instance v0, Lcom/ironsource/mediationsdk/b$a;

    const-string v1, "EXHAUSTED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/ironsource/mediationsdk/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/b$a;->f:Lcom/ironsource/mediationsdk/b$a;

    new-instance v0, Lcom/ironsource/mediationsdk/b$a;

    const-string v1, "CAPPED_PER_SESSION"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/ironsource/mediationsdk/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/b$a;->g:Lcom/ironsource/mediationsdk/b$a;

    new-instance v0, Lcom/ironsource/mediationsdk/b$a;

    const-string v1, "INIT_PENDING"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/ironsource/mediationsdk/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/b$a;->h:Lcom/ironsource/mediationsdk/b$a;

    new-instance v0, Lcom/ironsource/mediationsdk/b$a;

    const-string v1, "LOAD_PENDING"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/ironsource/mediationsdk/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/b$a;->i:Lcom/ironsource/mediationsdk/b$a;

    new-instance v0, Lcom/ironsource/mediationsdk/b$a;

    const-string v1, "CAPPED_PER_DAY"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/ironsource/mediationsdk/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/b$a;->j:Lcom/ironsource/mediationsdk/b$a;

    new-instance v0, Lcom/ironsource/mediationsdk/b$a;

    const-string v1, "NEEDS_RELOAD"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/ironsource/mediationsdk/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/b$a;->k:Lcom/ironsource/mediationsdk/b$a;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/ironsource/mediationsdk/b$a;

    sget-object v1, Lcom/ironsource/mediationsdk/b$a;->a:Lcom/ironsource/mediationsdk/b$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/mediationsdk/b$a;->b:Lcom/ironsource/mediationsdk/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/mediationsdk/b$a;->c:Lcom/ironsource/mediationsdk/b$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ironsource/mediationsdk/b$a;->d:Lcom/ironsource/mediationsdk/b$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ironsource/mediationsdk/b$a;->e:Lcom/ironsource/mediationsdk/b$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ironsource/mediationsdk/b$a;->f:Lcom/ironsource/mediationsdk/b$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ironsource/mediationsdk/b$a;->g:Lcom/ironsource/mediationsdk/b$a;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ironsource/mediationsdk/b$a;->h:Lcom/ironsource/mediationsdk/b$a;

    aput-object v1, v0, v9

    sget-object v1, Lcom/ironsource/mediationsdk/b$a;->i:Lcom/ironsource/mediationsdk/b$a;

    aput-object v1, v0, v10

    sget-object v1, Lcom/ironsource/mediationsdk/b$a;->j:Lcom/ironsource/mediationsdk/b$a;

    aput-object v1, v0, v11

    sget-object v1, Lcom/ironsource/mediationsdk/b$a;->k:Lcom/ironsource/mediationsdk/b$a;

    aput-object v1, v0, v12

    sput-object v0, Lcom/ironsource/mediationsdk/b$a;->m:[Lcom/ironsource/mediationsdk/b$a;

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

    iput p3, p0, Lcom/ironsource/mediationsdk/b$a;->l:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/b$a;
    .locals 1

    const-class v0, Lcom/ironsource/mediationsdk/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/b$a;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/b$a;
    .locals 1

    sget-object v0, Lcom/ironsource/mediationsdk/b$a;->m:[Lcom/ironsource/mediationsdk/b$a;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/b$a;

    return-object v0
.end method
