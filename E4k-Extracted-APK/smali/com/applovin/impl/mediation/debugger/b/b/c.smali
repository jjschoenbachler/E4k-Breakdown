.class public Lcom/applovin/impl/mediation/debugger/b/b/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/n;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/n;->L()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/d;->a(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/utils/d;->a()Z

    move-result p2

    iput-boolean p2, p0, Lcom/applovin/impl/mediation/debugger/b/b/c;->a:Z

    const-string p2, "cleartext_traffic"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/b/b/c;->b:Z

    const-string v1, "description"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/mediation/debugger/b/b/c;->d:Ljava/lang/String;

    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/b/b/c;->c:Z

    goto :goto_1

    :cond_0
    const-string v1, "domains"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getList(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    :cond_3
    :goto_0
    iput-boolean p2, p0, Lcom/applovin/impl/mediation/debugger/b/b/c;->c:Z

    goto :goto_1

    :cond_4
    iput-boolean p2, p0, Lcom/applovin/impl/mediation/debugger/b/b/c;->b:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/b/b/c;->d:Ljava/lang/String;

    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/debugger/b/b/c;->c:Z

    :goto_1
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/b/b/c;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/b/b/c;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/b/b/c;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/b/b/c;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/b/b/c;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/b/b/c;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "You must include an entry in your AndroidManifest.xml to point to your network_security_config.xml.\n\nFor more information, visit: https://developer.android.com/training/articles/security-config"

    :goto_0
    return-object v0
.end method
