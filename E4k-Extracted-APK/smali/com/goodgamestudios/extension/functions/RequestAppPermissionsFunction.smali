.class public Lcom/goodgamestudios/extension/functions/RequestAppPermissionsFunction;
.super Ljava/lang/Object;
.source "RequestAppPermissionsFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 1

    const-string p2, "RequestAppPermissionsFunction"

    .line 17
    invoke-static {p2}, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->log(Ljava/lang/String;)V

    .line 19
    move-object p2, p1

    check-cast p2, Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;

    .line 22
    invoke-virtual {p2}, Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/goodgamestudios/extension/GoodGameApplication;

    .line 23
    invoke-virtual {v0, p2}, Lcom/goodgamestudios/extension/GoodGameApplication;->setAppPermissionDialogListener(Lcom/goodgamestudios/extension/AppPermissionDialogListener;)V

    .line 26
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 27
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/goodgamestudios/extension/GoodGamePermissionsRequestActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return-object p1
.end method
