.class public Lcom/adobe/air/wand/WandManager;
.super Ljava/lang/Object;
.source "WandManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/wand/WandManager$TaskListener;,
        Lcom/adobe/air/wand/WandManager$ViewListener;,
        Lcom/adobe/air/wand/WandManager$ConnectionListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WandManager"


# instance fields
.field private mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

.field private mDisplay:Landroid/view/Display;

.field private mGyroscope:Lcom/adobe/air/wand/motionsensor/Gyroscope;

.field private mHasFocus:Z

.field private mIsDisposed:Z

.field private mListenToConfigChange:Z

.field private mMagnetometer:Lcom/adobe/air/wand/motionsensor/Magnetometer;

.field private mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

.field private mProtocolVersion:Ljava/lang/String;

.field private mTaskManager:Lcom/adobe/air/wand/TaskManager;

.field private mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWandConnection:Lcom/adobe/air/wand/connection/Connection;

.field private mWandView:Lcom/adobe/air/wand/view/WandView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/adobe/air/wand/view/WandView;Lcom/adobe/air/wand/connection/Connection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    .line 228
    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;

    .line 229
    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mTaskManager:Lcom/adobe/air/wand/TaskManager;

    .line 231
    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    .line 232
    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    .line 233
    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mMagnetometer:Lcom/adobe/air/wand/motionsensor/Magnetometer;

    .line 234
    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mGyroscope:Lcom/adobe/air/wand/motionsensor/Gyroscope;

    .line 235
    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mVibrator:Landroid/os/Vibrator;

    .line 236
    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mDisplay:Landroid/view/Display;

    .line 237
    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    .line 239
    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mProtocolVersion:Ljava/lang/String;

    const/4 v1, 0x0

    .line 241
    iput-boolean v1, p0, Lcom/adobe/air/wand/WandManager;->mIsDisposed:Z

    .line 242
    iput-boolean v1, p0, Lcom/adobe/air/wand/WandManager;->mHasFocus:Z

    .line 243
    iput-boolean v1, p0, Lcom/adobe/air/wand/WandManager;->mListenToConfigChange:Z

    .line 254
    invoke-static {p3}, Lcom/adobe/air/wand/ConnectionChangeReceiver;->resisterWandConnection(Lcom/adobe/air/wand/connection/Connection;)V

    .line 256
    iput-object p3, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    .line 257
    iget-object p3, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    new-instance v1, Lcom/adobe/air/wand/WandManager$ConnectionListener;

    invoke-direct {v1, p0, v0}, Lcom/adobe/air/wand/WandManager$ConnectionListener;-><init>(Lcom/adobe/air/wand/WandManager;Lcom/adobe/air/wand/WandManager$1;)V

    invoke-interface {p3, v1}, Lcom/adobe/air/wand/connection/Connection;->registerListener(Lcom/adobe/air/wand/connection/Connection$Listener;)V

    .line 259
    iput-object p2, p0, Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;

    .line 260
    iget-object p3, p0, Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;

    new-instance v1, Lcom/adobe/air/wand/WandManager$ViewListener;

    invoke-direct {v1, p0, v0}, Lcom/adobe/air/wand/WandManager$ViewListener;-><init>(Lcom/adobe/air/wand/WandManager;Lcom/adobe/air/wand/WandManager$1;)V

    invoke-interface {p3, v1}, Lcom/adobe/air/wand/view/WandView;->registerListener(Lcom/adobe/air/wand/view/WandView$Listener;)V

    .line 272
    new-instance p3, Lcom/adobe/air/wand/message/json/JSONMessageManager;

    invoke-direct {p3}, Lcom/adobe/air/wand/message/json/JSONMessageManager;-><init>()V

    iput-object p3, p0, Lcom/adobe/air/wand/WandManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    .line 274
    invoke-interface {p2}, Lcom/adobe/air/wand/view/WandView;->getTouchSensor()Lcom/adobe/air/wand/view/TouchSensor;

    move-result-object p2

    iput-object p2, p0, Lcom/adobe/air/wand/WandManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    .line 276
    new-instance p2, Lcom/adobe/air/wand/motionsensor/Accelerometer;

    invoke-direct {p2, p1}, Lcom/adobe/air/wand/motionsensor/Accelerometer;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/adobe/air/wand/WandManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    .line 278
    new-instance p2, Lcom/adobe/air/wand/motionsensor/Magnetometer;

    invoke-direct {p2, p1}, Lcom/adobe/air/wand/motionsensor/Magnetometer;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/adobe/air/wand/WandManager;->mMagnetometer:Lcom/adobe/air/wand/motionsensor/Magnetometer;

    .line 280
    new-instance p2, Lcom/adobe/air/wand/motionsensor/Gyroscope;

    invoke-direct {p2, p1}, Lcom/adobe/air/wand/motionsensor/Gyroscope;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/adobe/air/wand/WandManager;->mGyroscope:Lcom/adobe/air/wand/motionsensor/Gyroscope;

    if-eqz p1, :cond_0

    const-string p2, "vibrator"

    .line 288
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Vibrator;

    iput-object p2, p0, Lcom/adobe/air/wand/WandManager;->mVibrator:Landroid/os/Vibrator;

    const-string p2, "window"

    .line 290
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 291
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/wand/WandManager;->mDisplay:Landroid/view/Display;

    .line 293
    new-instance p1, Lcom/adobe/air/wand/TaskManager;

    iget-object v2, p0, Lcom/adobe/air/wand/WandManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    iget-object v3, p0, Lcom/adobe/air/wand/WandManager;->mDisplay:Landroid/view/Display;

    iget-object v4, p0, Lcom/adobe/air/wand/WandManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    iget-object v5, p0, Lcom/adobe/air/wand/WandManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    iget-object v6, p0, Lcom/adobe/air/wand/WandManager;->mMagnetometer:Lcom/adobe/air/wand/motionsensor/Magnetometer;

    iget-object v7, p0, Lcom/adobe/air/wand/WandManager;->mGyroscope:Lcom/adobe/air/wand/motionsensor/Gyroscope;

    iget-object v8, p0, Lcom/adobe/air/wand/WandManager;->mVibrator:Landroid/os/Vibrator;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/adobe/air/wand/TaskManager;-><init>(Lcom/adobe/air/wand/message/MessageManager;Landroid/view/Display;Lcom/adobe/air/wand/view/TouchSensor;Lcom/adobe/air/wand/motionsensor/Accelerometer;Lcom/adobe/air/wand/motionsensor/Magnetometer;Lcom/adobe/air/wand/motionsensor/Gyroscope;Landroid/os/Vibrator;)V

    iput-object p1, p0, Lcom/adobe/air/wand/WandManager;->mTaskManager:Lcom/adobe/air/wand/TaskManager;

    .line 294
    iget-object p1, p0, Lcom/adobe/air/wand/WandManager;->mTaskManager:Lcom/adobe/air/wand/TaskManager;

    new-instance p2, Lcom/adobe/air/wand/WandManager$TaskListener;

    invoke-direct {p2, p0, v0}, Lcom/adobe/air/wand/WandManager$TaskListener;-><init>(Lcom/adobe/air/wand/WandManager;Lcom/adobe/air/wand/WandManager$1;)V

    invoke-virtual {p1, p2}, Lcom/adobe/air/wand/TaskManager;->registerListener(Lcom/adobe/air/wand/TaskManager$Listener;)V

    return-void

    .line 285
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Cannot find application context while initializing."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/adobe/air/wand/WandManager;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/adobe/air/wand/WandManager;->mProtocolVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/adobe/air/wand/WandManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/adobe/air/wand/WandManager;->mProtocolVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/adobe/air/wand/WandManager;)Lcom/adobe/air/wand/view/WandView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/adobe/air/wand/WandManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lcom/adobe/air/wand/WandManager;->loadDefaultView()V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/air/wand/WandManager;)Lcom/adobe/air/wand/TaskManager;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/adobe/air/wand/WandManager;->mTaskManager:Lcom/adobe/air/wand/TaskManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/adobe/air/wand/WandManager;)Lcom/adobe/air/wand/connection/Connection;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    return-object p0
.end method

