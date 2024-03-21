.class public Lcom/facebook/applinks/AppLinkData;
.super Ljava/lang/Object;
.source "AppLinkData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/applinks/AppLinkData$CompletionHandler;
    }
.end annotation


# static fields
.field private static final APPLINK_BRIDGE_ARGS_KEY:Ljava/lang/String; = "bridge_args"

.field private static final APPLINK_METHOD_ARGS_KEY:Ljava/lang/String; = "method_args"

.field private static final APPLINK_VERSION_KEY:Ljava/lang/String; = "version"

.field public static final ARGUMENTS_EXTRAS_KEY:Ljava/lang/String; = "extras"

.field public static final ARGUMENTS_NATIVE_CLASS_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_NATIVE_CLASS"

.field public static final ARGUMENTS_NATIVE_URL:Ljava/lang/String; = "com.facebook.platform.APPLINK_NATIVE_URL"

.field public static final ARGUMENTS_REFERER_DATA_KEY:Ljava/lang/String; = "referer_data"

.field public static final ARGUMENTS_TAPTIME_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_TAP_TIME_UTC"

.field private static final AUTO_APPLINK_FLAG_KEY:Ljava/lang/String; = "is_auto_applink"

.field private static final BRIDGE_ARGS_METHOD_KEY:Ljava/lang/String; = "method"

.field private static final BUNDLE_AL_APPLINK_DATA_KEY:Ljava/lang/String; = "al_applink_data"

.field private static final BUNDLE_APPLINK_ARGS_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_ARGS"

.field private static final DEFERRED_APP_LINK_ARGS_FIELD:Ljava/lang/String; = "applink_args"

.field private static final DEFERRED_APP_LINK_CLASS_FIELD:Ljava/lang/String; = "applink_class"

.field private static final DEFERRED_APP_LINK_CLICK_TIME_FIELD:Ljava/lang/String; = "click_time"

.field private static final DEFERRED_APP_LINK_EVENT:Ljava/lang/String; = "DEFERRED_APP_LINK"

.field private static final DEFERRED_APP_LINK_PATH:Ljava/lang/String; = "%s/activities"

.field private static final DEFERRED_APP_LINK_URL_FIELD:Ljava/lang/String; = "applink_url"

.field private static final EXTRAS_DEEPLINK_CONTEXT_KEY:Ljava/lang/String; = "deeplink_context"

.field private static final METHOD_ARGS_REF_KEY:Ljava/lang/String; = "ref"

.field private static final METHOD_ARGS_TARGET_URL_KEY:Ljava/lang/String; = "target_url"

.field private static final PROMOTION_CODE_KEY:Ljava/lang/String; = "promo_code"

