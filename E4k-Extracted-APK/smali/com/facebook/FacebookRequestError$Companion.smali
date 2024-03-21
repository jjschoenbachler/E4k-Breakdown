.class public final Lcom/facebook/FacebookRequestError$Companion;
.super Ljava/lang/Object;
.source "FacebookRequestError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/FacebookRequestError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u001f\u001a\u0004\u0018\u00010\u00082\u0006\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u00012\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\u0015X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0019X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0019X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001b\u001a\u00020\u001c8G\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006%"
    }
    d2 = {
        "Lcom/facebook/FacebookRequestError$Companion;",
        "",
        "()V",
        "BODY_KEY",
        "",
        "CODE_KEY",
        "CREATOR",
        "Landroid/os/Parcelable$Creator;",
        "Lcom/facebook/FacebookRequestError;",
        "ERROR_CODE_FIELD_KEY",
        "ERROR_CODE_KEY",
        "ERROR_IS_TRANSIENT_KEY",
        "ERROR_KEY",
        "ERROR_MESSAGE_FIELD_KEY",
        "ERROR_MSG_KEY",
        "ERROR_REASON_KEY",
        "ERROR_SUB_CODE_KEY",
        "ERROR_TYPE_FIELD_KEY",
        "ERROR_USER_MSG_KEY",
        "ERROR_USER_TITLE_KEY",
        "HTTP_RANGE_SUCCESS",
        "Lcom/facebook/FacebookRequestError$Range;",
        "getHTTP_RANGE_SUCCESS$facebook_core_release",
        "()Lcom/facebook/FacebookRequestError$Range;",
        "INVALID_ERROR_CODE",
        "",
        "INVALID_HTTP_STATUS_CODE",
        "errorClassification",
        "Lcom/facebook/internal/FacebookRequestErrorClassification;",
        "getErrorClassification",
        "()Lcom/facebook/internal/FacebookRequestErrorClassification;",
        "checkResponseAndCreateError",
        "singleResult",
        "Lorg/json/JSONObject;",
        "batchResult",
        "connection",
        "Ljava/net/HttpURLConnection;",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 263
    invoke-direct {p0}, Lcom/facebook/FacebookRequestError$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkResponseAndCreateError(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/FacebookRequestError;
    .locals 18
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/net/HttpURLConnection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v9, p1

    const-string v0, "singleResult"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x0

    :try_start_0
    const-string v0, "code"

    .line 302
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "code"

    .line 303
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "body"

    const-string v2, "FACEBOOK_NON_JSON_RESULT"

    .line 305
    invoke-static {v9, v0, v2}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 307
    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_a

    .line 312
    move-object v2, v15

    check-cast v2, Ljava/lang/String;

    .line 313
    move-object v3, v15

    check-cast v3, Ljava/lang/String;

    .line 314
    move-object v4, v15

    check-cast v4, Ljava/lang/String;

    .line 315
    move-object v5, v15

    check-cast v5, Ljava/lang/String;

    .line 320
    move-object v6, v0

    check-cast v6, Lorg/json/JSONObject;

    const-string v7, "error"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, -0x1

    if-eqz v6, :cond_7

    .line 322
    move-object v2, v0

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "error"

    invoke-static {v2, v3, v15}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    const-string v3, "type"

    .line 323
    invoke-virtual {v2, v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v15

    :goto_0
    if-eqz v2, :cond_1

    const-string v4, "message"

    .line 324
    invoke-virtual {v2, v4, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v15

    :goto_1
    if-eqz v2, :cond_2

    const-string v5, "code"

    .line 326
    invoke-virtual {v2, v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_2

    :cond_2
    const/4 v5, -0x1

    :goto_2
    if-eqz v2, :cond_3

    const-string v6, "error_subcode"

    .line 328
    invoke-virtual {v2, v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    :cond_3
    if-eqz v2, :cond_4

    const-string v6, "error_user_msg"

    .line 329
    invoke-virtual {v2, v6, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_4
    move-object v6, v15

    :goto_3
    if-eqz v2, :cond_5

    const-string v11, "error_user_title"

    .line 330
    invoke-virtual {v2, v11, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_5
    move-object v11, v15

    :goto_4
    if-eqz v2, :cond_6

    const-string v12, "is_transient"

    .line 331
    invoke-virtual {v2, v12, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    :cond_6
    move v2, v5

    move v13, v8

    move-object v5, v4

    move-object v8, v6

    move-object v6, v11

    move-object v4, v3

    goto :goto_6

    .line 333
    :cond_7
    move-object v6, v0

    check-cast v6, Lorg/json/JSONObject;

    const-string v11, "error_code"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 334
    move-object v6, v0

    check-cast v6, Lorg/json/JSONObject;

    const-string v11, "error_msg"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 335
    move-object v6, v0

    check-cast v6, Lorg/json/JSONObject;

    const-string v11, "error_reason"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    move-object v8, v4

    move-object v6, v5

    const/4 v7, 0x0

    const/4 v13, 0x0

    move-object v4, v2

    move-object v5, v3

    const/4 v2, -0x1

    const/4 v3, -0x1

    goto :goto_7

    .line 336
    :cond_9
    :goto_5
    move-object v2, v0

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "error_reason"

    invoke-virtual {v2, v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 337
    move-object v3, v0

    check-cast v3, Lorg/json/JSONObject;

    const-string v6, "error_msg"

    invoke-virtual {v3, v6, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 338
    move-object v6, v0

    check-cast v6, Lorg/json/JSONObject;

    const-string v11, "error_code"

    invoke-virtual {v6, v11, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 339
    move-object v11, v0

    check-cast v11, Lorg/json/JSONObject;

    const-string v12, "error_subcode"

    invoke-virtual {v11, v12, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    move-object v8, v4

    const/4 v13, 0x0

    move-object v4, v2

    move v2, v6

    move-object v6, v5

    move-object v5, v3

    :goto_6
    move v3, v10

    :goto_7
    if-eqz v7, :cond_a

    .line 343
    new-instance v16, Lcom/facebook/FacebookRequestError;

    .line 351
    move-object v10, v0

    check-cast v10, Lorg/json/JSONObject;

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, v16

    move-object v7, v8

    move-object v8, v10

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 343
    invoke-direct/range {v0 .. v14}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v16

    .line 362
    :cond_a
    move-object/from16 v0, p0

    check-cast v0, Lcom/facebook/FacebookRequestError$Companion;

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError$Companion;->getHTTP_RANGE_SUCCESS$facebook_core_release()Lcom/facebook/FacebookRequestError$Range;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 363
    new-instance v17, Lcom/facebook/FacebookRequestError;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v0, "body"

    .line 371
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "body"

    const-string v8, "FACEBOOK_NON_JSON_RESULT"

    .line 372
    invoke-static {v9, v0, v8}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    goto :goto_8

    :cond_b
    move-object v8, v15

    :goto_8
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, v17

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 363
    invoke-direct/range {v0 .. v14}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v17

    :catch_0
    :cond_c
    return-object v15
.end method

.method public final declared-synchronized getErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    monitor-enter p0

    .line 394
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings;->getErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 395
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/internal/FacebookRequestErrorClassification;->Companion:Lcom/facebook/internal/FacebookRequestErrorClassification$Companion;

    invoke-virtual {v0}, Lcom/facebook/internal/FacebookRequestErrorClassification$Companion;->getDefaultErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 392
    monitor-exit p0

    throw v0
.end method

.method public final getHTTP_RANGE_SUCCESS$facebook_core_release()Lcom/facebook/FacebookRequestError$Range;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 286
    invoke-static {}, Lcom/facebook/FacebookRequestError;->access$getHTTP_RANGE_SUCCESS$cp()Lcom/facebook/FacebookRequestError$Range;

    move-result-object v0

    return-object v0
.end method
