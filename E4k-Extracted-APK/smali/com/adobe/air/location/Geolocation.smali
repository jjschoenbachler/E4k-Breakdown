.class public Lcom/adobe/air/location/Geolocation;
.super Ljava/lang/Object;
.source "Geolocation.java"


# instance fields
.field private mGPSListener:Lcom/adobe/air/location/AIRLocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNetworkListener:Lcom/adobe/air/location/AIRLocationListener;

.field protected m_EventSourceExists:Z

.field protected m_altitude:D

.field private m_context:Landroid/content/Context;

.field protected m_currentTime:Landroid/text/format/Time;

.field protected m_gpsAltitude:D

.field protected m_gpsHorizontalAaccuracy:F

.field protected m_gpsLatitude:D

.field protected m_gpsLongitude:D

.field protected m_gpsSpeed:F

.field protected m_gpsTimestamp:J

.field protected m_gpsVerticalAccuracy:F

.field protected m_horizontalAaccuracy:F

.field protected m_ignoreLastGPSValue:Z

.field protected m_isGPSProviderEnabled:Z

.field protected m_isNetworkProviderEnabled:Z

.field protected m_latitude:D

.field protected m_longitude:D

.field protected m_networkAltitude:D

.field protected m_networkHorizontalAaccuracy:F

.field protected m_networkLatitude:D

.field protected m_networkLongitude:D

.field protected m_networkSpeed:F

.field protected m_networkTimestamp:J

.field protected m_networkVerticalAccuracy:F

.field protected m_objectPointer:J

.field protected m_speed:F

.field protected m_timestamp:J

.field private m_upateInterval:J

.field protected m_verticalAccuracy:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    :try_start_0
    iput-object p1, p0, Lcom/adobe/air/location/Geolocation;->m_context:Landroid/content/Context;

    const/4 p1, 0x1

    .line 147
    iput-boolean p1, p0, Lcom/adobe/air/location/Geolocation;->m_EventSourceExists:Z

    .line 149
    new-instance p1, Lcom/adobe/air/location/AIRLocationListener;

    invoke-direct {p1, p0}, Lcom/adobe/air/location/AIRLocationListener;-><init>(Lcom/adobe/air/location/Geolocation;)V

    iput-object p1, p0, Lcom/adobe/air/location/Geolocation;->mGPSListener:Lcom/adobe/air/location/AIRLocationListener;

    .line 150
    new-instance p1, Lcom/adobe/air/location/AIRLocationListener;

    invoke-direct {p1, p0}, Lcom/adobe/air/location/AIRLocationListener;-><init>(Lcom/adobe/air/location/Geolocation;)V

    iput-object p1, p0, Lcom/adobe/air/location/Geolocation;->mNetworkListener:Lcom/adobe/air/location/AIRLocationListener;

    .line 151
    iget-object p1, p0, Lcom/adobe/air/location/Geolocation;->m_context:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/adobe/air/location/Geolocation;->mLocationManager:Landroid/location/LocationManager;

    .line 153
    iget-object p1, p0, Lcom/adobe/air/location/Geolocation;->mLocationManager:Landroid/location/LocationManager;

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    .line 154
    iget-object p1, p0, Lcom/adobe/air/location/Geolocation;->mLocationManager:Landroid/location/LocationManager;

    const-string v0, "network"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    .line 158
    new-instance p1, Landroid/text/format/Time;

    invoke-direct {p1}, Landroid/text/format/Time;-><init>()V

    iput-object p1, p0, Lcom/adobe/air/location/Geolocation;->m_currentTime:Landroid/text/format/Time;

    .line 159
    iget-object p1, p0, Lcom/adobe/air/location/Geolocation;->m_currentTime:Landroid/text/format/Time;

    invoke-virtual {p1}, Landroid/text/format/Time;->setToNow()V

    const/4 p1, 0x0

    .line 161
    iput-boolean p1, p0, Lcom/adobe/air/location/Geolocation;->m_ignoreLastGPSValue:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method protected addGPSListener()V
    .locals 8

    .line 112
    iget-object v0, p0, Lcom/adobe/air/location/Geolocation;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.location.gps"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/adobe/air/location/Geolocation;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/adobe/air/location/Geolocation;->mGPSListener:Lcom/adobe/air/location/AIRLocationListener;

    invoke-virtual {v1, v0}, Lcom/adobe/air/location/AIRLocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 116
    iget-object v2, p0, Lcom/adobe/air/location/Geolocation;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    iget-wide v4, p0, Lcom/adobe/air/location/Geolocation;->m_upateInterval:J

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/adobe/air/location/Geolocation;->mGPSListener:Lcom/adobe/air/location/AIRLocationListener;

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_0
    return-void
.end method

.method protected addLocationListeners()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/adobe/air/location/Geolocation;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.location"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/adobe/air/location/Geolocation;->addGPSListener()V

    .line 97
    invoke-virtual {p0}, Lcom/adobe/air/location/Geolocation;->addNetworkListener()V

    :cond_0
    return-void
.end method

.method protected addNetworkListener()V
    .locals 7

    .line 130
    iget-object v0, p0, Lcom/adobe/air/location/Geolocation;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.location.network"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/adobe/air/location/Geolocation;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    iget-wide v3, p0, Lcom/adobe/air/location/Geolocation;->m_upateInterval:J

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/adobe/air/location/Geolocation;->mNetworkListener:Lcom/adobe/air/location/AIRLocationListener;

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_0
    return-void
.end method

.method public isGeolocationMuted()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/adobe/air/location/Geolocation;->m_isGPSProviderEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/adobe/air/location/Geolocation;->m_isNetworkProviderEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected releaseAllResources()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/adobe/air/location/Geolocation;->m_EventSourceExists:Z

    .line 89
    invoke-virtual {p0}, Lcom/adobe/air/location/Geolocation;->removeLocationListeners()V

    return-void
.end method

.method protected removeGPSListener()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/adobe/air/location/Geolocation;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.location.gps"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/adobe/air/location/Geolocation;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/adobe/air/location/Geolocation;->mGPSListener:Lcom/adobe/air/location/AIRLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method

.method protected removeLocationListeners()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/adobe/air/location/Geolocation;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.location"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/adobe/air/location/Geolocation;->removeGPSListener()V

    .line 106
    invoke-virtual {p0}, Lcom/adobe/air/location/Geolocation;->removeNetworkListener()V

    :cond_0
    return-void
.end method

.method protected removeNetworkListener()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/adobe/air/location/Geolocation;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.location.network"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/adobe/air/location/Geolocation;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/adobe/air/location/Geolocation;->mNetworkListener:Lcom/adobe/air/location/AIRLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method

.method public setGeolocationEventSource(J)V
    .locals 0

    .line 62
    :try_start_0
    iput-wide p1, p0, Lcom/adobe/air/location/Geolocation;->m_objectPointer:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected native setGeolocationStatus(ZJ)V
.end method

.method public setUpdateTimeAndRegister(JJ)V
    .locals 0

    .line 76
    :try_start_0
    iput-wide p3, p0, Lcom/adobe/air/location/Geolocation;->m_objectPointer:J

    .line 77
    iput-wide p1, p0, Lcom/adobe/air/location/Geolocation;->m_upateInterval:J

    .line 78
    invoke-virtual {p0}, Lcom/adobe/air/location/Geolocation;->addLocationListeners()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected native updateGeolocationCache(J)V
.end method
