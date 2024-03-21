.class public Lcom/ironsource/sdk/analytics/omid/OMIDManager;
.super Ljava/lang/Object;
.source "OMIDManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;
    }
.end annotation


# static fields
.field private static final INVALID_OMID_IMPRESSION_OWNER_MESSAGE:Ljava/lang/String; = "Invalid OMID impressionOwner"

.field private static final INVALID_OMID_VIDEO_EVENTS_TYPE_MESSAGE:Ljava/lang/String; = "Invalid OMID videoEventsOwner"

.field private static final MISSING_OMID_ADVIEW_ID_MESSAGE:Ljava/lang/String; = "Missing adview id in OMID params"

.field private static final MISSING_OMID_IMPRESSION_OWNER_MESSAGE:Ljava/lang/String; = "Missing OMID impressionOwner"

.field private static final MISSING_OMID_VIDEO_EVENTS_CREATIVE_TYPE_MESSAGE:Ljava/lang/String; = "Missing OMID creativeType"

.field private static final MISSING_OMID_VIDEO_EVENTS_OWNER_MESSAGE:Ljava/lang/String; = "Missing OMID videoEventsOwner"

.field public static final OMID_ACTIVE_AD_SESSIONS:Ljava/lang/String; = "omidActiveAdSessions"

.field private static final OMID_ADVIEW_NOT_FOUND:Ljava/lang/String; = "No adview found with the provided adViewId"

.field private static final OMID_HAS_NOT_BEEN_ACTIVATED_MESSAGE:Ljava/lang/String; = "OMID has not been activated"

.field public static final OMID_LIB_VERSION:Ljava/lang/String;

.field public static final OMID_PARTNER_NAME:Ljava/lang/String; = "Ironsrc"

.field public static final OMID_PARTNER_NAME_PROPERTY_NAME:Ljava/lang/String; = "omidPartnerName"

.field public static final OMID_PARTNER_VERSION:Ljava/lang/String; = "7"

.field public static final OMID_PARTNER_VERSION_PROPERTY_NAME:Ljava/lang/String; = "omidPartnerVersion"

.field private static final OMID_SESSION_ALREADY_STARTED:Ljava/lang/String; = "OMID Session has already started"

.field private static final OMID_SESSION_NOT_STARTED:Ljava/lang/String; = "OMID Session has not started"

.field public static final OMID_VERSION_PROPERTY_NAME:Ljava/lang/String; = "omidVersion"


# instance fields
.field private final mActiveAdSessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/iab/omid/library/ironsrc/adsession/AdSession;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActivated:Z

