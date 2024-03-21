.class public Lcom/marpies/ane/facebook/functions/FetchDeferredAppLinkFunction;
.super Lcom/marpies/ane/facebook/functions/BaseFunction;
.source "FetchDeferredAppLinkFunction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/BaseFunction;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/marpies/ane/facebook/functions/FetchDeferredAppLinkFunction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/marpies/ane/facebook/functions/FetchDeferredAppLinkFunction;->parametersFromQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parametersFromQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "&"

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v6, p1, v4

    const-string v7, "="

    .line 90
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 91
    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    if-nez v5, :cond_1

    const-string v5, ","

    .line 94
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_1
    aget-object v5, v6, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    .line 98
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    aget-object v5, v6, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    .line 42
    invoke-super {p0, p1, p2}, Lcom/marpies/ane/facebook/functions/BaseFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    const/4 p1, 0x0

    .line 44
    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getIntFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 46
    invoke-static {}, Lcom/marpies/ane/facebook/utils/AIR;->getContext()Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/marpies/ane/facebook/functions/FetchDeferredAppLinkFunction$1;

    invoke-direct {v1, p0, p1}, Lcom/marpies/ane/facebook/functions/FetchDeferredAppLinkFunction$1;-><init>(Lcom/marpies/ane/facebook/functions/FetchDeferredAppLinkFunction;I)V

    invoke-static {p2, v0, v1}, Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    const/4 p1, 0x0

    return-object p1
.end method
