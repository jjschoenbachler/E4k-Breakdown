.class public Lcom/adobe/air/AndroidGcmRegistrationService;
.super Landroid/app/IntentService;
.source "AndroidGcmRegistrationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AndroidGcmRegistrationService$AsyncTaskRunner;
    }
.end annotation


# static fields
.field private static ACCESS_KEY:Ljava/lang/String; = ""

.field private static APPLICATION_ARN:Ljava/lang/String; = "arn:aws:sns:us-west-2:502492504188:app/GCM/AdobeAIRGCM"

.field private static final CUSTOM_USER_DATA:Ljava/lang/String; = "CustomUserData"

.field private static final ENABLED:Ljava/lang/String; = "Enabled"

.field private static final ENABLE_LOGGING:Ljava/lang/String; = "enableLogging"

.field private static final MAX_RETRIES:I = 0xa

.field private static final PROPERTY_APP_VERSION:Ljava/lang/String; = "appVersion"

.field private static final PROPERTY_ENDPOINT_ARN:Ljava/lang/String; = "endpointArn"

.field private static final RATE_LIMIT:Ljava/lang/String; = "rateLimit"

.field private static final RETRY_TIME:I = 0x493e0

.field private static SECRET_KEY:Ljava/lang/String; = ""

.field private static SENDER_ID:Ljava/lang/String; = "233437466354"

.field private static final TAG:Ljava/lang/String; = "AndroidGcmRegistrationService"

.field private static final TEST_ACCESS_KEY:Ljava/lang/String; = ""

.field private static final TEST_APPLICATION_ARN:Ljava/lang/String; = "arn:aws:sns:us-west-2:413177889857:app/GCM/airruntimetestapp"

.field private static final TEST_ENV:Ljava/lang/String; = "testEnv"

.field private static final TEST_SECRET_KEY:Ljava/lang/String; = ""

.field private static final TEST_SENDER_ID:Ljava/lang/String; = "1078258869814"

.field private static final TOKEN:Ljava/lang/String; = "Token"


# instance fields
.field private mClient:Lcom/amazonaws/services/sns/AmazonSNS;

.field private mEnableLogging:Z

.field private mEndpointArn:Ljava/lang/String;

.field private mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

.field private mRegId:Ljava/lang/String;

.field private mResultReceiver:Landroid/os/ResultReceiver;

.field private mRetryCount:I

.field private mTestEnv:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "AndroidGcmRegistrationService"

    .line 70
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 422
    iput v0, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mRetryCount:I

    const/4 v1, 0x0

    .line 423
    iput-object v1, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mRegId:Ljava/lang/String;

    .line 424
    iput-object v1, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mEndpointArn:Ljava/lang/String;

    .line 425
    iput-object v1, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mClient:Lcom/amazonaws/services/sns/AmazonSNS;

    .line 426
    iput-object v1, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 427
    iput-object v1, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 428
    iput-boolean v0, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mEnableLogging:Z

    .line 429
    iput-boolean v0, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mTestEnv:Z

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/air/AndroidGcmRegistrationService;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mRegId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/adobe/air/AndroidGcmRegistrationService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mRegId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lcom/adobe/air/AndroidGcmRegistrationService;->SENDER_ID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/air/AndroidGcmRegistrationService;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    return-object p0
.end method

