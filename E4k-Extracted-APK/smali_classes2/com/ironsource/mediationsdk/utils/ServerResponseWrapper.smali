.class public Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
.super Ljava/lang/Object;
.source "ServerResponseWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;
    }
.end annotation


# static fields
.field public static final APP_KEY_FIELD:Ljava/lang/String; = "appKey"

.field public static final RESPONSE_FIELD:Ljava/lang/String; = "response"

.field public static final SHOULD_REUSE_ADV_ID:Ljava/lang/String; = "radvid"

.field public static final SHOULD_USE_APP_SET:Ljava/lang/String; = "sid"

.field public static final USER_ID_FIELD:Ljava/lang/String; = "userId"


# instance fields
.field private final AB_TESTING:Ljava/lang/String;

.field private final ADAPTER_TIMEOUT_IN_MILLIS_FIELD:Ljava/lang/String;

.field private final ADAPTER_TIMEOUT_IN_SECS_FIELD:Ljava/lang/String;

.field private final ADVANCED_LOADING_FIELD:Ljava/lang/String;

.field private final AD_SOURCE_NAME_FIELD:Ljava/lang/String;

.field private final AD_UNITS_FIELD:Ljava/lang/String;

.field private final APPLICATION_FIELD:Ljava/lang/String;

.field private final AUCTION_DATA_FIELD:Ljava/lang/String;

.field private final AUCTION_DISABLE_LOAD_WHILE_SHOW_SUPPORT_FIELD:Ljava/lang/String;

.field private final AUCTION_ENCRYPTION_VERSION:Ljava/lang/String;

.field private final AUCTION_FIELD:Ljava/lang/String;

.field private final AUCTION_PROGRAMMATIC_FIELD:Ljava/lang/String;

.field private final AUCTION_RETRY_INTERVAL_FIELD:Ljava/lang/String;

.field private final AUCTION_SAVED_HISTORY_LIMIT_FIELD:Ljava/lang/String;

.field private final AUCTION_TIMEOUT_FIELD:Ljava/lang/String;

.field private final AUCTION_TRIALS_FIELD:Ljava/lang/String;

.field private final AUCTION_URL_FIELD:Ljava/lang/String;

.field private final BACKFILL_FIELD:Ljava/lang/String;

.field private final BACKUP_THRESHOLD_FIELD:Ljava/lang/String;

.field private final BN_FIELD:Ljava/lang/String;

.field private final COMPRESS_AUCTION_REQUEST:Ljava/lang/String;

.field private final COMPRESS_AUCTION_RESPONSE:Ljava/lang/String;

.field private final CONFIGURATIONS_FIELD:Ljava/lang/String;

.field private final CONSOLE_FIELD:Ljava/lang/String;

.field private final CRASHREPORTER_ANR_IGNORE_DEBUG:Ljava/lang/String;

.field private final CRASHREPORTER_ANR_TIMEOUT_FIELD:Ljava/lang/String;

.field private final CRASHREPORTER_FIELD:Ljava/lang/String;

.field private final CRASHREPORTER_INCLUDE_ANR_FIELD:Ljava/lang/String;

.field private final CRASHREPORTER_INCLUDE_KEYS_FIELD:Ljava/lang/String;

.field private final CRASHREPORTER_KEYWORD_FIELD:Ljava/lang/String;

.field private final CRASHREPORTER_URL_FIELD:Ljava/lang/String;

.field private final DEFAULT_ADAPTERS_SMARTLOAD_AMOUNT:I

.field private final DEFAULT_ADAPTERS_SMARTLOAD_TIMEOUT:I

.field private final DEFAULT_ADVANCED_LOADING:Z

.field private final DEFAULT_ADVANCED_LOADING_AMOUNT:I

.field private final DEFAULT_ANR_TIME:I

.field private final DEFAULT_AUCTION_SAVED_HISTORY_LIMIT:I

.field private final DEFAULT_BANNER_LOAD_REFRESH_INTERVAL:Ljava/lang/String;

.field private final DEFAULT_BANNER_SMARTLOAD_TIMEOUT:I

.field private final DEFAULT_BN_DELAY_LOAD_FAILURE_TIMEOUT:I

.field private final DEFAULT_ENCRYPTION_VERSION:I

.field private final DEFAULT_EXPIRED_DURATION_IN_MINUTES_FIELD:I

.field private final DEFAULT_IS_DELAY_LOAD_FAILURE_TIMEOUT:I

.field private final DEFAULT_LOG_LEVEL:I

.field private final DEFAULT_MANUAL_LOAD_INTERVAL_FIELD:I

.field private final DEFAULT_MAX_EVENTS_PER_BATCH:I

.field private final DEFAULT_RV_DELAY_LOAD_FAILURE_TIMEOUT:I

.field private final DEFAULT_TIMEOUT:J

.field private final DEFAULT_TIME_TO_DELETE_WATERFALL_AFTER_AUCTION:I

.field private final DEFAULT_TRIALS:I

.field private final DELAY_LOAD_FAILURE:Ljava/lang/String;

.field private final ERROR_KEY:Ljava/lang/String;

.field private final EVENTS_COMPRESSION_FIELD:Ljava/lang/String;

.field private final EVENTS_FIELD:Ljava/lang/String;

.field private final EXPIRED_DURATION_IN_MINUTES_FIELD:Ljava/lang/String;

.field private final EXTERNAL_ARM_EVENTS_URL_FIELD:Ljava/lang/String;

.field private final EXTERNAL_FIELD:Ljava/lang/String;

.field private final GENERIC_PARAMS_FIELD:Ljava/lang/String;

.field private final INTEGRATION_FIELD:Ljava/lang/String;

.field private final IS_AUCTION_ON_SHOW_START_FIELD:Ljava/lang/String;

.field private final IS_COMPRESS_EXTERNAL_TOKEN_FIELD:Ljava/lang/String;

.field private final IS_EXTERNAL_ARM_EVENTS_ENABLED_FIELD:Ljava/lang/String;

.field private final IS_FIELD:Ljava/lang/String;

.field private final IS_LOAD_WHILE_SHOW_FIELD:Ljava/lang/String;

.field private final IS_MULTIPLE_INSTANCES_FIELD:Ljava/lang/String;

.field private final LOGGERS_FIELD:Ljava/lang/String;

.field private final MANUAL_LOAD_INTERVAL_FIELD:Ljava/lang/String;

.field private final MAX_EVENTS_PER_BATCH:Ljava/lang/String;

.field private final MAX_NUM_OF_EVENTS_FIELD:Ljava/lang/String;

.field private final MEDIATION_TYPES_FIELD:Ljava/lang/String;

.field private final MIN_TIME_BEFORE_FIRST_AUCTION_FIELD:Ljava/lang/String;

.field private final NON_CONNECTIVITY_EVENTS_FIELD:Ljava/lang/String;

.field private final OBJECT_PER_WATERFALL_FIELD:Ljava/lang/String;

.field private final OPT_IN_EVENTS_FIELD:Ljava/lang/String;

.field private final OPT_OUT_EVENTS_FIELD:Ljava/lang/String;

.field private final OW_FIELD:Ljava/lang/String;

.field private final PIXEL_EVENTS_ENABLED:Ljava/lang/String;

.field private final PIXEL_EVENTS_URL_FIELD:Ljava/lang/String;

.field private final PIXEL_SECTION:Ljava/lang/String;

.field private final PLACEMENTS_FIELD:Ljava/lang/String;

.field private final PLACEMENT_ID_FIELD:Ljava/lang/String;

.field private final PLACEMENT_NAME_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_CAPPING_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_CAPPING_UNIT_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_CAPPING_VALUE_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_DELIVERY_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_ENABLED_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_IS_DEFAULT_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_PACING_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_PACING_VALUE_FIELD:Ljava/lang/String;

.field private final PREMIUM_FIELD:Ljava/lang/String;

.field private final PROVIDER_DEFAULT_INSTANCE_FIELD:Ljava/lang/String;

.field private final PROVIDER_LOAD_NAME_FIELD:Ljava/lang/String;

.field private final PROVIDER_ORDER_FIELD:Ljava/lang/String;

.field private final PROVIDER_SETTINGS_FIELD:Ljava/lang/String;

.field private final PUBLISHER_FIELD:Ljava/lang/String;

.field private final RV_FIELD:Ljava/lang/String;

.field private final RV_TIME_TO_DELETE_WATERFALL_AFTER_AUCTION:Ljava/lang/String;

.field private final SDK_COMPRESS_TOKEN:Ljava/lang/String;

.field private final SDK_ONE_TOKEN_FIELD:Ljava/lang/String;

.field private final SDK_TOKEN_GENERIC_PARAMS_FIELD:Ljava/lang/String;

.field private final SDK_TOKEN_OPT_IN_KEYS_FIELD:Ljava/lang/String;

.field private final SEGMENT_FIELD:Ljava/lang/String;

.field private final SEND_EVENTS_TOGGLE_FIELD:Ljava/lang/String;

.field private final SEND_ULTRA_EVENTS_FIELD:Ljava/lang/String;

.field private final SERVER_EVENTS_TYPE:Ljava/lang/String;

.field private final SERVER_EVENTS_URL_FIELD:Ljava/lang/String;

.field private final SERVER_FIELD:Ljava/lang/String;

.field private final SETTINGS_FIELD:Ljava/lang/String;

.field private final SHOULD_SEND_BANNER_BURL_FROM_IMPRESSION:Ljava/lang/String;

.field private final SMART_LOAD_FIELD:Ljava/lang/String;

.field private final SUB_PROVIDER_ID_FIELD:Ljava/lang/String;

.field private final TIME_TO_WAIT_BEFORE_AUCTION_FIELD:Ljava/lang/String;

.field private final TIME_TO_WAIT_BEFORE_LOAD_FIELD:Ljava/lang/String;

.field private final TOKEN_FIELD:Ljava/lang/String;

.field private final TRIGGER_EVENTS_FIELD:Ljava/lang/String;

.field private final UUID_ENABLED_FIELD:Ljava/lang/String;

.field private final VIRTUAL_ITEM_COUNT_FIELD:Ljava/lang/String;

.field private final VIRTUAL_ITEM_NAME_FIELD:Ljava/lang/String;

.field private mAppKey:Ljava/lang/String;

.field private mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

.field private mContext:Landroid/content/Context;

.field private mOrigin:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

.field private mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

.field private mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

