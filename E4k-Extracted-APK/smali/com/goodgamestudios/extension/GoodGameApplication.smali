.class public Lcom/goodgamestudios/extension/GoodGameApplication;
.super Landroid/app/Application;
.source "GoodGameApplication.java"


# static fields
.field private static GGA:Ljava/lang/String; = "GoodGameApplication"

.field private static alreadyDisplayed:Ljava/lang/Boolean;

.field public static splashScreenView:Landroid/view/View;


# instance fields
.field private appPermissionDialogListener:Lcom/goodgamestudios/extension/AppPermissionDialogListener;

.field private consentDialogListener:Lcom/goodgamestudios/extension/ConsentDialogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/goodgamestudios/extension/GoodGameApplication;->alreadyDisplayed:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/goodgamestudios/extension/GoodGameApplication;->GGA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/goodgamestudios/extension/GoodGameApplication;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/goodgamestudios/extension/GoodGameApplication;->displaySplashScreen()V

    return-void
.end method

.method private displaySplashScreen()V
    .locals 4

    .line 58
    sget-object v0, Lcom/goodgamestudios/extension/GoodGameApplication;->alreadyDisplayed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/goodgamestudios/extension/GoodGameApplication;->GGA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] not again, already displayed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "activity"

    .line 63
    invoke-virtual {p0, v0}, Lcom/goodgamestudios/extension/GoodGameApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 67
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/goodgamestudios/extension/GoodGameApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":remote"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 71
    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/goodgamestudios/extension/GoodGameApplication;->GGA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] dont display splash screen -> wrong process"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->log(Ljava/lang/String;)V

    return-void

    .line 77
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/goodgamestudios/extension/GoodGameApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/goodgamestudios/extension/SplashScreen;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000

    .line 78
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 79
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/goodgamestudios/extension/GoodGameApplication;->GGA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] Starting SplashScreen Activity now ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->log(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/goodgamestudios/extension/GoodGameApplication;->startActivity(Landroid/content/Intent;)V

    .line 82
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/goodgamestudios/extension/GoodGameApplication;->alreadyDisplayed:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public notifyConsentDialogResolved()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/goodgamestudios/extension/GoodGameApplication;->consentDialogListener:Lcom/goodgamestudios/extension/ConsentDialogListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/goodgamestudios/extension/GoodGameApplication;->consentDialogListener:Lcom/goodgamestudios/extension/ConsentDialogListener;

    invoke-interface {v0}, Lcom/goodgamestudios/extension/ConsentDialogListener;->onConsentDialogResolved()V

    :cond_0
    return-void
.end method

.method public notifyPermissionDialogResolved(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/goodgamestudios/extension/GoodGameApplication;->appPermissionDialogListener:Lcom/goodgamestudios/extension/AppPermissionDialogListener;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/goodgamestudios/extension/GoodGameApplication;->appPermissionDialogListener:Lcom/goodgamestudios/extension/AppPermissionDialogListener;

    invoke-interface {v0, p1}, Lcom/goodgamestudios/extension/AppPermissionDialogListener;->onPermissionDialogResolved(Z)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/goodgamestudios/extension/GoodGameApplication;->GGA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] onCreate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->log(Ljava/lang/String;)V

    .line 31
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 41
    new-instance v0, Lcom/goodgamestudios/extension/GoodGameApplication$1;

    invoke-direct {v0, p0}, Lcom/goodgamestudios/extension/GoodGameApplication$1;-><init>(Lcom/goodgamestudios/extension/GoodGameApplication;)V

    invoke-virtual {p0, v0}, Lcom/goodgamestudios/extension/GoodGameApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/goodgamestudios/extension/GoodGameApplication;->displaySplashScreen()V

    :goto_0
    return-void
.end method

.method public setAppPermissionDialogListener(Lcom/goodgamestudios/extension/AppPermissionDialogListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/goodgamestudios/extension/GoodGameApplication;->appPermissionDialogListener:Lcom/goodgamestudios/extension/AppPermissionDialogListener;

    return-void
.end method

.method public setConsentDialogListener(Lcom/goodgamestudios/extension/ConsentDialogListener;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/goodgamestudios/extension/GoodGameApplication;->consentDialogListener:Lcom/goodgamestudios/extension/ConsentDialogListener;

    return-void
.end method
