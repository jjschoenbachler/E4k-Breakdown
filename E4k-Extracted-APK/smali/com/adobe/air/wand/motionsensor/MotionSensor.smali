.class public abstract Lcom/adobe/air/wand/motionsensor/MotionSensor;
.super Ljava/lang/Object;
.source "MotionSensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/wand/motionsensor/MotionSensor$Listener;
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "MotionSensor"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mRegistered:Z

.field protected mSensor:Landroid/hardware/Sensor;

.field protected mSensorDelay:I

.field protected mSensorEventListener:Landroid/hardware/SensorEventListener;

.field protected mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 40
    iput-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensor:Landroid/hardware/Sensor;

    .line 41
    iput-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v1, 0x0

    .line 42
    iput-boolean v1, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mRegistered:Z

    const/4 v1, 0x1

    .line 43
    iput v1, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorDelay:I

    .line 44
    iput-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mActivity:Landroid/app/Activity;

    .line 48
    iput-object p1, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mActivity:Landroid/app/Activity;

    .line 49
    iget-object p1, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mActivity:Landroid/app/Activity;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 50
    iget-object p1, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensor:Landroid/hardware/Sensor;

    .line 52
    iget-object p1, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/wand/motionsensor/MotionSensor;[F)[F
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/adobe/air/wand/motionsensor/MotionSensor;->getScreenOrientedValues([F)[F

    move-result-object p0

    return-object p0
.end method

.method private getScreenOrientedValues([F)[F
    .locals 4

    .line 71
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    .line 73
    iget-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 79
    aget v0, p1, v2

    neg-float v0, v0

    aput v0, p1, v2

    .line 80
    aget v0, p1, v3

    neg-float v0, v0

    aput v0, p1, v3

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    .line 85
    aget v0, p1, v2

    .line 86
    aget v1, p1, v3

    neg-float v1, v1

    aput v1, p1, v2

    .line 87
    aput v0, p1, v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 92
    aget v0, p1, v2

    neg-float v0, v0

    .line 93
    aget v1, p1, v3

    aput v1, p1, v2

    .line 94
    aput v0, p1, v3

    :cond_3
    :goto_0
    return-object p1
.end method


# virtual methods
.method public active()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mRegistered:Z

    return v0
.end method

.method public available()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispose()V
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/adobe/air/wand/motionsensor/MotionSensor;->stop()V

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, v0}, Lcom/adobe/air/wand/motionsensor/MotionSensor;->setListener(Lcom/adobe/air/wand/motionsensor/MotionSensor$Listener;)V

    .line 166
    iput-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensor:Landroid/hardware/Sensor;

    .line 169
    iput-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 172
    iput-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setListener(Lcom/adobe/air/wand/motionsensor/MotionSensor$Listener;)V
    .locals 2

    .line 102
    iget-boolean v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mRegistered:Z

    .line 104
    invoke-virtual {p0}, Lcom/adobe/air/wand/motionsensor/MotionSensor;->stop()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 106
    :cond_0
    new-instance v1, Lcom/adobe/air/wand/motionsensor/MotionSensor$1;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/wand/motionsensor/MotionSensor$1;-><init>(Lcom/adobe/air/wand/motionsensor/MotionSensor;Lcom/adobe/air/wand/motionsensor/MotionSensor$Listener;)V

    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/adobe/air/wand/motionsensor/MotionSensor;->start()V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 4

    .line 131
    iget-boolean v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorDelay:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mRegistered:Z

    .line 135
    iget-boolean v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mRegistered:Z

    :cond_0
    return-void
.end method

.method public start(I)V
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    mul-int/lit16 p1, p1, 0x3e8

    .line 125
    iput p1, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorDelay:I

    .line 126
    invoke-virtual {p0}, Lcom/adobe/air/wand/motionsensor/MotionSensor;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 144
    iget-boolean v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/adobe/air/wand/motionsensor/MotionSensor;->mRegistered:Z

    :cond_0
    return-void
.end method
