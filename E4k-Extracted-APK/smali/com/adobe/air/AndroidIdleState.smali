.class public Lcom/adobe/air/AndroidIdleState;
.super Ljava/lang/Object;
.source "AndroidIdleState.java"


# static fields
.field public static final IDLE_STATE_NORMAL:I = 0x0

.field private static final IDLE_STATE_TAG:Ljava/lang/String; = "AndroidIdleState"

.field public static final IDLE_STATE_WAKEUP:I = 0x1

.field private static mIdleStateManager:Lcom/adobe/air/AndroidIdleState;


# instance fields
.field private mCurrentIdleState:I

.field private mIsWakeUpLockHeld:Z

.field private mKeyGuardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mScreenBrightLock:Landroid/os/PowerManager$WakeLock;

.field private sReceiver:Landroid/content/BroadcastReceiver;

.field private sScreenOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/adobe/air/AndroidIdleState;->mScreenBrightLock:Landroid/os/PowerManager$WakeLock;

    .line 21
    iput-object v0, p0, Lcom/adobe/air/AndroidIdleState;->mKeyGuardLock:Landroid/app/KeyguardManager$KeyguardLock;

    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/adobe/air/AndroidIdleState;->mIsWakeUpLockHeld:Z

    .line 23
    iput v1, p0, Lcom/adobe/air/AndroidIdleState;->mCurrentIdleState:I

    .line 24
    iput-object v0, p0, Lcom/adobe/air/AndroidIdleState;->sReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/adobe/air/AndroidIdleState;->sScreenOn:Z

    .line 38
    iget-object v0, p0, Lcom/adobe/air/AndroidIdleState;->sReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 42
    :try_start_0
    new-instance v0, Lcom/adobe/air/AndroidIdleState$1;

    invoke-direct {v0, p0}, Lcom/adobe/air/AndroidIdleState$1;-><init>(Lcom/adobe/air/AndroidIdleState;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidIdleState;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/adobe/air/AndroidIdleState;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static GetIdleStateManager(Landroid/content/Context;)Lcom/adobe/air/AndroidIdleState;
    .locals 1

    .line 30
    sget-object v0, Lcom/adobe/air/AndroidIdleState;->mIdleStateManager:Lcom/adobe/air/AndroidIdleState;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/adobe/air/AndroidIdleState;

    invoke-direct {v0, p0}, Lcom/adobe/air/AndroidIdleState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/adobe/air/AndroidIdleState;->mIdleStateManager:Lcom/adobe/air/AndroidIdleState;

    .line 33
    :cond_0
    sget-object p0, Lcom/adobe/air/AndroidIdleState;->mIdleStateManager:Lcom/adobe/air/AndroidIdleState;

    return-object p0
.end method

.method static synthetic access$000(Lcom/adobe/air/AndroidIdleState;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lcom/adobe/air/AndroidIdleState;->sScreenOn:Z

    return p0
.end method

.method static synthetic access$002(Lcom/adobe/air/AndroidIdleState;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/adobe/air/AndroidIdleState;->sScreenOn:Z

    return p1
.end method


# virtual methods
.method public ChangeIdleState(Landroid/content/Context;I)V
    .locals 2

    if-nez p2, :cond_0

    .line 82
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/air/AndroidIdleState;->releaseLock()V

    const/4 p1, 0x0

    .line 83
    iput p1, p0, Lcom/adobe/air/AndroidIdleState;->mCurrentIdleState:I

    goto :goto_1

    .line 88
    :cond_0
    iget-object p2, p0, Lcom/adobe/air/AndroidIdleState;->mScreenBrightLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p2, :cond_1

    :try_start_1
    const-string p2, "power"

    .line 92
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    check-cast p2, Landroid/os/PowerManager;

    const v0, 0x1000000a

    const-string v1, "DoNotDimScreen"

    .line 93
    invoke-virtual {p2, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/adobe/air/AndroidIdleState;->mScreenBrightLock:Landroid/os/PowerManager$WakeLock;

    const-string p2, "keyguard"

    .line 94
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    check-cast p1, Landroid/app/KeyguardManager;

    const-string p2, "DoNotLockKeys"

    .line 95
    invoke-virtual {p1, p2}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/AndroidIdleState;->mKeyGuardLock:Landroid/app/KeyguardManager$KeyguardLock;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 100
    :try_start_2
    iput-object p1, p0, Lcom/adobe/air/AndroidIdleState;->mScreenBrightLock:Landroid/os/PowerManager$WakeLock;

    .line 101
    iput-object p1, p0, Lcom/adobe/air/AndroidIdleState;->mKeyGuardLock:Landroid/app/KeyguardManager$KeyguardLock;

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 106
    iput p1, p0, Lcom/adobe/air/AndroidIdleState;->mCurrentIdleState:I

    .line 107
    invoke-virtual {p0}, Lcom/adobe/air/AndroidIdleState;->acquireLock()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_1
    return-void
.end method

.method public acquireLock()V
    .locals 2

    .line 121
    :try_start_0
    iget v0, p0, Lcom/adobe/air/AndroidIdleState;->mCurrentIdleState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AndroidIdleState;->mIsWakeUpLockHeld:Z

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/adobe/air/AndroidIdleState;->mScreenBrightLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 125
    iget-object v0, p0, Lcom/adobe/air/AndroidIdleState;->mKeyGuardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 126
    iput-boolean v1, p0, Lcom/adobe/air/AndroidIdleState;->mIsWakeUpLockHeld:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public releaseLock()V
    .locals 2

    .line 140
    :try_start_0
    iget v0, p0, Lcom/adobe/air/AndroidIdleState;->mCurrentIdleState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AndroidIdleState;->mIsWakeUpLockHeld:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/adobe/air/AndroidIdleState;->mScreenBrightLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 144
    iget-object v0, p0, Lcom/adobe/air/AndroidIdleState;->mKeyGuardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcom/adobe/air/AndroidIdleState;->mIsWakeUpLockHeld:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