.field private final mPartner:Lcom/iab/omid/library/ironsrc/adsession/Partner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Lcom/iab/omid/library/ironsrc/Omid;->getVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->OMID_LIB_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Ironsrc"

    const-string v1, "7"

    .line 159
    invoke-static {v0, v1}, Lcom/iab/omid/library/ironsrc/adsession/Partner;->createPartner(Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/ironsrc/adsession/Partner;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mPartner:Lcom/iab/omid/library/ironsrc/adsession/Partner;

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mIsActivated:Z

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mActiveAdSessions:Ljava/util/HashMap;

    return-void
.end method

.method private assertAdSession(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 262
    iget-boolean v0, p0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mIsActivated:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    return-void

    .line 267
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "OMID Session has not started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 263
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "OMID has not been activated"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createSession(Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;Lcom/ironsource/sdk/WPAD/ISNPresentableAdView;)Lcom/iab/omid/library/ironsrc/adsession/AdSession;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 219
    iget-object v0, p1, Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;->creativeType:Lcom/iab/omid/library/ironsrc/adsession/CreativeType;

    iget-object v1, p1, Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;->impressionType:Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;

    iget-object v2, p1, Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;->impressionOwner:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    iget-object v3, p1, Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;->videoEventsOwner:Lcom/iab/omid/library/ironsrc/adsession/Owner;

    iget-boolean v4, p1, Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;->isolateVerificationScripts:Z

    .line 220
    invoke-static {v0, v1, v2, v3, v4}, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/ironsrc/adsession/CreativeType;Lcom/iab/omid/library/ironsrc/adsession/ImpressionType;Lcom/iab/omid/library/ironsrc/adsession/Owner;Lcom/iab/omid/library/ironsrc/adsession/Owner;Z)Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mPartner:Lcom/iab/omid/library/ironsrc/adsession/Partner;

    invoke-interface {p2}, Lcom/ironsource/sdk/WPAD/ISNPresentableAdView;->getPresentingView()Landroid/webkit/WebView;

    move-result-object v2

    iget-object p1, p1, Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;->customReferenceData:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1}, Lcom/iab/omid/library/ironsrc/adsession/AdSessionContext;->createHtmlAdSessionContext(Lcom/iab/omid/library/ironsrc/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/ironsrc/adsession/AdSessionContext;

    move-result-object p1

    .line 229
    invoke-static {v0, p1}, Lcom/iab/omid/library/ironsrc/adsession/AdSession;->createAdSession(Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;Lcom/iab/omid/library/ironsrc/adsession/AdSessionContext;)Lcom/iab/omid/library/ironsrc/adsession/AdSession;

    move-result-object p1

    .line 230
    invoke-interface {p2}, Lcom/ironsource/sdk/WPAD/ISNPresentableAdView;->getPresentingView()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/iab/omid/library/ironsrc/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    return-object p1
.end method


# virtual methods
.method public activate(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 171
    iget-boolean v0, p0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mIsActivated:Z

    if-nez v0, :cond_0

    .line 172
    invoke-static {p1}, Lcom/iab/omid/library/ironsrc/Omid;->activate(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 173
    iput-boolean p1, p0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mIsActivated:Z

    :cond_0
    return-void
.end method

.method public finishSession(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 235
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->assertAdSession(Lorg/json/JSONObject;)V

    const-string v0, "adViewId"

    .line 236
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 237
    iget-object v0, p0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mActiveAdSessions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iab/omid/library/ironsrc/adsession/AdSession;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/adsession/AdSession;->finish()V

    .line 243
    iget-object v0, p0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mActiveAdSessions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 239
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "OMID Session has not started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getOMIDData()Lcom/ironsource/sdk/data/SSAObj;
    .locals 3

    .line 178
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0}, Lcom/ironsource/sdk/data/SSAObj;-><init>()V

    const-string v1, "omidVersion"

    .line 180
    sget-object v2, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->OMID_LIB_VERSION:Ljava/lang/String;

    invoke-static {v2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "omidPartnerName"

    const-string v2, "Ironsrc"

    .line 181
    invoke-static {v2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "omidPartnerVersion"

    const-string v2, "7"

    .line 182
    invoke-static {v2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "omidActiveAdSessions"

    .line 183
    iget-object v2, p0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mActiveAdSessions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public impressionOccurred(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 247
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->assertAdSession(Lorg/json/JSONObject;)V

    .line 248
    iget-object v0, p0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mActiveAdSessions:Ljava/util/HashMap;

    const-string v1, "adViewId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iab/omid/library/ironsrc/adsession/AdSession;

    if-eqz v0, :cond_1

    .line 253
    invoke-static {v0}, Lcom/iab/omid/library/ironsrc/adsession/AdEvents;->createAdEvents(Lcom/iab/omid/library/ironsrc/adsession/AdSession;)Lcom/iab/omid/library/ironsrc/adsession/AdEvents;

    move-result-object v0

    const-string v1, "signalLoaded"

    .line 254
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/adsession/AdEvents;->loaded()V

    .line 258
    :cond_0
    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/adsession/AdEvents;->impressionOccurred()V

    return-void

    .line 250
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "OMID Session has not started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startSession(Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 194
    iget-boolean v0, p0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mIsActivated:Z

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p1, Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;->adViewId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 202
    iget-object v0, p1, Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;->adViewId:Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mActiveAdSessions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 207
    invoke-static {}, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->getInstance()Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/sdk/WPAD/ISNAdViewsManager;->getAdView(Ljava/lang/String;)Lcom/ironsource/sdk/WPAD/ISNPresentableAdView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 212
    invoke-direct {p0, p1, v1}, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->createSession(Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;Lcom/ironsource/sdk/WPAD/ISNPresentableAdView;)Lcom/iab/omid/library/ironsrc/adsession/AdSession;

    move-result-object p1

    .line 213
    invoke-virtual {p1}, Lcom/iab/omid/library/ironsrc/adsession/AdSession;->start()V

    .line 214
    iget-object v1, p0, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->mActiveAdSessions:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 209
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No adview found with the provided adViewId"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 204
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "OMID Session has already started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 199
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing adview id in OMID params"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 195
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "OMID has not been activated"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startSession(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 189
    invoke-static {p1}, Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;->createFromJSON(Lorg/json/JSONObject;)Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;

    move-result-object p1

    .line 190
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/analytics/omid/OMIDManager;->startSession(Lcom/ironsource/sdk/analytics/omid/OMIDManager$OMIDOptions;)V

    return-void
.end method
