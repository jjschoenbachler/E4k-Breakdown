.class final Lcom/appsflyer/share/CrossPromotionHelper$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/share/CrossPromotionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final AFInAppEventParameterName:Lcom/appsflyer/internal/bw;

.field private final AFKeystoreWrapper:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final valueOf:Ljava/lang/String;

.field private final values:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/appsflyer/internal/bw;Landroid/content/Context;Z)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/appsflyer/share/CrossPromotionHelper$c;->valueOf:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lcom/appsflyer/share/CrossPromotionHelper$c;->AFInAppEventParameterName:Lcom/appsflyer/internal/bw;

    .line 113
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/appsflyer/share/CrossPromotionHelper$c;->AFKeystoreWrapper:Ljava/lang/ref/WeakReference;

    .line 114
    iput-boolean p4, p0, Lcom/appsflyer/share/CrossPromotionHelper$c;->values:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 119
    iget-boolean v0, p0, Lcom/appsflyer/share/CrossPromotionHelper$c;->values:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 122
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/appsflyer/share/CrossPromotionHelper$c;->valueOf:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x2710

    .line 123
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/4 v0, 0x0

    .line 124
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 125
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "call to "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appsflyer/share/CrossPromotionHelper$c;->valueOf:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cross promotion redirection success: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appsflyer/share/CrossPromotionHelper$c;->valueOf:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Z)V

    .line 133
    iget-object v0, p0, Lcom/appsflyer/share/CrossPromotionHelper$c;->AFInAppEventParameterName:Lcom/appsflyer/internal/bw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appsflyer/share/CrossPromotionHelper$c;->AFKeystoreWrapper:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/appsflyer/share/CrossPromotionHelper$c;->AFInAppEventParameterName:Lcom/appsflyer/internal/bw;

    const-string v2, "Location"

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1016
    iput-object v2, v0, Lcom/appsflyer/internal/bw;->values:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/appsflyer/share/CrossPromotionHelper$c;->AFInAppEventParameterName:Lcom/appsflyer/internal/bw;

    iget-object v2, p0, Lcom/appsflyer/share/CrossPromotionHelper$c;->AFKeystoreWrapper:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 1020
    iget-object v3, v0, Lcom/appsflyer/internal/bw;->values:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1021
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    iget-object v0, v0, Lcom/appsflyer/internal/bw;->values:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 128
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cross promotion impressions success: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appsflyer/share/CrossPromotionHelper$c;->valueOf:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 145
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 143
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    .line 145
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :cond_3
    return-void

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 146
    :cond_4
    throw v0

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
