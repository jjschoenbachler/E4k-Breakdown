.class public Lpl/mateuszmackowiak/nativeANE/FREUtilities;
.super Ljava/lang/Object;
.source "FREUtilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertFREArrayToBooleadArray(Lcom/adobe/fre/FREArray;)[Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;,
            Lcom/adobe/fre/FRETypeMismatchException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_1

    .line 80
    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    int-to-long v3, v2

    .line 83
    invoke-virtual {p0, v3, v4}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v3

    .line 84
    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertFREArrayToCharSequenceArray(Lcom/adobe/fre/FREArray;)[Ljava/lang/CharSequence;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;,
            Lcom/adobe/fre/FRETypeMismatchException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_1

    .line 16
    new-array v1, v0, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    int-to-long v3, v2

    .line 19
    invoke-virtual {p0, v3, v4}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertFREArrayToDoubleArray(Lcom/adobe/fre/FREArray;)[D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;,
            Lcom/adobe/fre/FRETypeMismatchException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_1

    .line 50
    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    int-to-long v3, v2

    .line 53
    invoke-virtual {p0, v3, v4}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v3

    .line 54
    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertFREArrayToIntArray(Lcom/adobe/fre/FREArray;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;,
            Lcom/adobe/fre/FRETypeMismatchException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_1

    .line 34
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    int-to-long v3, v2

    .line 37
    invoke-virtual {p0, v3, v4}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v3

    .line 38
    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertFREArrayToStringArray(Lcom/adobe/fre/FREArray;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;,
            Lcom/adobe/fre/FRETypeMismatchException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_1

    .line 66
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    int-to-long v3, v2

    .line 69
    invoke-virtual {p0, v3, v4}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v3

    .line 70
    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
