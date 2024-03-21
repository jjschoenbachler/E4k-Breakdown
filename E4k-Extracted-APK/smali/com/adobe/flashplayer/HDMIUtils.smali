.class public Lcom/adobe/flashplayer/HDMIUtils;
.super Ljava/lang/Object;
.source "HDMIUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/flashplayer/HDMIUtils$HdmiServiceConnection;,
        Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;,
        Lcom/adobe/flashplayer/HDMIUtils$HDMIState;
    }
.end annotation


# static fields
.field private static final EXTDISP_PUBLIC_STATE:Ljava/lang/String; = "com.motorola.intent.action.externaldisplaystate"

.field private static final EXTDISP_STATUS_CONNECTION:Ljava/lang/String; = "com.motorola.intent.action.EXTDISP_STATUS_CONNECTION"

.field private static final EXTDISP_STATUS_DISPLAY:Ljava/lang/String; = "com.motorola.intent.action.EXTDISP_STATUS_DISPLAY"

.field private static final EXTDISP_STATUS_RESOLUTION:Ljava/lang/String; = "com.motorola.intent.action.EXTDISP_STATUS_RESOLUTION"

.field private static final EXTRA_HDCP:Ljava/lang/String; = "hdcp"

.field private static final EXTRA_HDMI:Ljava/lang/String; = "hdmi"

.field private static final TAG:Ljava/lang/String; = "HDMIUtils"

.field private static final TYPE_HDMI:I = 0x1

.field private static lock:Ljava/lang/Object;

.field private static mSingleton:Lcom/adobe/flashplayer/HDMIUtils;


# instance fields
.field private mConnection:Lcom/adobe/flashplayer/HDMIUtils$HdmiServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDeathWatcher:Landroid/os/Binder;

.field private mExtConnectionReceiver:Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;

.field private mHdcpOnOff:Z

.field private mHdmiConnection:Z

.field private mHdmiOnOff:Z

.field private mHdmiStatusKnown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/flashplayer/HDMIUtils;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 59
    sput-object v0, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiStatusKnown:Z

    .line 49
    iput-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiOnOff:Z

    .line 50
    iput-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdcpOnOff:Z

    .line 51
    iput-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiConnection:Z

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/adobe/flashplayer/HDMIUtils;->mContext:Landroid/content/Context;

    .line 54
    iput-object v1, p0, Lcom/adobe/flashplayer/HDMIUtils;->mExtConnectionReceiver:Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;

    .line 57
    iput-object v1, p0, Lcom/adobe/flashplayer/HDMIUtils;->mDeathWatcher:Landroid/os/Binder;

    .line 63
    iput-object p1, p0, Lcom/adobe/flashplayer/HDMIUtils;->mContext:Landroid/content/Context;

    .line 66
    iput-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiStatusKnown:Z

    .line 67
    iput-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdcpOnOff:Z

    .line 68
    iput-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiOnOff:Z

    .line 69
    iput-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiConnection:Z

    .line 71
    new-instance p1, Lcom/adobe/flashplayer/HDMIUtils$HdmiServiceConnection;

    invoke-direct {p1, p0}, Lcom/adobe/flashplayer/HDMIUtils$HdmiServiceConnection;-><init>(Lcom/adobe/flashplayer/HDMIUtils;)V

    iput-object p1, p0, Lcom/adobe/flashplayer/HDMIUtils;->mConnection:Lcom/adobe/flashplayer/HDMIUtils$HdmiServiceConnection;

    .line 72
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/adobe/flashplayer/HDMIUtils;->mDeathWatcher:Landroid/os/Binder;

    .line 73
    new-instance p1, Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;

    invoke-direct {p1, p0}, Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;-><init>(Lcom/adobe/flashplayer/HDMIUtils;)V

    iput-object p1, p0, Lcom/adobe/flashplayer/HDMIUtils;->mExtConnectionReceiver:Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;

    .line 77
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.motorola.intent.action.externaldisplaystate"

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.motorola.intent.action.EXTDISP_STATUS_CONNECTION"

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.motorola.intent.action.EXTDISP_STATUS_DISPLAY"

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.motorola.intent.action.EXTDISP_STATUS_RESOLUTION"

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/adobe/flashplayer/HDMIUtils;->mExtConnectionReceiver:Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/flashplayer/HDMIUtils;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiConnection:Z

    return p0
.end method

