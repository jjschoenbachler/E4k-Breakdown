.class public Lcom/unity3d/services/core/request/metrics/MetricCommonTags;
.super Ljava/lang/Object;
.source "MetricCommonTags.java"


# static fields
.field private static final METRIC_COMMON_TAG_COUNTRY_ISO:Ljava/lang/String; = "iso"

.field private static final METRIC_COMMON_TAG_PLATFORM:Ljava/lang/String; = "plt"

.field public static final METRIC_COMMON_TAG_PLATFORM_ANDROID:Ljava/lang/String; = "android"

.field private static final METRIC_COMMON_TAG_SDK_VERSION:Ljava/lang/String; = "sdk"

.field private static final METRIC_COMMON_TAG_SYSTEM_VERSION:Ljava/lang/String; = "system"


# instance fields
.field private _countryISO:Ljava/lang/String;

.field private _platform:Ljava/lang/String;

.field private _sdkVersion:Ljava/lang/String;

.field private _systemVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/unity3d/services/core/request/metrics/MetricCommonTags;->_countryISO:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/unity3d/services/core/request/metrics/MetricCommonTags;->_platform:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/unity3d/services/core/request/metrics/MetricCommonTags;->_sdkVersion:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/unity3d/services/core/request/metrics/MetricCommonTags;->_systemVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "iso"

    .line 30
    iget-object v2, p0, Lcom/unity3d/services/core/request/metrics/MetricCommonTags;->_countryISO:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "plt"

    .line 31
    iget-object v2, p0, Lcom/unity3d/services/core/request/metrics/MetricCommonTags;->_platform:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sdk"

    .line 32
    iget-object v2, p0, Lcom/unity3d/services/core/request/metrics/MetricCommonTags;->_sdkVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "system"

    .line 33
    iget-object v2, p0, Lcom/unity3d/services/core/request/metrics/MetricCommonTags;->_systemVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
