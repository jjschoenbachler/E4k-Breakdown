.class public Lcom/freshplanet/nativeExtensions/functions/FCMRegisterFunction;
.super Ljava/lang/Object;
.source "FCMRegisterFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshplanet/nativeExtensions/functions/FCMRegisterFunction$RegisterCompleteListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "c2dmRegister"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/freshplanet/nativeExtensions/functions/FCMRegisterFunction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/freshplanet/nativeExtensions/functions/FCMRegisterFunction;->sendRegistrationIdToBackend(Ljava/lang/String;)V

    return-void
.end method

.method private static sendRegistrationIdToBackend(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registered successfully with token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshplanet/nativeExtensions/Extension;->log(Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/freshplanet/nativeExtensions/Extension;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "TOKEN_SUCCESS"

    invoke-virtual {v0, v1, p0}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "Registration failed with error"

    .line 57
    invoke-static {p0}, Lcom/freshplanet/nativeExtensions/Extension;->log(Ljava/lang/String;)V

    .line 58
    sget-object p0, Lcom/freshplanet/nativeExtensions/Extension;->context:Lcom/adobe/fre/FREContext;

    const-string v0, "TOKEN_FAIL"

    const-string v1, "INVALID"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4

    .line 63
    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "Amazon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string p1, "Push notifications are disabled on Amazon devices, ignoring register"

    .line 64
    invoke-static {p1}, Lcom/freshplanet/nativeExtensions/Extension;->log(Ljava/lang/String;)V

    return-object v0

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "C2DMRegisterFunction.call"

    .line 69
    invoke-static {v1}, Lcom/freshplanet/nativeExtensions/Extension;->log(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "Registering in background using FirebaseMessaging..."

    .line 71
    invoke-static {v1}, Lcom/freshplanet/nativeExtensions/Extension;->log(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/freshplanet/nativeExtensions/functions/FCMRegisterFunction$RegisterCompleteListener;

    invoke-direct {v2, p2, p1}, Lcom/freshplanet/nativeExtensions/functions/FCMRegisterFunction$RegisterCompleteListener;-><init>(Landroid/content/Context;Lcom/adobe/fre/FREContext;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    const-string p2, "REGISTERING"

    const-string v1, "success"

    .line 75
    invoke-virtual {p1, p2, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v1, "REGISTERING"

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object p1, Lcom/freshplanet/nativeExtensions/functions/FCMRegisterFunction;->TAG:Ljava/lang/String;

    const-string v1, "Error sending registration intent."

    invoke-static {p1, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method