.method static synthetic access$002(Lcom/adobe/flashplayer/HDMIUtils;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiConnection:Z

    return p1
.end method

.method static synthetic access$102(Lcom/adobe/flashplayer/HDMIUtils;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiStatusKnown:Z

    return p1
.end method

.method static synthetic access$200(Lcom/adobe/flashplayer/HDMIUtils;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiOnOff:Z

    return p0
.end method

.method static synthetic access$202(Lcom/adobe/flashplayer/HDMIUtils;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiOnOff:Z

    return p1
.end method

.method static synthetic access$302(Lcom/adobe/flashplayer/HDMIUtils;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdcpOnOff:Z

    return p1
.end method

.method public static closeHelper()V
    .locals 4

    .line 103
    sget-object v0, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    sget-object v0, Lcom/adobe/flashplayer/HDMIUtils;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    sget-object v1, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    iget-object v1, v1, Lcom/adobe/flashplayer/HDMIUtils;->mExtConnectionReceiver:Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 110
    sget-object v1, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    iget-object v1, v1, Lcom/adobe/flashplayer/HDMIUtils;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    iget-object v3, v3, Lcom/adobe/flashplayer/HDMIUtils;->mExtConnectionReceiver:Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 111
    sget-object v1, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    iput-object v2, v1, Lcom/adobe/flashplayer/HDMIUtils;->mExtConnectionReceiver:Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;

    .line 114
    :cond_1
    sget-object v1, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    iget-object v1, v1, Lcom/adobe/flashplayer/HDMIUtils;->mConnection:Lcom/adobe/flashplayer/HDMIUtils$HdmiServiceConnection;

    if-eqz v1, :cond_2

    .line 116
    sget-object v1, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    iget-object v1, v1, Lcom/adobe/flashplayer/HDMIUtils;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    iget-object v3, v3, Lcom/adobe/flashplayer/HDMIUtils;->mConnection:Lcom/adobe/flashplayer/HDMIUtils$HdmiServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 117
    sget-object v1, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    iput-object v2, v1, Lcom/adobe/flashplayer/HDMIUtils;->mConnection:Lcom/adobe/flashplayer/HDMIUtils$HdmiServiceConnection;

    .line 120
    :cond_2
    sget-object v1, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    iput-object v2, v1, Lcom/adobe/flashplayer/HDMIUtils;->mDeathWatcher:Landroid/os/Binder;

    .line 121
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    sget-object v0, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiStatusKnown:Z

    .line 125
    sput-object v2, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    return-void

    :catchall_0
    move-exception v1

    .line 121
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getHDMIState(Landroid/content/Context;)I
    .locals 0

    .line 153
    invoke-static {p0}, Lcom/adobe/flashplayer/HDMIUtils;->initHelper(Landroid/content/Context;)V

    .line 155
    sget-object p0, Lcom/adobe/flashplayer/HDMIUtils$HDMIState;->UNKNOWN:Lcom/adobe/flashplayer/HDMIUtils$HDMIState;

    iget p0, p0, Lcom/adobe/flashplayer/HDMIUtils$HDMIState;->value:I

    .line 157
    sget-object p0, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    invoke-virtual {p0}, Lcom/adobe/flashplayer/HDMIUtils;->isHdmiStatusKnown()Z

    move-result p0

    if-nez p0, :cond_0

    .line 158
    sget-object p0, Lcom/adobe/flashplayer/HDMIUtils$HDMIState;->UNKNOWN:Lcom/adobe/flashplayer/HDMIUtils$HDMIState;

    iget p0, p0, Lcom/adobe/flashplayer/HDMIUtils$HDMIState;->value:I

    goto :goto_0

    .line 159
    :cond_0
    sget-object p0, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    invoke-virtual {p0}, Lcom/adobe/flashplayer/HDMIUtils;->isHDCPOn()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 160
    sget-object p0, Lcom/adobe/flashplayer/HDMIUtils$HDMIState;->HDCPON:Lcom/adobe/flashplayer/HDMIUtils$HDMIState;

    iget p0, p0, Lcom/adobe/flashplayer/HDMIUtils$HDMIState;->value:I

    goto :goto_0

    .line 161
    :cond_1
    sget-object p0, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    invoke-virtual {p0}, Lcom/adobe/flashplayer/HDMIUtils;->isHDMIOn()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 162
    sget-object p0, Lcom/adobe/flashplayer/HDMIUtils$HDMIState;->ON:Lcom/adobe/flashplayer/HDMIUtils$HDMIState;

    iget p0, p0, Lcom/adobe/flashplayer/HDMIUtils$HDMIState;->value:I

    goto :goto_0

    .line 164
    :cond_2
    sget-object p0, Lcom/adobe/flashplayer/HDMIUtils$HDMIState;->OFF:Lcom/adobe/flashplayer/HDMIUtils$HDMIState;

    iget p0, p0, Lcom/adobe/flashplayer/HDMIUtils$HDMIState;->value:I

    :goto_0
    return p0
.end method

.method public static initHelper(Landroid/content/Context;)V
    .locals 1

    .line 95
    sget-object v0, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    if-eqz v0, :cond_0

    return-void

    .line 98
    :cond_0
    new-instance v0, Lcom/adobe/flashplayer/HDMIUtils;

    invoke-direct {v0, p0}, Lcom/adobe/flashplayer/HDMIUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiConnection:Z

    return v0
.end method

.method public isHDCPOn()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdcpOnOff:Z

    return v0
.end method

.method public isHDMIOn()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiOnOff:Z

    return v0
.end method

.method public isHdmiStatusKnown()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiStatusKnown:Z

    return v0
.end method
