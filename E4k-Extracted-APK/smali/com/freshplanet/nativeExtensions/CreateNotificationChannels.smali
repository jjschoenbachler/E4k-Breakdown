.class public Lcom/freshplanet/nativeExtensions/CreateNotificationChannels;
.super Ljava/lang/Object;
.source "CreateNotificationChannels.java"


# static fields
.field public static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "com.goodgamestudios.empirefourkingdoms.channel"

.field private static TAG:Ljava/lang/String; = "NotificationChannels"


# instance fields
.field private _context:Landroid/content/Context;

.field private _freContext:Lcom/adobe/fre/FREContext;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adobe/fre/FREContext;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/freshplanet/nativeExtensions/CreateNotificationChannels;->_context:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/freshplanet/nativeExtensions/CreateNotificationChannels;->_freContext:Lcom/adobe/fre/FREContext;

    return-void
.end method


# virtual methods
.method public create()V
    .locals 5

    .line 24
    iget-object v0, p0, Lcom/freshplanet/nativeExtensions/CreateNotificationChannels;->_context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 25
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 27
    iget-object v1, p0, Lcom/freshplanet/nativeExtensions/CreateNotificationChannels;->_freContext:Lcom/adobe/fre/FREContext;

    const-string v2, "string.e4k_pn_category_default"

    invoke-virtual {v1, v2}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v1

    .line 28
    iget-object v2, p0, Lcom/freshplanet/nativeExtensions/CreateNotificationChannels;->_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 31
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "com.goodgamestudios.empirefourkingdoms.channel"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v1, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x1

    .line 36
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 37
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 38
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreateNotificationChannels created mChannel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshplanet/nativeExtensions/Extension;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
