.class public Lcom/applovin/impl/sdk/nativeAd/e;
.super Lcom/applovin/impl/sdk/e/a;

# interfaces
.implements Lcom/applovin/impl/sdk/nativeAd/a$a;
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# instance fields
.field private final a:Lorg/json/JSONObject;

.field private final c:Lorg/json/JSONObject;

.field private final d:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/net/Uri;

.field private j:Landroid/net/Uri;

.field private k:Landroid/net/Uri;

.field private l:Landroid/net/Uri;

.field private m:Lcom/applovin/impl/a/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private n:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/network/i;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/network/i;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/network/i;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/network/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;Lcom/applovin/impl/sdk/n;)V
    .locals 1

    const-string v0, "TaskRenderNativeAd"

    invoke-direct {p0, v0, p4}, Lcom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/n;)V

    const-string p4, ""

    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/e;->e:Ljava/lang/String;

    const-string p4, ""

    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/e;->f:Ljava/lang/String;

    const-string p4, ""

    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    const-string p4, ""

    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/e;->h:Ljava/lang/String;

    const/4 p4, 0x0

    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/e;->i:Landroid/net/Uri;

    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/e;->j:Landroid/net/Uri;

    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/e;->k:Landroid/net/Uri;

    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/e;->l:Landroid/net/Uri;

    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/e;->n:Landroid/net/Uri;

    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/e;->o:Landroid/net/Uri;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/e;->p:Ljava/util/List;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/e;->r:Ljava/util/List;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/e;->s:Ljava/util/List;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/e;->t:Ljava/util/List;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/applovin/impl/sdk/nativeAd/e;->u:Ljava/util/List;

    iput-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/e;->c:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/applovin/impl/sdk/nativeAd/e;->d:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;

    return-void
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->a:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->shallowCopy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->c:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->shallowCopy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    iget-object v3, p0, Lcom/applovin/impl/sdk/nativeAd/e;->b:Lcom/applovin/impl/sdk/n;

    invoke-direct {v2, v0, v1, v3}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/n;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setTitle(Ljava/lang/String;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setAdvertiser(Ljava/lang/String;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setBody(Ljava/lang/String;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setCallToAction(Ljava/lang/String;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->i:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setIconUri(Landroid/net/Uri;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->j:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setMainImageUri(Landroid/net/Uri;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->k:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setPrivacyIconUri(Landroid/net/Uri;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->m:Lcom/applovin/impl/a/a;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setVastAd(Lcom/applovin/impl/a/a;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->l:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setPrivacyDestinationUri(Landroid/net/Uri;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->n:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setClickDestinationUri(Landroid/net/Uri;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->o:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setClickDestinationBackupUri(Landroid/net/Uri;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->p:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setClickTrackingUrls(Ljava/util/List;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setJsTracker(Ljava/lang/String;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->r:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setImpressionRequests(Ljava/util/List;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->s:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setViewableMRC50Requests(Ljava/util/List;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->t:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setViewableMRC100Requests(Ljava/util/List;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->u:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->setViewableVideo50Requests(Ljava/util/List;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl$Builder;->build()Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getAdEventTracker()Lcom/applovin/impl/sdk/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/a/e;->b()V

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting cache task for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/applovin/impl/sdk/nativeAd/a;

    iget-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/e;->b:Lcom/applovin/impl/sdk/n;

    invoke-direct {v1, v0, v2, p0}, Lcom/applovin/impl/sdk/nativeAd/a;-><init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;Lcom/applovin/impl/sdk/n;Lcom/applovin/impl/sdk/nativeAd/a$a;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->b:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->S()Lcom/applovin/impl/sdk/e/o;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/e/o$a;->a:Lcom/applovin/impl/sdk/e/o$a;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/nativeAd/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/e;->b()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/nativeAd/e;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/nativeAd/e;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "url"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->n:Landroid/net/Uri;

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processed click destination URL: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/e;->n:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Ljava/lang/String;)V

    :cond_1
    const-string v0, "fallback"

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->o:Landroid/net/Uri;

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processed click destination backup URL: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/sdk/nativeAd/e;->o:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Ljava/lang/String;)V

    :cond_2
    const-string v0, "clicktrackers"

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->p:Ljava/util/List;

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Processed click tracking URLs: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->p:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Failed to render click tracking URLs"

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/nativeAd/e;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->d:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;

    return-object p0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e;->d:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;

    const/4 v1, -0x6

    invoke-interface {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;->onNativeAdLoadFailed(I)V

    return-void
.end method

.method private b(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)V
    .locals 1

    new-instance v0, Lcom/applovin/impl/sdk/nativeAd/e$1;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/sdk/nativeAd/e$1;-><init>(Lcom/applovin/impl/sdk/nativeAd/e;Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/nativeAd/e;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)V
    .locals 1

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Successfully cached and loaded ad"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/nativeAd/e;->b(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)V

    return-void
.end method

.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VAST ad rendered successfully"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Ljava/lang/String;)V

    :cond_0
    check-cast p1, Lcom/applovin/impl/a/a;

    iput-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/e;->m:Lcom/applovin/impl/a/a;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/e;->a()V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 0

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "VAST ad failed to render"

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/nativeAd/e;->d(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/applovin/impl/sdk/nativeAd/e;->a()V

    return-void
.end method

.method public run()V
    .locals 16

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/applovin/impl/sdk/nativeAd/e;->a:Lorg/json/JSONObject;

    const-string v1, "privacy_icon_url"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v6, Lcom/applovin/impl/sdk/nativeAd/e;->k:Landroid/net/Uri;

    :cond_0
    iget-object v0, v6, Lcom/applovin/impl/sdk/nativeAd/e;->a:Lorg/json/JSONObject;

    const-string v1, "privacy_url"

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "https://www.applovin.com/privacy/"

    goto :goto_0

    :goto_1
    iput-object v0, v6, Lcom/applovin/impl/sdk/nativeAd/e;->l:Landroid/net/Uri;

    iget-object v0, v6, Lcom/applovin/impl/sdk/nativeAd/e;->a:Lorg/json/JSONObject;

    const-string v1, "ortb_response"

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_17

    :cond_2
    const-string v1, "version"

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "value"

    invoke-static {v0, v3, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rendering native ad for oRTB version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Ljava/lang/String;)V

    :cond_3
    const-string v1, "native"

    invoke-static {v0, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "link"

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Lorg/json/JSONObject;)V

    const-string v1, "assets"

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_16

    :cond_4
    const-string v3, ""

    const/4 v4, 0x0

    move-object v5, v3

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-ge v3, v7, :cond_1b

    invoke-static {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v13, "title"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v8, "title"

    invoke-static {v7, v8, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "text"

    invoke-static {v7, v8, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/applovin/impl/sdk/nativeAd/e;->e:Ljava/lang/String;

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v7

    if-eqz v7, :cond_1a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Processed title: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/applovin/impl/sdk/nativeAd/e;->e:Ljava/lang/String;

    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_5
    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_5
    const-string v13, "link"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string v8, "link"

    invoke-static {v7, v8, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_e

    :cond_6
    const-string v13, "img"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    const-string v8, "id"

    invoke-static {v7, v8, v11}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v8

    const-string v13, "img"

    invoke-static {v7, v13, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "type"

    invoke-static {v13, v14, v11}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v14

    const-string v15, "url"

    invoke-static {v13, v15, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eq v14, v12, :cond_f

    if-ne v9, v8, :cond_7

    goto/16 :goto_8

    :cond_7
    if-eq v14, v9, :cond_e

    if-ne v10, v8, :cond_8

    goto/16 :goto_7

    :cond_8
    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v8

    if-eqz v8, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized image: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/nativeAd/e;->c(Ljava/lang/String;)V

    :cond_9
    const-string v7, "w"

    invoke-static {v13, v7, v11}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v7

    const-string v8, "h"

    invoke-static {v13, v8, v11}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v8

    if-lez v7, :cond_d

    if-lez v8, :cond_d

    int-to-float v9, v7

    int-to-float v10, v8

    div-float/2addr v9, v10

    float-to-double v9, v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v13, v9, v11

    if-lez v13, :cond_b

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v9

    if-eqz v9, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Inferring main image from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "..."

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Ljava/lang/String;)V

    :cond_a
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, v6, Lcom/applovin/impl/sdk/nativeAd/e;->j:Landroid/net/Uri;

    goto/16 :goto_e

    :cond_b
    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v9

    if-eqz v9, :cond_c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Inferring icon image from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "..."

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Ljava/lang/String;)V

    :cond_c
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, v6, Lcom/applovin/impl/sdk/nativeAd/e;->i:Landroid/net/Uri;

    goto/16 :goto_e

    :cond_d
    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v7

    if-eqz v7, :cond_1a

    const-string v7, "Skipping..."

    :goto_6
    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/nativeAd/e;->c(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_e
    :goto_7
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, v6, Lcom/applovin/impl/sdk/nativeAd/e;->j:Landroid/net/Uri;

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v7

    if-eqz v7, :cond_1a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Processed main image URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/applovin/impl/sdk/nativeAd/e;->j:Landroid/net/Uri;

    goto :goto_9

    :cond_f
    :goto_8
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, v6, Lcom/applovin/impl/sdk/nativeAd/e;->i:Landroid/net/Uri;

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v7

    if-eqz v7, :cond_1a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Processed icon URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/applovin/impl/sdk/nativeAd/e;->i:Landroid/net/Uri;

    :goto_9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_10
    const-string v9, "video"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    const-string v5, "video"

    invoke-static {v7, v5, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v8, "vasttag"

    invoke-static {v5, v8, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v7

    if-eqz v7, :cond_1a

    const-string v7, "Processed VAST video"

    goto/16 :goto_5

    :cond_11
    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v8

    if-eqz v8, :cond_1a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring invalid \"vasttag\" for video: "

    :goto_a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_12
    const-string v9, "data"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    const-string v9, "id"

    invoke-static {v7, v9, v11}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v9

    const-string v13, "data"

    invoke-static {v7, v13, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "type"

    invoke-static {v13, v14, v11}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v11

    const-string v14, "value"

    invoke-static {v13, v14, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eq v11, v12, :cond_18

    const/16 v12, 0x8

    if-ne v9, v12, :cond_13

    goto :goto_d

    :cond_13
    if-eq v11, v10, :cond_17

    if-ne v9, v8, :cond_14

    goto :goto_c

    :cond_14
    const/16 v8, 0xc

    if-eq v11, v8, :cond_16

    const/4 v8, 0x5

    if-ne v9, v8, :cond_15

    goto :goto_b

    :cond_15
    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v8

    if-eqz v8, :cond_1a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping unsupported data: "

    goto :goto_a

    :cond_16
    :goto_b
    iput-object v13, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Ljava/lang/String;

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v7

    if-eqz v7, :cond_1a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Processed cta: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/applovin/impl/sdk/nativeAd/e;->h:Ljava/lang/String;

    goto/16 :goto_3

    :cond_17
    :goto_c
    iput-object v13, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v7

    if-eqz v7, :cond_1a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Processed body: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/applovin/impl/sdk/nativeAd/e;->g:Ljava/lang/String;

    goto/16 :goto_3

    :cond_18
    :goto_d
    iput-object v13, v6, Lcom/applovin/impl/sdk/nativeAd/e;->f:Ljava/lang/String;

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v7

    if-eqz v7, :cond_1a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Processed advertiser: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/applovin/impl/sdk/nativeAd/e;->f:Ljava/lang/String;

    goto/16 :goto_3

    :cond_19
    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v8

    if-eqz v8, :cond_1a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported asset object: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/nativeAd/e;->d(Ljava/lang/String;)V

    :cond_1a
    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_1b
    const-string v1, "jstracker"

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iput-object v1, v6, Lcom/applovin/impl/sdk/nativeAd/e;->q:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Processed jstracker: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Ljava/lang/String;)V

    :cond_1c
    const-string v1, "imptrackers"

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_20

    const/4 v3, 0x0

    :goto_f
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_20

    invoke-static {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getObjectAtIndex(Lorg/json/JSONArray;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v13, v7, Ljava/lang/String;

    if-nez v13, :cond_1d

    goto :goto_10

    :cond_1d
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1e

    goto :goto_10

    :cond_1e
    iget-object v13, v6, Lcom/applovin/impl/sdk/nativeAd/e;->r:Ljava/util/List;

    new-instance v14, Lcom/applovin/impl/sdk/network/i$a;

    iget-object v15, v6, Lcom/applovin/impl/sdk/nativeAd/e;->b:Lcom/applovin/impl/sdk/n;

    invoke-direct {v14, v15}, Lcom/applovin/impl/sdk/network/i$a;-><init>(Lcom/applovin/impl/sdk/n;)V

    invoke-virtual {v14, v7}, Lcom/applovin/impl/sdk/network/i$a;->d(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/i$a;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/applovin/impl/sdk/network/i$a;->f(Z)Lcom/applovin/impl/sdk/network/i$a;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/applovin/impl/sdk/network/i$a;->e(Z)Lcom/applovin/impl/sdk/network/i$a;

    move-result-object v14

    invoke-virtual {v14}, Lcom/applovin/impl/sdk/network/i$a;->b()Lcom/applovin/impl/sdk/network/i;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v13

    if-eqz v13, :cond_1f

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Processed imptracker URL: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Ljava/lang/String;)V

    :cond_1f
    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_20
    const-string v1, "eventtrackers"

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_29

    const/4 v1, 0x0

    :goto_11
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_29

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v7, "event"

    invoke-static {v3, v7, v11}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v7

    const-string v13, "method"

    invoke-static {v3, v13, v11}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v13

    const-string v14, "url"

    invoke-static {v3, v14, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_21

    goto/16 :goto_14

    :cond_21
    if-eq v13, v12, :cond_22

    if-eq v13, v10, :cond_22

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v7

    if-eqz v7, :cond_28

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unsupported method for event tracker: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/applovin/impl/sdk/nativeAd/e;->d(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_22
    new-instance v15, Lcom/applovin/impl/sdk/network/i$a;

    iget-object v2, v6, Lcom/applovin/impl/sdk/nativeAd/e;->b:Lcom/applovin/impl/sdk/n;

    invoke-direct {v15, v2}, Lcom/applovin/impl/sdk/network/i$a;-><init>(Lcom/applovin/impl/sdk/n;)V

    invoke-virtual {v15, v14}, Lcom/applovin/impl/sdk/network/i$a;->d(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/i$a;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/applovin/impl/sdk/network/i$a;->f(Z)Lcom/applovin/impl/sdk/network/i$a;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/applovin/impl/sdk/network/i$a;->e(Z)Lcom/applovin/impl/sdk/network/i$a;

    move-result-object v2

    if-ne v13, v10, :cond_23

    const/4 v13, 0x1

    goto :goto_12

    :cond_23
    const/4 v13, 0x0

    :goto_12
    invoke-virtual {v2, v13}, Lcom/applovin/impl/sdk/network/i$a;->g(Z)Lcom/applovin/impl/sdk/network/i$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/network/i$a;->b()Lcom/applovin/impl/sdk/network/i;

    move-result-object v2

    if-ne v7, v12, :cond_24

    iget-object v3, v6, Lcom/applovin/impl/sdk/nativeAd/e;->r:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v2

    if-eqz v2, :cond_28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processed impression URL: "

    :goto_13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Ljava/lang/String;)V

    goto :goto_14

    :cond_24
    if-ne v7, v10, :cond_25

    iget-object v3, v6, Lcom/applovin/impl/sdk/nativeAd/e;->s:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v2

    if-eqz v2, :cond_28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processed viewable MRC50 URL: "

    goto :goto_13

    :cond_25
    if-ne v7, v9, :cond_26

    iget-object v3, v6, Lcom/applovin/impl/sdk/nativeAd/e;->t:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v2

    if-eqz v2, :cond_28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processed viewable MRC100 URL: "

    goto :goto_13

    :cond_26
    if-ne v7, v8, :cond_27

    iget-object v3, v6, Lcom/applovin/impl/sdk/nativeAd/e;->u:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v2

    if-eqz v2, :cond_28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processed viewable video 50 URL: "

    goto :goto_13

    :cond_27
    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v2

    if-eqz v2, :cond_28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported event tracker: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/applovin/impl/sdk/nativeAd/e;->d(Ljava/lang/String;)V

    :cond_28
    :goto_14
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_11

    :cond_29
    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "Processing VAST video..."

    invoke-virtual {v6, v0}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Ljava/lang/String;)V

    :cond_2a
    iget-object v0, v6, Lcom/applovin/impl/sdk/nativeAd/e;->a:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->shallowCopy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, v6, Lcom/applovin/impl/sdk/nativeAd/e;->c:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->shallowCopy(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/ad/b;->a:Lcom/applovin/impl/sdk/ad/b;

    iget-object v7, v6, Lcom/applovin/impl/sdk/nativeAd/e;->b:Lcom/applovin/impl/sdk/n;

    move-object v0, v5

    move-object/from16 v4, p0

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lcom/applovin/impl/sdk/e/r;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/e/r;

    move-result-object v0

    iget-object v1, v6, Lcom/applovin/impl/sdk/nativeAd/e;->b:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->S()Lcom/applovin/impl/sdk/e/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;)V

    goto :goto_15

    :cond_2b
    invoke-direct/range {p0 .. p0}, Lcom/applovin/impl/sdk/nativeAd/e;->a()V

    :goto_15
    return-void

    :cond_2c
    :goto_16
    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to retrieve assets - failing ad load: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/applovin/impl/sdk/nativeAd/e;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/applovin/impl/sdk/nativeAd/e;->d(Ljava/lang/String;)V

    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcom/applovin/impl/sdk/nativeAd/e;->b()V

    return-void

    :cond_2e
    :goto_17
    invoke-static {}, Lcom/applovin/impl/sdk/w;->a()Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No oRtb response provided: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/applovin/impl/sdk/nativeAd/e;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/applovin/impl/sdk/nativeAd/e;->d(Ljava/lang/String;)V

    :cond_2f
    invoke-direct/range {p0 .. p0}, Lcom/applovin/impl/sdk/nativeAd/e;->b()V

    return-void
.end method