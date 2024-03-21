.class Lcom/freshplanet/nativeExtensions/functions/FCMRegisterFunction$RegisterCompleteListener;
.super Ljava/lang/Object;
.source "FCMRegisterFunction.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshplanet/nativeExtensions/functions/FCMRegisterFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegisterCompleteListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private refAppContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private refFreContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/adobe/fre/FREContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/adobe/fre/FREContext;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/freshplanet/nativeExtensions/functions/FCMRegisterFunction$RegisterCompleteListener;->refAppContext:Ljava/lang/ref/WeakReference;

    .line 90
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/freshplanet/nativeExtensions/functions/FCMRegisterFunction$RegisterCompleteListener;->refFreContext:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Lcom/freshplanet/nativeExtensions/functions/FCMRegisterFunction;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInstanceId failed"

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 97
    invoke-static {p1}, Lcom/freshplanet/nativeExtensions/functions/FCMRegisterFunction;->access$100(Ljava/lang/String;)V

    return-void

    .line 102
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 107
    invoke-static {p1}, Lcom/freshplanet/nativeExtensions/functions/FCMRegisterFunction;->access$100(Ljava/lang/String;)V

    .line 109
    new-instance p1, Lcom/freshplanet/nativeExtensions/CreateNotificationChannels;

    iget-object v0, p0, Lcom/freshplanet/nativeExtensions/functions/FCMRegisterFunction$RegisterCompleteListener;->refAppContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/freshplanet/nativeExtensions/functions/FCMRegisterFunction$RegisterCompleteListener;->refFreContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/fre/FREContext;

    invoke-direct {p1, v0, v1}, Lcom/freshplanet/nativeExtensions/CreateNotificationChannels;-><init>(Landroid/content/Context;Lcom/adobe/fre/FREContext;)V

    invoke-virtual {p1}, Lcom/freshplanet/nativeExtensions/CreateNotificationChannels;->create()V

    return-void
.end method
