.class final Lcom/ironsource/environment/TokenConstants$1;
.super Ljava/util/HashMap;
.source "TokenConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/environment/TokenConstants;
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

    .line 189
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "omidVersion"

    const-string v1, "omidV"

    .line 191
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "omidPartnerVersion"

    const-string v1, "omidPV"

    .line 192
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "immersiveMode"

    const-string v1, "imm"

    .line 193
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appOrientation"

    const-string v1, "appOr"

    .line 194
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SDKVersion"

    const-string v1, "sdkV"

    .line 195
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceScreenScale"

    const-string v1, "dScrenScle"

    .line 196
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "phoneType"

    const-string v1, "pType"

    .line 197
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "simOperator"

    const-string v1, "simOp"

    .line 198
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lastUpdateTime"

    const-string v1, "lUpdateT"

    .line 199
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "firstInstallTime"

    const-string v1, "fInstallT"

    .line 200
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "displaySizeWidth"

    const-string v1, "dWidth"

    .line 201
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "displaySizeHeight"

    const-string v1, "dHeight"

    .line 202
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cellularNetworkType"

    const-string v1, "cellNetT"

    .line 203
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hasVPN"

    const-string v1, "vpn"

    .line 204
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceVolume"

    const-string v1, "dVol"

    .line 205
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdCardAvailable"

    const-string v1, "sdCrdAvail"

    .line 206
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "isCharging"

    const-string v1, "isCharge"

    .line 207
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "chargingType"

    const-string v1, "chargeT"

    .line 208
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "airplaneMode"

    const-string v1, "airM"

    .line 209
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "stayOnWhenPluggedIn"

    const-string v1, "onWhnPlugIn"

    .line 210
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "totalDeviceRAM"

    const-string v1, "dRAM"

    .line 211
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "installerPackageName"

    const-string v1, "iPckgN"

    .line 212
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "timezoneOffset"

    const-string v1, "tzOff"

    .line 213
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "chinaCDN"

    const-string v1, "cnaCDN"

    .line 214
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceOs"

    const-string v1, "dOS"

    .line 217
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "localTime"

    const-string v1, "cTime"

    .line 218
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceIds[AID]"

    const-string v1, "advId"

    .line 219
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "applicationUserAge"

    const-string v1, "uAge"

    .line 222
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "advertisingId"

    const-string v1, "advId"

    .line 223
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "advIdType"

    const-string v1, "advType"

    .line 224
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceWidth"

    const-string v1, "dWidth"

    .line 225
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceHeight"

    const-string v1, "dHeight"

    .line 226
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceOS"

    const-string v1, "dOS"

    .line 227
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "clientTimestamp"

    const-string v1, "cTime"

    .line 228
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sessionDepthRV"

    const-string v1, "sDepRV"

    .line 229
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sessionDepthIS"

    const-string v1, "sDepIS"

    .line 230
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sessionId"

    const-string v1, "sId"

    .line 231
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MedSDKVersion"

    const-string v1, "medV"

    .line 232
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceMake"

    const-string v1, "dMake"

    .line 233
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "applicationUserGender"

    const-string v1, "uGen"

    .line 234
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "batteryLevel"

    const-string v1, "bat"

    .line 237
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "unLocked"

    const-string v1, "root"

    .line 238
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceOSVersion"

    const-string v1, "dOSV"

    .line 239
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bundleId"

    const-string v1, "bId"

    .line 240
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mobileCarrier"

    const-string v1, "mCar"

    .line 241
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "connectionType"

    const-string v1, "connT"

    .line 242
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appVersion"

    const-string v1, "appV"

    .line 243
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "applicationKey"

    const-string v1, "appKey"

    .line 244
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "applicationUserId"

    const-string v1, "usId"

    .line 245
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "isLimitAdTrackingEnabled"

    const-string v1, "isLAT"

    .line 246
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "metadata"

    const-string v1, "MD"

    .line 247
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceModel"

    const-string v1, "dModel"

    .line 248
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SDKPluginType"

    const-string v1, "plType"

    .line 249
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceApiLevel"

    const-string v1, "dAPI"

    .line 250
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "diskFreeSize"

    const-string v1, "diskFS"

    .line 251
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceLanguage"

    const-string v1, "dLang"

    .line 252
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceOEM"

    const-string v1, "dMake"

    .line 253
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceOSVersionFull"

    const-string v1, "dOSVF"

    .line 254
    invoke-virtual {p0, v0, v1}, Lcom/ironsource/environment/TokenConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
