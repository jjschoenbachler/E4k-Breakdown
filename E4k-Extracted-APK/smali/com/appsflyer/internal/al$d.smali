.class final enum Lcom/appsflyer/internal/al$d;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/al$d;",
        ">;"
    }
.end annotation


# static fields
.field private static enum AFInAppEventParameterName:Lcom/appsflyer/internal/al$d;

.field private static enum AFInAppEventType:Lcom/appsflyer/internal/al$d;

.field public static final enum AFKeystoreWrapper:Lcom/appsflyer/internal/al$d;

.field private static enum AFLogger$LogLevel:Lcom/appsflyer/internal/al$d;

.field private static enum AFVersionDeclaration:Lcom/appsflyer/internal/al$d;

.field private static enum AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/al$d;

.field private static enum getLevel:Lcom/appsflyer/internal/al$d;

.field private static enum init:Lcom/appsflyer/internal/al$d;

.field private static final synthetic onAppOpenAttribution:[Lcom/appsflyer/internal/al$d;

.field private static enum onAppOpenAttributionNative:Lcom/appsflyer/internal/al$d;

.field private static enum onAttributionFailureNative:Lcom/appsflyer/internal/al$d;

.field private static enum onInstallConversionDataLoadedNative:Lcom/appsflyer/internal/al$d;

.field private static enum valueOf:Lcom/appsflyer/internal/al$d;

.field private static enum values:Lcom/appsflyer/internal/al$d;


# instance fields
.field private onDeepLinkingNative:Ljava/lang/String;

.field private onInstallConversionFailureNative:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 57
    new-instance v0, Lcom/appsflyer/internal/al$d;

    const-string v1, "ADOBE_AIR"

    const-string v2, "android_adobe_air"

    const-string v3, "com.appsflyer.adobeair.AppsFlyerExtension"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/appsflyer/internal/al$d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/al$d;->AFInAppEventType:Lcom/appsflyer/internal/al$d;

    .line 58
    new-instance v0, Lcom/appsflyer/internal/al$d;

    const-string v1, "ADOBE_MOBILE_SDK"

    const-string v2, "android_adobe_mobile"

    const-string v3, "com.appsflyer.adobeextension.AppsFlyerAdobeExtension"

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/appsflyer/internal/al$d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/al$d;->values:Lcom/appsflyer/internal/al$d;

    .line 59
    new-instance v0, Lcom/appsflyer/internal/al$d;

    const-string v1, "COCOS2DX"

    const-string v2, "android_cocos2dx"

    const-string v3, "org.cocos2dx.lib.Cocos2dxActivity"

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/appsflyer/internal/al$d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/al$d;->valueOf:Lcom/appsflyer/internal/al$d;

    .line 60
    new-instance v0, Lcom/appsflyer/internal/al$d;

    const-string v1, "CORDOVA"

    const-string v2, "android_cordova"

    const-string v3, "com.appsflyer.cordova.plugin.AppsFlyerPlugin"

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/appsflyer/internal/al$d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/al$d;->AFInAppEventParameterName:Lcom/appsflyer/internal/al$d;

    .line 61
    new-instance v0, Lcom/appsflyer/internal/al$d;

    const-string v1, "DEFAULT"

    const-string v2, "android_native"

    const-string v3, "android_native"

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/appsflyer/internal/al$d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/al$d;->AFKeystoreWrapper:Lcom/appsflyer/internal/al$d;

    .line 62
    new-instance v0, Lcom/appsflyer/internal/al$d;

    const-string v1, "FLUTTER"

    const-string v2, "android_flutter"

    const-string v3, "com.appsflyer.appsflyersdk.AppsflyerSdkPlugin"

    const/4 v9, 0x5

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/appsflyer/internal/al$d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/al$d;->AFVersionDeclaration:Lcom/appsflyer/internal/al$d;

    .line 63
    new-instance v0, Lcom/appsflyer/internal/al$d;

    const-string v1, "M_PARTICLE"

    const-string v2, "android_mparticle"

    const-string v3, "com.mparticle.kits.AppsFlyerKit"

    const/4 v10, 0x6

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/appsflyer/internal/al$d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/al$d;->AFLogger$LogLevel:Lcom/appsflyer/internal/al$d;

    .line 64
    new-instance v0, Lcom/appsflyer/internal/al$d;

    const-string v1, "NATIVE_SCRIPT"

    const-string v2, "android_native_script"

    const-string v3, "com.tns.NativeScriptActivity"

    const/4 v11, 0x7

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/appsflyer/internal/al$d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/al$d;->init:Lcom/appsflyer/internal/al$d;

    .line 65
    new-instance v0, Lcom/appsflyer/internal/al$d;

    const-string v1, "REACT_NATIVE"

    const-string v2, "android_reactNative"

    const-string v3, "com.appsflyer.reactnative.RNAppsFlyerModule"

    const/16 v12, 0x8

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/appsflyer/internal/al$d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/al$d;->getLevel:Lcom/appsflyer/internal/al$d;

    .line 66
    new-instance v0, Lcom/appsflyer/internal/al$d;

    const-string v1, "SEGMENT"

    const-string v2, "android_segment"

    const-string v3, "com.segment.analytics.android.integrations.appsflyer.AppsflyerIntegration"

    const/16 v13, 0x9

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/appsflyer/internal/al$d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/al$d;->AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/al$d;

    .line 67
    new-instance v0, Lcom/appsflyer/internal/al$d;

    const-string v1, "UNITY"

    const-string v2, "android_unity"

    const-string v3, "com.appsflyer.unity.AppsFlyerAndroidWrapper"

    const/16 v14, 0xa

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/appsflyer/internal/al$d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/al$d;->onInstallConversionDataLoadedNative:Lcom/appsflyer/internal/al$d;

    .line 68
    new-instance v0, Lcom/appsflyer/internal/al$d;

    const-string v1, "UNREAL_ENGINE"

    const-string v2, "android_unreal"

    const-string v3, "com.epicgames.ue4.GameActivity"

    const/16 v15, 0xb

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/appsflyer/internal/al$d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/al$d;->onAttributionFailureNative:Lcom/appsflyer/internal/al$d;

    .line 69
    new-instance v0, Lcom/appsflyer/internal/al$d;

    const-string v1, "XAMARIN"

    const-string v2, "android_xamarin"

    const-string v3, "mono.android.app.XamarinAndroidEnvironmentVariables"

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/appsflyer/internal/al$d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/al$d;->onAppOpenAttributionNative:Lcom/appsflyer/internal/al$d;

    const/16 v0, 0xd

    .line 56
    new-array v0, v0, [Lcom/appsflyer/internal/al$d;

    sget-object v1, Lcom/appsflyer/internal/al$d;->AFInAppEventType:Lcom/appsflyer/internal/al$d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appsflyer/internal/al$d;->values:Lcom/appsflyer/internal/al$d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appsflyer/internal/al$d;->valueOf:Lcom/appsflyer/internal/al$d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/appsflyer/internal/al$d;->AFInAppEventParameterName:Lcom/appsflyer/internal/al$d;

    aput-object v1, v0, v7

    sget-object v1, Lcom/appsflyer/internal/al$d;->AFKeystoreWrapper:Lcom/appsflyer/internal/al$d;

    aput-object v1, v0, v8

    sget-object v1, Lcom/appsflyer/internal/al$d;->AFVersionDeclaration:Lcom/appsflyer/internal/al$d;

    aput-object v1, v0, v9

    sget-object v1, Lcom/appsflyer/internal/al$d;->AFLogger$LogLevel:Lcom/appsflyer/internal/al$d;

    aput-object v1, v0, v10

    sget-object v1, Lcom/appsflyer/internal/al$d;->init:Lcom/appsflyer/internal/al$d;

    aput-object v1, v0, v11

    sget-object v1, Lcom/appsflyer/internal/al$d;->getLevel:Lcom/appsflyer/internal/al$d;

    aput-object v1, v0, v12

    sget-object v1, Lcom/appsflyer/internal/al$d;->AppsFlyer2dXConversionCallback:Lcom/appsflyer/internal/al$d;

    aput-object v1, v0, v13

    sget-object v1, Lcom/appsflyer/internal/al$d;->onInstallConversionDataLoadedNative:Lcom/appsflyer/internal/al$d;

    aput-object v1, v0, v14

    sget-object v1, Lcom/appsflyer/internal/al$d;->onAttributionFailureNative:Lcom/appsflyer/internal/al$d;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/internal/al$d;->onAppOpenAttributionNative:Lcom/appsflyer/internal/al$d;

    aput-object v1, v0, v15

    sput-object v0, Lcom/appsflyer/internal/al$d;->onAppOpenAttribution:[Lcom/appsflyer/internal/al$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-object p3, p0, Lcom/appsflyer/internal/al$d;->onDeepLinkingNative:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/appsflyer/internal/al$d;->onInstallConversionFailureNative:Ljava/lang/String;

    return-void
.end method

.method static synthetic AFInAppEventType(Lcom/appsflyer/internal/al$d;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/appsflyer/internal/al$d;->onDeepLinkingNative:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/al$d;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/appsflyer/internal/al$d;->onInstallConversionFailureNative:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/al$d;
    .locals 1

    .line 56
    const-class v0, Lcom/appsflyer/internal/al$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/al$d;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/al$d;
    .locals 1

    .line 56
    sget-object v0, Lcom/appsflyer/internal/al$d;->onAppOpenAttribution:[Lcom/appsflyer/internal/al$d;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/al$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/al$d;

    return-object v0
.end method
