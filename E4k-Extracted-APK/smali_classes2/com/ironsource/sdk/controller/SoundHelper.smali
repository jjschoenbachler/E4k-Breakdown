.class Lcom/ironsource/sdk/controller/SoundHelper;
.super Ljava/lang/Object;
.source "SoundHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abandonAudioFocus(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "audio"

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 12
    sget-object v0, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    new-instance v1, Lcom/ironsource/sdk/controller/SoundHelper$1;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/SoundHelper$1;-><init>(Landroid/media/AudioManager;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->postBackgroundTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static abandonAudioFocus(Landroid/media/AudioManager;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Landroid/media/AudioManager;)V
    .locals 0

    .line 9
    invoke-static {p0}, Lcom/ironsource/sdk/controller/SoundHelper;->abandonAudioFocus(Landroid/media/AudioManager;)V

    return-void
.end method

.method static synthetic access$100(Landroid/media/AudioManager;)V
    .locals 0

    .line 9
    invoke-static {p0}, Lcom/ironsource/sdk/controller/SoundHelper;->requestAudioFocus(Landroid/media/AudioManager;)V

    return-void
.end method

.method public static requestAudioFocus(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "audio"

    .line 21
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 22
    sget-object v0, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;

    new-instance v1, Lcom/ironsource/sdk/controller/SoundHelper$2;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/SoundHelper$2;-><init>(Landroid/media/AudioManager;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/ISAdPlayerThreadManager;->postBackgroundTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static requestAudioFocus(Landroid/media/AudioManager;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    .line 40
    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
