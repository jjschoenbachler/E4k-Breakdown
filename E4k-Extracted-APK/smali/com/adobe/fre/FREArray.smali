.class public Lcom/adobe/fre/FREArray;
.super Lcom/adobe/fre/FREObject;
.source "FREArray.java"


# direct methods
.method private constructor <init>(Lcom/adobe/fre/FREObject$CFREObjectWrapper;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/adobe/fre/FREObject;-><init>(Lcom/adobe/fre/FREObject$CFREObjectWrapper;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FRETypeMismatchException;,
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREASErrorException;,
            Lcom/adobe/fre/FRENoSuchNameException;,
            Lcom/adobe/fre/FREWrongThreadException;
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vector.<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/adobe/fre/FREObject;-><init>(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)V

    return-void
.end method

.method protected constructor <init>([Lcom/adobe/fre/FREObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FRETypeMismatchException;,
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREASErrorException;,
            Lcom/adobe/fre/FRENoSuchNameException;,
            Lcom/adobe/fre/FREWrongThreadException;
        }
    .end annotation

    const-string v0, "Array"

    .line 61
    invoke-direct {p0, v0, p1}, Lcom/adobe/fre/FREObject;-><init>(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)V

    return-void
.end method

.method public static newArray(I)Lcom/adobe/fre/FREArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREASErrorException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 107
    new-array v0, v0, [Lcom/adobe/fre/FREObject;

    .line 108
    new-instance v1, Lcom/adobe/fre/FREObject;

    invoke-direct {v1, p0}, Lcom/adobe/fre/FREObject;-><init>(I)V

    const/4 p0, 0x0

    aput-object v1, v0, p0

    .line 112
    :try_start_0
    new-instance p0, Lcom/adobe/fre/FREArray;

    invoke-direct {p0, v0}, Lcom/adobe/fre/FREArray;-><init>([Lcom/adobe/fre/FREObject;)V
    :try_end_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRENoSuchNameException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static newArray(Ljava/lang/String;IZ)Lcom/adobe/fre/FREArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREASErrorException;,
            Lcom/adobe/fre/FRENoSuchNameException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 80
    new-array v0, v0, [Lcom/adobe/fre/FREObject;

    .line 81
    new-instance v1, Lcom/adobe/fre/FREObject;

    invoke-direct {v1, p1}, Lcom/adobe/fre/FREObject;-><init>(I)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    .line 82
    new-instance p1, Lcom/adobe/fre/FREObject;

    invoke-direct {p1, p2}, Lcom/adobe/fre/FREObject;-><init>(Z)V

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 86
    :try_start_0
    new-instance p1, Lcom/adobe/fre/FREArray;

    invoke-direct {p1, p0, v0}, Lcom/adobe/fre/FREArray;-><init>(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)V
    :try_end_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public native getLength()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREWrongThreadException;
        }
    .end annotation
.end method

.method public native getObjectAt(J)Lcom/adobe/fre/FREObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREInvalidObjectException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/adobe/fre/FREWrongThreadException;
        }
    .end annotation
.end method

.method public native setLength(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREInvalidObjectException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/adobe/fre/FREReadOnlyException;,
            Lcom/adobe/fre/FREWrongThreadException;
        }
    .end annotation
.end method

.method public native setObjectAt(JLcom/adobe/fre/FREObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FRETypeMismatchException;,
            Lcom/adobe/fre/FREWrongThreadException;
        }
    .end annotation
.end method
