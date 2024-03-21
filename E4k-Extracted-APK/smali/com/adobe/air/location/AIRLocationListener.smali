.class public Lcom/adobe/air/location/AIRLocationListener;
.super Ljava/lang/Object;
.source "AIRLocationListener.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final TIMEOUT_INTERVAL:I = 0x3a98


# instance fields
.field private m_geoObj:Lcom/adobe/air/location/Geolocation;


# direct methods
.method public constructor <init>(Lcom/adobe/air/location/Geolocation;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    return-void
.end method

.method private isRegionFullyContained(DDFDDF)Z
    .locals 10

    const/4 v0, 0x5

    .line 195
    new-array v0, v0, [F

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    move-object v9, v0

    .line 196
    invoke-static/range {v1 .. v9}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v1, 0x0

    .line 197
    aget v0, v0, v1

    sub-float v2, p10, p5

    .line 198
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 30

    move-object/from16 v11, p0

    if-eqz p1, :cond_5

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 50
    iget-object v2, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-object v2, v2, Lcom/adobe/air/location/Geolocation;->m_currentTime:Landroid/text/format/Time;

    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 52
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v7

    .line 59
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-object v0, v0, Lcom/adobe/air/location/Geolocation;->m_currentTime:Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    const-string v0, "gps"

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 65
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput-boolean v2, v0, Lcom/adobe/air/location/Geolocation;->m_ignoreLastGPSValue:Z

    .line 67
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput-wide v12, v0, Lcom/adobe/air/location/Geolocation;->m_gpsLatitude:D

    .line 68
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput-wide v14, v0, Lcom/adobe/air/location/Geolocation;->m_gpsLongitude:D

    .line 69
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput-wide v8, v0, Lcom/adobe/air/location/Geolocation;->m_gpsAltitude:D

    .line 70
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput v10, v0, Lcom/adobe/air/location/Geolocation;->m_gpsHorizontalAaccuracy:F

    .line 71
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput v6, v0, Lcom/adobe/air/location/Geolocation;->m_gpsVerticalAccuracy:F

    .line 72
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput v7, v0, Lcom/adobe/air/location/Geolocation;->m_gpsSpeed:F

    .line 73
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-object v1, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-object v1, v1, Lcom/adobe/air/location/Geolocation;->m_currentTime:Landroid/text/format/Time;

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/adobe/air/location/Geolocation;->m_gpsTimestamp:J

    :cond_0
    move-wide/from16 v23, v3

    move/from16 v25, v6

    move/from16 v26, v7

    move-wide/from16 v27, v8

    move/from16 v29, v10

    goto/16 :goto_1

    :cond_1
    const-string v0, "network"

    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput-wide v12, v0, Lcom/adobe/air/location/Geolocation;->m_networkLatitude:D

    .line 78
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput-wide v14, v0, Lcom/adobe/air/location/Geolocation;->m_networkLongitude:D

    .line 79
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput-wide v8, v0, Lcom/adobe/air/location/Geolocation;->m_networkAltitude:D

    .line 80
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput v10, v0, Lcom/adobe/air/location/Geolocation;->m_networkHorizontalAaccuracy:F

    .line 81
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput v6, v0, Lcom/adobe/air/location/Geolocation;->m_networkVerticalAccuracy:F

    .line 82
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput v7, v0, Lcom/adobe/air/location/Geolocation;->m_networkSpeed:F

    .line 83
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-object v1, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-object v1, v1, Lcom/adobe/air/location/Geolocation;->m_currentTime:Landroid/text/format/Time;

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/adobe/air/location/Geolocation;->m_networkTimestamp:J

    .line 89
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v0, v0, Lcom/adobe/air/location/Geolocation;->m_ignoreLastGPSValue:Z

    if-nez v0, :cond_3

    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-wide v0, v0, Lcom/adobe/air/location/Geolocation;->m_networkTimestamp:J

    iget-object v2, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-wide/from16 v16, v3

    iget-wide v2, v2, Lcom/adobe/air/location/Geolocation;->m_gpsTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget v0, v0, Lcom/adobe/air/location/Geolocation;->m_networkHorizontalAaccuracy:F

    iget-object v1, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget v1, v1, Lcom/adobe/air/location/Geolocation;->m_gpsHorizontalAaccuracy:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-wide v1, v0, Lcom/adobe/air/location/Geolocation;->m_gpsLatitude:D

    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-wide v3, v0, Lcom/adobe/air/location/Geolocation;->m_gpsLongitude:D

    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget v5, v0, Lcom/adobe/air/location/Geolocation;->m_gpsHorizontalAaccuracy:F

    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move/from16 v18, v6

    move/from16 v19, v7

    iget-wide v6, v0, Lcom/adobe/air/location/Geolocation;->m_networkLatitude:D

    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-wide/from16 v20, v8

    iget-wide v8, v0, Lcom/adobe/air/location/Geolocation;->m_networkLongitude:D

    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget v0, v0, Lcom/adobe/air/location/Geolocation;->m_networkHorizontalAaccuracy:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v23, v16

    move/from16 v25, v18

    move/from16 v26, v19

    move-wide/from16 v27, v20

    move/from16 v29, v10

    move/from16 v10, v22

    .line 93
    invoke-direct/range {v0 .. v10}, Lcom/adobe/air/location/AIRLocationListener;->isRegionFullyContained(DDFDDF)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_2
    move/from16 v25, v6

    move/from16 v26, v7

    move-wide/from16 v27, v8

    move/from16 v29, v10

    move-wide/from16 v23, v16

    goto :goto_0

    :cond_3
    move-wide/from16 v23, v3

    move/from16 v25, v6

    move/from16 v26, v7

    move-wide/from16 v27, v8

    move/from16 v29, v10

    .line 103
    :cond_4
    :goto_0
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/air/location/Geolocation;->m_ignoreLastGPSValue:Z

    .line 112
    :goto_1
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput-wide v12, v0, Lcom/adobe/air/location/Geolocation;->m_latitude:D

    .line 113
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput-wide v14, v0, Lcom/adobe/air/location/Geolocation;->m_longitude:D

    .line 114
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-wide/from16 v1, v27

    iput-wide v1, v0, Lcom/adobe/air/location/Geolocation;->m_altitude:D

    .line 115
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move/from16 v1, v29

    iput v1, v0, Lcom/adobe/air/location/Geolocation;->m_horizontalAaccuracy:F

    .line 116
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move/from16 v1, v25

    iput v1, v0, Lcom/adobe/air/location/Geolocation;->m_verticalAccuracy:F

    .line 117
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move/from16 v1, v26

    iput v1, v0, Lcom/adobe/air/location/Geolocation;->m_speed:F

    .line 118
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    move-wide/from16 v1, v23

    iput-wide v1, v0, Lcom/adobe/air/location/Geolocation;->m_timestamp:J

    .line 123
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v0, v0, Lcom/adobe/air/location/Geolocation;->m_EventSourceExists:Z

    if-eqz v0, :cond_5

    .line 126
    iget-object v0, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-object v1, v11, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-wide v1, v1, Lcom/adobe/air/location/Geolocation;->m_objectPointer:J

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/location/Geolocation;->updateGeolocationCache(J)V

    :cond_5
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v0, v0, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    .line 137
    iget-object v1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v1, v1, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    const-string v2, "gps"

    .line 141
    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 142
    iget-object p1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput-boolean v3, p1, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    goto :goto_0

    :cond_0
    const-string v2, "network"

    .line 143
    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 144
    iget-object p1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput-boolean v3, p1, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    .line 149
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean p1, p1, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean p1, p1, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    if-ne v1, p1, :cond_2

    return-void

    .line 153
    :cond_2
    iget-object p1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean p1, p1, Lcom/adobe/air/location/Geolocation;->m_EventSourceExists:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean p1, p1, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean p1, p1, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    if-nez p1, :cond_3

    .line 156
    iget-object p1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-wide v0, v0, Lcom/adobe/air/location/Geolocation;->m_objectPointer:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/adobe/air/location/Geolocation;->setGeolocationStatus(ZJ)V

    :cond_3
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v0, v0, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    .line 162
    iget-object v1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean v1, v1, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    const-string v2, "gps"

    .line 166
    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 168
    iget-object p1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput-boolean v3, p1, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    .line 169
    iget-object p1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean p1, p1, Lcom/adobe/air/location/Geolocation;->m_EventSourceExists:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean p1, p1, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean p1, p1, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    if-eq v0, p1, :cond_1

    .line 172
    iget-object p1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-wide v0, v0, Lcom/adobe/air/location/Geolocation;->m_objectPointer:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/adobe/air/location/Geolocation;->setGeolocationStatus(ZJ)V

    goto :goto_0

    :cond_0
    const-string v0, "network"

    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 177
    iget-object p1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iput-boolean v3, p1, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    .line 178
    iget-object p1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean p1, p1, Lcom/adobe/air/location/Geolocation;->m_EventSourceExists:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean p1, p1, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-boolean p1, p1, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    if-eq v1, p1, :cond_1

    .line 181
    iget-object p1, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-object v0, p0, Lcom/adobe/air/location/AIRLocationListener;->m_geoObj:Lcom/adobe/air/location/Geolocation;

    iget-wide v0, v0, Lcom/adobe/air/location/Geolocation;->m_objectPointer:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/adobe/air/location/Geolocation;->setGeolocationStatus(ZJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
