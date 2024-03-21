.class final Lcom/ironsource/environment/l$1;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/environment/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "omidVersion"

    const-string v1, "omidV"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "omidPartnerVersion"

    const-string v1, "omidPV"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "immersiveMode"

    const-string v1, "imm"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appOrientation"

    const-string v1, "appOr"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SDKVersion"

    const-string v1, "sdkV"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceScreenScale"

    const-string v1, "dScrenScle"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "phoneType"

    const-string v1, "pType"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "simOperator"

    const-string v1, "simOp"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lastUpdateTime"

    const-string v1, "lUpdateT"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "firstInstallTime"

    const-string v1, "fInstallT"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "displaySizeWidth"

    const-string v1, "dWidth"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "displaySizeHeight"

    const-string v1, "dHeight"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cellularNetworkType"

    const-string v1, "cellNetT"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hasVPN"

    const-string v1, "vpn"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceVolume"

    const-string v1, "dVol"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdCardAvailable"

    const-string v1, "sdCrdAvail"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "isCharging"

    const-string v1, "isCharge"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "chargingType"

    const-string v1, "chargeT"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "airplaneMode"

    const-string v1, "airM"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "stayOnWhenPluggedIn"

    const-string v1, "onWhnPlugIn"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "totalDeviceRAM"

    const-string v1, "dRAM"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "installerPackageName"

    const-string v1, "iPckgN"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "timezoneOffset"

    const-string v1, "tzOff"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "chinaCDN"

    const-string v1, "cnaCDN"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceOs"

    const-string v1, "dOS"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "localTime"

    const-string v1, "cTime"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceIds[AID]"

    const-string v1, "advId"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "applicationUserAge"

    const-string v1, "uAge"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "advertisingId"

    const-string v1, "advId"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "advIdType"

    const-string v1, "advType"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceWidth"

    const-string v1, "dWidth"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceHeight"

    const-string v1, "dHeight"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceOS"

    const-string v1, "dOS"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "clientTimestamp"

    const-string v1, "cTime"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sessionDepthRV"

    const-string v1, "sDepRV"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sessionDepthIS"

    const-string v1, "sDepIS"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sessionId"

    const-string v1, "sId"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MedSDKVersion"

    const-string v1, "medV"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceMake"

    const-string v1, "dMake"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "applicationUserGender"

    const-string v1, "uGen"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "batteryLevel"

    const-string v1, "bat"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "unLocked"

    const-string v1, "root"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceOSVersion"

    const-string v1, "dOSV"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bundleId"

    const-string v1, "bId"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mobileCarrier"

    const-string v1, "mCar"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "connectionType"

    const-string v1, "connT"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appVersion"

    const-string v1, "appV"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "applicationKey"

    const-string v1, "appKey"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "applicationUserId"

    const-string v1, "usId"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "isLimitAdTrackingEnabled"

    const-string v1, "isLAT"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "metadata"

    const-string v1, "MD"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceModel"

    const-string v1, "dModel"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SDKPluginType"

    const-string v1, "plType"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceApiLevel"

    const-string v1, "dAPI"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "diskFreeSize"

    const-string v1, "diskFS"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceLanguage"

    const-string v1, "dLang"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceOEM"

    const-string v1, "dMake"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceOSVersionFull"

    const-string v1, "dOSVF"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/l$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
