.class public final enum Lcom/iab/omid/library/applovin/adsession/Owner;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iab/omid/library/applovin/adsession/Owner;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iab/omid/library/applovin/adsession/Owner;

.field public static final enum JAVASCRIPT:Lcom/iab/omid/library/applovin/adsession/Owner;

.field public static final enum NATIVE:Lcom/iab/omid/library/applovin/adsession/Owner;

.field public static final enum NONE:Lcom/iab/omid/library/applovin/adsession/Owner;


# instance fields
.field private final owner:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/iab/omid/library/applovin/adsession/Owner;

    const-string v1, "NATIVE"

    const-string v2, "native"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/iab/omid/library/applovin/adsession/Owner;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/applovin/adsession/Owner;->NATIVE:Lcom/iab/omid/library/applovin/adsession/Owner;

    new-instance v0, Lcom/iab/omid/library/applovin/adsession/Owner;

    const-string v1, "JAVASCRIPT"

    const-string v2, "javascript"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/iab/omid/library/applovin/adsession/Owner;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/applovin/adsession/Owner;->JAVASCRIPT:Lcom/iab/omid/library/applovin/adsession/Owner;

    new-instance v0, Lcom/iab/omid/library/applovin/adsession/Owner;

    const-string v1, "NONE"

    const-string v2, "none"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/iab/omid/library/applovin/adsession/Owner;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/applovin/adsession/Owner;->NONE:Lcom/iab/omid/library/applovin/adsession/Owner;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iab/omid/library/applovin/adsession/Owner;

    sget-object v1, Lcom/iab/omid/library/applovin/adsession/Owner;->NATIVE:Lcom/iab/omid/library/applovin/adsession/Owner;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iab/omid/library/applovin/adsession/Owner;->JAVASCRIPT:Lcom/iab/omid/library/applovin/adsession/Owner;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iab/omid/library/applovin/adsession/Owner;->NONE:Lcom/iab/omid/library/applovin/adsession/Owner;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iab/omid/library/applovin/adsession/Owner;->$VALUES:[Lcom/iab/omid/library/applovin/adsession/Owner;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/iab/omid/library/applovin/adsession/Owner;->owner:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/applovin/adsession/Owner;
    .locals 1

    const-class v0, Lcom/iab/omid/library/applovin/adsession/Owner;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iab/omid/library/applovin/adsession/Owner;

    return-object p0
.end method

.method public static values()[Lcom/iab/omid/library/applovin/adsession/Owner;
    .locals 1

    sget-object v0, Lcom/iab/omid/library/applovin/adsession/Owner;->$VALUES:[Lcom/iab/omid/library/applovin/adsession/Owner;

    invoke-virtual {v0}, [Lcom/iab/omid/library/applovin/adsession/Owner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iab/omid/library/applovin/adsession/Owner;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/applovin/adsession/Owner;->owner:Ljava/lang/String;

    return-object v0
.end method