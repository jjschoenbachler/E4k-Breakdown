.class public final Lcom/ironsource/mediationsdk/model/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/ironsource/mediationsdk/model/NetworkSettings;

.field public b:Lorg/json/JSONObject;

.field public c:Z

.field public d:I

.field public e:I

.field public f:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/a;->a:Lcom/ironsource/mediationsdk/model/NetworkSettings;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/model/a;->b:Lorg/json/JSONObject;

    const-string p1, "instanceType"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ironsource/mediationsdk/model/a;->d:I

    iget p1, p0, Lcom/ironsource/mediationsdk/model/a;->d:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/model/a;->c:Z

    const-string p1, "maxAdsPerSession"

    const/16 v0, 0x63

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ironsource/mediationsdk/model/a;->e:I

    iput-object p3, p0, Lcom/ironsource/mediationsdk/model/a;->f:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    return-void
.end method
