.class final Lcom/appsflyer/internal/br$1;
.super Lcom/appsflyer/internal/av;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/br;->AFInAppEventParameterName(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/av<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic AFInAppEventType:Lcom/appsflyer/internal/br;


# direct methods
.method varargs constructor <init>(Lcom/appsflyer/internal/br;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/appsflyer/internal/br$1;->AFInAppEventType:Lcom/appsflyer/internal/br;

    invoke-direct {p0, p2, p3, p4}, Lcom/appsflyer/internal/av;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private AFInAppEventType()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/appsflyer/internal/av;->values:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/av;->valueOf:Ljava/lang/String;

    const/16 v2, 0x80

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/appsflyer/internal/br$1;->AFInAppEventType:Lcom/appsflyer/internal/br;

    iget-object v1, v1, Lcom/appsflyer/internal/bs;->values:Ljava/util/Map;

    const-string v2, "api_ver"

    iget-object v3, p0, Lcom/appsflyer/internal/av;->values:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/appsflyer/internal/aa;->valueOf(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v1, p0, Lcom/appsflyer/internal/br$1;->AFInAppEventType:Lcom/appsflyer/internal/br;

    iget-object v1, v1, Lcom/appsflyer/internal/bs;->values:Ljava/util/Map;

    const-string v2, "api_ver_name"

    iget-object v3, p0, Lcom/appsflyer/internal/av;->values:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/appsflyer/internal/aa;->AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/av;->values:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "content://"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appsflyer/internal/av;->valueOf:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/item/5"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    iget-object v7, p0, Lcom/appsflyer/internal/av;->values:Landroid/content/Context;

    .line 50
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x0

    .line 46
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 53
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/appsflyer/internal/br$1;->AFInAppEventType:Lcom/appsflyer/internal/br;

    iget-object v0, v0, Lcom/appsflyer/internal/bs;->values:Ljava/util/Map;

    const-string v3, "response"

    const-string v4, "OK"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/appsflyer/internal/br$1;->AFInAppEventType:Lcom/appsflyer/internal/br;

    iget-object v0, v0, Lcom/appsflyer/internal/bs;->values:Ljava/util/Map;

    const-string v3, "referrer"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/appsflyer/internal/br$1;->AFInAppEventType:Lcom/appsflyer/internal/br;

    iget-object v0, v0, Lcom/appsflyer/internal/bs;->values:Ljava/util/Map;

    const-string v3, "click_ts"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/appsflyer/internal/br$1;->AFInAppEventType:Lcom/appsflyer/internal/br;

    iget-object v0, v0, Lcom/appsflyer/internal/bs;->values:Ljava/util/Map;

    const-string v1, "install_end_ts"

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    .line 59
    iget-object v0, p0, Lcom/appsflyer/internal/br$1;->AFInAppEventType:Lcom/appsflyer/internal/br;

    iget-object v0, v0, Lcom/appsflyer/internal/bs;->values:Ljava/util/Map;

    const-string v3, "install_begin_ts"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x4

    .line 61
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "track_id"

    .line 62
    invoke-virtual {v0, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "referrer_ex"

    const/4 v3, 0x5

    .line 63
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Lcom/appsflyer/internal/br$1;->AFInAppEventType:Lcom/appsflyer/internal/br;

    iget-object v1, v1, Lcom/appsflyer/internal/bs;->values:Ljava/util/Map;

    const-string v3, "huawei_custom"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/br$1;->AFInAppEventType:Lcom/appsflyer/internal/br;

    iget-object v0, v0, Lcom/appsflyer/internal/bs;->values:Ljava/util/Map;

    const-string v1, "response"

    const-string v3, "FEATURE_NOT_SUPPORTED"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/appsflyer/internal/br$1;->AFInAppEventType:Lcom/appsflyer/internal/br;

    iget-object v0, v0, Lcom/appsflyer/internal/bs;->values:Ljava/util/Map;

    const-string v1, "response"

    const-string v3, "SERVICE_UNAVAILABLE"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 73
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/appsflyer/internal/br$1;->AFInAppEventType:Lcom/appsflyer/internal/br;

    iget-object v1, v1, Lcom/appsflyer/internal/bs;->values:Ljava/util/Map;

    const-string v3, "response"

    const-string v4, "FEATURE_NOT_SUPPORTED"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_4

    .line 76
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_4
    iget-object v0, p0, Lcom/appsflyer/internal/br$1;->AFInAppEventType:Lcom/appsflyer/internal/br;

    invoke-virtual {v0}, Lcom/appsflyer/internal/bs;->values()V

    .line 79
    iget-object v0, p0, Lcom/appsflyer/internal/br$1;->AFInAppEventType:Lcom/appsflyer/internal/br;

    iget-object v0, v0, Lcom/appsflyer/internal/bs;->values:Ljava/util/Map;

    return-object v0

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v2, :cond_5

    .line 76
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 77
    :cond_5
    throw v0
.end method


# virtual methods
.method public final synthetic AFInAppEventParameterName()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/appsflyer/internal/br$1;->AFInAppEventType()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
