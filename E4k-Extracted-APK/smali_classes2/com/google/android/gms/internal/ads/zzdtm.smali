.class public final Lcom/google/android/gms/internal/ads/zzdtm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public static zza(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_4

    const/4 p2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 3
    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "including"

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "excluding"

    .line 5
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 6
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzdtm;->zzb(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzdtm;->zzb(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "effective_ad_unit_id"

    const-string p1, ""

    .line 7
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    const-string p0, ""

    return-object p0

    :cond_4
    const-string p0, ""

    return-object p0
.end method

.method private static zzb(Lorg/json/JSONArray;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 3
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v2

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzcge;

    move-result-object v3

    const-string v4, "RtbAdapterMap.hasAtleastOneRegexMatch"

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzcge;->zzk(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
