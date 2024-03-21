.class public La/b/a/p/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/b/a/p/h;


# instance fields
.field public a:Landroid/content/Context;

.field public final b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La/b/a/p/e;->a:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, La/b/a/p/e;->b:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "javascript:OneTrust.getVendorConsentsRequestV2(function(result){return result})"

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 20
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    .line 1
    invoke-static/range {p1 .. p1}, La/b/a/c/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, La/b/a/c/n;

    invoke-direct {v0}, La/b/a/c/n;-><init>()V

    .line 3
    new-instance v2, La/b/a/c/j;

    invoke-direct {v2}, La/b/a/c/j;-><init>()V

    .line 4
    new-instance v3, La/b/a/c/i;

    invoke-direct {v3}, La/b/a/c/i;-><init>()V

    .line 5
    new-instance v4, La/b/a/c/a;

    invoke-direct {v4}, La/b/a/c/a;-><init>()V

    .line 6
    new-instance v5, La/b/a/c/k;

    invoke-direct {v5}, La/b/a/c/k;-><init>()V

    .line 8
    invoke-static/range {p1 .. p1}, La/b/a/c/m;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    goto/16 :goto_21

    .line 13
    :cond_1
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v9, p1

    invoke-direct {v6, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "cmpId"

    .line 15
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_21
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_20

    :try_start_1
    const-string v10, "cmpVersion"

    .line 16
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1e

    :try_start_2
    const-string v11, "gdprApplies"

    .line 17
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1c

    :try_start_3
    const-string v12, "eventStatus"

    .line 18
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v12, "isServiceSpecific"

    .line 19
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    const-string v12, "tcfPolicyVersion"

    .line 20
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1a

    :try_start_4
    const-string v13, "publisherCC"

    .line 21
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_18

    :try_start_5
    const-string v14, "tcString"

    .line 22
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_16

    :try_start_6
    const-string v15, "useNonStandardStacks"

    .line 23
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_14

    :try_start_7
    const-string v8, "specialFeatureOptins"

    .line 24
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_12

    :try_start_8
    const-string v7, "purposeOneTreatment"

    .line 25
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_10

    move-object/from16 v17, v7

    :try_start_9
    const-string v7, "vendor"

    .line 27
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "vendor"

    .line 28
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_e

    move-object/from16 v18, v8

    :try_start_a
    const-string v8, "consents"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 29
    iput-object v7, v0, La/b/a/c/n;->a:Ljava/lang/String;

    const-string v7, "vendor"

    .line 30
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "legitimateInterests"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 31
    iput-object v7, v0, La/b/a/c/n;->b:Ljava/lang/String;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_0

    move-object v8, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_12

    :catch_1
    move-exception v0

    goto/16 :goto_1c

    :cond_2
    move-object/from16 v18, v8

    const/4 v8, 0x0

    :goto_0
    :try_start_b
    const-string v0, "purpose"

    .line 32
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_c

    if-eqz v0, :cond_3

    :try_start_c
    const-string v0, "purpose"

    .line 33
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "consents"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    iput-object v0, v2, La/b/a/c/j;->a:Ljava/lang/String;

    const-string v0, "purpose"

    .line 35
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "legitimateInterests"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    iput-object v0, v2, La/b/a/c/j;->b:Ljava/lang/String;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_9

    :catch_3
    move-exception v0

    goto/16 :goto_a

    :cond_3
    const/4 v2, 0x0

    :goto_1
    :try_start_d
    const-string v0, "publisher"

    .line 37
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_a

    if-eqz v0, :cond_5

    :try_start_e
    const-string v0, "publisher"

    .line 38
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "consents"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    iput-object v0, v3, La/b/a/c/i;->a:Ljava/lang/String;

    const-string v0, "publisher"

    .line 40
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "legitimateInterests"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    iput-object v0, v3, La/b/a/c/i;->b:Ljava/lang/String;

    const-string v0, "publisher"

    .line 42
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "customPurpose"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "publisher"

    .line 43
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "customPurpose"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "consents"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    iput-object v0, v4, La/b/a/c/a;->a:Ljava/lang/String;

    const-string v0, "publisher"

    .line 45
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "customPurpose"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "legitimateInterests"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    iput-object v0, v4, La/b/a/c/a;->b:Ljava/lang/String;

    .line 47
    iput-object v4, v3, La/b/a/c/i;->c:La/b/a/c/a;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_4

    :cond_4
    move-object/from16 v16, v3

    goto :goto_3

    :catch_4
    move-exception v0

    :goto_2
    move-object/from16 v19, v2

    goto/16 :goto_7

    :catch_5
    move-exception v0

    move-object/from16 v19, v2

    goto/16 :goto_8

    :cond_5
    const/16 v16, 0x0

    :goto_3
    :try_start_f
    const-string v0, "publisher"

    .line 48
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "restrictions"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "publisher"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "restrictions"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    :goto_4
    const-string v4, "publisher"

    .line 49
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "restrictions"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_6

    const-string v4, "publisher"

    .line 50
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "restrictions"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "publisher"

    .line 51
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_8

    move-object/from16 v19, v2

    :try_start_10
    const-string v2, "restrictions"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 52
    iget-object v7, v5, La/b/a/c/k;->a:Ljava/util/Map;

    invoke-interface {v7, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v19

    goto :goto_4

    :cond_6
    move-object/from16 v19, v2

    .line 53
    iput-object v5, v3, La/b/a/c/i;->d:La/b/a/c/k;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_6

    move-object v2, v8

    goto/16 :goto_20

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    move-object/from16 v19, v2

    :goto_5
    move-object/from16 v3, v16

    move-object/from16 v16, v8

    move-object v8, v14

    goto/16 :goto_14

    :catch_9
    move-exception v0

    move-object/from16 v19, v2

    :goto_6
    move-object/from16 v3, v16

    move-object/from16 v16, v8

    move-object v8, v14

    goto/16 :goto_1e

    :catch_a
    move-exception v0

    goto/16 :goto_2

    :goto_7
    move-object/from16 v16, v8

    move-object v8, v14

    const/4 v3, 0x0

    goto/16 :goto_14

    :catch_b
    move-exception v0

    move-object/from16 v19, v2

    :goto_8
    move-object/from16 v16, v8

    move-object v8, v14

    const/4 v3, 0x0

    goto/16 :goto_1e

    :catch_c
    move-exception v0

    :goto_9
    move-object/from16 v16, v8

    move-object v8, v14

    const/4 v3, 0x0

    goto :goto_13

    :catch_d
    move-exception v0

    :goto_a
    move-object/from16 v16, v8

    move-object v8, v14

    const/4 v3, 0x0

    goto/16 :goto_1d

    :catch_e
    move-exception v0

    move-object/from16 v18, v8

    goto :goto_12

    :catch_f
    move-exception v0

    move-object/from16 v18, v8

    goto/16 :goto_1c

    :catch_10
    move-exception v0

    move-object/from16 v18, v8

    const/16 v17, 0x0

    goto :goto_12

    :catch_11
    move-exception v0

    move-object/from16 v18, v8

    const/16 v17, 0x0

    goto :goto_1c

    :catch_12
    move-exception v0

    goto :goto_11

    :catch_13
    move-exception v0

    goto :goto_1b

    :catch_14
    move-exception v0

    goto :goto_10

    :catch_15
    move-exception v0

    goto :goto_1a

    :catch_16
    move-exception v0

    goto :goto_f

    :catch_17
    move-exception v0

    goto :goto_19

    :catch_18
    move-exception v0

    goto :goto_e

    :catch_19
    move-exception v0

    goto :goto_18

    :catch_1a
    move-exception v0

    goto :goto_d

    :catch_1b
    move-exception v0

    goto :goto_17

    :catch_1c
    move-exception v0

    goto :goto_c

    :catch_1d
    move-exception v0

    goto :goto_16

    :catch_1e
    move-exception v0

    goto :goto_b

    :catch_1f
    move-exception v0

    goto :goto_15

    :catch_20
    move-exception v0

    const/4 v9, 0x0

    :goto_b
    const/4 v10, 0x0

    :goto_c
    const/4 v11, 0x0

    :goto_d
    const/4 v12, 0x0

    :goto_e
    const/4 v13, 0x0

    :goto_f
    const/4 v14, 0x0

    :goto_10
    const/4 v15, 0x0

    :goto_11
    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_12
    move-object v8, v14

    const/4 v3, 0x0

    const/16 v16, 0x0

    :goto_13
    const/16 v19, 0x0

    :goto_14
    const-string v2, "failed to parse incomplete IAB TCF data with Exception = "

    .line 54
    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IABTCFParser"

    invoke-static {v2, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :catch_21
    move-exception v0

    const/4 v9, 0x0

    :goto_15
    const/4 v10, 0x0

    :goto_16
    const/4 v11, 0x0

    :goto_17
    const/4 v12, 0x0

    :goto_18
    const/4 v13, 0x0

    :goto_19
    const/4 v14, 0x0

    :goto_1a
    const/4 v15, 0x0

    :goto_1b
    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_1c
    move-object v8, v14

    const/4 v3, 0x0

    const/16 v16, 0x0

    :goto_1d
    const/16 v19, 0x0

    :goto_1e
    const-string v2, "failed to parse IAB TCF Data with Exception = "

    .line 55
    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IABTCFParser"

    invoke-static {v2, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    move-object v14, v8

    move-object/from16 v2, v16

    :goto_20
    move-object/from16 v8, v18

    move-object/from16 v0, v19

    .line 56
    :goto_21
    iget-object v4, v1, La/b/a/p/e;->b:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "IABTCF_CmpSdkID"

    .line 59
    :try_start_11
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_22

    const-string v5, "IABTCF_CmpSdkVersion"

    .line 60
    :try_start_12
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_22

    const-string v5, "IABTCF_gdprApplies"

    .line 61
    :try_start_13
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_22

    const-string v5, "IABTCF_PolicyVersion"

    .line 62
    :try_start_14
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_22

    const-string v5, "IABTCF_PurposeOneTreatment"

    .line 63
    :try_start_15
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_22

    const-string v5, "IABTCF_UseNonStandardStacks"

    .line 64
    :try_start_16
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_22

    const-string v5, "IABTCF_SpecialFeaturesOptIns"

    .line 65
    :try_start_17
    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_22

    const-string v5, "IABTCF_PublisherCC"

    .line 66
    :try_start_18
    invoke-interface {v4, v5, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_22

    const-string v5, "IABTCF_PublisherConsent"

    .line 67
    :try_start_19
    iget-object v6, v3, La/b/a/c/i;->a:Ljava/lang/String;

    .line 68
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_22

    const-string v5, "IABTCF_PublisherLegitimateInterests"

    .line 69
    :try_start_1a
    iget-object v6, v3, La/b/a/c/i;->b:Ljava/lang/String;

    .line 70
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_22

    const-string v5, "IABTCF_PublisherCustomPurposesConsents"

    .line 71
    :try_start_1b
    iget-object v6, v3, La/b/a/c/i;->c:La/b/a/c/a;

    .line 72
    iget-object v6, v6, La/b/a/c/a;->a:Ljava/lang/String;

    .line 73
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_22

    const-string v5, "IABTCF_PublisherCustomPurposesLegitimateInterests"

    .line 74
    :try_start_1c
    iget-object v6, v3, La/b/a/c/i;->c:La/b/a/c/a;

    .line 75
    iget-object v6, v6, La/b/a/c/a;->b:Ljava/lang/String;

    .line 76
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_22

    const-string v5, "IABTCF_PurposeConsents"

    .line 77
    :try_start_1d
    iget-object v6, v0, La/b/a/c/j;->a:Ljava/lang/String;

    .line 78
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_22

    const-string v5, "IABTCF_PurposeLegitimateInterests"

    .line 79
    :try_start_1e
    iget-object v0, v0, La/b/a/c/j;->b:Ljava/lang/String;

    .line 80
    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_22

    const-string v0, "IABTCF_TCString"

    .line 81
    :try_start_1f
    invoke-interface {v4, v0, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_22

    const-string v0, "IABTCF_VendorConsents"

    .line 82
    :try_start_20
    iget-object v5, v2, La/b/a/c/n;->a:Ljava/lang/String;

    .line 83
    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_22

    const-string v0, "IABTCF_VendorLegitimateInterests"

    .line 84
    :try_start_21
    iget-object v2, v2, La/b/a/c/n;->b:Ljava/lang/String;

    .line 85
    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    iget-object v0, v3, La/b/a/c/i;->d:La/b/a/c/k;

    if-eqz v0, :cond_8

    .line 87
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 88
    iget-object v2, v3, La/b/a/c/i;->d:La/b/a/c/k;

    .line 89
    iget-object v2, v2, La/b/a/c/k;->a:Ljava/util/Map;

    .line 90
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 91
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 92
    iget-object v6, v3, La/b/a/c/i;->d:La/b/a/c/k;

    .line 93
    iget-object v6, v6, La/b/a/c/k;->a:Ljava/util/Map;

    .line 94
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IABTCF_PublisherRestrictions"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_22

    const-string v6, "IAB2.0SPV"

    .line 98
    :try_start_22
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restrictions"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 101
    :cond_7
    iget-object v2, v1, La/b/a/p/e;->a:Landroid/content/Context;

    const-string v3, "com.onetrust.otpublisherssdk.Internal.preference"

    const/4 v5, 0x0

    .line 102
    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 103
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_22

    const-string v3, "OT_IAB2_RESTRICTIONS_KEYS"

    :try_start_23
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 105
    :cond_8
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    const-string v2, "failed to save IAB TCF data with exception = "

    .line 107
    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IAB2.0SPV"

    invoke-static {v2, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_23
    iget-object v0, v1, La/b/a/p/e;->a:Landroid/content/Context;

    .line 111
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "IABConsent_CMPPresent"

    .line 113
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "IABConsent_CMPPresent"

    .line 114
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "IABConsent_SubjectToGDPR"

    .line 115
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "IABConsent_ConsentString"

    .line 116
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "IABConsent_ParsedPurposeConsents"

    .line 117
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "IABConsent_ParsedVendorConsents"

    .line 118
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    :cond_9
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "IAB1.0SPV"

    const-string v2, "IAB 1.0 preferences deprecated and deleted"

    .line 121
    invoke-static {v0, v2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "IAB2.0SPV"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public d()V
    .locals 5

    .line 1
    iget-object v0, p0, La/b/a/p/e;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    iget-object v1, p0, La/b/a/p/e;->b:Landroid/content/SharedPreferences;

    const-string v2, "IABTCF_CmpSdkID"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "IABTCF_CmpSdkID"

    .line 3
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "IABTCF_CmpSdkVersion"

    .line 4
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "IABTCF_gdprApplies"

    .line 5
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "IABTCF_PolicyVersion"

    .line 6
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "IABTCF_PurposeOneTreatment"

    .line 7
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "IABTCF_UseNonStandardStacks"

    .line 8
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "IABTCF_SpecialFeaturesOptIns"

    .line 9
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "IABTCF_PublisherCC"

    .line 10
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "IABTCF_PublisherConsent"

    .line 11
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "IABTCF_PublisherLegitimateInterests"

    .line 12
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "IABTCF_PublisherCustomPurposesConsents"

    .line 13
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "IABTCF_PublisherCustomPurposesLegitimateInterests"

    .line 14
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "IABTCF_PurposeConsents"

    .line 15
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "IABTCF_PurposeLegitimateInterests"

    .line 16
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "IABTCF_TCString"

    .line 17
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "IABTCF_VendorConsents"

    .line 18
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "IABTCF_VendorLegitimateInterests"

    .line 19
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    iget-object v1, p0, La/b/a/p/e;->a:Landroid/content/Context;

    const-string v2, "com.onetrust.otpublisherssdk.Internal.preference"

    const/4 v3, 0x0

    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "OT_IAB2_RESTRICTIONS_KEYS"

    .line 22
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    const-string v2, "OT_IAB2_RESTRICTIONS_KEYS"

    const-string v4, ""

    .line 24
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 27
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 28
    iget-object v1, p0, La/b/a/p/e;->b:Landroid/content/SharedPreferences;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "failed to delete IAB2 restrictions error ="

    .line 34
    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IAB2.0SPV"

    invoke-static {v2, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "IAB2.0SPV"

    const-string v1, "IAB 2.0 preferences deleted"

    .line 40
    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