.field private static final REFERER_DATA_REF_KEY:Ljava/lang/String; = "fb_ref"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appLinkData:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private argumentBundle:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private arguments:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private promotionCode:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ref:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private targetUri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    const-class v0, Lcom/facebook/applinks/AppLinkData;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .locals 0

    .line 48
    invoke-static {p0, p1, p2}, Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkFromServer(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    return-void
.end method

.method public static createFromActivity(Landroid/app/Activity;)Lcom/facebook/applinks/AppLinkData;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/applinks/AppLinkData;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "activity"

    .line 243
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 249
    :cond_1
    invoke-static {p0}, Lcom/facebook/applinks/AppLinkData;->createFromAlApplinkData(Landroid/content/Intent;)Lcom/facebook/applinks/AppLinkData;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "com.facebook.platform.APPLINK_ARGS"

    .line 251
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {v0}, Lcom/facebook/applinks/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/facebook/applinks/AppLinkData;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 256
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/applinks/AppLinkData;->createFromUri(Landroid/net/Uri;)Lcom/facebook/applinks/AppLinkData;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception p0

    .line 259
    const-class v0, Lcom/facebook/applinks/AppLinkData;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static createFromAlApplinkData(Landroid/content/Intent;)Lcom/facebook/applinks/AppLinkData;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/applinks/AppLinkData;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    const-string v0, "al_applink_data"

    .line 275
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 280
    :cond_2
    new-instance v2, Lcom/facebook/applinks/AppLinkData;

    invoke-direct {v2}, Lcom/facebook/applinks/AppLinkData;-><init>()V

    .line 281
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    iput-object p0, v2, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 282
    iget-object p0, v2, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/facebook/applinks/AppLinkData;->getAppLinkData(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v2, Lcom/facebook/applinks/AppLinkData;->appLinkData:Lorg/json/JSONObject;

    .line 283
    iget-object p0, v2, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    if-nez p0, :cond_3

    const-string p0, "target_url"

    .line 284
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 286
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, v2, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 289
    :cond_3
    iput-object v0, v2, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    .line 290
    iput-object v1, v2, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string p0, "referer_data"

    .line 291
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string v3, "fb_ref"

    .line 293
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;

    :cond_4
    const-string p0, "extras"

    .line 296
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string v0, "deeplink_context"

    .line 298
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_5

    .line 301
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "promo_code"

    .line 302
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "promo_code"

    .line 303
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/facebook/applinks/AppLinkData;->promotionCode:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 306
    :try_start_2
    sget-object v0, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v3, "Unable to parse deeplink_context JSON"

    invoke-static {v0, v3, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    :goto_0
    return-object v2

    :catch_1
    move-exception p0

    .line 311
    const-class v0, Lcom/facebook/applinks/AppLinkData;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static createFromJson(Ljava/lang/String;)Lcom/facebook/applinks/AppLinkData;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 322
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "version"

    .line 323
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "bridge_args"

    .line 325
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "method"

    .line 326
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "applink"

    .line 327
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "2"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 329
    new-instance p0, Lcom/facebook/applinks/AppLinkData;

    invoke-direct {p0}, Lcom/facebook/applinks/AppLinkData;-><init>()V

    const-string v2, "method_args"

    .line 331
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    .line 333
    iget-object v1, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "ref"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "ref"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;

    goto :goto_0

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "referer_data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 337
    iget-object v1, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "referer_data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "fb_ref"

    .line 338
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "fb_ref"

    .line 339
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;

    .line 343
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "target_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 344
    iget-object v1, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "target_url"

    .line 345
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 346
    iget-object v1, p0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/facebook/applinks/AppLinkData;->getAppLinkData(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/applinks/AppLinkData;->appLinkData:Lorg/json/JSONObject;

    .line 349
    :cond_3
    iget-object v1, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "extras"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 350
    iget-object v1, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "extras"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "deeplink_context"

    .line 351
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "deeplink_context"

    .line 352
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "promo_code"

    .line 353
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "promo_code"

    .line 354
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/applinks/AppLinkData;->promotionCode:Ljava/lang/String;

    .line 359
    :cond_4
    iget-object v1, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/facebook/applinks/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 366
    sget-object v1, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v2, "Unable to parse AppLink JSON"

    invoke-static {v1, v2, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 364
    sget-object v1, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v2, "Unable to parse AppLink JSON"

    invoke-static {v1, v2, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-object v0
.end method

.method private static createFromUri(Landroid/net/Uri;)Lcom/facebook/applinks/AppLinkData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 378
    :cond_0
    new-instance v0, Lcom/facebook/applinks/AppLinkData;

    invoke-direct {v0}, Lcom/facebook/applinks/AppLinkData;-><init>()V

    .line 379
    iput-object p0, v0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 380
    iget-object p0, v0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/facebook/applinks/AppLinkData;->getAppLinkData(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/facebook/applinks/AppLinkData;->appLinkData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static fetchDeferredAppLinkData(Landroid/content/Context;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-static {p0, v0, p1}, Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    return-void
.end method

.method public static fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .locals 2

    const-string v0, "context"

    .line 127
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionHandler"

    .line 128
    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 131
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "applicationId"

    .line 134
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 138
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/applinks/AppLinkData$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/applinks/AppLinkData$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    .line 139
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static fetchDeferredAppLinkFromServer(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .locals 7

    .line 152
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "event"

    const-string v2, "DEFERRED_APP_LINK"

    .line 154
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v1

    .line 158
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v3

    .line 155
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Utility;->setAppEventAttributionParameters(Lorg/json/JSONObject;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Z)V

    .line 161
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 160
    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->setAppEventExtendedDeviceInfoParameters(Lorg/json/JSONObject;Landroid/content/Context;)V

    const-string v1, "application_package_name"

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5

    const-string p0, "%s/activities"

    const/4 v1, 0x1

    .line 167
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 172
    :try_start_1
    invoke-static {p1, p0, v0, p1}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p0

    .line 173
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object p0

    .line 174
    invoke-virtual {p0}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_6

    const-string v0, "applink_args"

    .line 176
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "click_time"

    const-wide/16 v2, -0x1

    .line 177
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "applink_class"

    .line 178
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "applink_url"

    .line 179
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 182
    invoke-static {v0}, Lcom/facebook/applinks/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/facebook/applinks/AppLinkData;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v0, :cond_5

    cmp-long p1, v4, v2

    if-eqz p1, :cond_1

    .line 186
    :try_start_2
    iget-object p1, v0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, v0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "com.facebook.platform.APPLINK_TAP_TIME_UTC"

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 189
    :cond_0
    iget-object p1, v0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 190
    iget-object p1, v0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string v2, "com.facebook.platform.APPLINK_TAP_TIME_UTC"

    .line 191
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    goto :goto_3

    .line 194
    :catch_1
    :try_start_3
    sget-object p1, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v2, "Unable to put tap time in AppLinkData.arguments"

    invoke-static {p1, v2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 200
    :try_start_4
    iget-object p1, v0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    .line 201
    iget-object p1, v0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v2, "com.facebook.platform.APPLINK_NATIVE_CLASS"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    :cond_2
    iget-object p1, v0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    .line 204
    iget-object p1, v0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string v2, "com.facebook.platform.APPLINK_NATIVE_CLASS"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 208
    :catch_2
    :try_start_5
    sget-object p1, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v1, "Unable to put app link class name in AppLinkData.arguments"

    invoke-static {p1, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_3
    :goto_1
    if-eqz p0, :cond_5

    .line 214
    :try_start_6
    iget-object p1, v0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    if-eqz p1, :cond_4

    .line 215
    iget-object p1, v0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v1, "com.facebook.platform.APPLINK_NATIVE_URL"

    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    :cond_4
    iget-object p1, v0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz p1, :cond_5

    .line 218
    iget-object p1, v0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string v1, "com.facebook.platform.APPLINK_NATIVE_URL"

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 221
    :catch_3
    :try_start_7
    sget-object p0, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string p1, "Unable to put app link URL in AppLinkData.arguments"

    invoke-static {p0, p1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_5
    :goto_2
    move-object p1, v0

    goto :goto_4

    .line 228
    :catch_4
    :goto_3
    sget-object p0, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v0, "Unable to fetch deferred applink from server"

    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_6
    :goto_4
    invoke-interface {p2, p1}, Lcom/facebook/applinks/AppLinkData$CompletionHandler;->onDeferredAppLinkDataFetched(Lcom/facebook/applinks/AppLinkData;)V

    return-void

    :catch_5
    move-exception p0

    .line 164
    new-instance p1, Lcom/facebook/FacebookException;

    const-string p2, "An error occurred while preparing deferred app link"

    invoke-direct {p1, p2, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static getAppLinkData(Landroid/net/Uri;)Lorg/json/JSONObject;
    .locals 2
    .param p0    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/applinks/AppLinkData;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    const-string v0, "al_applink_data"

    .line 431
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p0, :cond_2

    return-object v1

    .line 436
    :cond_2
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_0
    return-object v1

    :catch_1
    move-exception p0

    .line 440
    const-class v0, Lcom/facebook/applinks/AppLinkData;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 385
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 386
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 387
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 388
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 390
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 392
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    .line 393
    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/facebook/applinks/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 394
    :cond_0
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_6

    .line 395
    check-cast v3, Lorg/json/JSONArray;

    .line 396
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 397
    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_1
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 400
    instance-of v6, v4, Lorg/json/JSONObject;

    if-eqz v6, :cond_3

    .line 401
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Landroid/os/Bundle;

    .line 402
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 403
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/applinks/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 405
    :cond_2
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0

    .line 406
    :cond_3
    instance-of v4, v4, Lorg/json/JSONArray;

    if-nez v4, :cond_5

    .line 410
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 411
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 412
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 414
    :cond_4
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_5
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v0, "Nested arrays are not supported."

    invoke-direct {p0, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 418
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method


# virtual methods
.method public getAppLinkData()Lorg/json/JSONObject;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->appLinkData:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->appLinkData:Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    return-object v0
.end method

.method public getArgumentBundle()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPromotionCode()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->promotionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getRefererData()Landroid/os/Bundle;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string v1, "referer_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isAutoAppLink()Z
    .locals 8

    .line 446
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 450
    iget-object v2, p0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "applinks"

    const-string v4, "fb%s"

    const/4 v5, 0x1

    .line 452
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 453
    iget-object v6, p0, Lcom/facebook/applinks/AppLinkData;->appLinkData:Lorg/json/JSONObject;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/facebook/applinks/AppLinkData;->appLinkData:Lorg/json/JSONObject;

    const-string v7, "is_auto_applink"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_2

    .line 454
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