.method static synthetic access$400(Lcom/adobe/air/AndroidGcmRegistrationService;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidGcmRegistrationService;->registerInBackground(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/adobe/air/AndroidGcmRegistrationService;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/adobe/air/AndroidGcmRegistrationService;->sendRegistrationIdToAws()V

    return-void
.end method

.method private checkPlayServices()Z
    .locals 3

    .line 99
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private configureTestEnv()V
    .locals 3

    .line 136
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    invoke-virtual {p0}, Lcom/adobe/air/AndroidGcmRegistrationService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "enableLogging"

    .line 143
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mEnableLogging:Z

    const-string v1, "testEnv"

    .line 144
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mTestEnv:Z

    .line 145
    iget-boolean v1, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mTestEnv:Z

    if-eqz v1, :cond_1

    const-string v1, "1078258869814"

    .line 147
    sput-object v1, Lcom/adobe/air/AndroidGcmRegistrationService;->SENDER_ID:Ljava/lang/String;

    const-string v1, "arn:aws:sns:us-west-2:413177889857:app/GCM/airruntimetestapp"

    .line 148
    sput-object v1, Lcom/adobe/air/AndroidGcmRegistrationService;->APPLICATION_ARN:Ljava/lang/String;

    const-string v1, ""

    .line 149
    sput-object v1, Lcom/adobe/air/AndroidGcmRegistrationService;->ACCESS_KEY:Ljava/lang/String;

    const-string v1, ""

    .line 150
    sput-object v1, Lcom/adobe/air/AndroidGcmRegistrationService;->SECRET_KEY:Ljava/lang/String;

    const-string v1, "rateLimit"

    const/high16 v2, -0x80000000

    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_1

    int-to-long v0, v0

    .line 155
    sput-wide v0, Lcom/adobe/air/AdobeAIRMainActivity;->RATE_LIMIT:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private getAppVersion()I
    .locals 3

    const/4 v0, 0x0

    .line 217
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/air/AndroidGcmRegistrationService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/adobe/air/AndroidGcmRegistrationService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 218
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    return v0
.end method

.method private getCustomData()Ljava/lang/String;
    .locals 10

    .line 319
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "osVersion"

    .line 320
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    invoke-virtual {p0}, Lcom/adobe/air/AndroidGcmRegistrationService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/adobe/air/AndroidGcmRegistrationService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const-string v2, "airVersion"

    .line 323
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-static {p0}, Lcom/adobe/air/SystemCapabilities;->GetScreenHRes(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-static {p0}, Lcom/adobe/air/SystemCapabilities;->GetScreenVRes(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-static {p0}, Lcom/adobe/air/SystemCapabilities;->GetScreenDPI(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceInfo"

    .line 329
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "locale"

    .line 332
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "location"

    .line 338
    invoke-virtual {p0, v2}, Lcom/adobe/air/AndroidGcmRegistrationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    const-string v4, "network"

    .line 340
    invoke-virtual {v2, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "network"

    .line 345
    invoke-virtual {v2, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 346
    new-instance v4, Landroid/location/Geocoder;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v4, p0, v5}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    if-eqz v2, :cond_0

    .line 349
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 351
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v2

    .line 352
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    :catch_0
    :cond_0
    :try_start_2
    const-string v2, "geo"

    .line 361
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timestamp"

    .line 364
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    invoke-virtual {p0}, Lcom/adobe/air/AndroidGcmRegistrationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "AIRDefaultActivity"

    const/4 v3, 0x1

    .line 368
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "AIRDefaultActivity"

    const-string v2, "GL"

    .line 371
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const-string v1, "AIRDefaultActivity"

    const-string v2, "PP"

    .line 375
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 378
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_1
    const-string v0, ""

    return-object v0
.end method

.method private isAppRegistered()Z
    .locals 3

    .line 117
    invoke-virtual {p0}, Lcom/adobe/air/AndroidGcmRegistrationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "appVersion"

    const/high16 v2, -0x80000000

    .line 122
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 123
    invoke-direct {p0}, Lcom/adobe/air/AndroidGcmRegistrationService;->getAppVersion()I

    move-result v1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private registerForNotifications()V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/adobe/air/AndroidGcmRegistrationService;->isAppRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/AndroidGcmRegistrationService;->checkPlayServices()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/adobe/air/AndroidGcmRegistrationService;->configureTestEnv()V

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidGcmRegistrationService;->registerInBackground(I)V

    :cond_1
    return-void
.end method

.method private registerInBackground(I)V
    .locals 3

    .line 169
    iget v0, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mRetryCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 172
    iget v1, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mRetryCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mRetryCount:I

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    if-nez v1, :cond_1

    .line 175
    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 177
    :cond_1
    new-instance v1, Lcom/adobe/air/AndroidGcmRegistrationService$AsyncTaskRunner;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/adobe/air/AndroidGcmRegistrationService$AsyncTaskRunner;-><init>(Lcom/adobe/air/AndroidGcmRegistrationService;Lcom/adobe/air/AndroidGcmRegistrationService$1;)V

    .line 178
    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Lcom/adobe/air/AndroidGcmRegistrationService$AsyncTaskRunner;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    return-void
.end method

.method private sendRegistrationIdToAws()V
    .locals 3

    .line 233
    :try_start_0
    new-instance v0, Lcom/amazonaws/auth/BasicAWSCredentials;

    sget-object v1, Lcom/adobe/air/AndroidGcmRegistrationService;->ACCESS_KEY:Ljava/lang/String;

    sget-object v2, Lcom/adobe/air/AndroidGcmRegistrationService;->SECRET_KEY:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/auth/BasicAWSCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-object v1, Lcom/amazonaws/regions/Regions;->US_WEST_2:Lcom/amazonaws/regions/Regions;

    invoke-static {v1}, Lcom/amazonaws/regions/Region;->getRegion(Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/regions/Region;

    move-result-object v1

    .line 236
    new-instance v2, Lcom/amazonaws/services/sns/AmazonSNSClient;

    invoke-direct {v2, v0}, Lcom/amazonaws/services/sns/AmazonSNSClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object v2, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mClient:Lcom/amazonaws/services/sns/AmazonSNS;

    .line 237
    iget-object v0, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mClient:Lcom/amazonaws/services/sns/AmazonSNS;

    invoke-interface {v0, v1}, Lcom/amazonaws/services/sns/AmazonSNS;->setRegion(Lcom/amazonaws/regions/Region;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 241
    :try_start_1
    new-instance v0, Lcom/amazonaws/services/sns/model/CreatePlatformEndpointRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/sns/model/CreatePlatformEndpointRequest;-><init>()V

    .line 242
    sget-object v1, Lcom/adobe/air/AndroidGcmRegistrationService;->APPLICATION_ARN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->setPlatformApplicationArn(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mRegId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->setToken(Ljava/lang/String;)V

    .line 244
    invoke-direct {p0}, Lcom/adobe/air/AndroidGcmRegistrationService;->getCustomData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/sns/model/CreatePlatformEndpointRequest;->setCustomUserData(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mClient:Lcom/amazonaws/services/sns/AmazonSNS;

    invoke-interface {v1, v0}, Lcom/amazonaws/services/sns/AmazonSNS;->createPlatformEndpoint(Lcom/amazonaws/services/sns/model/CreatePlatformEndpointRequest;)Lcom/amazonaws/services/sns/model/CreatePlatformEndpointResult;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/CreatePlatformEndpointResult;->getEndpointArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 249
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/CreatePlatformEndpointResult;->getEndpointArn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mEndpointArn:Ljava/lang/String;

    .line 250
    iget-boolean v0, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mEnableLogging:Z

    if-eqz v0, :cond_0

    const-string v0, "AndroidGcmRegistrationService"

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creation EndpointArn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mEndpointArn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/AndroidGcmRegistrationService;->updateSharedPref()V
    :try_end_1
    .catch Lcom/amazonaws/services/sns/model/InternalErrorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/amazonaws/services/sns/model/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 265
    :catch_0
    :try_start_2
    invoke-direct {p0}, Lcom/adobe/air/AndroidGcmRegistrationService;->updateEndpointAttributes()V

    goto :goto_0

    :catch_1
    const v0, 0x493e0

    .line 260
    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidGcmRegistrationService;->registerInBackground(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_1
    :goto_0
    return-void
.end method

.method private updateEndpointAttributes()V
    .locals 4

    .line 287
    :try_start_0
    new-instance v0, Lcom/amazonaws/services/sns/model/SetEndpointAttributesRequest;

    invoke-direct {v0}, Lcom/amazonaws/services/sns/model/SetEndpointAttributesRequest;-><init>()V

    .line 288
    iget-object v1, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mEndpointArn:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/adobe/air/AndroidGcmRegistrationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "endpointArn"

    const-string v3, ""

    .line 291
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mEndpointArn:Ljava/lang/String;

    .line 293
    iget-boolean v1, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mEnableLogging:Z

    if-eqz v1, :cond_0

    const-string v1, "AndroidGcmRegistrationService"

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update EndpointArn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mEndpointArn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mEndpointArn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/sns/model/SetEndpointAttributesRequest;->setEndpointArn(Ljava/lang/String;)V

    .line 297
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "CustomUserData"

    .line 298
    invoke-direct {p0}, Lcom/adobe/air/AndroidGcmRegistrationService;->getCustomData()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Enabled"

    const-string v3, "true"

    .line 299
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Token"

    .line 300
    iget-object v3, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mRegId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/sns/model/SetEndpointAttributesRequest;->setAttributes(Ljava/util/Map;)V

    .line 302
    iget-object v1, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mClient:Lcom/amazonaws/services/sns/AmazonSNS;

    invoke-interface {v1, v0}, Lcom/amazonaws/services/sns/AmazonSNS;->setEndpointAttributes(Lcom/amazonaws/services/sns/model/SetEndpointAttributesRequest;)V

    .line 303
    invoke-direct {p0}, Lcom/adobe/air/AndroidGcmRegistrationService;->updateSharedPref()V
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private updateSharedPref()V
    .locals 3

    .line 389
    invoke-virtual {p0}, Lcom/adobe/air/AndroidGcmRegistrationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 390
    invoke-direct {p0}, Lcom/adobe/air/AndroidGcmRegistrationService;->getAppVersion()I

    move-result v1

    .line 394
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "appVersion"

    .line 395
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "endpointArn"

    .line 396
    iget-object v2, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mEndpointArn:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 397
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "resultReceiver"

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    iput-object p1, p0, Lcom/adobe/air/AndroidGcmRegistrationService;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 78
    invoke-direct {p0}, Lcom/adobe/air/AndroidGcmRegistrationService;->registerForNotifications()V

    return-void
.end method
