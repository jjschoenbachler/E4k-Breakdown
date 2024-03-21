.class public Lcom/adobe/air/ShakeListenerService;
.super Landroid/app/Service;
.source "ShakeListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/ShakeListenerService$BackgroundThread;
    }
.end annotation


# instance fields
.field private final AIR_WAND_CLASS_NAME:Ljava/lang/String;

.field private backGroundThread:Lcom/adobe/air/ShakeListenerService$BackgroundThread;

.field private mShakeListener:Lcom/adobe/air/ShakeListener;

.field private mcontext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/adobe/air/ShakeListenerService;->backGroundThread:Lcom/adobe/air/ShakeListenerService$BackgroundThread;

    const-string v0, "com.adobe.air.wand.WandActivity"

    .line 119
    iput-object v0, p0, Lcom/adobe/air/ShakeListenerService;->AIR_WAND_CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/ShakeListenerService;)Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/adobe/air/ShakeListenerService;->mcontext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$002(Lcom/adobe/air/ShakeListenerService;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/adobe/air/ShakeListenerService;->mcontext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lcom/adobe/air/ShakeListenerService;)Lcom/adobe/air/ShakeListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/adobe/air/ShakeListenerService;->mShakeListener:Lcom/adobe/air/ShakeListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/adobe/air/ShakeListenerService;Lcom/adobe/air/ShakeListener;)Lcom/adobe/air/ShakeListener;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/adobe/air/ShakeListenerService;->mShakeListener:Lcom/adobe/air/ShakeListener;

    return-object p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 30
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 31
    iget-object v0, p0, Lcom/adobe/air/ShakeListenerService;->backGroundThread:Lcom/adobe/air/ShakeListenerService$BackgroundThread;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/adobe/air/ShakeListenerService$BackgroundThread;

    invoke-virtual {p0}, Lcom/adobe/air/ShakeListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adobe/air/ShakeListenerService$BackgroundThread;-><init>(Lcom/adobe/air/ShakeListenerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/ShakeListenerService;->backGroundThread:Lcom/adobe/air/ShakeListenerService$BackgroundThread;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 54
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 56
    iget-object v0, p0, Lcom/adobe/air/ShakeListenerService;->backGroundThread:Lcom/adobe/air/ShakeListenerService$BackgroundThread;

    if-eqz v0, :cond_0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/ShakeListenerService;->backGroundThread:Lcom/adobe/air/ShakeListenerService$BackgroundThread;

    invoke-virtual {v0}, Lcom/adobe/air/ShakeListenerService$BackgroundThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/adobe/air/ShakeListenerService;->backGroundThread:Lcom/adobe/air/ShakeListenerService$BackgroundThread;

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/adobe/air/ShakeListenerService;->backGroundThread:Lcom/adobe/air/ShakeListenerService$BackgroundThread;

    if-nez p1, :cond_0

    .line 40
    new-instance p1, Lcom/adobe/air/ShakeListenerService$BackgroundThread;

    invoke-virtual {p0}, Lcom/adobe/air/ShakeListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/adobe/air/ShakeListenerService$BackgroundThread;-><init>(Lcom/adobe/air/ShakeListenerService;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/adobe/air/ShakeListenerService;->backGroundThread:Lcom/adobe/air/ShakeListenerService$BackgroundThread;

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/ShakeListenerService;->backGroundThread:Lcom/adobe/air/ShakeListenerService$BackgroundThread;

    invoke-virtual {p1}, Lcom/adobe/air/ShakeListenerService$BackgroundThread;->getState()Ljava/lang/Thread$State;

    move-result-object p1

    sget-object p2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/adobe/air/ShakeListenerService;->backGroundThread:Lcom/adobe/air/ShakeListenerService$BackgroundThread;

    invoke-virtual {p1}, Lcom/adobe/air/ShakeListenerService$BackgroundThread;->getState()Ljava/lang/Thread$State;

    move-result-object p1

    sget-object p2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne p1, p2, :cond_3

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/adobe/air/ShakeListenerService;->backGroundThread:Lcom/adobe/air/ShakeListenerService$BackgroundThread;

    invoke-virtual {p1}, Lcom/adobe/air/ShakeListenerService$BackgroundThread;->getState()Ljava/lang/Thread$State;

    move-result-object p1

    sget-object p2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne p1, p2, :cond_2

    .line 44
    new-instance p1, Lcom/adobe/air/ShakeListenerService$BackgroundThread;

    invoke-virtual {p0}, Lcom/adobe/air/ShakeListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/adobe/air/ShakeListenerService$BackgroundThread;-><init>(Lcom/adobe/air/ShakeListenerService;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/adobe/air/ShakeListenerService;->backGroundThread:Lcom/adobe/air/ShakeListenerService$BackgroundThread;

    .line 46
    :cond_2
    iget-object p1, p0, Lcom/adobe/air/ShakeListenerService;->backGroundThread:Lcom/adobe/air/ShakeListenerService$BackgroundThread;

    invoke-virtual {p1}, Lcom/adobe/air/ShakeListenerService$BackgroundThread;->start()V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
