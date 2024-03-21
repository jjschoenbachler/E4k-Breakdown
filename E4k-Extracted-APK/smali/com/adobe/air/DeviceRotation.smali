.class public Lcom/adobe/air/DeviceRotation;
.super Ljava/lang/Object;
.source "DeviceRotation.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private m_pitch:F

.field private m_quaternion_data:[F

.field private m_roll:F

.field private m_yaw:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 20
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    .line 161
    iput-object p1, p0, Lcom/adobe/air/DeviceRotation;->mContext:Landroid/content/Context;

    .line 162
    invoke-direct {p0}, Lcom/adobe/air/DeviceRotation;->hasRequiredSensors()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/adobe/air/DeviceRotation;->mContext:Landroid/content/Context;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/adobe/air/DeviceRotation;->mSensorManager:Landroid/hardware/SensorManager;

    .line 165
    iget-object p1, p0, Lcom/adobe/air/DeviceRotation;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/adobe/air/DeviceRotation;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method private hasRequiredSensors()Z
    .locals 3

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/adobe/air/DeviceRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.sensor.accelerometer"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/DeviceRotation;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.sensor.gyroscope"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private recalculateQuaternion(FFF)[F
    .locals 12

    float-to-double v0, p1

    .line 103
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p1, v0

    float-to-double v0, p2

    .line 104
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p2, v0

    float-to-double v0, p3

    .line 105
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p3, v0

    const/4 v0, 0x4

    .line 107
    new-array v0, v0, [F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    float-to-double v2, p1

    .line 109
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    div-float/2addr p2, v1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    div-float/2addr p3, v1

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v4, v4, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v8, v8, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v8, v8, v10

    add-double/2addr v4, v8

    double-to-float p3, v4

    const/4 v1, 0x0

    aput p3, v0, v1

    .line 110
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v4, v4, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v4, v4, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v8, v8, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v8, v8, v10

    sub-double/2addr v4, v8

    double-to-float p3, v4

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 111
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v4, v4, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v4, v4, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double v8, v8, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v8, v8, v10

    add-double/2addr v4, v8

    double-to-float p3, v4

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 112
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v4, v4, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v4, v4, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double v1, v1, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    mul-double v1, v1, p1

    sub-double/2addr v4, v1

    double-to-float p1, v4

    const/4 p2, 0x3

    aput p1, v0, p2

    return-object v0
.end method


# virtual methods
.method public getPitch()F
    .locals 1

    .line 137
    iget v0, p0, Lcom/adobe/air/DeviceRotation;->m_pitch:F

    return v0
.end method

.method public getQuaternionData()[F
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    return-object v0
.end method

.method public getRoll()F
    .locals 1

    .line 129
    iget v0, p0, Lcom/adobe/air/DeviceRotation;->m_roll:F

    return v0
.end method

.method public getW()F
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getX()F
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getY()F
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getYaw()F
    .locals 1

    .line 133
    iget v0, p0, Lcom/adobe/air/DeviceRotation;->m_yaw:F

    return v0
.end method

.method public getZ()F
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 24
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_0

    .line 26
    iget-object v2, v0, Lcom/adobe/air/DeviceRotation;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/adobe/air/DeviceRotation;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 27
    iget-object v3, v0, Lcom/adobe/air/DeviceRotation;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v3, v1}, Landroid/hardware/SensorManager;->getQuaternionFromVector([F[F)V

    const/4 v1, 0x4

    .line 29
    new-array v3, v1, [F

    .line 31
    iget-object v3, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 60
    :pswitch_0
    iget-object v9, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    aget v10, v1, v6

    aput v10, v9, v7

    .line 61
    iget-object v9, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    aget v10, v1, v7

    neg-float v10, v10

    aput v10, v9, v6

    .line 62
    iget-object v9, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    aget v1, v1, v8

    aput v1, v9, v8

    .line 64
    iget-object v1, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    aget v1, v1, v4

    .line 65
    iget-object v9, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    aget v9, v9, v7

    .line 66
    iget-object v10, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    aget v10, v10, v6

    .line 67
    iget-object v11, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    aget v11, v11, v8

    mul-float v12, v1, v9

    mul-float v13, v10, v11

    add-float/2addr v12, v13

    mul-float v12, v12, v5

    float-to-double v12, v12

    mul-float v14, v9, v9

    mul-float v15, v10, v10

    add-float/2addr v14, v15

    mul-float v14, v14, v5

    sub-float v14, v3, v14

    float-to-double v6, v14

    .line 69
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    iput v6, v0, Lcom/adobe/air/DeviceRotation;->m_pitch:F

    mul-float v6, v1, v10

    mul-float v7, v11, v9

    sub-float/2addr v6, v7

    mul-float v6, v6, v5

    float-to-double v6, v6

    .line 70
    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    iput v6, v0, Lcom/adobe/air/DeviceRotation;->m_roll:F

    mul-float v1, v1, v11

    mul-float v9, v9, v10

    add-float/2addr v1, v9

    mul-float v1, v1, v5

    float-to-double v6, v1

    mul-float v11, v11, v11

    add-float/2addr v15, v11

    mul-float v15, v15, v5

    sub-float v1, v3, v15

    float-to-double v9, v1

    .line 71
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v1, v6

    const/high16 v6, 0x43340000    # 180.0f

    add-float/2addr v1, v6

    iput v1, v0, Lcom/adobe/air/DeviceRotation;->m_yaw:F

    .line 73
    iget v1, v0, Lcom/adobe/air/DeviceRotation;->m_pitch:F

    iget v6, v0, Lcom/adobe/air/DeviceRotation;->m_roll:F

    iget v7, v0, Lcom/adobe/air/DeviceRotation;->m_yaw:F

    invoke-direct {v0, v1, v6, v7}, Lcom/adobe/air/DeviceRotation;->recalculateQuaternion(FFF)[F

    move-result-object v1

    .line 75
    iget-object v6, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    aget v7, v1, v4

    aput v7, v6, v4

    .line 76
    iget-object v6, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    const/4 v7, 0x1

    aget v9, v1, v7

    aput v9, v6, v7

    .line 77
    iget-object v6, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    const/4 v9, 0x2

    aget v10, v1, v9

    aput v10, v6, v9

    .line 78
    iget-object v6, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    aget v1, v1, v8

    aput v1, v6, v8

    goto :goto_0

    :pswitch_1
    const/4 v9, 0x2

    .line 53
    iget-object v6, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    aget v10, v1, v7

    neg-float v10, v10

    aput v10, v6, v7

    .line 54
    iget-object v6, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    aget v7, v1, v9

    neg-float v7, v7

    aput v7, v6, v9

    .line 55
    iget-object v6, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    aget v1, v1, v8

    aput v1, v6, v8

    goto :goto_0

    :pswitch_2
    const/4 v9, 0x2

    .line 46
    iget-object v6, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    aget v7, v1, v9

    neg-float v7, v7

    const/4 v10, 0x1

    aput v7, v6, v10

    .line 47
    iget-object v6, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    aget v7, v1, v10

    aput v7, v6, v9

    .line 48
    iget-object v6, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    aget v1, v1, v8

    aput v1, v6, v8

    goto :goto_0

    :pswitch_3
    const/4 v9, 0x2

    const/4 v10, 0x1

    .line 41
    iget-object v6, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    aget v7, v1, v10

    aput v7, v6, v10

    .line 42
    iget-object v6, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    aget v7, v1, v9

    aput v7, v6, v9

    .line 43
    iget-object v6, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    aget v1, v1, v8

    aput v1, v6, v8

    :goto_0
    if-eq v2, v8, :cond_0

    .line 86
    iget-object v1, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    aget v1, v1, v4

    .line 87
    iget-object v2, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    const/4 v4, 0x1

    aget v2, v2, v4

    .line 88
    iget-object v4, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    const/4 v6, 0x2

    aget v4, v4, v6

    .line 89
    iget-object v6, v0, Lcom/adobe/air/DeviceRotation;->m_quaternion_data:[F

    aget v6, v6, v8

    mul-float v7, v1, v2

    mul-float v8, v4, v6

    add-float/2addr v7, v8

    mul-float v7, v7, v5

    float-to-double v7, v7

    mul-float v9, v2, v2

    mul-float v10, v4, v4

    add-float/2addr v9, v10

    mul-float v9, v9, v5

    sub-float v9, v3, v9

    float-to-double v11, v9

    .line 92
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    double-to-float v7, v7

    iput v7, v0, Lcom/adobe/air/DeviceRotation;->m_pitch:F

    mul-float v7, v1, v4

    mul-float v8, v6, v2

    sub-float/2addr v7, v8

    mul-float v7, v7, v5

    float-to-double v7, v7

    .line 93
    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    double-to-float v7, v7

    iput v7, v0, Lcom/adobe/air/DeviceRotation;->m_roll:F

    mul-float v1, v1, v6

    mul-float v2, v2, v4

    add-float/2addr v1, v2

    mul-float v1, v1, v5

    float-to-double v1, v1

    mul-float v6, v6, v6

    add-float/2addr v10, v6

    mul-float v10, v10, v5

    sub-float/2addr v3, v10

    float-to-double v3, v3

    .line 94
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/adobe/air/DeviceRotation;->m_yaw:F

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeListener()V
    .locals 1

    .line 122
    invoke-direct {p0}, Lcom/adobe/air/DeviceRotation;->hasRequiredSensors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/adobe/air/DeviceRotation;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method
