.class public Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;
.super Ljava/lang/Object;


# instance fields
.field private final creativeType:Lcom/iab/omid/library/ironsrc/adsession/CreativeType;

.field private final impressionOwner:Lcom/iab/omid/library/ironsrc/adsession/Owner;

.field private final impressionType:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

.field private final isolateVerificationScripts:Z

.field private final mediaEventsOwner:Lcom/iab/omid/library/ironsrc/adsession/Owner;


# direct methods
.method private constructor <init>(Lcom/iab/omid/library/ironsrc/adsession/CreativeType;Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;Lcom/iab/omid/library/ironsrc/adsession/Owner;Lcom/iab/omid/library/ironsrc/adsession/Owner;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->creativeType:Lcom/iab/omid/library/ironsrc/adsession/CreativeType;

    iput-object p2, p0, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->impressionType:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    iput-object p3, p0, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->impressionOwner:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    if-nez p4, :cond_0

    sget-object p1, Lcom/iab/omid/library/ironsrc/adsession/Owner;->NONE:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    iput-object p1, p0, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->mediaEventsOwner:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->mediaEventsOwner:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    :goto_0
    iput-boolean p5, p0, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->isolateVerificationScripts:Z

    return-void
.end method

.method public static createAdSessionConfiguration(Lcom/iab/omid/library/ironsrc/adsession/CreativeType;Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;Lcom/iab/omid/library/ironsrc/adsession/Owner;Lcom/iab/omid/library/ironsrc/adsession/Owner;Z)Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;
    .locals 7

    const-string v0, "CreativeType is null"

    invoke-static {p0, v0}, Lcom/iab/omid/library/ironsrc/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ImpressionType is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/ironsrc/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Impression owner is null"

    invoke-static {p2, v0}, Lcom/iab/omid/library/ironsrc/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p0, p1}, Lcom/iab/omid/library/ironsrc/d/e;->a(Lcom/iab/omid/library/ironsrc/adsession/Owner;Lcom/iab/omid/library/ironsrc/adsession/CreativeType;Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;)V

    new-instance v0, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;-><init>(Lcom/iab/omid/library/ironsrc/adsession/CreativeType;Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;Lcom/iab/omid/library/ironsrc/adsession/Owner;Lcom/iab/omid/library/ironsrc/adsession/Owner;Z)V

    return-object v0
.end method


# virtual methods
.method public isNativeImpressionOwner()Z
    .locals 2

    sget-object v0, Lcom/iab/omid/library/ironsrc/adsession/Owner;->NATIVE:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    iget-object v1, p0, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->impressionOwner:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNativeMediaEventsOwner()Z
    .locals 2

    sget-object v0, Lcom/iab/omid/library/ironsrc/adsession/Owner;->NATIVE:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    iget-object v1, p0, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->mediaEventsOwner:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "impressionOwner"

    iget-object v2, p0, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->impressionOwner:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    invoke-static {v0, v1, v2}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "mediaEventsOwner"

    iget-object v2, p0, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->mediaEventsOwner:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    invoke-static {v0, v1, v2}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "creativeType"

    iget-object v2, p0, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->creativeType:Lcom/iab/omid/library/ironsrc/adsession/CreativeType;

    invoke-static {v0, v1, v2}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "impressionType"

    iget-object v2, p0, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->impressionType:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    invoke-static {v0, v1, v2}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "isolateVerificationScripts"

    iget-boolean v2, p0, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->isolateVerificationScripts:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method