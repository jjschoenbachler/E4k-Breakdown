.class public Lcom/goodgamestudios/extension/functions/AddContentDescriptionViewFunction;
.super Ljava/lang/Object;
.source "AddContentDescriptionViewFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field private airFrameLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/goodgamestudios/extension/functions/AddContentDescriptionViewFunction;->airFrameLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method private addMyView(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 2

    .line 83
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private findViewGroup(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    .line 69
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 70
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    iput-object p1, p0, Lcom/goodgamestudios/extension/functions/AddContentDescriptionViewFunction;->airFrameLayout:Landroid/view/ViewGroup;

    return-void

    .line 76
    :cond_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 77
    invoke-direct {p0, v1, p2}, Lcom/goodgamestudios/extension/functions/AddContentDescriptionViewFunction;->findViewGroup(Landroid/view/View;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setViewPos(Landroid/view/View;IIII)V
    .locals 0

    int-to-float p2, p2

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    int-to-float p2, p3

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 63
    iput p4, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 64
    iput p5, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    :try_start_0
    aget-object v3, p2, v2

    invoke-static {v3}, Lcom/goodgamestudios/extension/util/FreUtils;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v3

    .line 28
    aget-object v4, p2, v1

    invoke-static {v4}, Lcom/goodgamestudios/extension/util/FreUtils;->getDoubleFromFREObject(Lcom/adobe/fre/FREObject;)D

    move-result-wide v4

    double-to-int v8, v4

    const/4 v4, 0x2

    .line 29
    aget-object v4, p2, v4

    invoke-static {v4}, Lcom/goodgamestudios/extension/util/FreUtils;->getDoubleFromFREObject(Lcom/adobe/fre/FREObject;)D

    move-result-wide v4

    double-to-int v9, v4

    const/4 v4, 0x3

    .line 30
    aget-object v4, p2, v4

    invoke-static {v4}, Lcom/goodgamestudios/extension/util/FreUtils;->getDoubleFromFREObject(Lcom/adobe/fre/FREObject;)D

    move-result-wide v4

    double-to-int v10, v4

    const/4 v4, 0x4

    .line 31
    aget-object p2, p2, v4

    invoke-static {p2}, Lcom/goodgamestudios/extension/util/FreUtils;->getDoubleFromFREObject(Lcom/adobe/fre/FREObject;)D

    move-result-wide v4

    double-to-int v11, v4

    .line 33
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const-string v4, "com.adobe.air.AIRWindowSurfaceView"

    .line 34
    invoke-direct {p0, p2, v4}, Lcom/goodgamestudios/extension/functions/AddContentDescriptionViewFunction;->findViewGroup(Landroid/view/View;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v4, "layout"

    const-string v5, "com_goodgame_studios_desc_layout"

    .line 36
    invoke-static {p2, v4, v5}, Lcom/goodgamestudios/extension/util/Resources;->getResourseIdByName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 37
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 39
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 40
    invoke-virtual {v7, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 42
    iget-object p1, p0, Lcom/goodgamestudios/extension/functions/AddContentDescriptionViewFunction;->airFrameLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v7, p1}, Lcom/goodgamestudios/extension/functions/AddContentDescriptionViewFunction;->addMyView(Landroid/view/View;Landroid/view/ViewGroup;)V

    move-object v6, p0

    .line 43
    invoke-direct/range {v6 .. v11}, Lcom/goodgamestudios/extension/functions/AddContentDescriptionViewFunction;->setViewPos(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 51
    :goto_0
    :try_start_1
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object p1
    :try_end_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 53
    invoke-virtual {p1}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    move-object p1, v0

    :goto_1
    return-object p1
.end method
