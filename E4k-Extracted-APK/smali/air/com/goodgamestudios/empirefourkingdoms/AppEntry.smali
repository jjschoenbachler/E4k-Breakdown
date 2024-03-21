.class public Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;
.super Landroid/app/Activity;
.source "AppEntry.java"


# static fields
.field private static AIR_PING_URL:Ljava/lang/String; = "https://airdownload2.adobe.com/air?"

.field private static final LOG_TAG:Ljava/lang/String; = "AppEntry"

.field private static final RESOURCE_BUTTON_EXIT:Ljava/lang/String; = "string.button_exit"

.field private static final RESOURCE_BUTTON_INSTALL:Ljava/lang/String; = "string.button_install"

.field private static final RESOURCE_CLASS:Ljava/lang/String; = "air.com.goodgamestudios.empirefourkingdoms.R"

.field private static final RESOURCE_TEXT_RUNTIME_REQUIRED:Ljava/lang/String; = "string.text_runtime_required"

.field private static final RESOURCE_TITLE_ADOBE_AIR:Ljava/lang/String; = "string.title_adobe_air"

.field private static RUNTIME_PACKAGE_ID:Ljava/lang/String; = "com.adobe.air"

.field private static sAndroidActivityWrapper:Ljava/lang/Object;

.field private static sAndroidActivityWrapperClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sDloader:Ldalvik/system/DexClassLoader;

.field private static sRuntimeClassesLoaded:Z

