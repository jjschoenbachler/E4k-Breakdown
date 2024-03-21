.class public Lcom/ironsource/sdk/constants/Constants$ControllerConfigurationKeys;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/constants/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ControllerConfigurationKeys"
.end annotation


# static fields
.field public static final CHINA_CDN:Ljava/lang/String; = "chinaCDN"

.field public static final CLEAR_STORAGE_ON_NEW_SDK_VERSION_KEY:Ljava/lang/String; = "clearStorageOnNewSdkVersion"

.field public static final CONTROLLER_SOURCE_STRATEGY_KEY:Ljava/lang/String; = "controllerSourceStrategy"

.field public static final DELETE_CACHE_DIR_KEY:Ljava/lang/String; = "deleteCacheDir"

.field public static final DELETE_FILES_DIR_KEY:Ljava/lang/String; = "deleteFilesDir"

.field public static final ENABLE_LIFE_CYCLE_EVENT_LISTENRS_KEY:Ljava/lang/String; = "enableLifeCycleListeners"

.field public static final NATIVE_FEATURES_KEY:Ljava/lang/String; = "nativeFeatures"

.field public static final NETWORK_CONFIGURATION_KEY:Ljava/lang/String; = "networkConfig"

.field public static final STORAGE_CONFIGURATION_KEY:Ljava/lang/String; = "storage"

.field public static final USE_CACHE_DIR_KEY:Ljava/lang/String; = "useCacheDir"


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/constants/Constants;


# direct methods
.method public constructor <init>(Lcom/ironsource/sdk/constants/Constants;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/ironsource/sdk/constants/Constants$ControllerConfigurationKeys;->this$0:Lcom/ironsource/sdk/constants/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
