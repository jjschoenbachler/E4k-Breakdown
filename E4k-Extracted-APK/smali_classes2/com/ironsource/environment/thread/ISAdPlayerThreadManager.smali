.class public final Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;
.super Ljava/lang/Object;
.source "ISAdPlayerThreadManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fH\u0007J\u001a\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fH\u0007J\u001a\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;",
        "",
        "()V",
        "backgroundHandler",
        "Lcom/ironsource/environment/thread/IronSourceHandlerThread;",
        "publisherCallbackHandler",
        "uiHandler",
        "Landroid/os/Handler;",
        "getBackgroundThreadLooper",
        "Landroid/os/Looper;",
        "postBackgroundTask",
        "",
        "action",
        "Ljava/lang/Runnable;",
        "delay",
        "",
        "postCallbacks",
        "postOnUiThreadTask",
        "environment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final backgroundHandler:Lcom/ironsource/environment/thread/IronSourceHandlerThread;

.field private static final publisherCallbackHandler:Lcom/ironsource/environment/thread/IronSourceHandlerThread;

.field private static final uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    invoke-direct {v0}, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;-><init>()V

    sput-object v0, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->uiHandler:Landroid/os/Handler;

    .line 13
    new-instance v0, Lcom/ironsource/environment/thread/IronSourceHandlerThread;

    const-string v1, "isadplayer-background"

    invoke-direct {v0, v1}, Lcom/ironsource/environment/thread/IronSourceHandlerThread;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Lcom/ironsource/environment/thread/IronSourceHandlerThread;->start()V

    .line 16
    invoke-virtual {v0}, Lcom/ironsource/environment/thread/IronSourceHandlerThread;->prepareHandler()V

    .line 14
    sput-object v0, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->backgroundHandler:Lcom/ironsource/environment/thread/IronSourceHandlerThread;

    .line 20
    new-instance v0, Lcom/ironsource/environment/thread/IronSourceHandlerThread;

    const-string v1, "isadplayer-publisher-callbacks"

    invoke-direct {v0, v1}, Lcom/ironsource/environment/thread/IronSourceHandlerThread;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Lcom/ironsource/environment/thread/IronSourceHandlerThread;->start()V

    .line 23
    invoke-virtual {v0}, Lcom/ironsource/environment/thread/IronSourceHandlerThread;->prepareHandler()V

    .line 21
    sput-object v0, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->publisherCallbackHandler:Lcom/ironsource/environment/thread/IronSourceHandlerThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic postBackgroundTask$default(Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;Ljava/lang/Runnable;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 32
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->postBackgroundTask(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic postCallbacks$default(Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;Ljava/lang/Runnable;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 37
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->postCallbacks(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic postOnUiThreadTask$default(Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;Ljava/lang/Runnable;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 27
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public final getBackgroundThreadLooper()Landroid/os/Looper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 43
    sget-object v0, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->backgroundHandler:Lcom/ironsource/environment/thread/IronSourceHandlerThread;

    invoke-virtual {v0}, Lcom/ironsource/environment/thread/IronSourceHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final postBackgroundTask(Ljava/lang/Runnable;)V
    .locals 6
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->postBackgroundTask$default(Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;Ljava/lang/Runnable;JILjava/lang/Object;)V

    return-void
.end method

.method public final postBackgroundTask(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->backgroundHandler:Lcom/ironsource/environment/thread/IronSourceHandlerThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/environment/thread/IronSourceHandlerThread;->postTask(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final postCallbacks(Ljava/lang/Runnable;)V
    .locals 6
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->postCallbacks$default(Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;Ljava/lang/Runnable;JILjava/lang/Object;)V

    return-void
.end method

.method public final postCallbacks(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->publisherCallbackHandler:Lcom/ironsource/environment/thread/IronSourceHandlerThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/environment/thread/IronSourceHandlerThread;->postTask(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final postOnUiThreadTask(Ljava/lang/Runnable;)V
    .locals 6
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->postOnUiThreadTask$default(Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;Ljava/lang/Runnable;JILjava/lang/Object;)V

    return-void
.end method

.method public final postOnUiThreadTask(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