.field private static sThis:Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private BroadcastIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    :try_start_0
    invoke-static {p2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private varargs InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 397
    sget-boolean v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sRuntimeClassesLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p2, :cond_1

    .line 404
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapper:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    move-object v1, p1

    goto :goto_1

    .line 406
    :cond_1
    sget-object p2, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapper:Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :goto_1
    return-object v1
.end method

.method private InvokeWrapperOnCreate()V
    .locals 9

    .line 376
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onCreate"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/app/Activity;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, [Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, ""

    const-string v3, ""

    const-string v4, "-nodebug"

    .line 384
    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v5}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v8, 0x5

    .line 385
    new-array v8, v8, [Ljava/lang/String;

    aput-object v1, v8, v5

    aput-object v3, v8, v6

    aput-object v4, v8, v2

    const/4 v1, 0x3

    invoke-virtual {v7}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v1

    const/4 v1, 0x4

    invoke-static {}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->inDebuggerMode()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v1

    .line 387
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    aput-object v8, v1, v6

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static KillSelf()V
    .locals 1

    .line 417
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method static synthetic access$000(Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->launchMarketPlaceForAIR()V

    return-void
.end method

.method static synthetic access$100()Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;
    .locals 1

    .line 71
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sThis:Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->AIR_PING_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->loadSharedRuntimeDex()V

    return-void
.end method

.method static synthetic access$400(Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;Z)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->createActivityWrapper(Z)V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 71
    sget-boolean v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sRuntimeClassesLoaded:Z

    return v0
.end method

.method static synthetic access$600(Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeWrapperOnCreate()V

    return-void
.end method

.method static synthetic access$700()V
    .locals 0

    .line 71
    invoke-static {}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->KillSelf()V

    return-void
.end method

.method private createActivityWrapper(Z)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 668
    :try_start_0
    sget-object v3, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v4, "CreateAndroidActivityWrapper"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/app/Activity;

    aput-object v7, v6, v1

    const-class v7, Ljava/lang/Boolean;

    aput-object v7, v6, v2

    const-class v7, Ljava/lang/Boolean;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 669
    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->inDebuggerMode()Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v8

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sput-object p1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapper:Ljava/lang/Object;

    goto :goto_0

    .line 673
    :cond_0
    sget-object p1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v3, "CreateAndroidActivityWrapper"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/app/Activity;

    aput-object v5, v4, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 674
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sput-object p1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapper:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public static inDebuggerMode()Ljava/lang/Boolean;
    .locals 2

    .line 368
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method

.method private isRuntimeInstalled()Z
    .locals 3

    .line 139
    invoke-virtual {p0}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 143
    :try_start_0
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private isRuntimeOnExternalStorage()Z
    .locals 3

    .line 156
    invoke-virtual {p0}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 161
    :try_start_0
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 162
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private launchAIRService()V
    .locals 3

    .line 322
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.adobe.air.AIRServiceAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    const-string v2, "com.adobe.air.AIRService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    new-instance v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry$3;

    invoke-direct {v1, p0}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry$3;-><init>(Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;)V

    const/4 v2, 0x1

    .line 357
    invoke-virtual {p0, v0, v1, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private launchMarketPlaceForAIR()V
    .locals 4

    const/4 v0, 0x0

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 108
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    const-string v2, "airDownloadURL"

    .line 113
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    :cond_0
    if-nez v0, :cond_1

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :try_start_1
    const-string v1, "android.intent.action.VIEW"

    .line 129
    invoke-direct {p0, v1, v0}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->BroadcastIntent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method private loadCaptiveRuntimeClasses()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.adobe.air.AndroidActivityWrapper"

    .line 624
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :try_start_1
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    sput-boolean v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sRuntimeClassesLoaded:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :catch_1
    :cond_0
    :goto_0
    return v0
.end method

.method private loadSharedRuntimeDex()V
    .locals 5

    .line 641
    :try_start_0
    sget-boolean v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sRuntimeClassesLoaded:Z

    if-nez v0, :cond_0

    .line 644
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 645
    new-instance v1, Ldalvik/system/DexClassLoader;

    sget-object v2, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    .line 646
    invoke-virtual {p0}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 648
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sDloader:Ldalvik/system/DexClassLoader;

    .line 650
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sDloader:Ldalvik/system/DexClassLoader;

    const-string v1, "com.adobe.air.AndroidActivityWrapper"

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    .line 651
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 652
    sput-boolean v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sRuntimeClassesLoaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private registerForNotifications()V
    .locals 3

    .line 311
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.adobe.air.AndroidGcmRegistrationService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->RUNTIME_PACKAGE_ID:Ljava/lang/String;

    const-string v2, "com.adobe.air.AndroidGcmRegistrationService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    invoke-virtual {p0, v0}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private showDialog(ILjava/lang/String;II)V
    .locals 0

    .line 176
    new-instance p4, Landroid/app/AlertDialog$Builder;

    invoke-direct {p4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 177
    invoke-virtual {p4, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 178
    invoke-virtual {p4, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 179
    new-instance p1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry$1;

    invoke-direct {p1, p0}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry$1;-><init>(Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;)V

    invoke-virtual {p4, p3, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 195
    new-instance p1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry$2;

    invoke-direct {p1, p0}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry$2;-><init>(Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;)V

    invoke-virtual {p4, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 201
    invoke-virtual {p4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showRuntimeNotInstalledDialog()V
    .locals 5

    .line 212
    new-instance v0, Lcom/adobe/air/ResourceIdMap;

    const-string v1, "air.com.goodgamestudios.empirefourkingdoms.R"

    invoke-direct {v0, v1}, Lcom/adobe/air/ResourceIdMap;-><init>(Ljava/lang/String;)V

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "string.text_runtime_required"

    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "string.text_install_runtime"

    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string.title_adobe_air"

    .line 214
    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v2

    const-string v3, "string.button_install"

    .line 216
    invoke-virtual {v0, v3}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v3

    const-string v4, "string.button_exit"

    .line 217
    invoke-virtual {v0, v4}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v0

    .line 214
    invoke-direct {p0, v2, v1, v3, v0}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->showDialog(ILjava/lang/String;II)V

    return-void
.end method

.method private showRuntimeOnExternalStorageDialog()V
    .locals 5

    .line 222
    new-instance v0, Lcom/adobe/air/ResourceIdMap;

    const-string v1, "air.com.goodgamestudios.empirefourkingdoms.R"

    invoke-direct {v0, v1}, Lcom/adobe/air/ResourceIdMap;-><init>(Ljava/lang/String;)V

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "string.text_runtime_required"

    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "string.text_runtime_on_external_storage"

    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string.title_adobe_air"

    .line 224
    invoke-virtual {v0, v2}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v2

    const-string v3, "string.button_install"

    .line 226
    invoke-virtual {v0, v3}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v3

    const-string v4, "string.button_exit"

    .line 227
    invoke-virtual {v0, v4}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result v0

    .line 224
    invoke-direct {p0, v2, v1, v3, v0}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->showDialog(ILjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 552
    :try_start_0
    sget-object v2, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v3, "dispatchGenericMotionEvent"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/view/MotionEvent;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 553
    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-direct {p0, v2, v3}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :catch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 534
    :try_start_0
    sget-object v2, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v3, "dispatchKeyEvent"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/view/KeyEvent;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 535
    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-direct {p0, v2, v3}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :catch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 7

    .line 686
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->finishActivityFromChild(Landroid/app/Activity;I)V

    .line 690
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "finishActivityFromChild"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/app/Activity;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 691
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 6

    .line 702
    invoke-super {p0, p1}, Landroid/app/Activity;->finishFromChild(Landroid/app/Activity;)V

    .line 706
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "finishFromChild"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/app/Activity;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 707
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 587
    :try_start_0
    sget-boolean v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sRuntimeClassesLoaded:Z

    if-eqz v0, :cond_0

    .line 589
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onActivityResult"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/content/Intent;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 590
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    aput-object p3, v1, v7

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 8

    .line 1236
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 1240
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onApplyThemeResource"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/res/Resources$Theme;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1241
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v7

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 718
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 722
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onAttachedToWindow"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 723
    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 734
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 738
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onBackPressed"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 739
    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 7

    .line 1252
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 1256
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onChildTitleChanged"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/app/Activity;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/CharSequence;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1257
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    aput-object p2, v1, v6

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .line 515
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 519
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onConfigurationChanged"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/res/Configuration;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 520
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onContentChanged()V
    .locals 4

    .line 750
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 754
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onContentChanged"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 755
    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .line 766
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 770
    :try_start_0
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onContextItemSelected"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/view/MenuItem;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 771
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-direct {p0, v1, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 6

    .line 783
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 787
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onContextMenuClosed"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/Menu;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 788
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 234
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 235
    sput-object p0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sThis:Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;

    .line 239
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 240
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-string p1, "StartupTime1"

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "AIR VERSION"

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/GetVersionCode;->AIR_BUILD_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "DEVICE ARCH"

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lair/com/goodgamestudios/empirefourkingdoms/GetVersionCode;->getAbi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->loadCaptiveRuntimeClasses()Z

    move-result p1

    if-nez p1, :cond_2

    .line 250
    sget-boolean v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sRuntimeClassesLoaded:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->isRuntimeInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    invoke-direct {p0}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->isRuntimeOnExternalStorage()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 256
    invoke-direct {p0}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->showRuntimeOnExternalStorageDialog()V

    goto :goto_0

    .line 258
    :cond_0
    invoke-direct {p0}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->showRuntimeNotInstalledDialog()V

    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-direct {p0}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->loadSharedRuntimeDex()V

    .line 264
    :cond_2
    sget-boolean v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sRuntimeClassesLoaded:Z

    if-eqz v0, :cond_3

    .line 266
    invoke-direct {p0, p1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->createActivityWrapper(Z)V

    .line 269
    invoke-direct {p0}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeWrapperOnCreate()V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 277
    invoke-static {}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->KillSelf()V

    goto :goto_1

    .line 285
    :cond_4
    invoke-direct {p0}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->launchAIRService()V

    :goto_1
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8

    .line 799
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 803
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onCreateContextMenu"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/ContextMenu;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/view/View;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/view/ContextMenu$ContextMenuInfo;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 804
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    aput-object p2, v1, v6

    aput-object p3, v1, v7

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 7

    .line 815
    invoke-super {p0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 819
    :try_start_0
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreateDescription"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 820
    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-direct {p0, v1, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    .line 1268
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 1272
    :try_start_0
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreateDialog"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/app/Dialog;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1273
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    aput-object v0, v2, v7

    invoke-direct {p0, v1, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    .line 1285
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 1289
    :try_start_0
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreateDialog"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/os/Bundle;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Landroid/app/Dialog;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1290
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    aput-object v0, v2, v8

    invoke-direct {p0, v1, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8

    .line 832
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 836
    :try_start_0
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreateOptionsMenu"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/view/Menu;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 837
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-direct {p0, v1, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 9

    .line 849
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 853
    :try_start_0
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreatePanelMenu"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/view/Menu;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 854
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v8

    invoke-direct {p0, v1, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 8

    .line 866
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    .line 870
    :try_start_0
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreatePanelView"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/view/View;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 871
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    aput-object v0, v2, v7

    invoke-direct {p0, v1, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 9

    .line 883
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v0

    .line 887
    :try_start_0
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreateThumbnail"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/graphics/Canvas;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 888
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v8

    invoke-direct {p0, v1, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    .line 900
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 904
    :try_start_0
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onCreateView"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/content/Context;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Landroid/util/AttributeSet;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-class v5, Landroid/view/View;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 905
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    aput-object p3, v2, v8

    aput-object v0, v2, v9

    invoke-direct {p0, v1, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .line 498
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 501
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 502
    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 508
    sput-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sThis:Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .line 917
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 921
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onDetachedFromWindow"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 922
    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9

    .line 933
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 937
    :try_start_0
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onKeyDown"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 938
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v8

    invoke-direct {p0, v1, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 9

    .line 950
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 954
    :try_start_0
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onKeyLongPress"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 955
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v8

    invoke-direct {p0, v1, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 10

    .line 967
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    .line 971
    :try_start_0
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onKeyMultiple"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Landroid/view/KeyEvent;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 972
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v7

    aput-object p3, v2, v8

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v9

    invoke-direct {p0, v1, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9

    .line 984
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 988
    :try_start_0
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onKeyUp"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 989
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v8

    invoke-direct {p0, v1, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public onLowMemory()V
    .locals 4

    .line 573
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onLowMemory"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 574
    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 9

    .line 1001
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 1005
    :try_start_0
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onMenuItemSelected"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/view/MenuItem;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1006
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v8

    invoke-direct {p0, v1, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 9

    .line 1018
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    .line 1022
    :try_start_0
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onMenuOpened"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/view/Menu;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1023
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v8

    invoke-direct {p0, v1, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6

    .line 603
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 609
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onNewIntent"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 610
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .line 1036
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 1040
    :try_start_0
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onOptionsItemSelected"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/view/MenuItem;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1041
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-direct {p0, v1, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 6

    .line 1053
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1057
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onOptionsMenuClosed"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/Menu;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1058
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 7

    .line 1069
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1073
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onPanelClosed"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/view/Menu;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1074
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    aput-object p2, v1, v6

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 447
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 450
    :try_start_0
    sget-boolean v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sRuntimeClassesLoaded:Z

    if-eqz v0, :cond_0

    .line 452
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 453
    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1302
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1306
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onPostCreate"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/Bundle;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1307
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onPostResume()V
    .locals 4

    .line 1318
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 1322
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onPostResume"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1323
    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 7

    .line 1334
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1338
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onPrepareDialog"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/R$id;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/app/Dialog;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1339
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    aput-object p2, v1, v6

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 8

    .line 1350
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 1354
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onPrepareDialog"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/R$id;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/app/Dialog;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/os/Bundle;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1355
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    aput-object p2, v1, v6

    aput-object p3, v1, v7

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8

    .line 1085
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 1089
    :try_start_0
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onPrepareOptionsMenu"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/view/Menu;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1090
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-direct {p0, v1, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 10

    .line 1102
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 1106
    :try_start_0
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onPreparePanel"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/view/View;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Landroid/view/Menu;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1107
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    aput-object p3, v2, v8

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v9

    invoke-direct {p0, v1, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 8

    .line 1431
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onRequestPermissionsResult"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, [Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, [I

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1432
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    aput-object p2, v1, v6

    aput-object p3, v1, v7

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onRestart()V
    .locals 4

    .line 429
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 432
    :try_start_0
    sget-boolean v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sRuntimeClassesLoaded:Z

    if-eqz v0, :cond_0

    .line 434
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onRestart"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 435
    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .line 1366
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1370
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onRestoreInstanceState"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/Bundle;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1371
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 465
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 468
    :try_start_0
    sget-boolean v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sRuntimeClassesLoaded:Z

    if-eqz v0, :cond_0

    .line 470
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onResume"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 471
    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 7

    .line 1119
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 1123
    :try_start_0
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onRetainNonConfigurationInstance"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1124
    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-direct {p0, v1, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .line 1382
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1386
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onSaveInstanceState"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/Bundle;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1387
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 7

    .line 1136
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    .line 1140
    :try_start_0
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onSearchRequested"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1141
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-direct {p0, v1, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    return v0
.end method

.method public onStart()V
    .locals 0

    .line 423
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 4

    .line 483
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 486
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onStop"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 487
    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 7

    .line 1398
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 1402
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onTitleChanged"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1403
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1153
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1157
    :try_start_0
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onTouchEvent"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/view/MotionEvent;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1158
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-direct {p0, v1, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1170
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1174
    :try_start_0
    sget-object v1, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v2, "onTrackballEvent"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/view/MotionEvent;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1175
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-direct {p0, v1, v2}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public onUserInteraction()V
    .locals 4

    .line 1188
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 1192
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onUserInteraction"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1193
    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 4

    .line 1414
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 1418
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onUserLeaveHint"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1419
    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6

    .line 1204
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1208
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onWindowAttributesChanged"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1209
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6

    .line 1220
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 1224
    :try_start_0
    sget-object v0, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->sAndroidActivityWrapperClass:Ljava/lang/Class;

    const-string v1, "onWindowFocusChanged"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1225
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-direct {p0, v0, v1}, Lair/com/goodgamestudios/empirefourkingdoms/AppEntry;->InvokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
