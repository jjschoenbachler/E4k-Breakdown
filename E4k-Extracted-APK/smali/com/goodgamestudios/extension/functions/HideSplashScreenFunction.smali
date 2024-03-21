.class public Lcom/goodgamestudios/extension/functions/HideSplashScreenFunction;
.super Ljava/lang/Object;
.source "HideSplashScreenFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 1

    const-string p2, "HideSplashScreenFunction"

    .line 14
    invoke-static {p2}, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->log(Ljava/lang/String;)V

    .line 17
    sget-object p2, Lcom/goodgamestudios/extension/GoodGameApplication;->splashScreenView:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 19
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    const/16 v0, 0x8

    .line 20
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string p2, "HideSplashScreenFunction splashScreen is missing"

    .line 22
    invoke-static {p2}, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->log(Ljava/lang/String;)V

    .line 25
    :goto_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p2, v0, :cond_1

    .line 27
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