.method static synthetic access$502(Lcom/adobe/air/wand/WandManager;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/adobe/air/wand/WandManager;->mListenToConfigChange:Z

    return p1
.end method

.method private loadDefaultView()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    invoke-virtual {v0}, Lcom/adobe/air/wand/motionsensor/Accelerometer;->stop()V

    .line 358
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mTaskManager:Lcom/adobe/air/wand/TaskManager;

    invoke-virtual {v0}, Lcom/adobe/air/wand/TaskManager;->terminateRunningTasks()V

    .line 360
    invoke-direct {p0}, Lcom/adobe/air/wand/WandManager;->setDefaultOrientation()V

    .line 365
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;

    invoke-interface {v0}, Lcom/adobe/air/wand/view/WandView;->loadDefaultView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 370
    throw v0
.end method

.method private setDefaultOrientation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;

    sget-object v1, Lcom/adobe/air/wand/view/WandView$ScreenOrientation;->INHERIT:Lcom/adobe/air/wand/view/WandView$ScreenOrientation;

    invoke-interface {v0, v1}, Lcom/adobe/air/wand/view/WandView;->setScreenOrientation(Lcom/adobe/air/wand/view/WandView$ScreenOrientation;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const/4 v0, 0x1

    .line 388
    iput-boolean v0, p0, Lcom/adobe/air/wand/WandManager;->mIsDisposed:Z

    .line 390
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mTaskManager:Lcom/adobe/air/wand/TaskManager;

    invoke-virtual {v0}, Lcom/adobe/air/wand/TaskManager;->terminateRunningTasks()V

    .line 391
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mTaskManager:Lcom/adobe/air/wand/TaskManager;

    invoke-virtual {v0}, Lcom/adobe/air/wand/TaskManager;->unregisterListener()V

    const/4 v0, 0x0

    .line 392
    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mTaskManager:Lcom/adobe/air/wand/TaskManager;

    .line 394
    iget-object v1, p0, Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;

    invoke-interface {v1}, Lcom/adobe/air/wand/view/WandView;->unregisterListener()V

    .line 395
    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;

    .line 397
    iget-object v1, p0, Lcom/adobe/air/wand/WandManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    invoke-virtual {v1}, Lcom/adobe/air/wand/motionsensor/Accelerometer;->dispose()V

    .line 398
    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    .line 400
    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mDisplay:Landroid/view/Display;

    .line 402
    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    .line 404
    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    .line 406
    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mVibrator:Landroid/os/Vibrator;

    .line 408
    iget-object v1, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    invoke-interface {v1}, Lcom/adobe/air/wand/connection/Connection;->unregisterListener()V

    .line 409
    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    .line 411
    invoke-static {}, Lcom/adobe/air/wand/ConnectionChangeReceiver;->unresisterWandConnection()V

    return-void
.end method

.method public focus(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 302
    iget-boolean v0, p0, Lcom/adobe/air/wand/WandManager;->mIsDisposed:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/adobe/air/wand/WandManager;->setDefaultOrientation()V

    .line 311
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    invoke-interface {v0}, Lcom/adobe/air/wand/connection/Connection;->connect()V

    goto :goto_0

    .line 318
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/wand/WandManager;->loadDefaultView()V

    .line 324
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    invoke-interface {v0}, Lcom/adobe/air/wand/connection/Connection;->disconnect()V

    .line 327
    :goto_0
    iput-boolean p1, p0, Lcom/adobe/air/wand/WandManager;->mHasFocus:Z

    return-void

    .line 302
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "WandManager has been disposed"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasFocus()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcom/adobe/air/wand/WandManager;->mHasFocus:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 337
    iget-boolean v0, p0, Lcom/adobe/air/wand/WandManager;->mListenToConfigChange:Z

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 339
    iput-boolean p1, p0, Lcom/adobe/air/wand/WandManager;->mListenToConfigChange:Z

    .line 340
    iget-object p1, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    invoke-interface {p1}, Lcom/adobe/air/wand/connection/Connection;->onReadyForConnection()V

    :cond_0
    return-void
.end method
