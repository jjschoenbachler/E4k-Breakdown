.class public Lcom/goodgamestudios/extension/functions/GetCarrierInfoFunction;
.super Ljava/lang/Object;
.source "GetCarrierInfoFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3

    .line 24
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 25
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 26
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 28
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "com.goodgamestudios.extension.ane.MobileCarrierInfo"

    .line 31
    invoke-static {v2, v0}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v2
    :try_end_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lcom/adobe/fre/FREASErrorException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lcom/adobe/fre/FRENoSuchNameException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/adobe/fre/FREReadOnlyException; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    const-string v0, "mcc"

    .line 32
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/adobe/fre/FREObject;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V

    const-string v0, "mnc"

    .line 33
    invoke-static {p2}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p2

    invoke-virtual {v2, v0, p2}, Lcom/adobe/fre/FREObject;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V

    const-string p2, "name"

    .line 34
    invoke-static {p1}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Lcom/adobe/fre/FREObject;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V
    :try_end_1
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/adobe/fre/FREASErrorException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/adobe/fre/FRENoSuchNameException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/adobe/fre/FREReadOnlyException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_3

    :catch_4
    move-exception p1

    goto :goto_4

    :catch_5
    move-exception p1

    goto :goto_5

    :catch_6
    move-exception p1

    move-object v2, v0

    .line 46
    :goto_0
    invoke-virtual {p1}, Lcom/adobe/fre/FREReadOnlyException;->printStackTrace()V

    goto :goto_6

    :catch_7
    move-exception p1

    move-object v2, v0

    .line 44
    :goto_1
    invoke-virtual {p1}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_6

    :catch_8
    move-exception p1

    move-object v2, v0

    .line 42
    :goto_2
    invoke-virtual {p1}, Lcom/adobe/fre/FRENoSuchNameException;->printStackTrace()V

    goto :goto_6

    :catch_9
    move-exception p1

    move-object v2, v0

    .line 40
    :goto_3
    invoke-virtual {p1}, Lcom/adobe/fre/FREASErrorException;->printStackTrace()V

    goto :goto_6

    :catch_a
    move-exception p1

    move-object v2, v0

    .line 38
    :goto_4
    invoke-virtual {p1}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    goto :goto_6

    :catch_b
    move-exception p1

    move-object v2, v0

    .line 36
    :goto_5
    invoke-virtual {p1}, Lcom/adobe/fre/FRETypeMismatchException;->printStackTrace()V

    :goto_6
    return-object v2
.end method
