.class public Lcom/goodgamestudios/extension/functions/SetViewClickableFunction;
.super Ljava/lang/Object;
.source "SetViewClickableFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field private viewToModify:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/goodgamestudios/extension/functions/SetViewClickableFunction;->viewToModify:Landroid/view/View;

    return-void
.end method

.method private findView(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    .line 44
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 45
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    iput-object v1, p0, Lcom/goodgamestudios/extension/functions/SetViewClickableFunction;->viewToModify:Landroid/view/View;

    return-void

    .line 51
    :cond_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 52
    invoke-direct {p0, v1, p2}, Lcom/goodgamestudios/extension/functions/SetViewClickableFunction;->findView(Landroid/view/View;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 21
    :try_start_0
    aget-object v2, p2, v1

    invoke-static {v2}, Lcom/goodgamestudios/extension/util/FreUtils;->getStringFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/String;

    move-result-object v2

    .line 22
    aget-object p2, p2, v0

    invoke-static {p2}, Lcom/goodgamestudios/extension/util/FreUtils;->getBooleanFromFREObject(Lcom/adobe/fre/FREObject;)Ljava/lang/Boolean;

    move-result-object p2

    .line 24
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 25
    invoke-direct {p0, p1, v2}, Lcom/goodgamestudios/extension/functions/SetViewClickableFunction;->findView(Landroid/view/View;Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/goodgamestudios/extension/functions/SetViewClickableFunction;->viewToModify:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 27
    iget-object p1, p0, Lcom/goodgamestudios/extension/functions/SetViewClickableFunction;->viewToModify:Landroid/view/View;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 36
    :try_start_1
    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object p2
    :try_end_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 38
    invoke-virtual {p2}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    :goto_1
    return-object p1
.end method
