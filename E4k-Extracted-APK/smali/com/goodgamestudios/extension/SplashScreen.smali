.class public Lcom/goodgamestudios/extension/SplashScreen;
.super Landroid/app/Activity;
.source "SplashScreen.java"


# static fields
.field private static final SPLASH_TIME_OUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "GGS SplashScreen"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/goodgamestudios/extension/SplashScreen;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/goodgamestudios/extension/SplashScreen;->startAppEntry()V

    return-void
.end method

.method private startAppDelayed()V
    .locals 4

    const-string v0, "GGS SplashScreen"

    const-string v1, "startAppDelayed"

    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/goodgamestudios/extension/SplashScreen$1;

    invoke-direct {v1, p0}, Lcom/goodgamestudios/extension/SplashScreen$1;-><init>(Lcom/goodgamestudios/extension/SplashScreen;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startAppEntry()V
    .locals 3

    const-string v0, "GGS SplashScreen"

    const-string v1, "startAppEntry"

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    invoke-virtual {p0}, Lcom/goodgamestudios/extension/SplashScreen;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".AppEntry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0, v0}, Lcom/goodgamestudios/extension/SplashScreen;->startActivity(Landroid/content/Intent;)V

    const-string v0, "GGS SplashScreen"

    const-string v1, "starting AppEntry"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GGS SplashScreen"

    const-string v2, "Class not found!"

    .line 53
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    :goto_0
    invoke-virtual {p0}, Lcom/goodgamestudios/extension/SplashScreen;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "GGS SplashScreen"

    const-string v1, "onCreate"

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Lcom/goodgamestudios/extension/SplashScreen;->requestWindowFeature(I)Z

    .line 23
    invoke-virtual {p0}, Lcom/goodgamestudios/extension/SplashScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "GGS SplashScreen"

    const-string v0, "setting view"

    .line 25
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p0}, Lcom/goodgamestudios/extension/SplashScreen;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "layout"

    const-string v1, "activity_splash"

    invoke-static {p1, v0, v1}, Lcom/goodgamestudios/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/goodgamestudios/extension/SplashScreen;->setContentView(I)V

    .line 28
    invoke-direct {p0}, Lcom/goodgamestudios/extension/SplashScreen;->startAppDelayed()V

    return-void
.end method
