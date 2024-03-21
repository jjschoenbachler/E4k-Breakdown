.class public Lcom/marpies/ane/facebook/utils/FREObjectUtils;
.super Ljava/lang/Object;
.source "FREObjectUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArrayOfStringFromFREArray(Lcom/adobe/fre/FREArray;)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    .line 91
    new-array v2, v1, [Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    int-to-long v3, v0

    .line 94
    :try_start_1
    invoke-virtual {p0, v3, v4}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-static {v3}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception v3

    .line 96
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_3
    move-exception p0

    move-object v2, v0

    .line 102
    :goto_2
    invoke-virtual {p0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception p0

    move-object v2, v0

    .line 100
    :goto_3
    invoke-virtual {p0}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    :cond_0
    :goto_4
    return-object v2
.end method

.method public static getBooleanFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;
    .locals 0

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 62
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static getBundleFromFREArray(Lcom/adobe/fre/FREArray;)Landroid/os/Bundle;
    .locals 10

    const/4 v0, 0x0

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 114
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    const-wide/16 v6, 0x1

    add-long v8, v3, v6

    .line 116
    :try_start_1
    invoke-virtual {p0, v3, v4}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v0

    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    add-long v3, v8, v6

    .line 117
    invoke-virtual {p0, v8, v9}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v6

    invoke-static {v6}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v6

    .line 118
    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v0, v5

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v0, v5

    goto :goto_2

    :cond_0
    move-object v0, v5

    goto :goto_3

    :catch_2
    move-exception p0

    .line 124
    :goto_1
    invoke-virtual {p0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception p0

    .line 122
    :goto_2
    invoke-virtual {p0}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    :cond_1
    :goto_3
    return-object v0
.end method

.method public static getDoubleFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Double;
    .locals 2

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIntFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;
    .locals 0

    .line 32
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getJSONObjectFromFREArray(Lcom/adobe/fre/FREArray;)Lorg/json/JSONObject;
    .locals 10

    const/4 v0, 0x0

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 136
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    const-wide/16 v6, 0x1

    add-long v8, v3, v6

    .line 138
    :try_start_1
    invoke-virtual {p0, v3, v4}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v0

    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    add-long v3, v8, v6

    .line 139
    invoke-virtual {p0, v8, v9}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v6

    invoke-static {v6}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v6

    .line 140
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v0, v5

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v0, v5

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v0, v5

    goto :goto_3

    :cond_0
    move-object v0, v5

    goto :goto_4

    :catch_3
    move-exception p0

    .line 148
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception p0

    .line 146
    :goto_2
    invoke-virtual {p0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_4

    :catch_5
    move-exception p0

    .line 144
    :goto_3
    invoke-virtual {p0}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    :cond_1
    :goto_4
    return-object v0
.end method

.method public static getListOfStringFromFREArray(Lcom/adobe/fre/FREArray;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/fre/FREArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    int-to-long v2, v1

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 73
    :try_start_1
    invoke-virtual {p0, v2, v3}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-static {v2}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 75
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :catch_1
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;
    .locals 0

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVectorFromSet(IZLjava/util/Set;)Lcom/adobe/fre/FREArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/adobe/fre/FREArray;"
        }
    .end annotation

    :try_start_0
    const-string v0, "String"

    .line 156
    invoke-static {v0, p0, p1}, Lcom/adobe/fre/FREArray;->newArray(Ljava/lang/String;IZ)Lcom/adobe/fre/FREArray;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 158
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 159
    invoke-static {p2}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p2

    invoke-virtual {p0, v0, v1, p2}, Lcom/adobe/fre/FREArray;->setObjectAt(JLcom/adobe/fre/FREObject;)V
    :try_end_0
    .catch Lcom/adobe/fre/FREASErrorException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/adobe/fre/FRENoSuchNameException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    goto :goto_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    .line 171
    invoke-virtual {p0}, Lcom/adobe/fre/FRETypeMismatchException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 169
    invoke-virtual {p0}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 167
    invoke-virtual {p0}, Lcom/adobe/fre/FRENoSuchNameException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception p0

    .line 165
    invoke-virtual {p0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception p0

    .line 163
    invoke-virtual {p0}, Lcom/adobe/fre/FREASErrorException;->printStackTrace()V

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
