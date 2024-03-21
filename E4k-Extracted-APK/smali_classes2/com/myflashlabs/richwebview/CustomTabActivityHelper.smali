.class public Lcom/myflashlabs/richwebview/CustomTabActivityHelper;
.super Ljava/lang/Object;
.source "CustomTabActivityHelper.java"

# interfaces
.implements Lcom/myflashlabs/richwebview/shared/ServiceConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myflashlabs/richwebview/CustomTabActivityHelper$CustomTabConnectionCallback;,
        Lcom/myflashlabs/richwebview/CustomTabActivityHelper$CustomTabFallback;
    }
.end annotation


# instance fields
.field private mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

.field private mConnectionCallback:Lcom/myflashlabs/richwebview/CustomTabActivityHelper$CustomTabConnectionCallback;

.field private mCustomTabsClient:Landroidx/browser/customtabs/CustomTabsClient;

.field private mCustomTabsSession:Landroidx/browser/customtabs/CustomTabsSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static openCustomTab(Landroid/app/Activity;Landroidx/browser/customtabs/CustomTabsIntent;Landroid/net/Uri;Lcom/myflashlabs/richwebview/CustomTabActivityHelper$CustomTabFallback;)V
    .locals 4

    .line 68
    invoke-static {p0}, Lcom/myflashlabs/richwebview/shared/CustomTabsHelper;->getPackageNameToUse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCustomTab: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->toTrace(Ljava/lang/String;)V

    if-nez v0, :cond_0

    if-eqz p3, :cond_2

    .line 78
    invoke-interface {p3, p0, p2}, Lcom/myflashlabs/richwebview/CustomTabActivityHelper$CustomTabFallback;->openUri(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_1

    .line 83
    :cond_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt p3, v1, :cond_1

    .line 85
    iget-object p3, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.REFERRER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2//"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 85
    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 91
    :cond_1
    iget-object p3, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "customTabsIntent.launchUrl = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->toTrace(Ljava/lang/String;)V

    .line 97
    :try_start_0
    invoke-virtual {p1, p0, p2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->toTrace(Ljava/lang/String;)V

    :goto_0
    const-string p0, "---------"

    .line 104
    invoke-static {p0}, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->toTrace(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static toTrace(Ljava/lang/String;)V
    .locals 2

    .line 251
    sget-object v0, Lcom/myflashlabs/richwebview/ExConst;->ANE_NAME:Ljava/lang/String;

    const-string v1, "CustomTabActivityHelper"

    invoke-static {v0, v1, p0}, Lcom/myflashlab/dependency/overrideAir/MyExtension;->toTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindCustomTabsService(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "bindCustomTabsService"

    .line 116
    invoke-static {v0}, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->toTrace(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->mCustomTabsClient:Landroidx/browser/customtabs/CustomTabsClient;

    if-eqz v0, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-static {p1}, Lcom/myflashlabs/richwebview/shared/CustomTabsHelper;->getPackageNameToUse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindCustomTabsService packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->toTrace(Ljava/lang/String;)V

    if-nez v0, :cond_1

    return-void

    .line 126
    :cond_1
    new-instance v1, Lcom/myflashlabs/richwebview/shared/ServiceConnection;

    invoke-direct {v1, p0}, Lcom/myflashlabs/richwebview/shared/ServiceConnection;-><init>(Lcom/myflashlabs/richwebview/shared/ServiceConnectionCallback;)V

    iput-object v1, p0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    .line 127
    iget-object v1, p0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    invoke-static {p1, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    return-void
.end method

.method public getSession()Landroidx/browser/customtabs/CustomTabsSession;
    .locals 2

    const-string v0, "newSession"

    .line 153
    invoke-static {v0}, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->toTrace(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->mCustomTabsClient:Landroidx/browser/customtabs/CustomTabsClient;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->mCustomTabsSession:Landroidx/browser/customtabs/CustomTabsSession;

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->mCustomTabsSession:Landroidx/browser/customtabs/CustomTabsSession;

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->mCustomTabsClient:Landroidx/browser/customtabs/CustomTabsClient;

    new-instance v1, Lcom/myflashlabs/richwebview/CustomTabActivityHelper$1;

    invoke-direct {v1, p0}, Lcom/myflashlabs/richwebview/CustomTabActivityHelper$1;-><init>(Lcom/myflashlabs/richwebview/CustomTabActivityHelper;)V

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->mCustomTabsSession:Landroidx/browser/customtabs/CustomTabsSession;

    .line 189
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->mCustomTabsSession:Landroidx/browser/customtabs/CustomTabsSession;

    return-object v0
.end method

.method public mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->mCustomTabsClient:Landroidx/browser/customtabs/CustomTabsClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->getSession()Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 213
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Landroidx/browser/customtabs/CustomTabsSession;->mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public onServiceConnected(Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 2

    const-string v0, "onServiceConnected"

    .line 219
    invoke-static {v0}, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->toTrace(Ljava/lang/String;)V

    .line 221
    iput-object p1, p0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->mCustomTabsClient:Landroidx/browser/customtabs/CustomTabsClient;

    .line 222
    iget-object p1, p0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->mCustomTabsClient:Landroidx/browser/customtabs/CustomTabsClient;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->warmup(J)Z

    move-result p1

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "warmup result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->toTrace(Ljava/lang/String;)V

    .line 226
    iget-object p1, p0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->mConnectionCallback:Lcom/myflashlabs/richwebview/CustomTabActivityHelper$CustomTabConnectionCallback;

    if-eqz p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->mConnectionCallback:Lcom/myflashlabs/richwebview/CustomTabActivityHelper$CustomTabConnectionCallback;

    invoke-interface {p1}, Lcom/myflashlabs/richwebview/CustomTabActivityHelper$CustomTabConnectionCallback;->onCustomTabConnected()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 1

    const-string v0, "onServiceDisconnected"

    .line 237
    invoke-static {v0}, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->toTrace(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 239
    iput-object v0, p0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->mCustomTabsClient:Landroidx/browser/customtabs/CustomTabsClient;

    .line 240
    iput-object v0, p0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    .line 241
    iget-object v0, p0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->mConnectionCallback:Lcom/myflashlabs/richwebview/CustomTabActivityHelper$CustomTabConnectionCallback;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->mConnectionCallback:Lcom/myflashlabs/richwebview/CustomTabActivityHelper$CustomTabConnectionCallback;

    invoke-interface {v0}, Lcom/myflashlabs/richwebview/CustomTabActivityHelper$CustomTabConnectionCallback;->onCustomTabDisconnected()V

    :cond_0
    return-void
.end method

.method public setConnectionCallback(Lcom/myflashlabs/richwebview/CustomTabActivityHelper$CustomTabConnectionCallback;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->mConnectionCallback:Lcom/myflashlabs/richwebview/CustomTabActivityHelper$CustomTabConnectionCallback;

    return-void
.end method

.method public unbindCustomTabsService(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "unbindCustomTabsService"

    .line 137
    invoke-static {v0}, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->toTrace(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->mCustomTabsClient:Landroidx/browser/customtabs/CustomTabsClient;

    .line 142
    iput-object p1, p0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->mCustomTabsSession:Landroidx/browser/customtabs/CustomTabsSession;

    .line 143
    iput-object p1, p0, Lcom/myflashlabs/richwebview/CustomTabActivityHelper;->mConnection:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    return-void
.end method
