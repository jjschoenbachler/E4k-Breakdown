.class public Lcom/freshplanet/nativeExtensions/functions/SetIsAppInForegroundFunction;
.super Ljava/lang/Object;
.source "SetIsAppInForegroundFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 37
    :try_start_0
    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->Instance(Landroid/content/Context;)Lcom/freshplanet/nativeExtensions/MultiMsgNotification;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/freshplanet/nativeExtensions/MultiMsgNotification;->remove()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    sput-boolean p2, Lcom/freshplanet/nativeExtensions/Extension;->isInForeground:Z

    return-object v1

    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    return-object v1

    :catch_1
    move-exception p1

    .line 50
    invoke-virtual {p1}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    return-object v1

    :catch_2
    move-exception p1

    .line 47
    invoke-virtual {p1}, Lcom/adobe/fre/FRETypeMismatchException;->printStackTrace()V

    return-object v1

    :catch_3
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return-object v1
.end method
