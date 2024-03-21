.class public Lcom/adobe/air/Accelerometer;
.super Ljava/lang/Object;
.source "Accelerometer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final STANDARD_GRAVITY:F = 9.81f


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private m_x:F

.field private m_y:F

.field private m_z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/adobe/air/Accelerometer;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/adobe/air/Accelerometer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.sensor.accelerometer"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "sensor"

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/adobe/air/Accelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    .line 51
    iget-object p1, p0, Lcom/adobe/air/Accelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/adobe/air/Accelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getX()F
    .locals 1

    .line 35
    iget v0, p0, Lcom/adobe/air/Accelerometer;->m_x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 39
    iget v0, p0, Lcom/adobe/air/Accelerometer;->m_y:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .line 43
    iget v0, p0, Lcom/adobe/air/Accelerometer;->m_z:F

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 18
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const v1, 0x411cf5c3    # 9.81f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/adobe/air/Accelerometer;->m_x:F

    .line 19
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v0, v0, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/adobe/air/Accelerometer;->m_y:F

    .line 20
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x2

    aget p1, p1, v0

    div-float/2addr p1, v1

    iput p1, p0, Lcom/adobe/air/Accelerometer;->m_z:F

    return-void
.end method

.method public removeListener()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/adobe/air/Accelerometer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.sensor.accelerometer"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/adobe/air/Accelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method
