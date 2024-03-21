.class public Lcom/goodgamestudios/extension/util/FreUtils;
.super Ljava/lang/Object;
.source "FreUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBooleanFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;
    .locals 0

    .line 17
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

    .line 19
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDoubleFromFREObject(Lcom/adobe/fre/FREObject;)D
    .locals 2

    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getIntFromFREObject(Lcom/adobe/fre/FREObject;)I
    .locals 0

    .line 26
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;
    .locals 0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
