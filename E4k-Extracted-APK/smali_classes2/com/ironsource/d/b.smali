.class public Lcom/ironsource/d/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/d/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/ironsource/mediationsdk/adunit/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ironsource/mediationsdk/adunit/a/a;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/adunit/a/a;-><init>()V

    iput-object v0, p0, Lcom/ironsource/d/b;->a:Lcom/ironsource/mediationsdk/adunit/a/a;

    return-void
.end method

.method public static a(Lcom/ironsource/d/b$a;)Lcom/ironsource/d/c;
    .locals 7

    iget-object v0, p0, Lcom/ironsource/d/b$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/d/b$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_9

    new-instance v0, Lcom/ironsource/d/c;

    invoke-direct {v0}, Lcom/ironsource/d/c;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/ironsource/d/b$a;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    iget v3, p0, Lcom/ironsource/d/b$a;->d:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v3, p0, Lcom/ironsource/d/b$a;->e:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v3, p0, Lcom/ironsource/d/b$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v3, p0, Lcom/ironsource/d/b$a;->g:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/ironsource/d/b;->a(Ljava/net/HttpURLConnection;Ljava/util/List;)V

    const-string v3, "POST"

    iget-object v4, p0, Lcom/ironsource/d/b$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ironsource/d/b$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/d/b$a;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v4, v3

    const-string v5, "Content-Length"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/ironsource/d/b;->a(Ljava/net/HttpURLConnection;[B)V

    :cond_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, v0, Lcom/ironsource/d/c;->a:I

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/ironsource/environment/a$1;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/ironsource/d/c;->b:[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v6, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v3

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v2, v1

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v2, v1

    :goto_1
    if-eqz v1, :cond_6

    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    iput v4, v0, Lcom/ironsource/d/c;->a:I

    const/16 v5, 0x190

    if-lt v4, v5, :cond_6

    const-string v3, "ISHttpService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed post to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/ironsource/d/b$a;->a:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " StatusCode: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Lcom/ironsource/d/c;->a:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    :goto_2
    return-object v0

    :catchall_3
    move-exception p0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_3

    :cond_6
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_3
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw p0

    :cond_9
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string v0, "not valid params"

    invoke-direct {p0, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/ironsource/d/c;"
        }
    .end annotation

    new-instance v0, Lcom/ironsource/d/b$a$a;

    invoke-direct {v0}, Lcom/ironsource/d/b$a$a;-><init>()V

    iput-object p0, v0, Lcom/ironsource/d/b$a$a;->b:Ljava/lang/String;

    iput-object p1, v0, Lcom/ironsource/d/b$a$a;->d:Ljava/lang/String;

    const-string p0, "POST"

    iput-object p0, v0, Lcom/ironsource/d/b$a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/ironsource/d/b$a$a;->a(Ljava/util/List;)Lcom/ironsource/d/b$a$a;

    invoke-virtual {v0}, Lcom/ironsource/d/b$a$a;->a()Lcom/ironsource/d/b$a;

    move-result-object p0

    invoke-static {p0}, Lcom/ironsource/d/b;->a(Lcom/ironsource/d/b$a;)Lcom/ironsource/d/c;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/net/HttpURLConnection;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    throw p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const-string v0, "itp"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Lcom/ironsource/c/b;)V
    .locals 3

    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "omv"

    sget-object v1, Lcom/ironsource/sdk/e/a/a;->a:Ljava/lang/String;

    const-string v2, "OMIDManager.OMID_LIB_VERSION"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ompv"

    const-string v1, "7"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdkv"

    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDKUtils.getSDKVersion()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "fs"

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "apky"

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "md"

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const-string v0, "cnst"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "medv"

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "tkgp"

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    const-string v0, "gpi"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sid"

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "plugin"

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "usid"

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "audt"

    invoke-static {v0, p1}, Lcom/ironsource/mediationsdk/adunit/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method