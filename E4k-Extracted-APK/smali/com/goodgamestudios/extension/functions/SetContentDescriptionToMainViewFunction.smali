.class public Lcom/goodgamestudios/extension/functions/SetContentDescriptionToMainViewFunction;
.super Ljava/lang/Object;
.source "SetContentDescriptionToMainViewFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setContentDescription(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 24
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 27
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 28
    invoke-direct {p0, v1, p2, p3}, Lcom/goodgamestudios/extension/functions/SetContentDescriptionToMainViewFunction;->setContentDescription(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    invoke-virtual {v1, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 1

    const/4 v0, 0x0

    .line 15
    aget-object p2, p2, v0

    invoke-static {p2}, Lcom/goodgamestudios/extension/util/FreUtils;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const-string v0, "com.adobe.air.AIRWindowSurfaceView"

    .line 18
    invoke-direct {p0, p1, v0, p2}, Lcom/goodgamestudios/extension/functions/SetContentDescriptionToMainViewFunction;->setContentDescription(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