.field private mResponse:Lorg/json/JSONObject;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "error"

    .line 66
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ERROR_KEY:Ljava/lang/String;

    const/4 v0, 0x3

    .line 68
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_LOG_LEVEL:I

    const/4 v1, 0x2

    .line 69
    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_AMOUNT:I

    const/16 v2, 0x3c

    .line 70
    iput v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_TIMEOUT:I

    const/16 v2, 0x2710

    .line 71
    iput v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_BANNER_SMARTLOAD_TIMEOUT:I

    const/16 v2, 0x1388

    .line 72
    iput v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_MAX_EVENTS_PER_BATCH:I

    const/16 v3, 0x12c

    .line 73
    iput v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_MANUAL_LOAD_INTERVAL_FIELD:I

    .line 74
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_RV_DELAY_LOAD_FAILURE_TIMEOUT:I

    .line 75
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_IS_DELAY_LOAD_FAILURE_TIMEOUT:I

    .line 76
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_BN_DELAY_LOAD_FAILURE_TIMEOUT:I

    .line 77
    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_TRIALS:I

    const/16 v0, 0xf

    .line 78
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_AUCTION_SAVED_HISTORY_LIMIT:I

    const-wide/16 v0, 0x2710

    .line 79
    iput-wide v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_TIMEOUT:J

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADVANCED_LOADING_AMOUNT:I

    .line 81
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADVANCED_LOADING:Z

    const/16 v0, 0x7530

    .line 82
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_TIME_TO_DELETE_WATERFALL_AFTER_AUCTION:I

    const/4 v0, -0x1

    .line 83
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_EXPIRED_DURATION_IN_MINUTES_FIELD:I

    .line 84
    iput v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ANR_TIME:I

    const/4 v0, 0x1

    .line 85
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ENCRYPTION_VERSION:I

    const-string v0, "providerOrder"

    .line 87
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_ORDER_FIELD:Ljava/lang/String;

    const-string v0, "providerSettings"

    .line 88
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_SETTINGS_FIELD:Ljava/lang/String;

    const-string v0, "configurations"

    .line 89
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CONFIGURATIONS_FIELD:Ljava/lang/String;

    const-string v0, "genericParams"

    .line 90
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->GENERIC_PARAMS_FIELD:Ljava/lang/String;

    const-string v0, "adUnits"

    .line 92
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AD_UNITS_FIELD:Ljava/lang/String;

    const-string v0, "providerLoadName"

    .line 93
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_LOAD_NAME_FIELD:Ljava/lang/String;

    const-string v0, "application"

    .line 94
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->APPLICATION_FIELD:Ljava/lang/String;

    const-string v0, "rewardedVideo"

    .line 95
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->RV_FIELD:Ljava/lang/String;

    const-string v0, "interstitial"

    .line 96
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_FIELD:Ljava/lang/String;

    const-string v0, "offerwall"

    .line 97
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->OW_FIELD:Ljava/lang/String;

    const-string v0, "banner"

    .line 98
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->BN_FIELD:Ljava/lang/String;

    const-string v0, "integration"

    .line 99
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->INTEGRATION_FIELD:Ljava/lang/String;

    const-string v0, "loggers"

    .line 100
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->LOGGERS_FIELD:Ljava/lang/String;

    const-string v0, "segment"

    .line 101
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SEGMENT_FIELD:Ljava/lang/String;

    const-string v0, "events"

    .line 102
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->EVENTS_FIELD:Ljava/lang/String;

    const-string v0, "crashReporter"

    .line 103
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CRASHREPORTER_FIELD:Ljava/lang/String;

    const-string v0, "token"

    .line 104
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->TOKEN_FIELD:Ljava/lang/String;

    const-string v0, "external"

    .line 105
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->EXTERNAL_FIELD:Ljava/lang/String;

    const-string v0, "mediationTypes"

    .line 106
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MEDIATION_TYPES_FIELD:Ljava/lang/String;

    const-string v0, "providerDefaultInstance"

    .line 107
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_DEFAULT_INSTANCE_FIELD:Ljava/lang/String;

    const-string v0, "settings"

    .line 109
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SETTINGS_FIELD:Ljava/lang/String;

    const-string v0, "maxNumOfAdaptersToLoadOnStart"

    .line 112
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SMART_LOAD_FIELD:Ljava/lang/String;

    const-string v0, "advancedLoading"

    .line 113
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ADVANCED_LOADING_FIELD:Ljava/lang/String;

    const-string v0, "adapterTimeOutInSeconds"

    .line 114
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ADAPTER_TIMEOUT_IN_SECS_FIELD:Ljava/lang/String;

    const-string v0, "atim"

    .line 115
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ADAPTER_TIMEOUT_IN_MILLIS_FIELD:Ljava/lang/String;

    const-string v0, "bannerInterval"

    .line 116
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_BANNER_LOAD_REFRESH_INTERVAL:Ljava/lang/String;

    const-string v0, "loadRVInterval"

    .line 117
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MANUAL_LOAD_INTERVAL_FIELD:Ljava/lang/String;

    const-string v0, "expiredDurationInMinutes"

    .line 118
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->EXPIRED_DURATION_IN_MINUTES_FIELD:Ljava/lang/String;

    const-string v0, "server"

    .line 120
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SERVER_FIELD:Ljava/lang/String;

    const-string v0, "publisher"

    .line 121
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PUBLISHER_FIELD:Ljava/lang/String;

    const-string v0, "console"

    .line 122
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CONSOLE_FIELD:Ljava/lang/String;

    const-string v0, "sendUltraEvents"

    .line 123
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SEND_ULTRA_EVENTS_FIELD:Ljava/lang/String;

    const-string v0, "sendEventsToggle"

    .line 124
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SEND_EVENTS_TOGGLE_FIELD:Ljava/lang/String;

    const-string v0, "eventsCompression"

    .line 125
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->EVENTS_COMPRESSION_FIELD:Ljava/lang/String;

    const-string v0, "serverEventsURL"

    .line 126
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SERVER_EVENTS_URL_FIELD:Ljava/lang/String;

    const-string v0, "serverEventsType"

    .line 127
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SERVER_EVENTS_TYPE:Ljava/lang/String;

    const-string v0, "backupThreshold"

    .line 128
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->BACKUP_THRESHOLD_FIELD:Ljava/lang/String;

    const-string v0, "maxNumberOfEvents"

    .line 129
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MAX_NUM_OF_EVENTS_FIELD:Ljava/lang/String;

    const-string v0, "maxEventsPerBatch"

    .line 130
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MAX_EVENTS_PER_BATCH:Ljava/lang/String;

    const-string v0, "optOut"

    .line 131
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->OPT_OUT_EVENTS_FIELD:Ljava/lang/String;

    const-string v0, "optIn"

    .line 132
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->OPT_IN_EVENTS_FIELD:Ljava/lang/String;

    const-string v0, "triggerEvents"

    .line 133
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->TRIGGER_EVENTS_FIELD:Ljava/lang/String;

    const-string v0, "nonConnectivityEvents"

    .line 134
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->NON_CONNECTIVITY_EVENTS_FIELD:Ljava/lang/String;

    const-string v0, "pixel"

    .line 136
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PIXEL_SECTION:Ljava/lang/String;

    const-string v0, "pixelEventsUrl"

    .line 137
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PIXEL_EVENTS_URL_FIELD:Ljava/lang/String;

    const-string v0, "pixelEventsEnabled"

    .line 138
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PIXEL_EVENTS_ENABLED:Ljava/lang/String;

    const-string v0, "placements"

    .line 142
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENTS_FIELD:Ljava/lang/String;

    const-string v0, "placementId"

    .line 143
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_ID_FIELD:Ljava/lang/String;

    const-string v0, "placementName"

    .line 144
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_NAME_FIELD:Ljava/lang/String;

    const-string v0, "delivery"

    .line 145
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_DELIVERY_FIELD:Ljava/lang/String;

    const-string v0, "isDefault"

    .line 146
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_IS_DEFAULT_FIELD:Ljava/lang/String;

    const-string v0, "capping"

    .line 147
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_FIELD:Ljava/lang/String;

    const-string v0, "pacing"

    .line 148
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_PACING_FIELD:Ljava/lang/String;

    const-string v0, "enabled"

    .line 149
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_ENABLED_FIELD:Ljava/lang/String;

    const-string v0, "maxImpressions"

    .line 150
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_VALUE_FIELD:Ljava/lang/String;

    const-string v0, "numOfSeconds"

    .line 151
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_PACING_VALUE_FIELD:Ljava/lang/String;

    const-string v0, "unit"

    .line 152
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_UNIT_FIELD:Ljava/lang/String;

    const-string v0, "virtualItemName"

    .line 153
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->VIRTUAL_ITEM_NAME_FIELD:Ljava/lang/String;

    const-string v0, "virtualItemCount"

    .line 154
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->VIRTUAL_ITEM_COUNT_FIELD:Ljava/lang/String;

    const-string v0, "backFill"

    .line 155
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->BACKFILL_FIELD:Ljava/lang/String;

    const-string v0, "premium"

    .line 156
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PREMIUM_FIELD:Ljava/lang/String;

    const-string v0, "uuidEnabled"

    .line 157
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->UUID_ENABLED_FIELD:Ljava/lang/String;

    const-string v0, "abt"

    .line 158
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AB_TESTING:Ljava/lang/String;

    const-string v0, "delayLoadFailure"

    .line 159
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DELAY_LOAD_FAILURE:Ljava/lang/String;

    const-string v0, "keysToInclude"

    .line 160
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CRASHREPORTER_INCLUDE_KEYS_FIELD:Ljava/lang/String;

    const-string v0, "reporterURL"

    .line 161
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CRASHREPORTER_URL_FIELD:Ljava/lang/String;

    const-string v0, "reporterKeyword"

    .line 162
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CRASHREPORTER_KEYWORD_FIELD:Ljava/lang/String;

    const-string v0, "includeANR"

    .line 163
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CRASHREPORTER_INCLUDE_ANR_FIELD:Ljava/lang/String;

    const-string v0, "timeout"

    .line 164
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CRASHREPORTER_ANR_TIMEOUT_FIELD:Ljava/lang/String;

    const-string v0, "setIgnoreDebugger"

    .line 165
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CRASHREPORTER_ANR_IGNORE_DEBUG:Ljava/lang/String;

    const-string v0, "adSourceName"

    .line 166
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AD_SOURCE_NAME_FIELD:Ljava/lang/String;

    const-string v0, "spId"

    .line 168
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SUB_PROVIDER_ID_FIELD:Ljava/lang/String;

    const-string v0, "mpis"

    .line 169
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_MULTIPLE_INSTANCES_FIELD:Ljava/lang/String;

    const-string v0, "auction"

    .line 171
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_FIELD:Ljava/lang/String;

    const-string v0, "auctionData"

    .line 172
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_DATA_FIELD:Ljava/lang/String;

    const-string v0, "auctioneerURL"

    .line 173
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_URL_FIELD:Ljava/lang/String;

    const-string v0, "programmatic"

    .line 174
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_PROGRAMMATIC_FIELD:Ljava/lang/String;

    const-string v0, "objectPerWaterfall"

    .line 175
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->OBJECT_PER_WATERFALL_FIELD:Ljava/lang/String;

    const-string v0, "minTimeBeforeFirstAuction"

    .line 176
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MIN_TIME_BEFORE_FIRST_AUCTION_FIELD:Ljava/lang/String;

    const-string v0, "timeToWaitBeforeAuction"

    .line 177
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->TIME_TO_WAIT_BEFORE_AUCTION_FIELD:Ljava/lang/String;

    const-string v0, "timeToWaitBeforeLoad"

    .line 178
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->TIME_TO_WAIT_BEFORE_LOAD_FIELD:Ljava/lang/String;

    const-string v0, "auctionRetryInterval"

    .line 179
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_RETRY_INTERVAL_FIELD:Ljava/lang/String;

    const-string v0, "isAuctionOnShowStart"

    .line 180
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_AUCTION_ON_SHOW_START_FIELD:Ljava/lang/String;

    const-string v0, "isLoadWhileShow"

    .line 181
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_LOAD_WHILE_SHOW_FIELD:Ljava/lang/String;

    const-string v0, "auctionTrials"

    .line 182
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_TRIALS_FIELD:Ljava/lang/String;

    const-string v0, "auctionTimeout"

    .line 183
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_TIMEOUT_FIELD:Ljava/lang/String;

    const-string v0, "auctionSavedHistory"

    .line 184
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_SAVED_HISTORY_LIMIT_FIELD:Ljava/lang/String;

    const-string v0, "disableLoadWhileShowSupportFor"

    .line 185
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_DISABLE_LOAD_WHILE_SHOW_SUPPORT_FIELD:Ljava/lang/String;

    const-string v0, "timeToDeleteOldWaterfallAfterAuction"

    .line 186
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->RV_TIME_TO_DELETE_WATERFALL_AFTER_AUCTION:Ljava/lang/String;

    const-string v0, "compressAuctionRequest"

    .line 187
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->COMPRESS_AUCTION_REQUEST:Ljava/lang/String;

    const-string v0, "compressAuctionResponse"

    .line 188
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->COMPRESS_AUCTION_RESPONSE:Ljava/lang/String;

    const-string v0, "encryptionVersion"

    .line 189
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_ENCRYPTION_VERSION:Ljava/lang/String;

    const-string v0, "shouldSendBannerBURLFromImpression"

    .line 190
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SHOULD_SEND_BANNER_BURL_FROM_IMPRESSION:Ljava/lang/String;

    const-string v0, "optInKeys"

    .line 194
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SDK_TOKEN_OPT_IN_KEYS_FIELD:Ljava/lang/String;

    const-string v0, "tokenGenericParams"

    .line 195
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SDK_TOKEN_GENERIC_PARAMS_FIELD:Ljava/lang/String;

    const-string v0, "oneToken"

    .line 196
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SDK_ONE_TOKEN_FIELD:Ljava/lang/String;

    const-string v0, "compressToken"

    .line 197
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SDK_COMPRESS_TOKEN:Ljava/lang/String;

    const-string v0, "isExternalArmEventsEnabled"

    .line 199
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_EXTERNAL_ARM_EVENTS_ENABLED_FIELD:Ljava/lang/String;

    const-string v0, "externalArmEventsUrl"

    .line 200
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->EXTERNAL_ARM_EVENTS_URL_FIELD:Ljava/lang/String;

    const-string v0, "compressExternalToken"

    .line 202
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_COMPRESS_EXTERNAL_TOKEN_FIELD:Ljava/lang/String;

    .line 215
    sget-object v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;->NOT_SET:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mOrigin:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    .line 218
    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    .line 220
    :try_start_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 221
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    goto :goto_0

    .line 223
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    .line 226
    :goto_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseProviderSettings()V

    .line 227
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseConfigurations()V

    .line 228
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseProviderOrder()V

    .line 230
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p2, ""

    :cond_1
    iput-object p2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    .line 231
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p3, ""

    :cond_2
    iput-object p3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 233
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 234
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->defaultInit()V

    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)V
    .locals 4

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "error"

    .line 66
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ERROR_KEY:Ljava/lang/String;

    const/4 v0, 0x3

    .line 68
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_LOG_LEVEL:I

    const/4 v1, 0x2

    .line 69
    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_AMOUNT:I

    const/16 v2, 0x3c

    .line 70
    iput v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_TIMEOUT:I

    const/16 v2, 0x2710

    .line 71
    iput v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_BANNER_SMARTLOAD_TIMEOUT:I

    const/16 v2, 0x1388

    .line 72
    iput v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_MAX_EVENTS_PER_BATCH:I

    const/16 v3, 0x12c

    .line 73
    iput v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_MANUAL_LOAD_INTERVAL_FIELD:I

    .line 74
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_RV_DELAY_LOAD_FAILURE_TIMEOUT:I

    .line 75
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_IS_DELAY_LOAD_FAILURE_TIMEOUT:I

    .line 76
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_BN_DELAY_LOAD_FAILURE_TIMEOUT:I

    .line 77
    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_TRIALS:I

    const/16 v0, 0xf

    .line 78
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_AUCTION_SAVED_HISTORY_LIMIT:I

    const-wide/16 v0, 0x2710

    .line 79
    iput-wide v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_TIMEOUT:J

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADVANCED_LOADING_AMOUNT:I

    .line 81
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADVANCED_LOADING:Z

    const/16 v0, 0x7530

    .line 82
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_TIME_TO_DELETE_WATERFALL_AFTER_AUCTION:I

    const/4 v0, -0x1

    .line 83
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_EXPIRED_DURATION_IN_MINUTES_FIELD:I

    .line 84
    iput v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ANR_TIME:I

    const/4 v0, 0x1

    .line 85
    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ENCRYPTION_VERSION:I

    const-string v0, "providerOrder"

    .line 87
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_ORDER_FIELD:Ljava/lang/String;

    const-string v0, "providerSettings"

    .line 88
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_SETTINGS_FIELD:Ljava/lang/String;

    const-string v0, "configurations"

    .line 89
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CONFIGURATIONS_FIELD:Ljava/lang/String;

    const-string v0, "genericParams"

    .line 90
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->GENERIC_PARAMS_FIELD:Ljava/lang/String;

    const-string v0, "adUnits"

    .line 92
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AD_UNITS_FIELD:Ljava/lang/String;

    const-string v0, "providerLoadName"

    .line 93
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_LOAD_NAME_FIELD:Ljava/lang/String;

    const-string v0, "application"

    .line 94
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->APPLICATION_FIELD:Ljava/lang/String;

    const-string v0, "rewardedVideo"

    .line 95
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->RV_FIELD:Ljava/lang/String;

    const-string v0, "interstitial"

    .line 96
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_FIELD:Ljava/lang/String;

    const-string v0, "offerwall"

    .line 97
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->OW_FIELD:Ljava/lang/String;

    const-string v0, "banner"

    .line 98
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->BN_FIELD:Ljava/lang/String;

    const-string v0, "integration"

    .line 99
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->INTEGRATION_FIELD:Ljava/lang/String;

    const-string v0, "loggers"

    .line 100
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->LOGGERS_FIELD:Ljava/lang/String;

    const-string v0, "segment"

    .line 101
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SEGMENT_FIELD:Ljava/lang/String;

    const-string v0, "events"

    .line 102
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->EVENTS_FIELD:Ljava/lang/String;

    const-string v0, "crashReporter"

    .line 103
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CRASHREPORTER_FIELD:Ljava/lang/String;

    const-string v0, "token"

    .line 104
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->TOKEN_FIELD:Ljava/lang/String;

    const-string v0, "external"

    .line 105
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->EXTERNAL_FIELD:Ljava/lang/String;

    const-string v0, "mediationTypes"

    .line 106
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MEDIATION_TYPES_FIELD:Ljava/lang/String;

    const-string v0, "providerDefaultInstance"

    .line 107
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_DEFAULT_INSTANCE_FIELD:Ljava/lang/String;

    const-string v0, "settings"

    .line 109
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SETTINGS_FIELD:Ljava/lang/String;

    const-string v0, "maxNumOfAdaptersToLoadOnStart"

    .line 112
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SMART_LOAD_FIELD:Ljava/lang/String;

    const-string v0, "advancedLoading"

    .line 113
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ADVANCED_LOADING_FIELD:Ljava/lang/String;

    const-string v0, "adapterTimeOutInSeconds"

    .line 114
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ADAPTER_TIMEOUT_IN_SECS_FIELD:Ljava/lang/String;

    const-string v0, "atim"

    .line 115
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ADAPTER_TIMEOUT_IN_MILLIS_FIELD:Ljava/lang/String;

    const-string v0, "bannerInterval"

    .line 116
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_BANNER_LOAD_REFRESH_INTERVAL:Ljava/lang/String;

    const-string v0, "loadRVInterval"

    .line 117
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MANUAL_LOAD_INTERVAL_FIELD:Ljava/lang/String;

    const-string v0, "expiredDurationInMinutes"

    .line 118
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->EXPIRED_DURATION_IN_MINUTES_FIELD:Ljava/lang/String;

    const-string v0, "server"

    .line 120
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SERVER_FIELD:Ljava/lang/String;

    const-string v0, "publisher"

    .line 121
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PUBLISHER_FIELD:Ljava/lang/String;

    const-string v0, "console"

    .line 122
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CONSOLE_FIELD:Ljava/lang/String;

    const-string v0, "sendUltraEvents"

    .line 123
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SEND_ULTRA_EVENTS_FIELD:Ljava/lang/String;

    const-string v0, "sendEventsToggle"

    .line 124
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SEND_EVENTS_TOGGLE_FIELD:Ljava/lang/String;

    const-string v0, "eventsCompression"

    .line 125
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->EVENTS_COMPRESSION_FIELD:Ljava/lang/String;

    const-string v0, "serverEventsURL"

    .line 126
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SERVER_EVENTS_URL_FIELD:Ljava/lang/String;

    const-string v0, "serverEventsType"

    .line 127
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SERVER_EVENTS_TYPE:Ljava/lang/String;

    const-string v0, "backupThreshold"

    .line 128
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->BACKUP_THRESHOLD_FIELD:Ljava/lang/String;

    const-string v0, "maxNumberOfEvents"

    .line 129
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MAX_NUM_OF_EVENTS_FIELD:Ljava/lang/String;

    const-string v0, "maxEventsPerBatch"

    .line 130
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MAX_EVENTS_PER_BATCH:Ljava/lang/String;

    const-string v0, "optOut"

    .line 131
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->OPT_OUT_EVENTS_FIELD:Ljava/lang/String;

    const-string v0, "optIn"

    .line 132
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->OPT_IN_EVENTS_FIELD:Ljava/lang/String;

    const-string v0, "triggerEvents"

    .line 133
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->TRIGGER_EVENTS_FIELD:Ljava/lang/String;

    const-string v0, "nonConnectivityEvents"

    .line 134
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->NON_CONNECTIVITY_EVENTS_FIELD:Ljava/lang/String;

    const-string v0, "pixel"

    .line 136
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PIXEL_SECTION:Ljava/lang/String;

    const-string v0, "pixelEventsUrl"

    .line 137
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PIXEL_EVENTS_URL_FIELD:Ljava/lang/String;

    const-string v0, "pixelEventsEnabled"

    .line 138
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PIXEL_EVENTS_ENABLED:Ljava/lang/String;

    const-string v0, "placements"

    .line 142
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENTS_FIELD:Ljava/lang/String;

    const-string v0, "placementId"

    .line 143
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_ID_FIELD:Ljava/lang/String;

    const-string v0, "placementName"

    .line 144
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_NAME_FIELD:Ljava/lang/String;

    const-string v0, "delivery"

    .line 145
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_DELIVERY_FIELD:Ljava/lang/String;

    const-string v0, "isDefault"

    .line 146
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_IS_DEFAULT_FIELD:Ljava/lang/String;

    const-string v0, "capping"

    .line 147
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_FIELD:Ljava/lang/String;

    const-string v0, "pacing"

    .line 148
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_PACING_FIELD:Ljava/lang/String;

    const-string v0, "enabled"

    .line 149
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_ENABLED_FIELD:Ljava/lang/String;

    const-string v0, "maxImpressions"

    .line 150
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_VALUE_FIELD:Ljava/lang/String;

    const-string v0, "numOfSeconds"

    .line 151
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_PACING_VALUE_FIELD:Ljava/lang/String;

    const-string v0, "unit"

    .line 152
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_UNIT_FIELD:Ljava/lang/String;

    const-string v0, "virtualItemName"

    .line 153
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->VIRTUAL_ITEM_NAME_FIELD:Ljava/lang/String;

    const-string v0, "virtualItemCount"

    .line 154
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->VIRTUAL_ITEM_COUNT_FIELD:Ljava/lang/String;

    const-string v0, "backFill"

    .line 155
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->BACKFILL_FIELD:Ljava/lang/String;

    const-string v0, "premium"

    .line 156
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PREMIUM_FIELD:Ljava/lang/String;

    const-string v0, "uuidEnabled"

    .line 157
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->UUID_ENABLED_FIELD:Ljava/lang/String;

    const-string v0, "abt"

    .line 158
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AB_TESTING:Ljava/lang/String;

    const-string v0, "delayLoadFailure"

    .line 159
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DELAY_LOAD_FAILURE:Ljava/lang/String;

    const-string v0, "keysToInclude"

    .line 160
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CRASHREPORTER_INCLUDE_KEYS_FIELD:Ljava/lang/String;

    const-string v0, "reporterURL"

    .line 161
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CRASHREPORTER_URL_FIELD:Ljava/lang/String;

    const-string v0, "reporterKeyword"

    .line 162
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CRASHREPORTER_KEYWORD_FIELD:Ljava/lang/String;

    const-string v0, "includeANR"

    .line 163
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CRASHREPORTER_INCLUDE_ANR_FIELD:Ljava/lang/String;

    const-string v0, "timeout"

    .line 164
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CRASHREPORTER_ANR_TIMEOUT_FIELD:Ljava/lang/String;

    const-string v0, "setIgnoreDebugger"

    .line 165
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CRASHREPORTER_ANR_IGNORE_DEBUG:Ljava/lang/String;

    const-string v0, "adSourceName"

    .line 166
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AD_SOURCE_NAME_FIELD:Ljava/lang/String;

    const-string v0, "spId"

    .line 168
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SUB_PROVIDER_ID_FIELD:Ljava/lang/String;

    const-string v0, "mpis"

    .line 169
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_MULTIPLE_INSTANCES_FIELD:Ljava/lang/String;

    const-string v0, "auction"

    .line 171
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_FIELD:Ljava/lang/String;

    const-string v0, "auctionData"

    .line 172
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_DATA_FIELD:Ljava/lang/String;

    const-string v0, "auctioneerURL"

    .line 173
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_URL_FIELD:Ljava/lang/String;

    const-string v0, "programmatic"

    .line 174
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_PROGRAMMATIC_FIELD:Ljava/lang/String;

    const-string v0, "objectPerWaterfall"

    .line 175
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->OBJECT_PER_WATERFALL_FIELD:Ljava/lang/String;

    const-string v0, "minTimeBeforeFirstAuction"

    .line 176
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MIN_TIME_BEFORE_FIRST_AUCTION_FIELD:Ljava/lang/String;

    const-string v0, "timeToWaitBeforeAuction"

    .line 177
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->TIME_TO_WAIT_BEFORE_AUCTION_FIELD:Ljava/lang/String;

    const-string v0, "timeToWaitBeforeLoad"

    .line 178
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->TIME_TO_WAIT_BEFORE_LOAD_FIELD:Ljava/lang/String;

    const-string v0, "auctionRetryInterval"

    .line 179
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_RETRY_INTERVAL_FIELD:Ljava/lang/String;

    const-string v0, "isAuctionOnShowStart"

    .line 180
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_AUCTION_ON_SHOW_START_FIELD:Ljava/lang/String;

    const-string v0, "isLoadWhileShow"

    .line 181
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_LOAD_WHILE_SHOW_FIELD:Ljava/lang/String;

    const-string v0, "auctionTrials"

    .line 182
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_TRIALS_FIELD:Ljava/lang/String;

    const-string v0, "auctionTimeout"

    .line 183
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_TIMEOUT_FIELD:Ljava/lang/String;

    const-string v0, "auctionSavedHistory"

    .line 184
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_SAVED_HISTORY_LIMIT_FIELD:Ljava/lang/String;

    const-string v0, "disableLoadWhileShowSupportFor"

    .line 185
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_DISABLE_LOAD_WHILE_SHOW_SUPPORT_FIELD:Ljava/lang/String;

    const-string v0, "timeToDeleteOldWaterfallAfterAuction"

    .line 186
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->RV_TIME_TO_DELETE_WATERFALL_AFTER_AUCTION:Ljava/lang/String;

    const-string v0, "compressAuctionRequest"

    .line 187
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->COMPRESS_AUCTION_REQUEST:Ljava/lang/String;

    const-string v0, "compressAuctionResponse"

    .line 188
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->COMPRESS_AUCTION_RESPONSE:Ljava/lang/String;

    const-string v0, "encryptionVersion"

    .line 189
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AUCTION_ENCRYPTION_VERSION:Ljava/lang/String;

    const-string v0, "shouldSendBannerBURLFromImpression"

    .line 190
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SHOULD_SEND_BANNER_BURL_FROM_IMPRESSION:Ljava/lang/String;

    const-string v0, "optInKeys"

    .line 194
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SDK_TOKEN_OPT_IN_KEYS_FIELD:Ljava/lang/String;

    const-string v0, "tokenGenericParams"

    .line 195
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SDK_TOKEN_GENERIC_PARAMS_FIELD:Ljava/lang/String;

    const-string v0, "oneToken"

    .line 196
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SDK_ONE_TOKEN_FIELD:Ljava/lang/String;

    const-string v0, "compressToken"

    .line 197
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SDK_COMPRESS_TOKEN:Ljava/lang/String;

    const-string v0, "isExternalArmEventsEnabled"

    .line 199
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_EXTERNAL_ARM_EVENTS_ENABLED_FIELD:Ljava/lang/String;

    const-string v0, "externalArmEventsUrl"

    .line 200
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->EXTERNAL_ARM_EVENTS_URL_FIELD:Ljava/lang/String;

    const-string v0, "compressExternalToken"

    .line 202
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_COMPRESS_EXTERNAL_TOKEN_FIELD:Ljava/lang/String;

    .line 215
    sget-object v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;->NOT_SET:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mOrigin:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    .line 245
    :try_start_0
    invoke-direct {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    .line 246
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    .line 247
    iget-object v0, p1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    .line 248
    iget-object v0, p1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    .line 250
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    .line 251
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    .line 252
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getOrigin()Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mOrigin:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->defaultInit()V

    :goto_0
    return-void
.end method

.method private defaultInit()V
    .locals 1

    .line 271
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const-string v0, ""

    .line 272
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    const-string v0, ""

    .line 273
    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    .line 274
    new-instance v0, Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/model/ProviderOrder;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    .line 275
    invoke-static {}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    .line 276
    new-instance v0, Lcom/ironsource/mediationsdk/model/Configurations;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/model/Configurations;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    return-void
.end method

.method private getArrayFromJsonWithKey(Lorg/json/JSONObject;Ljava/lang/String;)[I
    .locals 2

    .line 1152
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1154
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    new-array p2, p2, [I

    const/4 v0, 0x0

    .line 1155
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1156
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v1

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    return-object p2
.end method

.method private getBooleanConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 1

    .line 1165
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1166
    invoke-virtual {p1, p3, p4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p4

    goto :goto_0

    .line 1167
    :cond_0
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1168
    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p4

    :cond_1
    :goto_0
    return p4
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 1372
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 2

    .line 1176
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1177
    invoke-virtual {p1, p3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    .line 1178
    :cond_0
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1179
    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    move p1, p4

    :cond_2
    return p1
.end method

.method private getLongConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;J)J
    .locals 3

    .line 1190
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 1191
    invoke-virtual {p1, p3, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0

    .line 1192
    :cond_0
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1193
    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0

    :cond_1
    move-wide p1, v1

    :goto_0
    cmp-long p3, p1, v1

    if-nez p3, :cond_2

    move-wide p1, p4

    :cond_2
    return-wide p1
.end method

.method public static getOrigin(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;
    .locals 0

    if-eqz p0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getOrigin()Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;->NOT_SET:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    :goto_0
    return-object p0
.end method

.method private getPlacementAvailabilitySettings(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1291
    :cond_0
    new-instance v1, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;-><init>()V

    const-string v2, "delivery"

    const/4 v3, 0x1

    .line 1294
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1295
    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->delivery(Z)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;

    const-string v2, "capping"

    .line 1298
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    const-string v5, "unit"

    .line 1301
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1302
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1303
    sget-object v6, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_DAY:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1304
    sget-object v0, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_DAY:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    goto :goto_0

    .line 1305
    :cond_1
    sget-object v6, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_HOUR:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1306
    sget-object v0, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_HOUR:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    :cond_2
    :goto_0
    const-string v5, "maxImpressions"

    .line 1309
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "enabled"

    .line 1310
    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    if-lez v5, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 1311
    :goto_1
    invoke-virtual {v1, v2, v0, v5}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->capping(ZLcom/ironsource/mediationsdk/model/PlacementCappingType;I)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;

    :cond_4
    const-string v0, "pacing"

    .line 1315
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v0, "numOfSeconds"

    .line 1317
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "enabled"

    .line 1318
    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    if-lez v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 1319
    :goto_2
    invoke-virtual {v1, v3, v0}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->pacing(ZI)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;

    .line 1322
    :cond_6
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->build()Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object p1

    return-object p1
.end method

.method private getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    if-eqz p1, :cond_0

    .line 1336
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static getTokenSettings(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)Lcom/ironsource/mediationsdk/utils/TokenSettings;
    .locals 2
    .param p0    # Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p0, :cond_1

    .line 1383
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->isValidResponse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1384
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getTokenSettings()Lcom/ironsource/mediationsdk/utils/TokenSettings;

    move-result-object v0

    .line 1386
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/TokenSettings;->isOneToken()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1391
    :cond_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object p0

    const-string v1, "IronSource"

    .line 1392
    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object p0

    .line 1391
    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/utils/TokenSettings;->setNetworkSettings(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    return-object v0

    .line 1397
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/TokenSettings;->getDefault()Lcom/ironsource/mediationsdk/utils/TokenSettings;

    move-result-object p0

    return-object p0
.end method

.method private hasValidPlacements()Z
    .locals 7

    .line 322
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const-string v1, "providerOrder"

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 330
    :cond_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const-string v3, "configurations"

    invoke-direct {p0, v2, v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "adUnits"

    .line 331
    invoke-direct {p0, v2, v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 336
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 337
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 338
    invoke-direct {p0, v2, v5}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "placements"

    .line 339
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 341
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v3

    :cond_3
    return v1
.end method

.method private parseConfigurations()V
    .locals 82

    move-object/from16 v7, p0

    .line 552
    :try_start_0
    iget-object v1, v7, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const-string v2, "configurations"

    invoke-direct {v7, v1, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "adUnits"

    .line 553
    invoke-direct {v7, v1, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "application"

    .line 554
    invoke-direct {v7, v1, v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v1, "rewardedVideo"

    .line 555
    invoke-direct {v7, v2, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "interstitial"

    .line 556
    invoke-direct {v7, v2, v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "offerwall"

    .line 557
    invoke-direct {v7, v2, v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v4, "banner"

    .line 558
    invoke-direct {v7, v2, v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v2, "events"

    .line 560
    invoke-direct {v7, v8, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v2, "loggers"

    .line 561
    invoke-direct {v7, v8, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v2, "token"

    .line 562
    invoke-direct {v7, v8, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v2, "segment"

    .line 563
    invoke-direct {v7, v8, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v2, "auction"

    .line 564
    invoke-direct {v7, v8, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    const-string v2, "crashReporter"

    .line 565
    invoke-direct {v7, v8, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v2, "settings"

    .line 566
    invoke-direct {v7, v8, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v2, "external"

    .line 567
    invoke-direct {v7, v8, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v2, "pixel"

    .line 568
    invoke-direct {v7, v11, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v16, v5

    const/4 v5, 0x1

    if-eqz v8, :cond_0

    move-object/from16 v17, v2

    const-string v2, "uuidEnabled"

    .line 577
    invoke-virtual {v8, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 578
    iget-object v5, v7, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v4

    const-string v4, "uuidEnabled"

    invoke-static {v5, v4, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveBooleanToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    move-object/from16 v17, v2

    move-object/from16 v19, v4

    :goto_0
    if-eqz v11, :cond_1

    const-string v2, "abt"

    .line 582
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 583
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 584
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setABT(Ljava/lang/String;)V

    .line 585
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setABT(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v20, v6

    const/4 v4, 0x2

    const/16 v26, 0x0

    if-eqz v1, :cond_11

    const-string v5, "placements"

    .line 591
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const-string v2, "events"

    .line 592
    invoke-direct {v7, v1, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "maxNumOfAdaptersToLoadOnStart"

    .line 594
    invoke-direct {v7, v1, v8, v6, v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v6

    const-string v4, "advancedLoading"

    move/from16 v27, v6

    const/4 v6, 0x0

    .line 597
    invoke-direct {v7, v1, v8, v4, v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_2

    move/from16 v29, v4

    const/16 v30, 0x1

    goto :goto_1

    :cond_2
    move/from16 v29, v27

    const/16 v30, 0x0

    :goto_1
    const-string v4, "adapterTimeOutInSeconds"

    const/16 v6, 0x3c

    .line 605
    invoke-direct {v7, v1, v8, v4, v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v31

    const-string v4, "loadRVInterval"

    const/16 v6, 0x12c

    .line 606
    invoke-direct {v7, v1, v8, v4, v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v32

    const-string v4, "expiredDurationInMinutes"

    const/4 v6, -0x1

    .line 607
    invoke-direct {v7, v1, v8, v4, v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v33

    const-string v4, "delayLoadFailure"

    const/4 v6, 0x3

    .line 608
    invoke-direct {v7, v1, v8, v4, v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v36

    .line 610
    invoke-static {v2, v11}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "sendUltraEvents"

    const/4 v6, 0x0

    .line 612
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v38

    const-string v4, "sendEventsToggle"

    .line 613
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v39

    const-string v4, "eventsCompression"

    .line 614
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v40

    const-string v4, "serverEventsURL"

    const-string v6, ""

    .line 615
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    const-string v4, "serverEventsType"

    const-string v6, ""

    .line 616
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    const-string v4, "backupThreshold"

    const/4 v6, -0x1

    .line 617
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v43

    const-string v4, "maxNumberOfEvents"

    .line 618
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v44

    const-string v4, "maxEventsPerBatch"

    const/16 v6, 0x1388

    .line 619
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v45

    const-string v4, "optOut"

    .line 622
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 624
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [I

    move-object/from16 v51, v12

    move-object/from16 v50, v14

    const/4 v14, 0x0

    .line 625
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v14, v12, :cond_3

    .line 626
    invoke-virtual {v4, v14}, Lorg/json/JSONArray;->optInt(I)I

    move-result v12

    aput v12, v6, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v46, v6

    goto :goto_3

    :cond_4
    move-object/from16 v51, v12

    move-object/from16 v50, v14

    move-object/from16 v46, v26

    :goto_3
    const-string v4, "optIn"

    .line 631
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 633
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [I

    const/4 v12, 0x0

    .line 634
    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v12, v14, :cond_5

    .line 635
    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->optInt(I)I

    move-result v14

    aput v14, v6, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v47, v6

    goto :goto_5

    :cond_6
    move-object/from16 v47, v26

    :goto_5
    const-string v4, "triggerEvents"

    .line 640
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 642
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [I

    const/4 v12, 0x0

    .line 643
    :goto_6
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v12, v14, :cond_7

    .line 644
    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->optInt(I)I

    move-result v14

    aput v14, v6, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_7
    move-object/from16 v48, v6

    goto :goto_7

    :cond_8
    move-object/from16 v48, v26

    :goto_7
    const-string v4, "nonConnectivityEvents"

    .line 649
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 651
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [I

    const/4 v6, 0x0

    .line 652
    :goto_8
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v6, v12, :cond_9

    .line 653
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->optInt(I)I

    move-result v12

    aput v12, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_9
    move-object/from16 v49, v4

    goto :goto_9

    :cond_a
    move-object/from16 v49, v26

    .line 657
    :goto_9
    new-instance v2, Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-object/from16 v37, v2

    invoke-direct/range {v37 .. v49}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;-><init>(ZZZLjava/lang/String;Ljava/lang/String;III[I[I[I[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v15, :cond_c

    :try_start_1
    const-string v4, "rewardedVideo"

    .line 664
    invoke-direct {v7, v15, v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "auctionData"

    const-string v12, ""

    .line 665
    invoke-virtual {v15, v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    const-string v6, "auctioneerURL"

    const-string v12, ""

    .line 666
    invoke-virtual {v15, v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    const-string v6, "auctionTrials"

    const/4 v12, 0x2

    .line 667
    invoke-virtual {v15, v6, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v55

    const-string v6, "auctionTimeout"

    move-object/from16 v76, v13

    const-wide/16 v12, 0x2710

    .line 668
    invoke-virtual {v15, v6, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v57

    const-string v6, "auctionSavedHistory"

    const/16 v12, 0xf

    .line 669
    invoke-virtual {v15, v6, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v56

    const-string v6, "compressAuctionRequest"

    const/4 v12, 0x0

    .line 670
    invoke-virtual {v15, v6, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v71

    const-string v6, "compressAuctionResponse"

    .line 671
    invoke-virtual {v15, v6, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v72

    const-string v6, "encryptionVersion"

    const/4 v13, 0x1

    .line 672
    invoke-virtual {v15, v6, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v74

    const-string v6, "programmatic"

    .line 673
    invoke-virtual {v4, v6, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v59

    const-string v6, "minTimeBeforeFirstAuction"

    const/16 v12, 0x7d0

    .line 674
    invoke-virtual {v4, v6, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v12, "auctionRetryInterval"

    const/16 v13, 0x7530

    .line 675
    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    const-string v14, "timeToWaitBeforeAuction"

    const/16 v13, 0x1388

    .line 676
    invoke-virtual {v4, v14, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const-string v13, "timeToWaitBeforeLoad"

    move-object/from16 v77, v9

    const/16 v9, 0x32

    .line 677
    invoke-virtual {v4, v13, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v13, "isAuctionOnShowStart"

    move-object/from16 v78, v10

    const/4 v10, 0x0

    .line 678
    invoke-virtual {v4, v13, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v68

    const-string v13, "objectPerWaterfall"

    .line 679
    invoke-virtual {v4, v13, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v73

    const-string v13, "isLoadWhileShow"

    .line 680
    invoke-virtual {v4, v13, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v69

    const-string v10, "timeToDeleteOldWaterfallAfterAuction"

    const/16 v13, 0x7530

    .line 681
    invoke-virtual {v4, v10, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v70

    .line 682
    new-instance v10, Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    int-to-long v6, v6

    move-wide/from16 v60, v6

    int-to-long v6, v12

    move-wide/from16 v62, v6

    int-to-long v6, v14

    move-wide/from16 v64, v6

    int-to-long v6, v9

    move-wide/from16 v66, v6

    const/16 v75, 0x0

    move-object/from16 v52, v10

    invoke-direct/range {v52 .. v75}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;-><init>(Ljava/lang/String;Ljava/lang/String;IIJZJJJJZZIZZZIZ)V

    const-string v6, "disableLoadWhileShowSupportFor"

    .line 684
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_b

    const/4 v6, 0x0

    .line 686
    :goto_a
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_b

    .line 687
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 688
    invoke-virtual {v10, v7}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;->addLoadWhileShowSupportProvider(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_b
    move-object/from16 v35, v10

    goto :goto_b

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v7, p0

    goto/16 :goto_36

    :cond_c
    move-object/from16 v77, v9

    move-object/from16 v78, v10

    move-object/from16 v76, v13

    .line 692
    :try_start_2
    new-instance v4, Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    invoke-direct {v4}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;-><init>()V

    move-object/from16 v35, v4

    .line 694
    :goto_b
    new-instance v4, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-object/from16 v28, v4

    move-object/from16 v34, v2

    invoke-direct/range {v28 .. v36}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;-><init>(IZIIILcom/ironsource/mediationsdk/model/ApplicationEvents;Lcom/ironsource/mediationsdk/utils/AuctionSettings;I)V

    if-eqz v5, :cond_e

    const/4 v2, 0x0

    .line 697
    :goto_c
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_e

    .line 698
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v7, p0

    .line 699
    :try_start_3
    invoke-direct {v7, v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseSingleRVPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 702
    invoke-virtual {v4, v6}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->addRewardedVideoPlacement(Lcom/ironsource/mediationsdk/model/Placement;)V

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_e
    move-object/from16 v7, p0

    const-string v2, "backFill"

    .line 706
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 707
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 708
    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->setBackFillProviderName(Ljava/lang/String;)V

    :cond_f
    const-string v2, "premium"

    .line 711
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 712
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 713
    invoke-virtual {v4, v1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->setPremiumProviderName(Ljava/lang/String;)V

    :cond_10
    move-object/from16 v28, v4

    goto :goto_d

    :catch_1
    move-exception v0

    move-object/from16 v7, p0

    goto/16 :goto_35

    :cond_11
    move-object/from16 v77, v9

    move-object/from16 v78, v10

    move-object/from16 v51, v12

    move-object/from16 v76, v13

    move-object/from16 v50, v14

    move-object/from16 v28, v26

    :goto_d
    if-eqz v3, :cond_20

    const-string v1, "placements"

    .line 719
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "events"

    .line 720
    invoke-direct {v7, v3, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "maxNumOfAdaptersToLoadOnStart"

    const/4 v5, 0x2

    .line 722
    invoke-direct {v7, v3, v8, v4, v5}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "advancedLoading"

    const/4 v6, 0x0

    .line 725
    invoke-direct {v7, v3, v8, v5, v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_12

    move/from16 v30, v5

    const/16 v31, 0x1

    goto :goto_e

    :cond_12
    move/from16 v30, v4

    const/16 v31, 0x0

    :goto_e
    const-string v4, "adapterTimeOutInSeconds"

    const/16 v5, 0x3c

    .line 733
    invoke-direct {v7, v3, v8, v4, v5}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v32

    const-string v4, "delayLoadFailure"

    const/4 v6, 0x3

    .line 734
    invoke-direct {v7, v3, v8, v4, v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v35

    .line 736
    invoke-static {v2, v11}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "sendEventsToggle"

    const/4 v9, 0x0

    .line 738
    invoke-virtual {v2, v4, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v38

    const-string v4, "eventsCompression"

    .line 739
    invoke-virtual {v2, v4, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v39

    const-string v4, "serverEventsURL"

    const-string v9, ""

    .line 740
    invoke-virtual {v2, v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const-string v4, "serverEventsType"

    const-string v9, ""

    .line 741
    invoke-virtual {v2, v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    const-string v4, "backupThreshold"

    const/4 v9, -0x1

    .line 742
    invoke-virtual {v2, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v42

    const-string v4, "maxNumberOfEvents"

    .line 743
    invoke-virtual {v2, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v43

    const-string v4, "maxEventsPerBatch"

    const/16 v10, 0x1388

    .line 744
    invoke-virtual {v2, v4, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v44

    const-string v4, "optOut"

    .line 747
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 749
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v12

    new-array v12, v12, [I

    const/4 v13, 0x0

    .line 750
    :goto_f
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_13

    .line 751
    invoke-virtual {v4, v13}, Lorg/json/JSONArray;->optInt(I)I

    move-result v14

    aput v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    :cond_13
    move-object/from16 v45, v12

    goto :goto_10

    :cond_14
    move-object/from16 v45, v26

    :goto_10
    const-string v4, "optIn"

    .line 756
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 758
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v12

    new-array v12, v12, [I

    const/4 v13, 0x0

    .line 759
    :goto_11
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_15

    .line 760
    invoke-virtual {v4, v13}, Lorg/json/JSONArray;->optInt(I)I

    move-result v14

    aput v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    :cond_15
    move-object/from16 v46, v12

    goto :goto_12

    :cond_16
    move-object/from16 v46, v26

    :goto_12
    const-string v4, "triggerEvents"

    .line 765
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 767
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v12

    new-array v12, v12, [I

    const/4 v13, 0x0

    .line 768
    :goto_13
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_17

    .line 769
    invoke-virtual {v4, v13}, Lorg/json/JSONArray;->optInt(I)I

    move-result v14

    aput v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_13

    :cond_17
    move-object/from16 v47, v12

    goto :goto_14

    :cond_18
    move-object/from16 v47, v26

    :goto_14
    const-string v4, "nonConnectivityEvents"

    .line 774
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 776
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [I

    const/4 v12, 0x0

    .line 777
    :goto_15
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_19

    .line 778
    invoke-virtual {v2, v12}, Lorg/json/JSONArray;->optInt(I)I

    move-result v13

    aput v13, v4, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_15

    :cond_19
    move-object/from16 v48, v4

    goto :goto_16

    :cond_1a
    move-object/from16 v48, v26

    .line 782
    :goto_16
    new-instance v2, Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    const/16 v37, 0x0

    move-object/from16 v36, v2

    invoke-direct/range {v36 .. v48}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;-><init>(ZZZLjava/lang/String;Ljava/lang/String;III[I[I[I[I)V

    if-eqz v15, :cond_1b

    const-string v4, "interstitial"

    .line 789
    invoke-direct {v7, v15, v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v12, "auctionData"

    const-string v13, ""

    .line 790
    invoke-virtual {v15, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    const-string v12, "auctioneerURL"

    const-string v13, ""

    .line 791
    invoke-virtual {v15, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    const-string v12, "auctionTrials"

    const/4 v13, 0x2

    .line 792
    invoke-virtual {v15, v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v55

    const-string v12, "auctionSavedHistory"

    const/16 v14, 0xf

    .line 793
    invoke-virtual {v15, v12, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v56

    const-string v12, "auctionTimeout"

    const-wide/16 v5, 0x2710

    .line 794
    invoke-virtual {v15, v12, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v57

    const-string v12, "compressAuctionRequest"

    const/4 v5, 0x0

    .line 795
    invoke-virtual {v15, v12, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v71

    const-string v6, "compressAuctionResponse"

    .line 796
    invoke-virtual {v15, v6, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v72

    const-string v6, "encryptionVersion"

    const/4 v12, 0x1

    .line 797
    invoke-virtual {v15, v6, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v74

    const-string v6, "programmatic"

    .line 798
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v59

    const-string v6, "objectPerWaterfall"

    .line 799
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v73

    const-string v6, "minTimeBeforeFirstAuction"

    const/16 v12, 0x7d0

    .line 800
    invoke-virtual {v4, v6, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 801
    new-instance v6, Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    int-to-long v9, v4

    move-wide/from16 v60, v9

    const-wide/16 v62, 0x0

    const-wide/16 v64, 0x0

    const-wide/16 v66, 0x0

    const/16 v68, 0x1

    const/16 v69, 0x1

    const/16 v70, 0x0

    const/16 v75, 0x0

    move-object/from16 v52, v6

    invoke-direct/range {v52 .. v75}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;-><init>(Ljava/lang/String;Ljava/lang/String;IIJZJJJJZZIZZZIZ)V

    move-object/from16 v34, v6

    goto :goto_17

    :cond_1b
    const/4 v5, 0x0

    const/16 v12, 0x7d0

    const/4 v13, 0x2

    const/16 v14, 0xf

    .line 803
    new-instance v4, Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    invoke-direct {v4}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;-><init>()V

    move-object/from16 v34, v4

    .line 806
    :goto_17
    new-instance v4, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-object/from16 v29, v4

    move-object/from16 v33, v2

    invoke-direct/range {v29 .. v35}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;-><init>(IZILcom/ironsource/mediationsdk/model/ApplicationEvents;Lcom/ironsource/mediationsdk/utils/AuctionSettings;I)V

    if-eqz v1, :cond_1d

    const/4 v2, 0x0

    .line 809
    :goto_18
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_1d

    .line 810
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 811
    invoke-direct {v7, v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseSingleISPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v6

    if-eqz v6, :cond_1c

    .line 814
    invoke-virtual {v4, v6}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->addInterstitialPlacement(Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_1d
    const-string v1, "backFill"

    .line 818
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 819
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 820
    invoke-virtual {v4, v1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->setBackFillProviderName(Ljava/lang/String;)V

    :cond_1e
    const-string v1, "premium"

    .line 823
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 824
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 825
    invoke-virtual {v4, v1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->setPremiumProviderName(Ljava/lang/String;)V

    :cond_1f
    move-object/from16 v29, v4

    goto :goto_19

    :cond_20
    const/4 v5, 0x0

    const/16 v12, 0x7d0

    const/4 v13, 0x2

    const/16 v14, 0xf

    move-object/from16 v29, v26

    :goto_19
    if-eqz v78, :cond_2d

    const-string v1, "placements"

    move-object/from16 v9, v78

    .line 832
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    const-string v1, "events"

    .line 834
    invoke-direct {v7, v9, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v1, "maxNumOfAdaptersToLoadOnStart"

    const/4 v4, 0x1

    .line 835
    invoke-direct {v7, v9, v8, v1, v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v31

    const-string v18, "atim"

    const-wide/16 v21, 0x2710

    move-object/from16 v1, p0

    move-object/from16 v3, v17

    const/16 v12, 0x3c

    move-object v2, v9

    move-object v13, v3

    move-object v3, v8

    move-object/from16 v14, v19

    const/16 v17, 0x1

    move-object/from16 v4, v18

    move-object/from16 v81, v6

    move-object/from16 v79, v16

    move-object/from16 v80, v20

    const/4 v12, 0x3

    move-wide/from16 v5, v21

    .line 836
    invoke-direct/range {v1 .. v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getLongConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v32

    const-string v1, "delayLoadFailure"

    .line 837
    invoke-direct {v7, v9, v8, v1, v12}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v37

    const-string v1, "bannerInterval"

    const/16 v2, 0x3c

    .line 838
    invoke-direct {v7, v9, v8, v1, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v35

    move-object/from16 v1, v81

    .line 840
    invoke-static {v1, v11}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "sendEventsToggle"

    const/4 v3, 0x0

    .line 842
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v54

    const-string v2, "eventsCompression"

    .line 843
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v55

    const-string v2, "serverEventsURL"

    const-string v4, ""

    .line 844
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    const-string v2, "serverEventsType"

    const-string v4, ""

    .line 845
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    const-string v2, "backupThreshold"

    const/4 v4, -0x1

    .line 846
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v58

    const-string v2, "maxNumberOfEvents"

    .line 847
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v59

    const-string v2, "maxEventsPerBatch"

    const/16 v5, 0x1388

    .line 848
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v60

    const-string v2, "optOut"

    .line 851
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 853
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [I

    const/4 v9, 0x0

    .line 854
    :goto_1a
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v9, v12, :cond_21

    .line 855
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->optInt(I)I

    move-result v12

    aput v12, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    :cond_21
    move-object/from16 v61, v6

    goto :goto_1b

    :cond_22
    move-object/from16 v61, v26

    :goto_1b
    const-string v2, "optIn"

    .line 860
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 862
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [I

    const/4 v9, 0x0

    .line 863
    :goto_1c
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v9, v12, :cond_23

    .line 864
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->optInt(I)I

    move-result v12

    aput v12, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    :cond_23
    move-object/from16 v62, v6

    goto :goto_1d

    :cond_24
    move-object/from16 v62, v26

    :goto_1d
    const-string v2, "triggerEvents"

    .line 869
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 871
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [I

    const/4 v9, 0x0

    .line 872
    :goto_1e
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v9, v12, :cond_25

    .line 873
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->optInt(I)I

    move-result v12

    aput v12, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    :cond_25
    move-object/from16 v63, v6

    goto :goto_1f

    :cond_26
    move-object/from16 v63, v26

    :goto_1f
    const-string v2, "nonConnectivityEvents"

    .line 878
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 880
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [I

    const/4 v6, 0x0

    .line 881
    :goto_20
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v6, v9, :cond_27

    .line 882
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->optInt(I)I

    move-result v9

    aput v9, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_27
    move-object/from16 v64, v2

    goto :goto_21

    :cond_28
    move-object/from16 v64, v26

    .line 886
    :goto_21
    new-instance v1, Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    const/16 v53, 0x0

    move-object/from16 v52, v1

    invoke-direct/range {v52 .. v64}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;-><init>(ZZZLjava/lang/String;Ljava/lang/String;III[I[I[I[I)V

    if-eqz v15, :cond_2a

    const-string v2, "banner"

    .line 893
    invoke-direct {v7, v15, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_29

    const-string v6, "auctionData"

    const-string v9, ""

    .line 895
    invoke-virtual {v15, v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    const-string v6, "auctioneerURL"

    const-string v9, ""

    .line 896
    invoke-virtual {v15, v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    const-string v6, "auctionTrials"

    const/4 v9, 0x2

    .line 897
    invoke-virtual {v15, v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v55

    const-string v6, "auctionSavedHistory"

    const/16 v9, 0xf

    .line 898
    invoke-virtual {v15, v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v56

    const-string v6, "auctionTimeout"

    const-wide/16 v4, 0x2710

    .line 899
    invoke-virtual {v15, v6, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v57

    const-string v4, "compressAuctionRequest"

    .line 900
    invoke-virtual {v15, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v71

    const-string v4, "compressAuctionResponse"

    .line 901
    invoke-virtual {v15, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v72

    const-string v4, "encryptionVersion"

    const/4 v5, 0x1

    .line 902
    invoke-virtual {v15, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v74

    const-string v4, "programmatic"

    .line 903
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v59

    const-string v4, "minTimeBeforeFirstAuction"

    const/16 v6, 0x7d0

    .line 904
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "shouldSendBannerBURLFromImpression"

    .line 905
    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v75

    .line 906
    new-instance v2, Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    int-to-long v5, v4

    move-wide/from16 v60, v5

    const-wide/16 v62, 0x0

    const-wide/16 v64, 0x0

    const-wide/16 v66, 0x0

    const/16 v68, 0x1

    const/16 v69, 0x1

    const/16 v70, 0x0

    const/16 v73, 0x0

    move-object/from16 v52, v2

    invoke-direct/range {v52 .. v75}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;-><init>(Ljava/lang/String;Ljava/lang/String;IIJZJJJJZZIZZZIZ)V

    goto :goto_22

    .line 908
    :cond_29
    new-instance v2, Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    invoke-direct {v2}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;-><init>()V

    goto :goto_22

    .line 911
    :cond_2a
    new-instance v2, Lcom/ironsource/mediationsdk/utils/AuctionSettings;

    invoke-direct {v2}, Lcom/ironsource/mediationsdk/utils/AuctionSettings;-><init>()V

    :goto_22
    move-object/from16 v36, v2

    .line 914
    new-instance v2, Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-object/from16 v30, v2

    move-object/from16 v34, v1

    invoke-direct/range {v30 .. v37}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;-><init>(IJLcom/ironsource/mediationsdk/model/ApplicationEvents;ILcom/ironsource/mediationsdk/utils/AuctionSettings;I)V

    if-eqz v10, :cond_2c

    const/4 v1, 0x0

    .line 917
    :goto_23
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_2c

    .line 918
    invoke-virtual {v10, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 919
    invoke-direct {v7, v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseSingleBNPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object v4

    if-eqz v4, :cond_2b

    .line 922
    invoke-virtual {v2, v4}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->addBannerPlacement(Lcom/ironsource/mediationsdk/model/BannerPlacement;)V

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_2c
    move-object/from16 v31, v2

    goto :goto_24

    :cond_2d
    move-object/from16 v79, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v19

    move-object/from16 v80, v20

    const/4 v3, 0x0

    move-object/from16 v31, v26

    :goto_24
    if-eqz v77, :cond_38

    const-string v1, "events"

    move-object/from16 v2, v77

    .line 929
    invoke-direct {v7, v2, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 931
    invoke-static {v1, v11}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "sendEventsToggle"

    .line 933
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v34

    const-string v4, "eventsCompression"

    .line 934
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v35

    const-string v4, "serverEventsURL"

    const-string v5, ""

    .line 935
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string v4, "serverEventsType"

    const-string v5, ""

    .line 936
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v4, "backupThreshold"

    const/4 v5, -0x1

    .line 937
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v38

    const-string v4, "maxNumberOfEvents"

    .line 938
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v39

    const-string v4, "maxEventsPerBatch"

    const/16 v5, 0x1388

    .line 939
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v40

    const-string v4, "optOut"

    .line 942
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 944
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [I

    const/4 v6, 0x0

    .line 945
    :goto_25
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v6, v9, :cond_2e

    .line 946
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optInt(I)I

    move-result v9

    aput v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_2e
    move-object/from16 v41, v5

    goto :goto_26

    :cond_2f
    move-object/from16 v41, v26

    :goto_26
    const-string v4, "optIn"

    .line 951
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_31

    .line 953
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [I

    const/4 v6, 0x0

    .line 954
    :goto_27
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v6, v9, :cond_30

    .line 955
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optInt(I)I

    move-result v9

    aput v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    :cond_30
    move-object/from16 v42, v5

    goto :goto_28

    :cond_31
    move-object/from16 v42, v26

    :goto_28
    const-string v4, "triggerEvents"

    .line 960
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 962
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [I

    const/4 v6, 0x0

    .line 963
    :goto_29
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v6, v9, :cond_32

    .line 964
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optInt(I)I

    move-result v9

    aput v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_32
    move-object/from16 v43, v5

    goto :goto_2a

    :cond_33
    move-object/from16 v43, v26

    :goto_2a
    const-string v4, "nonConnectivityEvents"

    .line 969
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 971
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [I

    const/4 v5, 0x0

    .line 972
    :goto_2b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_34

    .line 973
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optInt(I)I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_34
    move-object/from16 v44, v4

    goto :goto_2c

    :cond_35
    move-object/from16 v44, v26

    .line 977
    :goto_2c
    new-instance v1, Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    const/16 v33, 0x0

    move-object/from16 v32, v1

    invoke-direct/range {v32 .. v44}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;-><init>(ZZZLjava/lang/String;Ljava/lang/String;III[I[I[I[I)V

    .line 980
    new-instance v4, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    invoke-direct {v4, v1}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;-><init>(Lcom/ironsource/mediationsdk/model/ApplicationEvents;)V

    .line 981
    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->setOfferWallSection(Lorg/json/JSONObject;)V

    const-string v1, "placements"

    .line 983
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_37

    const/4 v2, 0x0

    .line 985
    :goto_2d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_37

    .line 986
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 987
    invoke-direct {v7, v5}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseSingleOWPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    move-result-object v5

    if-eqz v5, :cond_36

    .line 990
    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->addOfferwallPlacement(Lcom/ironsource/mediationsdk/model/OfferwallPlacement;)V

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_37
    move-object/from16 v30, v4

    goto :goto_2e

    :cond_38
    move-object/from16 v30, v26

    .line 1000
    :goto_2e
    new-instance v1, Lcom/ironsource/mediationsdk/utils/TokenSettings;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/utils/TokenSettings;-><init>()V

    if-eqz v76, :cond_3b

    const-string v2, "optInKeys"

    move-object/from16 v4, v76

    .line 1003
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_39

    const/4 v5, 0x0

    .line 1005
    :goto_2f
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_39

    .line 1006
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    .line 1007
    invoke-virtual {v1, v6}, Lcom/ironsource/mediationsdk/utils/TokenSettings;->addOptInKeyParam(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    :cond_39
    const-string v2, "tokenGenericParams"

    .line 1011
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 1013
    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/utils/TokenSettings;->setGenericParams(Lorg/json/JSONObject;)V

    :cond_3a
    const-string v2, "oneToken"

    .line 1016
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1017
    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/utils/TokenSettings;->setOneToken(Z)V

    const-string v2, "compressToken"

    const/4 v5, 0x1

    .line 1019
    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1020
    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/utils/TokenSettings;->setCompressToken(Z)V

    .line 1024
    :cond_3b
    new-instance v2, Lcom/ironsource/mediationsdk/utils/PixelSettings;

    invoke-direct {v2}, Lcom/ironsource/mediationsdk/utils/PixelSettings;-><init>()V

    if-eqz v13, :cond_3c

    const-string v4, "pixelEventsUrl"

    const-string v5, "https://outcome-ssp.supersonicads.com/mediation?adUnit=3"

    .line 1028
    invoke-virtual {v13, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pixelEventsEnabled"

    const/4 v6, 0x1

    .line 1029
    invoke-virtual {v13, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1030
    invoke-virtual {v2, v4}, Lcom/ironsource/mediationsdk/utils/PixelSettings;->setPixelEventsUrl(Ljava/lang/String;)V

    goto :goto_30

    :cond_3c
    const/4 v5, 0x1

    .line 1032
    :goto_30
    invoke-virtual {v2, v5}, Lcom/ironsource/mediationsdk/utils/PixelSettings;->setPixelEventsEnabled(Z)V

    if-eqz v5, :cond_3d

    const-string v4, "optOut"

    .line 1036
    invoke-direct {v7, v11, v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getArrayFromJsonWithKey(Lorg/json/JSONObject;Ljava/lang/String;)[I

    move-result-object v4

    .line 1037
    invoke-virtual {v2, v4}, Lcom/ironsource/mediationsdk/utils/PixelSettings;->setPixelOptOut([I)V

    const-string v4, "optIn"

    .line 1040
    invoke-direct {v7, v11, v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getArrayFromJsonWithKey(Lorg/json/JSONObject;Ljava/lang/String;)[I

    move-result-object v4

    .line 1041
    invoke-virtual {v2, v4}, Lcom/ironsource/mediationsdk/utils/PixelSettings;->setPixelOptIn([I)V

    const-string v4, "eventsCompression"

    .line 1044
    invoke-virtual {v11, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1045
    invoke-virtual {v2, v4}, Lcom/ironsource/mediationsdk/utils/PixelSettings;->setPixelEventsCompression(Z)V

    :cond_3d
    const-string v4, "server"

    move-object/from16 v5, v51

    const/4 v6, 0x3

    .line 1051
    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v9, "publisher"

    .line 1052
    invoke-virtual {v5, v9, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "console"

    .line 1053
    invoke-virtual {v5, v10, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 1055
    new-instance v6, Lcom/ironsource/mediationsdk/model/ApplicationLogger;

    invoke-direct {v6, v4, v9, v5}, Lcom/ironsource/mediationsdk/model/ApplicationLogger;-><init>(III)V

    .line 1058
    new-instance v4, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;

    invoke-direct {v4}, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;-><init>()V

    move-object/from16 v5, v79

    if-eqz v5, :cond_3e

    const-string v9, "enabled"

    .line 1060
    invoke-virtual {v5, v9, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1061
    invoke-virtual {v4, v9}, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->setKeyParamsToIncludeInReporter(Z)V

    const-string v9, "reporterURL"

    const-string v10, ""

    .line 1062
    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1063
    invoke-virtual {v4, v9}, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->setReporterURL(Ljava/lang/String;)V

    const-string v9, "reporterKeyword"

    const-string v10, ""

    .line 1064
    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1065
    invoke-virtual {v4, v9}, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->setReporterKeyword(Ljava/lang/String;)V

    const-string v9, "includeANR"

    .line 1066
    invoke-virtual {v5, v9, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1067
    invoke-virtual {v4, v9}, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->shouldIncludeANR(Z)V

    const-string v9, "timeout"

    const/16 v10, 0x1388

    .line 1068
    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 1069
    invoke-virtual {v4, v9}, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->setDefaultAnrTimeout(I)V

    const-string v9, "setIgnoreDebugger"

    .line 1070
    invoke-virtual {v5, v9, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1071
    invoke-virtual {v4, v9}, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->shouldIgnoreDebugger(Z)V

    const-string v9, "keysToInclude"

    .line 1072
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_3e

    const/4 v9, 0x0

    .line 1074
    :goto_31
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_3e

    .line 1075
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    .line 1076
    invoke-virtual {v4, v10}, Lcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;->addKeyParamToInclude(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_31

    :cond_3e
    if-eqz v50, :cond_3f

    const-string v5, "name"

    const-string v9, ""

    move-object/from16 v10, v50

    .line 1084
    invoke-virtual {v10, v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "id"

    const-string v12, "-1"

    .line 1085
    invoke-virtual {v10, v9, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "custom"

    .line 1086
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 1087
    new-instance v12, Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    invoke-direct {v12, v5, v9, v10}, Lcom/ironsource/mediationsdk/model/ServerSegmetData;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object/from16 v18, v12

    goto :goto_32

    :cond_3f
    move-object/from16 v18, v26

    .line 1091
    :goto_32
    new-instance v5, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;

    invoke-direct {v5}, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;-><init>()V

    move-object/from16 v9, v80

    if-eqz v9, :cond_40

    const-string v5, "isExternalArmEventsEnabled"

    const/4 v10, 0x1

    .line 1093
    invoke-virtual {v9, v5, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v12, "externalArmEventsUrl"

    const-string v13, "https://outcome-arm-ext-med-ext.sonic-us.supersonicads.com/aemData"

    .line 1094
    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "sid"

    .line 1095
    invoke-virtual {v9, v13, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v13, "radvid"

    .line 1096
    invoke-virtual {v9, v13, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1098
    new-instance v13, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;

    invoke-direct {v13, v5, v12, v10, v9}, Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;-><init>(ZLjava/lang/String;ZZ)V

    move-object/from16 v22, v13

    goto :goto_33

    :cond_40
    move-object/from16 v22, v5

    .line 1102
    :goto_33
    new-instance v5, Lcom/ironsource/mediationsdk/model/ApplicationExternalSettings;

    invoke-direct {v5}, Lcom/ironsource/mediationsdk/model/ApplicationExternalSettings;-><init>()V

    if-eqz v14, :cond_42

    const-string v5, "mediationTypes"

    .line 1104
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1105
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    if-eqz v5, :cond_41

    .line 1107
    invoke-static {v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->parseJsonToStringMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v9

    :cond_41
    const-string v5, "compressExternalToken"

    .line 1109
    invoke-virtual {v14, v5, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 1110
    new-instance v5, Lcom/ironsource/mediationsdk/model/ApplicationExternalSettings;

    invoke-direct {v5, v9}, Lcom/ironsource/mediationsdk/model/ApplicationExternalSettings;-><init>(Ljava/util/Map;)V

    :cond_42
    move-object/from16 v23, v5

    .line 1113
    new-instance v5, Lcom/ironsource/mediationsdk/model/ApplicationAuctionSettings;

    invoke-direct {v5}, Lcom/ironsource/mediationsdk/model/ApplicationAuctionSettings;-><init>()V

    if-eqz v15, :cond_43

    const-string v5, "auctionData"

    .line 1115
    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1116
    new-instance v9, Lcom/ironsource/mediationsdk/model/ApplicationAuctionSettings;

    invoke-direct {v9, v5}, Lcom/ironsource/mediationsdk/model/ApplicationAuctionSettings;-><init>(Ljava/lang/String;)V

    move-object/from16 v25, v9

    goto :goto_34

    :cond_43
    move-object/from16 v25, v5

    :goto_34
    const-string v5, "integration"

    .line 1120
    invoke-virtual {v8, v5, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 1122
    new-instance v3, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v19, v1

    move-object/from16 v21, v4

    move-object/from16 v24, v2

    invoke-direct/range {v16 .. v25}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;-><init>(Lcom/ironsource/mediationsdk/model/ApplicationLogger;Lcom/ironsource/mediationsdk/model/ServerSegmetData;Lcom/ironsource/mediationsdk/utils/TokenSettings;ZLcom/ironsource/mediationsdk/model/ApplicationCrashReporterSettings;Lcom/ironsource/mediationsdk/utils/ApplicationGeneralSettings;Lcom/ironsource/mediationsdk/model/ApplicationExternalSettings;Lcom/ironsource/mediationsdk/utils/PixelSettings;Lcom/ironsource/mediationsdk/model/ApplicationAuctionSettings;)V

    .line 1124
    new-instance v1, Lcom/ironsource/mediationsdk/model/Configurations;

    move-object/from16 v27, v1

    move-object/from16 v32, v3

    invoke-direct/range {v27 .. v32}, Lcom/ironsource/mediationsdk/model/Configurations;-><init>(Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;Lcom/ironsource/mediationsdk/model/BannerConfigurations;Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;)V

    iput-object v1, v7, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    const-string v1, "genericParams"

    .line 1127
    invoke-direct {v7, v11, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_44

    const-string v2, "events"

    .line 1130
    invoke-direct {v7, v1, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_44

    const-string v3, "events"

    .line 1132
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1133
    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->parseJsonToStringMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 1134
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setEventGenericParams(Ljava/util/Map;)V

    .line 1135
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setEventGenericParams(Ljava/util/Map;)V

    :cond_44
    if-eqz v1, :cond_45

    .line 1140
    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->parseJsonToStringMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 1141
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setBatchParams(Ljava/util/Map;)V

    .line 1142
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setBatchParams(Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_37

    :catch_2
    move-exception v0

    :goto_35
    move-object v1, v0

    .line 1146
    :goto_36
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_45
    :goto_37
    return-void
.end method

.method private parseProviderOrder()V
    .locals 9

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const-string v1, "providerOrder"

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "rewardedVideo"

    .line 377
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "interstitial"

    .line 378
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "banner"

    .line 379
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 381
    new-instance v3, Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-direct {v3}, Lcom/ironsource/mediationsdk/model/ProviderOrder;-><init>()V

    iput-object v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 383
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 384
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getBackFillProviderName()Ljava/lang/String;

    move-result-object v4

    .line 385
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getPremiumProviderName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 386
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 387
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 389
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 391
    iget-object v7, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v7, v4}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->setRVBackFillProvider(Ljava/lang/String;)V

    goto :goto_1

    .line 394
    :cond_0
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 395
    iget-object v8, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v8, v5}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->setRVPremiumProvider(Ljava/lang/String;)V

    .line 398
    :cond_1
    iget-object v8, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v8, v7}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->addRewardedVideoProvider(Ljava/lang/String;)V

    .line 400
    invoke-static {}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 402
    invoke-virtual {v7, v6}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->setRewardedVideoPriority(I)V

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_7

    .line 407
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 408
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getBackFillProviderName()Ljava/lang/String;

    move-result-object v1

    .line 409
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getPremiumProviderName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 410
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 411
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    .line 413
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 415
    iget-object v6, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v6, v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->setISBackFillProvider(Ljava/lang/String;)V

    goto :goto_3

    .line 417
    :cond_4
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 418
    iget-object v7, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v7, v4}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->setISPremiumProvider(Ljava/lang/String;)V

    .line 422
    :cond_5
    iget-object v7, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v7, v6}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->addInterstitialProvider(Ljava/lang/String;)V

    .line 424
    invoke-static {}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 426
    invoke-virtual {v6, v5}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->setInterstitialPriority(I)V

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_9

    .line 432
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_9

    .line 433
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 435
    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->addBannerProvider(Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 439
    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->setBannerPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    .line 444
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    return-void
.end method

.method private parseProviderSettings()V
    .locals 17

    move-object/from16 v1, p0

    .line 453
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v0

    iput-object v0, v1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    .line 455
    iget-object v0, v1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const-string v2, "providerSettings"

    invoke-direct {v1, v0, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 464
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 465
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 466
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "mpis"

    const/4 v6, 0x0

    .line 468
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const-string v4, "spId"

    const-string v6, "0"

    .line 469
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v4, "adSourceName"

    const/4 v6, 0x0

    .line 470
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "providerLoadName"

    .line 471
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "providerDefaultInstance"

    .line 472
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "adUnits"

    .line 473
    invoke-direct {v1, v3, v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v8, "application"

    .line 474
    invoke-direct {v1, v3, v8}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v3, "rewardedVideo"

    .line 475
    invoke-direct {v1, v4, v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v9, "interstitial"

    .line 476
    invoke-direct {v1, v4, v9}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "banner"

    .line 477
    invoke-direct {v1, v4, v10}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 479
    invoke-static {v3, v8}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 480
    invoke-static {v9, v8}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    .line 481
    invoke-static {v4, v8}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v11

    .line 484
    iget-object v4, v1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->containsProviderSettings(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 485
    iget-object v4, v1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v4

    .line 486
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v5

    .line 487
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v6

    .line 488
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v7

    .line 491
    invoke-static {v5, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->setRewardedVideoSettings(Lorg/json/JSONObject;)V

    .line 493
    invoke-static {v6, v10}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->setInterstitialSettings(Lorg/json/JSONObject;)V

    .line 494
    invoke-static {v7, v11}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->setBannerSettings(Lorg/json/JSONObject;)V

    .line 495
    invoke-virtual {v4, v12}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->setIsMultipleInstances(Z)V

    .line 496
    invoke-virtual {v4, v13}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->setSubProviderId(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v4, v14}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->setAdSourceNameForEvents(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 499
    :cond_0
    invoke-direct {v1, v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->shouldMergeWithDebugSettings(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 501
    iget-object v4, v1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    const-string v9, "Mediation"

    invoke-virtual {v4, v9}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v4

    .line 502
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v9

    .line 503
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v15

    .line 504
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v4

    move-object/from16 v16, v0

    .line 506
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 507
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 508
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 510
    invoke-static {v0, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 511
    invoke-static {v9, v10}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    .line 512
    invoke-static {v15, v11}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v11

    .line 514
    new-instance v3, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-object v4, v3

    move-object v9, v0

    invoke-direct/range {v4 .. v11}, Lcom/ironsource/mediationsdk/model/NetworkSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 516
    invoke-virtual {v3, v12}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->setIsMultipleInstances(Z)V

    .line 517
    invoke-virtual {v3, v13}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->setSubProviderId(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v3, v14}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->setAdSourceNameForEvents(Ljava/lang/String;)V

    .line 521
    iget-object v0, v1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    invoke-virtual {v0, v3}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->addProviderSettings(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    goto :goto_2

    :cond_1
    move-object/from16 v16, v0

    .line 523
    new-instance v0, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-object v4, v0

    move-object v9, v3

    invoke-direct/range {v4 .. v11}, Lcom/ironsource/mediationsdk/model/NetworkSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 525
    invoke-virtual {v0, v12}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->setIsMultipleInstances(Z)V

    .line 526
    invoke-virtual {v0, v13}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->setSubProviderId(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v0, v14}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->setAdSourceNameForEvents(Ljava/lang/String;)V

    .line 529
    iget-object v3, v1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    invoke-virtual {v3, v0}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->addProviderSettings(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    goto :goto_2

    :cond_2
    :goto_1
    move-object/from16 v16, v0

    :goto_2
    move-object/from16 v0, v16

    goto/16 :goto_0

    .line 534
    :cond_3
    iget-object v0, v1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->fillSubProvidersDetails()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 536
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private parseSingleBNPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/BannerPlacement;
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "placementId"

    const/4 v1, -0x1

    .line 1270
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "placementName"

    const-string v2, ""

    .line 1271
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isDefault"

    const/4 v3, 0x0

    .line 1272
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1273
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getPlacementAvailabilitySettings(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object p1

    if-ltz v0, :cond_0

    .line 1275
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1276
    new-instance v3, Lcom/ironsource/mediationsdk/model/BannerPlacement;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/ironsource/mediationsdk/model/BannerPlacement;-><init>(ILjava/lang/String;ZLcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V

    if-eqz p1, :cond_1

    .line 1278
    iget-object p1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->addCappingInfo(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/BannerPlacement;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return-object v3
.end method

.method private parseSingleISPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "placementId"

    const/4 v1, -0x1

    .line 1234
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "placementName"

    const-string v2, ""

    .line 1235
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isDefault"

    const/4 v3, 0x0

    .line 1236
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1237
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getPlacementAvailabilitySettings(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object p1

    if-ltz v0, :cond_0

    .line 1239
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1240
    new-instance v3, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;-><init>(ILjava/lang/String;ZLcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V

    if-eqz p1, :cond_1

    .line 1242
    iget-object p1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->addCappingInfo(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return-object v3
.end method

.method private parseSingleOWPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "placementId"

    const/4 v1, -0x1

    .line 1254
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "placementName"

    const-string v2, ""

    .line 1255
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isDefault"

    const/4 v3, 0x0

    .line 1256
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-ltz v0, :cond_0

    .line 1258
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1259
    new-instance v2, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    invoke-direct {v2, v0, v1, p1}, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;-><init>(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method private parseSingleRVPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/Placement;
    .locals 9

    if-eqz p1, :cond_0

    const-string v0, "placementId"

    const/4 v1, -0x1

    .line 1211
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "placementName"

    const-string v2, ""

    .line 1212
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "isDefault"

    const/4 v2, 0x0

    .line 1213
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v0, "virtualItemName"

    const-string v2, ""

    .line 1214
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "virtualItemCount"

    .line 1215
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 1216
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getPlacementAvailabilitySettings(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object p1

    if-ltz v3, :cond_0

    .line 1218
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1219
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez v7, :cond_0

    .line 1220
    new-instance v0, Lcom/ironsource/mediationsdk/model/Placement;

    move-object v2, v0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/ironsource/mediationsdk/model/Placement;-><init>(ILjava/lang/String;ZLjava/lang/String;ILcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V

    if-eqz p1, :cond_1

    .line 1222
    iget-object p1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/PlacementCappingManager;->addCappingInfo(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private shouldMergeWithDebugSettings(Ljava/lang/String;)Z
    .locals 2

    .line 541
    invoke-static {p1}, Lcom/ironsource/environment/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 542
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    const-string v1, "Mediation"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->containsProviderSettings(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SupersonicAds"

    .line 543
    invoke-static {v0}, Lcom/ironsource/environment/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IronSource"

    .line 544
    invoke-static {v0}, Lcom/ironsource/environment/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;
    .locals 1

    .line 1368
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    return-object v0
.end method

.method public getInitialConfiguration()Lcom/ironsource/mediationsdk/InitConfig;
    .locals 3

    .line 295
    new-instance v0, Lcom/ironsource/mediationsdk/InitConfig;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/InitConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getInitiatedAdUnits()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    if-nez v0, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 354
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    .line 355
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 356
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    .line 359
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 360
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 363
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 366
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0

    :cond_5
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrigin()Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mOrigin:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    return-object v0
.end method

.method public getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;
    .locals 1

    .line 1364
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    return-object v0
.end method

.method public getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;
    .locals 1

    .line 1360
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    return-object v0
.end method

.method public getRVBackFillProvider()Ljava/lang/String;
    .locals 4

    .line 1343
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRVBackFillProvider()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1345
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "getRVBackFillProvider"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRVPremiumProvider()Ljava/lang/String;
    .locals 4

    .line 1352
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRVPremiumProvider()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1354
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "getRVPremiumProvider"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public isValidResponse()Z
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const-string v3, "error"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    .line 312
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_4

    .line 314
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_5

    .line 316
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->hasValidPlacements()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public setOrigin(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mOrigin:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$ISResponseOrigin;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 281
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "appKey"

    .line 284
    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "userId"

    .line 285
    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "response"

    .line 286
    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 288
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 291
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
