.class public Lcom/adobe/air/wand/message/json/JSONMessageDataArray;
.super Ljava/lang/Object;
.source "JSONMessageDataArray.java"

# interfaces
.implements Lcom/adobe/air/wand/message/MessageDataArray;


# instance fields
.field final mJSONArray:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public getArray(I)Lcom/adobe/air/wand/message/MessageDataArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;

    iget-object v1, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;-><init>(Lorg/json/JSONArray;)V

    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result p1

    return p1
.end method

.method public getDouble(I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInt(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getObject(I)Lcom/adobe/air/wand/message/MessageDataObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;

    iget-object v1, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public length()I
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public put(D)Lcom/adobe/air/wand/message/MessageDataArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    return-object p0
.end method

.method public put(I)Lcom/adobe/air/wand/message/MessageDataArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    return-object p0
.end method

.method public put(ID)Lcom/adobe/air/wand/message/MessageDataArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONArray;->put(ID)Lorg/json/JSONArray;

    return-object p0
.end method

.method public put(II)Lcom/adobe/air/wand/message/MessageDataArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    return-object p0
.end method

.method public put(IJ)Lcom/adobe/air/wand/message/MessageDataArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    return-object p0
.end method

.method public put(ILcom/adobe/air/wand/message/MessageDataArray;)Lcom/adobe/air/wand/message/MessageDataArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    check-cast p2, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;

    iget-object p2, p2, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    return-object p0
.end method

.method public put(ILcom/adobe/air/wand/message/MessageDataObject;)Lcom/adobe/air/wand/message/MessageDataArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    check-cast p2, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;

    iget-object p2, p2, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    return-object p0
.end method

.method public put(ILjava/lang/String;)Lcom/adobe/air/wand/message/MessageDataArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    return-object p0
.end method

.method public put(IZ)Lcom/adobe/air/wand/message/MessageDataArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONArray;->put(IZ)Lorg/json/JSONArray;

    return-object p0
.end method

.method public put(J)Lcom/adobe/air/wand/message/MessageDataArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    return-object p0
.end method

.method public put(Lcom/adobe/air/wand/message/MessageDataArray;)Lcom/adobe/air/wand/message/MessageDataArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    check-cast p1, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;

    iget-object p1, p1, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-object p0
.end method

.method public put(Lcom/adobe/air/wand/message/MessageDataObject;)Lcom/adobe/air/wand/message/MessageDataArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    check-cast p1, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;

    iget-object p1, p1, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-object p0
.end method

.method public put(Ljava/lang/String;)Lcom/adobe/air/wand/message/MessageDataArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-object p0
.end method

.method public put(Z)Lcom/adobe/air/wand/message/MessageDataArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    return-object p0
.end method

.method public remove(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
