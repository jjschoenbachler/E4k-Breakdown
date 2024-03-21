.class public Lcom/marpies/ane/facebook/functions/CanShowGameRequestDialogFunction;
.super Lcom/marpies/ane/facebook/functions/BaseFunction;
.source "CanShowGameRequestDialogFunction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/BaseFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 1

    .line 30
    invoke-super {p0, p1, p2}, Lcom/marpies/ane/facebook/functions/BaseFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    .line 33
    :try_start_0
    new-instance p1, Lcom/facebook/share/model/GameRequestContent$Builder;

    invoke-direct {p1}, Lcom/facebook/share/model/GameRequestContent$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent$Builder;->build()Lcom/facebook/share/model/GameRequestContent;

    move-result-object p1

    .line 34
    new-instance p2, Lcom/facebook/share/widget/GameRequestDialog;

    invoke-static {}, Lcom/marpies/ane/facebook/utils/AIR;->getContext()Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/facebook/share/widget/GameRequestDialog;-><init>(Landroid/app/Activity;)V

    .line 35
    invoke-virtual {p2, p1}, Lcom/facebook/share/widget/GameRequestDialog;->canShow(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object p1
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
