.class public Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressorWithMetrics;
.super Ljava/lang/Object;
.source "DeviceInfoReaderCompressorWithMetrics.java"

# interfaces
.implements Lcom/unity3d/services/core/device/reader/IDeviceInfoDataCompressor;


# instance fields
.field private final _deviceInfoDataCompressor:Lcom/unity3d/services/core/device/reader/IDeviceInfoDataCompressor;

.field private _endTime:J

.field private final _experiments:Lcom/unity3d/services/core/configuration/Experiments;

.field private _startTimeCompression:J

.field private _startTimeInfo:J


# direct methods
.method public constructor <init>(Lcom/unity3d/services/core/device/reader/IDeviceInfoDataCompressor;Lcom/unity3d/services/core/configuration/Experiments;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressorWithMetrics;->_deviceInfoDataCompressor:Lcom/unity3d/services/core/device/reader/IDeviceInfoDataCompressor;

    .line 20
    iput-object p2, p0, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressorWithMetrics;->_experiments:Lcom/unity3d/services/core/configuration/Experiments;

    return-void
.end method

.method private getCompressionDuration()J
    .locals 4

    .line 51
    iget-wide v0, p0, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressorWithMetrics;->_endTime:J

    iget-wide v2, p0, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressorWithMetrics;->_startTimeCompression:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getDeviceInfoCollectionDuration()J
    .locals 4

    .line 47
    iget-wide v0, p0, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressorWithMetrics;->_startTimeCompression:J

    iget-wide v2, p0, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressorWithMetrics;->_startTimeInfo:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private sendDeviceInfoMetrics()V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressorWithMetrics;->_experiments:Lcom/unity3d/services/core/configuration/Experiments;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressorWithMetrics;->_experiments:Lcom/unity3d/services/core/configuration/Experiments;

    invoke-virtual {v0}, Lcom/unity3d/services/core/configuration/Experiments;->getExperimentTags()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    invoke-static {}, Lcom/unity3d/services/core/request/metrics/SDKMetrics;->getInstance()Lcom/unity3d/services/core/request/metrics/ISDKMetrics;

    move-result-object v1

    invoke-direct {p0}, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressorWithMetrics;->getDeviceInfoCollectionDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/unity3d/services/core/request/metrics/TSIMetric;->newDeviceInfoCollectionLatency(Ljava/lang/Long;Ljava/util/Map;)Lcom/unity3d/services/core/request/metrics/Metric;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/unity3d/services/core/request/metrics/ISDKMetrics;->sendMetric(Lcom/unity3d/services/core/request/metrics/Metric;)V

    .line 61
    invoke-static {}, Lcom/unity3d/services/core/request/metrics/SDKMetrics;->getInstance()Lcom/unity3d/services/core/request/metrics/ISDKMetrics;

    move-result-object v1

    invoke-direct {p0}, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressorWithMetrics;->getCompressionDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/unity3d/services/core/request/metrics/TSIMetric;->newDeviceInfoCompressionLatency(Ljava/lang/Long;Ljava/util/Map;)Lcom/unity3d/services/core/request/metrics/Metric;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/unity3d/services/core/request/metrics/ISDKMetrics;->sendMetric(Lcom/unity3d/services/core/request/metrics/Metric;)V

    return-void
.end method


# virtual methods
.method public compressDeviceInfo(Ljava/util/Map;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressorWithMetrics;->_startTimeCompression:J

    .line 41
    iget-object p1, p0, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressorWithMetrics;->_deviceInfoDataCompressor:Lcom/unity3d/services/core/device/reader/IDeviceInfoDataCompressor;

    invoke-virtual {p0}, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressorWithMetrics;->getDeviceInfo()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/unity3d/services/core/device/reader/IDeviceInfoDataCompressor;->compressDeviceInfo(Ljava/util/Map;)[B

    move-result-object p1

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressorWithMetrics;->_endTime:J

    return-object p1
.end method

.method public getDeviceData()[B
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressorWithMetrics;->_deviceInfoDataCompressor:Lcom/unity3d/services/core/device/reader/IDeviceInfoDataCompressor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 26
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressorWithMetrics;->_startTimeInfo:J

    .line 27
    invoke-virtual {p0}, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressorWithMetrics;->getDeviceInfo()Ljava/util/Map;

    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressorWithMetrics;->compressDeviceInfo(Ljava/util/Map;)[B

    move-result-object v0

    .line 29
    invoke-direct {p0}, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressorWithMetrics;->sendDeviceInfoMetrics()V

    return-object v0
.end method

.method public getDeviceInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/unity3d/services/core/device/reader/DeviceInfoReaderCompressorWithMetrics;->_deviceInfoDataCompressor:Lcom/unity3d/services/core/device/reader/IDeviceInfoDataCompressor;

    invoke-interface {v0}, Lcom/unity3d/services/core/device/reader/IDeviceInfoDataCompressor;->getDeviceInfo()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
