.class public final enum Lcom/iab/omid/library/ironsrc/adsession/media/Position;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iab/omid/library/ironsrc/adsession/media/Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iab/omid/library/ironsrc/adsession/media/Position;

.field public static final enum MIDROLL:Lcom/iab/omid/library/ironsrc/adsession/media/Position;

.field public static final enum POSTROLL:Lcom/iab/omid/library/ironsrc/adsession/media/Position;

.field public static final enum PREROLL:Lcom/iab/omid/library/ironsrc/adsession/media/Position;

.field public static final enum STANDALONE:Lcom/iab/omid/library/ironsrc/adsession/media/Position;


# instance fields
.field private final position:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/iab/omid/library/ironsrc/adsession/media/Position;

    const-string v1, "PREROLL"

    const-string v2, "preroll"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/iab/omid/library/ironsrc/adsession/media/Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/ironsrc/adsession/media/Position;->PREROLL:Lcom/iab/omid/library/ironsrc/adsession/media/Position;

    new-instance v0, Lcom/iab/omid/library/ironsrc/adsession/media/Position;

    const-string v1, "MIDROLL"

    const-string v2, "midroll"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/iab/omid/library/ironsrc/adsession/media/Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/ironsrc/adsession/media/Position;->MIDROLL:Lcom/iab/omid/library/ironsrc/adsession/media/Position;

    new-instance v0, Lcom/iab/omid/library/ironsrc/adsession/media/Position;

    const-string v1, "POSTROLL"

    const-string v2, "postroll"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/iab/omid/library/ironsrc/adsession/media/Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/ironsrc/adsession/media/Position;->POSTROLL:Lcom/iab/omid/library/ironsrc/adsession/media/Position;

    new-instance v0, Lcom/iab/omid/library/ironsrc/adsession/media/Position;

    const-string v1, "STANDALONE"

    const-string v2, "standalone"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/iab/omid/library/ironsrc/adsession/media/Position;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iab/omid/library/ironsrc/adsession/media/Position;->STANDALONE:Lcom/iab/omid/library/ironsrc/adsession/media/Position;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iab/omid/library/ironsrc/adsession/media/Position;

    sget-object v1, Lcom/iab/omid/library/ironsrc/adsession/media/Position;->PREROLL:Lcom/iab/omid/library/ironsrc/adsession/media/Position;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iab/omid/library/ironsrc/adsession/media/Position;->MIDROLL:Lcom/iab/omid/library/ironsrc/adsession/media/Position;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iab/omid/library/ironsrc/adsession/media/Position;->POSTROLL:Lcom/iab/omid/library/ironsrc/adsession/media/Position;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iab/omid/library/ironsrc/adsession/media/Position;->STANDALONE:Lcom/iab/omid/library/ironsrc/adsession/media/Position;

    aput-object v1, v0, v6

    sput-object v0, Lcom/iab/omid/library/ironsrc/adsession/media/Position;->$VALUES:[Lcom/iab/omid/library/ironsrc/adsession/media/Position;

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

    iput-object p3, p0, Lcom/iab/omid/library/ironsrc/adsession/media/Position;->position:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/ironsrc/adsession/media/Position;
    .locals 1

    const-class v0, Lcom/iab/omid/library/ironsrc/adsession/media/Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iab/omid/library/ironsrc/adsession/media/Position;

    return-object p0
.end method

.method public static values()[Lcom/iab/omid/library/ironsrc/adsession/media/Position;
    .locals 1

    sget-object v0, Lcom/iab/omid/library/ironsrc/adsession/media/Position;->$VALUES:[Lcom/iab/omid/library/ironsrc/adsession/media/Position;

    invoke-virtual {v0}, [Lcom/iab/omid/library/ironsrc/adsession/media/Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iab/omid/library/ironsrc/adsession/media/Position;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/adsession/media/Position;->position:Ljava/lang/String;

    return-object v0
.end method