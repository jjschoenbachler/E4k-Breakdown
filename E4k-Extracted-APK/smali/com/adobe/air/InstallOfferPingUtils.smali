.class public Lcom/adobe/air/InstallOfferPingUtils;
.super Ljava/lang/Object;
.source "InstallOfferPingUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "InstallOfferPingUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PingAndExit(Landroid/app/Activity;Ljava/lang/String;ZZZ)V
    .locals 0

    return-void
.end method

.method private static isAndroidTV(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "uimode"

    .line 39
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    .line 40
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catch_0
    return v0
.end method
