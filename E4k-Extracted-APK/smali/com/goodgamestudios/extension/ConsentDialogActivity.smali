.class public Lcom/goodgamestudios/extension/ConsentDialogActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ConsentDialogActivity.java"


# static fields
.field private static final CONSENT_BANNER_REQUEST_CODE:I = 0x2a

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private loadingSpinner:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget-object v0, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/goodgamestudios/extension/ConsentDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/goodgamestudios/extension/ConsentDialogActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/goodgamestudios/extension/ConsentDialogActivity;->loadingSpinner:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private finishConsentFlow()V
    .locals 2

    .line 70
    sget-object v0, Lcom/goodgamestudios/extension/ConsentDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "finishConsentFlow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcom/goodgamestudios/extension/ConsentDialogActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/goodgamestudios/extension/GoodGameApplication;

    .line 72
    invoke-virtual {v0}, Lcom/goodgamestudios/extension/GoodGameApplication;->notifyConsentDialogResolved()V

    .line 73
    invoke-virtual {p0}, Lcom/goodgamestudios/extension/ConsentDialogActivity;->finish()V

    return-void
.end method

.method private hideLoadingSpinner()V
    .locals 1

    .line 39
    new-instance v0, Lcom/goodgamestudios/extension/ConsentDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/goodgamestudios/extension/ConsentDialogActivity$1;-><init>(Lcom/goodgamestudios/extension/ConsentDialogActivity;)V

    invoke-virtual {p0, v0}, Lcom/goodgamestudios/extension/ConsentDialogActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initConsentFlow(Z)V
    .locals 5

    .line 48
    new-instance v0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;

    invoke-direct {v0, p0}, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {v0}, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->shouldShowBanner()I

    move-result v1

    .line 50
    sget-object v2, Lcom/goodgamestudios/extension/ConsentDialogActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " shouldShowBanner = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/goodgamestudios/extension/ConsentDialogActivity;->finishConsentFlow()V

    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    sget-object v1, Lcom/goodgamestudios/extension/ConsentDialogActivity;->TAG:Ljava/lang/String;

    const-string v2, " showing banner"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {v0, p1}, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->loadPreferenceCenter(Z)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x2a

    invoke-virtual {p0, p1, v0}, Lcom/goodgamestudios/extension/ConsentDialogActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 54
    sget-object p1, Lcom/goodgamestudios/extension/ConsentDialogActivity;->TAG:Ljava/lang/String;

    const-string v0, " after banner showing"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 62
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x2a

    if-ne p1, p2, :cond_0

    .line 64
    sget-object p1, Lcom/goodgamestudios/extension/ConsentDialogActivity;->TAG:Ljava/lang/String;

    const-string p2, " consent banner resolved"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-direct {p0}, Lcom/goodgamestudios/extension/ConsentDialogActivity;->finishConsentFlow()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 26
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/goodgamestudios/extension/ConsentDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "forceShow"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 28
    sget-object v0, Lcom/goodgamestudios/extension/ConsentDialogActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget-object v0, Lcom/goodgamestudios/extension/ConsentDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "setting view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p0}, Lcom/goodgamestudios/extension/ConsentDialogActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "activity_consent"

    invoke-static {v0, v1, v2}, Lcom/goodgamestudios/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/goodgamestudios/extension/ConsentDialogActivity;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/goodgamestudios/extension/ConsentDialogActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "pBar"

    invoke-static {v0, v1, v2}, Lcom/goodgamestudios/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/goodgamestudios/extension/ConsentDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/goodgamestudios/extension/ConsentDialogActivity;->loadingSpinner:Landroid/widget/ProgressBar;

    .line 35
    invoke-direct {p0, p1}, Lcom/goodgamestudios/extension/ConsentDialogActivity;->initConsentFlow(Z)V

    return-void
.end method
