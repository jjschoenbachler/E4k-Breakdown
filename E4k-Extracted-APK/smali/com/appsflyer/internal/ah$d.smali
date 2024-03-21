.class final Lcom/appsflyer/internal/ah$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field private synthetic AFKeystoreWrapper:Lcom/appsflyer/internal/ah;

.field private final valueOf:Lcom/appsflyer/internal/h;


# direct methods
.method private constructor <init>(Lcom/appsflyer/internal/ah;Lcom/appsflyer/internal/h;)V
    .locals 0

    .line 3099
    iput-object p1, p0, Lcom/appsflyer/internal/ah$d;->AFKeystoreWrapper:Lcom/appsflyer/internal/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3100
    iput-object p2, p0, Lcom/appsflyer/internal/ah$d;->valueOf:Lcom/appsflyer/internal/h;

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsflyer/internal/ah;Lcom/appsflyer/internal/h;B)V
    .locals 0

    .line 3096
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/ah$d;-><init>(Lcom/appsflyer/internal/ah;Lcom/appsflyer/internal/h;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v1, p0

    .line 3104
    iget-object v0, v1, Lcom/appsflyer/internal/ah$d;->valueOf:Lcom/appsflyer/internal/h;

    invoke-virtual {v0}, Lcom/appsflyer/internal/h;->AFInAppEventType()Ljava/util/Map;

    move-result-object v2

    .line 3105
    iget-object v0, v1, Lcom/appsflyer/internal/ah$d;->valueOf:Lcom/appsflyer/internal/h;

    invoke-virtual {v0}, Lcom/appsflyer/internal/h;->AFInAppEventParameterName()Z

    move-result v0

    .line 3106
    iget-object v3, v1, Lcom/appsflyer/internal/ah$d;->valueOf:Lcom/appsflyer/internal/h;

    .line 4081
    iget-object v3, v3, Lcom/appsflyer/internal/h;->onAttributionFailureNative:Ljava/lang/String;

    .line 3107
    iget-object v4, v1, Lcom/appsflyer/internal/ah$d;->valueOf:Lcom/appsflyer/internal/h;

    .line 4159
    iget v4, v4, Lcom/appsflyer/internal/h;->onInstallConversionFailureNative:I

    .line 3108
    iget-object v5, v1, Lcom/appsflyer/internal/ah$d;->valueOf:Lcom/appsflyer/internal/h;

    .line 5058
    iget-object v5, v5, Lcom/appsflyer/internal/h;->valueOf:Landroid/app/Application;

    .line 3110
    iget-object v6, v1, Lcom/appsflyer/internal/ah$d;->AFKeystoreWrapper:Lcom/appsflyer/internal/ah;

    invoke-virtual {v6}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3111
    iget-object v0, v1, Lcom/appsflyer/internal/ah$d;->valueOf:Lcom/appsflyer/internal/h;

    .line 5095
    iget-object v0, v0, Lcom/appsflyer/internal/h;->AFKeystoreWrapper:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    if-eqz v0, :cond_0

    .line 3113
    sget v2, Lcom/appsflyer/attribution/RequestError;->STOP_TRACKING:I

    sget-object v3, Lcom/appsflyer/internal/at;->values:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v6, 0x0

    .line 3116
    new-array v7, v6, [B

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v0, :cond_6

    if-gt v4, v8, :cond_6

    .line 3118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3119
    iget-object v10, v1, Lcom/appsflyer/internal/ah$d;->AFKeystoreWrapper:Lcom/appsflyer/internal/ah;

    invoke-static {v10}, Lcom/appsflyer/internal/ah;->init(Lcom/appsflyer/internal/ah;)[Lcom/appsflyer/internal/bs;

    move-result-object v10

    if-eqz v10, :cond_4

    iget-object v10, v1, Lcom/appsflyer/internal/ah$d;->AFKeystoreWrapper:Lcom/appsflyer/internal/ah;

    invoke-static {v10}, Lcom/appsflyer/internal/ah;->init(Lcom/appsflyer/internal/ah;)[Lcom/appsflyer/internal/bs;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_4

    aget-object v13, v10, v12

    .line 3120
    instance-of v14, v13, Lcom/appsflyer/internal/bp;

    .line 3121
    sget-object v15, Lcom/appsflyer/internal/ah$8;->values:[I

    .line 6048
    iget-object v6, v13, Lcom/appsflyer/internal/bs;->AFKeystoreWrapper:Lcom/appsflyer/internal/bs$e;

    .line 3121
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v15, v6

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-ne v4, v8, :cond_3

    if-nez v14, :cond_3

    .line 3134
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v14, "source"

    .line 6052
    iget-object v13, v13, Lcom/appsflyer/internal/bs;->AFInAppEventParameterName:Ljava/lang/String;

    .line 3135
    invoke-interface {v6, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "response"

    const-string v14, "TIMEOUT"

    .line 3136
    invoke-interface {v6, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3137
    new-instance v13, Lcom/appsflyer/internal/bv;

    invoke-direct {v13}, Lcom/appsflyer/internal/bv;-><init>()V

    invoke-interface {v6, v13}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3138
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    if-eqz v14, :cond_2

    const-string v6, "rfr"

    .line 3124
    move-object v14, v13

    check-cast v14, Lcom/appsflyer/internal/bp;

    iget-object v14, v14, Lcom/appsflyer/internal/bp;->valueOf:Ljava/util/Map;

    invoke-interface {v2, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3125
    invoke-static {v5}, Lcom/appsflyer/internal/ah;->values(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 3126
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v14, "newGPReferrerSent"

    .line 3127
    invoke-interface {v6, v14, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 3128
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3130
    :cond_2
    iget-object v6, v13, Lcom/appsflyer/internal/bs;->values:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x0

    goto :goto_0

    .line 3143
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "referrers"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3144
    :cond_5
    iget-object v0, v1, Lcom/appsflyer/internal/ah$d;->AFKeystoreWrapper:Lcom/appsflyer/internal/ah;

    invoke-static {v0}, Lcom/appsflyer/internal/ah;->AFKeystoreWrapper(Lcom/appsflyer/internal/ah;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "fb_ddl"

    .line 3145
    iget-object v4, v1, Lcom/appsflyer/internal/ah$d;->AFKeystoreWrapper:Lcom/appsflyer/internal/ah;

    invoke-static {v4}, Lcom/appsflyer/internal/ah;->AFKeystoreWrapper(Lcom/appsflyer/internal/ah;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3148
    :cond_6
    iget-object v0, v1, Lcom/appsflyer/internal/ah$d;->valueOf:Lcom/appsflyer/internal/h;

    instance-of v0, v0, Lcom/appsflyer/internal/bf;

    if-nez v0, :cond_7

    .line 3149
    new-instance v0, Lcom/appsflyer/internal/b$e;

    invoke-direct {v0, v2, v5}, Lcom/appsflyer/internal/b$e;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3150
    iget-object v0, v1, Lcom/appsflyer/internal/ah$d;->AFKeystoreWrapper:Lcom/appsflyer/internal/ah;

    invoke-virtual {v0}, Lcom/appsflyer/internal/ah;->AFInAppEventType()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_7
    const/4 v4, 0x0

    .line 3153
    :try_start_0
    iget-object v0, v1, Lcom/appsflyer/internal/ah$d;->valueOf:Lcom/appsflyer/internal/h;

    iget-object v6, v1, Lcom/appsflyer/internal/ah$d;->valueOf:Lcom/appsflyer/internal/h;

    instance-of v6, v6, Lcom/appsflyer/internal/bf;

    if-eqz v6, :cond_8

    const-string v6, "af_key"

    .line 3154
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_2

    :cond_8
    const-string v6, "appsflyerKey"

    .line 3155
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 6127
    :goto_2
    iput-object v6, v0, Lcom/appsflyer/internal/h;->AFVersionDeclaration:Ljava/lang/String;

    .line 3156
    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 3157
    :try_start_1
    iget-object v0, v1, Lcom/appsflyer/internal/ah$d;->valueOf:Lcom/appsflyer/internal/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-array v6, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v6, v10

    const v0, -0xffffd0

    invoke-static {v10, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    sub-int/2addr v0, v11

    invoke-static {v10, v10}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v11

    add-int/lit8 v11, v11, 0x18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    rsub-int/lit8 v10, v10, 0x1

    int-to-char v10, v10

    invoke-static {v0, v11, v10}, Lcom/appsflyer/internal/d;->AFInAppEventParameterName(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v10, "valueOf"

    new-array v11, v9, [Ljava/lang/Class;

    const-class v12, Lcom/appsflyer/internal/h;

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v0, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3158
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3159
    :try_start_4
    iget-object v0, v1, Lcom/appsflyer/internal/ah$d;->AFKeystoreWrapper:Lcom/appsflyer/internal/ah;

    iget-object v2, v1, Lcom/appsflyer/internal/ah$d;->valueOf:Lcom/appsflyer/internal/h;

    .line 6163
    iput-object v6, v2, Lcom/appsflyer/internal/h;->init:[B

    .line 3159
    invoke-static {v0, v2}, Lcom/appsflyer/internal/ah;->values(Lcom/appsflyer/internal/ah;Lcom/appsflyer/internal/h;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v7, v6

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v7, v6

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 3157
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_9

    throw v6

    :cond_9
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    .line 3158
    :goto_3
    :try_start_6
    monitor-exit v2

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    .line 3172
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3173
    iget-object v2, v1, Lcom/appsflyer/internal/ah$d;->valueOf:Lcom/appsflyer/internal/h;

    .line 9095
    iget-object v2, v2, Lcom/appsflyer/internal/h;->AFKeystoreWrapper:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    if-eqz v2, :cond_a

    .line 3175
    sget v3, Lcom/appsflyer/attribution/RequestError;->NETWORK_FAILURE:I

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_a
    return-void

    :catch_2
    move-exception v0

    move-object v2, v0

    :goto_4
    const-string v0, "Exception while sending request to server. "

    .line 3162
    invoke-static {v0, v2}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v7, :cond_f

    if-eqz v5, :cond_f

    const-string v0, "&isCachedRequest=true&timeincache="

    .line 3163
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 3164
    invoke-static {}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper()Lcom/appsflyer/internal/ag;

    new-instance v0, Lcom/appsflyer/internal/j;

    const-string v6, "6.2.3"

    invoke-direct {v0, v3, v7, v6}, Lcom/appsflyer/internal/j;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 7058
    :try_start_7
    invoke-static {v5}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 7059
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_b

    .line 7061
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    goto/16 :goto_6

    .line 7064
    :cond_b
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 7065
    array-length v3, v3

    const/16 v6, 0x28

    if-le v3, v6, :cond_c

    const-string v0, "reached cache limit, not caching request"

    .line 7066
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_c
    const-string v3, "caching request..."

    .line 7069
    invoke-static {v3}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;)V

    .line 7070
    new-instance v3, Ljava/io/File;

    invoke-static {v5}, Lcom/appsflyer/internal/ag;->AFInAppEventType(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7071
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 7072
    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    const-string v3, "version="

    .line 7073
    invoke-virtual {v5, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 8057
    iget-object v3, v0, Lcom/appsflyer/internal/j;->AFKeystoreWrapper:Ljava/lang/String;

    .line 7074
    invoke-virtual {v5, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v3, 0xa

    .line 7075
    invoke-virtual {v5, v3}, Ljava/io/Writer;->write(I)V

    const-string v4, "url="

    .line 7077
    invoke-virtual {v5, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 8073
    iget-object v4, v0, Lcom/appsflyer/internal/j;->AFInAppEventParameterName:Ljava/lang/String;

    .line 7078
    invoke-virtual {v5, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 7079
    invoke-virtual {v5, v3}, Ljava/io/Writer;->write(I)V

    const-string v4, "data="

    .line 7081
    invoke-virtual {v5, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 7082
    invoke-virtual {v0}, Lcom/appsflyer/internal/j;->valueOf()[B

    move-result-object v0

    invoke-static {v0, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 7083
    invoke-virtual {v5, v3}, Ljava/io/Writer;->write(I)V

    .line 7085
    invoke-virtual {v5}, Ljava/io/Writer;->flush()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 7092
    :try_start_9
    invoke-virtual {v5}, Ljava/io/Writer;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v4, v5

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v4, v5

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v2, v0

    goto :goto_7

    :catch_4
    move-exception v0

    :goto_5
    :try_start_a
    const-string v3, "Could not cache request"

    .line 7088
    invoke-static {v3, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v4, :cond_d

    .line 7092
    :try_start_b
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v3, v0

    .line 7095
    invoke-static {v3}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/Throwable;)V

    .line 3165
    :cond_d
    :goto_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :goto_7
    if-eqz v4, :cond_e

    .line 7092
    :try_start_c
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v3, v0

    .line 7095
    invoke-static {v3}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/Throwable;)V

    .line 7097
    :cond_e
    :goto_8
    throw v2

    .line 3167
    :cond_f
    :goto_9
    iget-object v0, v1, Lcom/appsflyer/internal/ah$d;->valueOf:Lcom/appsflyer/internal/h;

    .line 8095
    iget-object v0, v0, Lcom/appsflyer/internal/h;->AFKeystoreWrapper:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    if-eqz v0, :cond_10

    .line 3169
    sget v3, Lcom/appsflyer/attribution/RequestError;->NETWORK_FAILURE:I

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    .line 3170
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/bc;->AFKeystoreWrapper(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
