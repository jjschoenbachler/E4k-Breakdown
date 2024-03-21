.class public Lcom/goodgamestudios/ane/firebase/FREUtils;
.super Ljava/lang/Object;
.source "FREUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBooleanFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;
    .locals 0

    .line 18
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

    .line 20
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 21
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;
    .locals 0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
