.class public final enum Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;

.field public static final enum HTML:Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;

.field public static final enum JAVASCRIPT:Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;

.field public static final enum NATIVE:Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;


# instance fields
.field private final typeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;

    const-string v1, "HTML"

    const-string v2, "html"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;->HTML:Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;

    new-instance v0, Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;

    const-string v1, "NATIVE"

    const-string v2, "native"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;->NATIVE:Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;

    new-instance v0, Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;

    const-string v1, "JAVASCRIPT"

    const-string v2, "javascript"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;->JAVASCRIPT:Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;

    sget-object v1, Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;->HTML:Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;->NATIVE:Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;->JAVASCRIPT:Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;->$VALUES:[Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;

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

    iput-object p3, p0, Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;->typeString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;
    .locals 1

    const-class v0, Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;

    return-object p0
.end method

.method public static values()[Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;
    .locals 1

    sget-object v0, Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;->$VALUES:[Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;

    invoke-virtual {v0}, [Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/applovin/adsession/AdSessionContextType;->typeString:Ljava/lang/String;

    return-object v0
.end method
