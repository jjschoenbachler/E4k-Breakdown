.class public Lcom/adobe/air/AdobeAIRMainActivity;
.super Landroid/app/Activity;
.source "AdobeAIRMainActivity.java"

# interfaces
.implements Lcom/adobe/air/AndroidGcmResultReceiver$Receiver;


# static fields
.field private static final AIR_PROPERTIES_URL:Ljava/lang/String; = "airPropertiesUrl"

.field public static final ENABLE_MY_GAMES:Ljava/lang/String; = "EnableMyGames"

.field private static final MSG_ID:Ljava/lang/String; = "msgId"

.field private static final NEW_UI_ANALYTICS_URL:Ljava/lang/String; = "http://www.adobe.com/airgames/3/"

.field private static final NOTIFICATION_ANALYTICS_URL:Ljava/lang/String; = "https://www.adobe.com/gamepreview/?game=notification/notificationClicked.html_"

.field private static final PLAY_SERVICES_RESOLUTION_REQUEST:I = 0x2328

.field public static final PROPERTY_DEFAULT_ACTIVITY:Ljava/lang/String; = "AIRDefaultActivity"

.field private static final PROPERTY_ENABLE_MY_GAMES_PERCENTAGE:Ljava/lang/String; = "MyGamesPercentage"

.field private static final PROPERTY_FIRST_LAUNCH:Ljava/lang/String; = "firstLaunch"

.field private static final PROPERTY_ID:Ljava/lang/String; = "UA-54849355-1"

.field private static final PROPERTY_NEW_UI_PERCENTAGE:Ljava/lang/String; = "NewUIPercentage"

.field private static final PROPERTY_RANDOM_NO:Ljava/lang/String; = "AirRandomNumber"

.field public static RATE_LIMIT:J = 0x5265c00L

.field public static final RESULT_RECEIVER:Ljava/lang/String; = "resultReceiver"

.field private static final TAG:Ljava/lang/String; = "AdobeAIRMainActivity"


# instance fields
.field private mAirPropsFileUrl:Ljava/lang/String;

.field private mAnalyticsWebView:Lcom/adobe/air/AdobeAIRWebView;

.field private mCtx:Landroid/content/Context;

.field private mEnableMyGamesThreshold:I

.field private mIsGameListDefaultActivity:Z

.field private mIsNewUISupported:Z

.field private mNewUIThreshold:I

.field private mNotificationWebView:Lcom/adobe/air/AdobeAIRWebView;

.field private mRandomNumber:I

.field private mReceiver:Lcom/adobe/air/AndroidGcmResultReceiver;

.field private mTracker:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mCtx:Landroid/content/Context;

    const/16 v1, 0x64

    .line 238
    iput v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNewUIThreshold:I

    .line 239
    iput v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mEnableMyGamesThreshold:I

    const-string v1, "http://s3-us-west-1.amazonaws.com/gamepreview/prod/airandroid/air.properties"

    .line 240
    iput-object v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mAirPropsFileUrl:Ljava/lang/String;

    const/4 v1, 0x0

    .line 241
    iput-boolean v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsNewUISupported:Z

    const/4 v1, 0x1

    .line 242
    iput-boolean v1, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsGameListDefaultActivity:Z

    .line 243
    iput-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mReceiver:Lcom/adobe/air/AndroidGcmResultReceiver;

    .line 244
    iput-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mNotificationWebView:Lcom/adobe/air/AdobeAIRWebView;

    .line 245
    iput-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mAnalyticsWebView:Lcom/adobe/air/AdobeAIRWebView;

    .line 251
    iput-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    return-void
.end method

.method private configureTestEnv()V
    .locals 3

    .line 178
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "airPropertiesUrl"

    .line 184
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    iput-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mAirPropsFileUrl:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private copyActivityLevelPrefsToApplicationLevel()V
    .locals 6

    .line 83
    iget-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    const-class v1, Lcom/adobe/air/AdobeAIR;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/adobe/air/AdobeAIRMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 87
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 88
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 90
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 92
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 94
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 96
    :cond_1
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_2

    .line 98
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 100
    :cond_2
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 102
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 104
    :cond_3
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 106
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 109
    :cond_4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private generateRandomNumber()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    goto :goto_0

    .line 157
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 158
    new-instance v2, Ljava/util/Random;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    add-long/2addr v3, v0

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    move-object v0, v2

    :goto_0
    const/16 v1, 0x64

    .line 161
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method private declared-synchronized getTracker()Lcom/google/android/gms/analytics/Tracker;
    .locals 2

    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    if-nez v0, :cond_0

    .line 204
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 205
    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->enableAutoActivityReports(Landroid/app/Application;)V

    const-string v1, "UA-54849355-1"

    .line 206
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mTracker:Lcom/google/android/gms/analytics/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 202
    monitor-exit p0

    throw v0
.end method

.method private updateSharedPrefForDefaultActivity()V
    .locals 0

    return-void
.end method

.method private verifyNewUISupport()V
    .locals 2

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mIsNewUISupported:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    iput-object p0, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mCtx:Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->copyActivityLevelPrefsToApplicationLevel()V

    .line 67
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->verifyNewUISupport()V

    .line 70
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIRMainActivity;->getTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object p1

    const-string v0, "AdobeAIRMainActivity"

    .line 71
    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 74
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/adobe/air/ShakeListenerService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/adobe/air/AdobeAIRMainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 77
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/adobe/air/StaticPageActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/adobe/air/AdobeAIRMainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .line 171
    iget-object p2, p0, Lcom/adobe/air/AdobeAIRMainActivity;->mCtx:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    const/16 v0, 0x2328

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 214
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 220
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    return-void
.end method
