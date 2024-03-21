.class public final enum Lcom/applovin/impl/sdk/ad/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/applovin/impl/sdk/ad/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/applovin/impl/sdk/ad/b;

.field public static final enum b:Lcom/applovin/impl/sdk/ad/b;

.field public static final enum c:Lcom/applovin/impl/sdk/ad/b;

.field public static final enum d:Lcom/applovin/impl/sdk/ad/b;

.field public static final enum e:Lcom/applovin/impl/sdk/ad/b;

.field public static final enum f:Lcom/applovin/impl/sdk/ad/b;

.field private static final synthetic h:[Lcom/applovin/impl/sdk/ad/b;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/applovin/impl/sdk/ad/b;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/applovin/impl/sdk/ad/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/impl/sdk/ad/b;->a:Lcom/applovin/impl/sdk/ad/b;

    new-instance v0, Lcom/applovin/impl/sdk/ad/b;

    const-string v1, "APPLOVIN_PRIMARY_ZONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/applovin/impl/sdk/ad/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/impl/sdk/ad/b;->b:Lcom/applovin/impl/sdk/ad/b;

    new-instance v0, Lcom/applovin/impl/sdk/ad/b;

    const-string v1, "APPLOVIN_CUSTOM_ZONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/applovin/impl/sdk/ad/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/impl/sdk/ad/b;->c:Lcom/applovin/impl/sdk/ad/b;

    new-instance v0, Lcom/applovin/impl/sdk/ad/b;

    const-string v1, "APPLOVIN_MULTIZONE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/applovin/impl/sdk/ad/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/impl/sdk/ad/b;->d:Lcom/applovin/impl/sdk/ad/b;

    new-instance v0, Lcom/applovin/impl/sdk/ad/b;

    const-string v1, "REGULAR_AD_TOKEN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/applovin/impl/sdk/ad/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/impl/sdk/ad/b;->e:Lcom/applovin/impl/sdk/ad/b;

    new-instance v0, Lcom/applovin/impl/sdk/ad/b;

    const-string v1, "DECODED_AD_TOKEN_JSON"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/applovin/impl/sdk/ad/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/applovin/impl/sdk/ad/b;->f:Lcom/applovin/impl/sdk/ad/b;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/applovin/impl/sdk/ad/b;

    sget-object v1, Lcom/applovin/impl/sdk/ad/b;->a:Lcom/applovin/impl/sdk/ad/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/impl/sdk/ad/b;->b:Lcom/applovin/impl/sdk/ad/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/applovin/impl/sdk/ad/b;->c:Lcom/applovin/impl/sdk/ad/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/applovin/impl/sdk/ad/b;->d:Lcom/applovin/impl/sdk/ad/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/applovin/impl/sdk/ad/b;->e:Lcom/applovin/impl/sdk/ad/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/applovin/impl/sdk/ad/b;->f:Lcom/applovin/impl/sdk/ad/b;

    aput-object v1, v0, v7

    sput-object v0, Lcom/applovin/impl/sdk/ad/b;->h:[Lcom/applovin/impl/sdk/ad/b;

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

    iput p3, p0, Lcom/applovin/impl/sdk/ad/b;->g:I

    return-void
.end method

.method public static a(I)Lcom/applovin/impl/sdk/ad/b;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/applovin/impl/sdk/ad/b;->b:Lcom/applovin/impl/sdk/ad/b;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/applovin/impl/sdk/ad/b;->c:Lcom/applovin/impl/sdk/ad/b;

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/applovin/impl/sdk/ad/b;->d:Lcom/applovin/impl/sdk/ad/b;

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/applovin/impl/sdk/ad/b;->e:Lcom/applovin/impl/sdk/ad/b;

    return-object p0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/applovin/impl/sdk/ad/b;->f:Lcom/applovin/impl/sdk/ad/b;

    return-object p0

    :cond_4
    sget-object p0, Lcom/applovin/impl/sdk/ad/b;->a:Lcom/applovin/impl/sdk/ad/b;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/b;
    .locals 1

    const-class v0, Lcom/applovin/impl/sdk/ad/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/sdk/ad/b;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/sdk/ad/b;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/ad/b;->h:[Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, [Lcom/applovin/impl/sdk/ad/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/sdk/ad/b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/ad/b;->g:I

    return v0
.end method
