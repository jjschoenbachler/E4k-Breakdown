.class final Lcom/appsflyer/internal/bp$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/bp;->AFInAppEventParameterName(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/internal/bp;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/bp;Landroid/content/Context;Lcom/android/installreferrer/api/InstallReferrerClient;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/appsflyer/internal/bp$4;->this$0:Lcom/appsflyer/internal/bp;

    iput-object p2, p0, Lcom/appsflyer/internal/bp$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/appsflyer/internal/bp$4;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInstallReferrerServiceDisconnected()V
    .locals 1

    const-string v0, "Install Referrer service disconnected"

    .line 150
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    return-void
.end method

.method public final onInstallReferrerSetupFinished(I)V
    .locals 5

    .line 76
    iget-object v0, p0, Lcom/appsflyer/internal/bp$4;->this$0:Lcom/appsflyer/internal/bp;

    iget-object v0, v0, Lcom/appsflyer/internal/bp;->valueOf:Ljava/util/Map;

    const-string v1, "code"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.android.vending"

    .line 78
    iget-object v1, p0, Lcom/appsflyer/internal/bp$4;->this$0:Lcom/appsflyer/internal/bp;

    iget-object v1, v1, Lcom/appsflyer/internal/bp;->values:Ljava/util/Map;

    const-string v2, "api_ver"

    iget-object v3, p0, Lcom/appsflyer/internal/bp$4;->val$context:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/appsflyer/internal/aa;->valueOf(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lcom/appsflyer/internal/bp$4;->this$0:Lcom/appsflyer/internal/bp;

    iget-object v1, v1, Lcom/appsflyer/internal/bp;->values:Ljava/util/Map;

    const-string v2, "api_ver_name"

    iget-object v3, p0, Lcom/appsflyer/internal/bp$4;->val$context:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/appsflyer/internal/aa;->AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    const-string p1, "responseCode not found."

    .line 141
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFLogger$LogLevel(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "InstallReferrer DEVELOPER_ERROR"

    .line 133
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFLogger$LogLevel(Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/appsflyer/internal/bp$4;->this$0:Lcom/appsflyer/internal/bp;

    iget-object p1, p1, Lcom/appsflyer/internal/bp;->values:Ljava/util/Map;

    const-string v0, "response"

    const-string v1, "DEVELOPER_ERROR"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_1
    const-string p1, "InstallReferrer FEATURE_NOT_SUPPORTED"

    .line 125
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFLogger$LogLevel(Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/appsflyer/internal/bp$4;->this$0:Lcom/appsflyer/internal/bp;

    iget-object p1, p1, Lcom/appsflyer/internal/bp;->values:Ljava/util/Map;

    const-string v0, "response"

    const-string v1, "FEATURE_NOT_SUPPORTED"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 129
    :pswitch_2
    iget-object p1, p0, Lcom/appsflyer/internal/bp$4;->this$0:Lcom/appsflyer/internal/bp;

    iget-object p1, p1, Lcom/appsflyer/internal/bp;->values:Ljava/util/Map;

    const-string v0, "response"

    const-string v1, "SERVICE_UNAVAILABLE"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "InstallReferrer not supported"

    .line 130
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFLogger$LogLevel(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 82
    :pswitch_3
    iget-object p1, p0, Lcom/appsflyer/internal/bp$4;->this$0:Lcom/appsflyer/internal/bp;

    iget-object p1, p1, Lcom/appsflyer/internal/bp;->values:Ljava/util/Map;

    const-string v0, "response"

    const-string v1, "OK"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string p1, "InstallReferrer connected"

    .line 84
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/appsflyer/internal/bp$4;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->isReady()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 86
    iget-object p1, p0, Lcom/appsflyer/internal/bp$4;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/appsflyer/internal/bp$4;->this$0:Lcom/appsflyer/internal/bp;

    iget-object v1, v1, Lcom/appsflyer/internal/bp;->valueOf:Ljava/util/Map;

    const-string v2, "val"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v1, p0, Lcom/appsflyer/internal/bp$4;->this$0:Lcom/appsflyer/internal/bp;

    iget-object v1, v1, Lcom/appsflyer/internal/bp;->values:Ljava/util/Map;

    const-string v2, "referrer"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    move-result-wide v0

    .line 93
    iget-object v2, p0, Lcom/appsflyer/internal/bp$4;->this$0:Lcom/appsflyer/internal/bp;

    iget-object v2, v2, Lcom/appsflyer/internal/bp;->valueOf:Ljava/util/Map;

    const-string v3, "clk"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v2, p0, Lcom/appsflyer/internal/bp$4;->this$0:Lcom/appsflyer/internal/bp;

    iget-object v2, v2, Lcom/appsflyer/internal/bp;->values:Ljava/util/Map;

    const-string v3, "click_ts"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    move-result-wide v0

    .line 96
    iget-object v2, p0, Lcom/appsflyer/internal/bp$4;->this$0:Lcom/appsflyer/internal/bp;

    iget-object v2, v2, Lcom/appsflyer/internal/bp;->valueOf:Ljava/util/Map;

    const-string v3, "install"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v2, p0, Lcom/appsflyer/internal/bp$4;->this$0:Lcom/appsflyer/internal/bp;

    iget-object v2, v2, Lcom/appsflyer/internal/bp;->values:Ljava/util/Map;

    const-string v3, "install_begin_ts"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 101
    :try_start_1
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getGooglePlayInstantParam()Z

    move-result v1

    .line 102
    iget-object v2, p0, Lcom/appsflyer/internal/bp$4;->this$0:Lcom/appsflyer/internal/bp;

    iget-object v2, v2, Lcom/appsflyer/internal/bp;->valueOf:Ljava/util/Map;

    const-string v3, "instant"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "instant"

    .line 103
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :catch_0
    :try_start_2
    const-string v1, "click_server_ts"

    .line 108
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampServerSeconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "install_begin_server_ts"

    .line 109
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampServerSeconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "install_version"

    .line 110
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 113
    :catch_1
    :try_start_3
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/appsflyer/internal/bp$4;->this$0:Lcom/appsflyer/internal/bp;

    iget-object p1, p1, Lcom/appsflyer/internal/bp;->values:Ljava/util/Map;

    const-string v1, "google_custom"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p1, "ReferrerClient: InstallReferrer is not ready"

    .line 116
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFLogger$LogLevel(Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/appsflyer/internal/bp$4;->this$0:Lcom/appsflyer/internal/bp;

    iget-object p1, p1, Lcom/appsflyer/internal/bp;->valueOf:Ljava/util/Map;

    const-string v0, "err"

    const-string v1, "ReferrerClient: InstallReferrer is not ready"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get install referrer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFLogger$LogLevel(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/appsflyer/internal/bp$4;->this$0:Lcom/appsflyer/internal/bp;

    iget-object v0, v0, Lcom/appsflyer/internal/bp;->valueOf:Ljava/util/Map;

    const-string v1, "err"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_4
    const-string p1, "InstallReferrer SERVICE_DISCONNECTED"

    .line 137
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFLogger$LogLevel(Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/appsflyer/internal/bp$4;->this$0:Lcom/appsflyer/internal/bp;

    iget-object p1, p1, Lcom/appsflyer/internal/bp;->values:Ljava/util/Map;

    const-string v0, "response"

    const-string v1, "SERVICE_DISCONNECTED"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    const-string p1, "Install Referrer collected locally"

    .line 143
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/appsflyer/internal/bp$4;->this$0:Lcom/appsflyer/internal/bp;

    invoke-virtual {p1}, Lcom/appsflyer/internal/bp;->values()V

    .line 145
    iget-object p1, p0, Lcom/appsflyer/internal/bp$4;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
