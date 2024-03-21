.class public Lcom/ironsource/environment/NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateReceiver.java"


# instance fields
.field private mConnected:Z

.field private mListener:Lcom/ironsource/environment/NetworkStateReceiverListener;

.field private mManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/environment/NetworkStateReceiverListener;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/ironsource/environment/NetworkStateReceiver;->mConnected:Z

    .line 22
    iput-object p2, p0, Lcom/ironsource/environment/NetworkStateReceiver;->mListener:Lcom/ironsource/environment/NetworkStateReceiverListener;

    const-string p2, "connectivity"

    .line 23
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/ironsource/environment/NetworkStateReceiver;->mManager:Landroid/net/ConnectivityManager;

    .line 24
    invoke-direct {p0}, Lcom/ironsource/environment/NetworkStateReceiver;->checkAndSetState()Z

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/environment/NetworkStateReceiver;)Lcom/ironsource/environment/NetworkStateReceiverListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/ironsource/environment/NetworkStateReceiver;->mListener:Lcom/ironsource/environment/NetworkStateReceiverListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ironsource/environment/NetworkStateReceiver;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/ironsource/environment/NetworkStateReceiver;->mConnected:Z

    return p0
.end method

.method private checkAndSetState()Z
    .locals 4

    .line 37
    iget-boolean v0, p0, Lcom/ironsource/environment/NetworkStateReceiver;->mConnected:Z

    .line 38
    iget-object v1, p0, Lcom/ironsource/environment/NetworkStateReceiver;->mManager:Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/environment/NetworkStateReceiver;->mManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/ironsource/environment/NetworkStateReceiver;->mConnected:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 44
    :catch_0
    iput-boolean v3, p0, Lcom/ironsource/environment/NetworkStateReceiver;->mConnected:Z

    goto :goto_1

    .line 49
    :cond_1
    iput-boolean v3, p0, Lcom/ironsource/environment/NetworkStateReceiver;->mConnected:Z

    .line 51
    :goto_1
    iget-boolean v1, p0, Lcom/ironsource/environment/NetworkStateReceiver;->mConnected:Z

    if-eq v0, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method private notifyState()V
    .locals 2

    .line 55
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/environment/NetworkStateReceiver$1;

    invoke-direct {v1, p0}, Lcom/ironsource/environment/NetworkStateReceiver$1;-><init>(Lcom/ironsource/environment/NetworkStateReceiver;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postBackgroundTask(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_2

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/environment/NetworkStateReceiver;->checkAndSetState()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 33
    invoke-direct {p0}, Lcom/ironsource/environment/NetworkStateReceiver;->notifyState()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method
