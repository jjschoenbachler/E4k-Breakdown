.class public Lcom/marpies/ane/facebook/functions/CanShareContentFunction;
.super Lcom/marpies/ane/facebook/functions/BaseFunction;
.source "CanShareContentFunction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/marpies/ane/facebook/functions/BaseFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    .line 39
    invoke-super {p0, p1, p2}, Lcom/marpies/ane/facebook/functions/BaseFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    const/4 p1, 0x0

    .line 41
    aget-object p2, p2, p1

    invoke-static {p2}, Lcom/marpies/ane/facebook/utils/FREObjectUtils;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->valueOf(Ljava/lang/String;)Lcom/marpies/ane/facebook/data/AIRFacebookShareType;

    move-result-object p2

    .line 46
    invoke-static {}, Lcom/marpies/ane/facebook/utils/AIR;->getContext()Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marpies/ane/facebook/AIRFacebookExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 48
    sget-object v1, Lcom/marpies/ane/facebook/functions/CanShareContentFunction$1;->$SwitchMap$com$marpies$ane$facebook$data$AIRFacebookShareType:[I

    invoke-virtual {p2}, Lcom/marpies/ane/facebook/data/AIRFacebookShareType;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    move-object p2, v1

    move-object v0, p2

    goto :goto_0

    .line 66
    :pswitch_0
    new-instance p2, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {p2, v0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 67
    new-instance v0, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->build()Lcom/facebook/share/model/ShareOpenGraphContent;

    move-result-object v0

    goto :goto_0

    .line 62
    :pswitch_1
    new-instance p2, Lcom/facebook/share/widget/MessageDialog;

    invoke-direct {p2, v0}, Lcom/facebook/share/widget/MessageDialog;-><init>(Landroid/app/Activity;)V

    .line 63
    new-instance v0, Lcom/facebook/share/model/SharePhotoContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/SharePhotoContent$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhotoContent$Builder;->build()Lcom/facebook/share/model/SharePhotoContent;

    move-result-object v0

    goto :goto_0

    .line 58
    :pswitch_2
    new-instance p2, Lcom/facebook/share/widget/MessageDialog;

    invoke-direct {p2, v0}, Lcom/facebook/share/widget/MessageDialog;-><init>(Landroid/app/Activity;)V

    .line 59
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    goto :goto_0

    .line 54
    :pswitch_3
    new-instance p2, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {p2, v0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 55
    new-instance v0, Lcom/facebook/share/model/SharePhotoContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/SharePhotoContent$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhotoContent$Builder;->build()Lcom/facebook/share/model/SharePhotoContent;

    move-result-object v0

    goto :goto_0

    .line 50
    :pswitch_4
    new-instance p2, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {p2, v0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 51
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    :goto_0
    if-eqz p2, :cond_1

    if-nez v0, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    :try_start_0
    invoke-virtual {p2, v0}, Lcom/facebook/internal/FacebookDialogBase;->canShow(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object p1

    return-object p1

    .line 73
    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object p1
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 77
    invoke-virtual {p1}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
