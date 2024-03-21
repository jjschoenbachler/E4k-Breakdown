.class public Lcom/adobe/air/wand/message/json/JSONMessageDataObject;
.super Ljava/lang/Object;
.source "JSONMessageDataObject.java"

# interfaces
.implements Lcom/adobe/air/wand/message/MessageDataObject;


# instance fields
.field final mJSONObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getArray(Ljava/lang/String;)Lcom/adobe/air/wand/message/MessageDataArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;

    iget-object v1, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;-><init>(Lorg/json/JSONArray;)V

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 140
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 143
    :try_start_0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v3, ""

    .line 147
    aput-object v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getObject(Ljava/lang/String;)Lcom/adobe/air/wand/message/MessageDataObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;

    iget-object v1, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;D)Lcom/adobe/air/wand/message/MessageDataObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object p0
.end method

.method public put(Ljava/lang/String;I)Lcom/adobe/air/wand/message/MessageDataObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p0
.end method

.method public put(Ljava/lang/String;J)Lcom/adobe/air/wand/message/MessageDataObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object p0
.end method

.method public put(Ljava/lang/String;Lcom/adobe/air/wand/message/MessageDataArray;)Lcom/adobe/air/wand/message/MessageDataObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    check-cast p2, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;

    iget-object p2, p2, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0
.end method

.method public put(Ljava/lang/String;Lcom/adobe/air/wand/message/MessageDataObject;)Lcom/adobe/air/wand/message/MessageDataObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    check-cast p2, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;

    iget-object p2, p2, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/air/wand/message/MessageDataObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Lcom/adobe/air/wand/message/MessageDataObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
