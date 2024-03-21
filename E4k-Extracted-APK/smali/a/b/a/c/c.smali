.class public La/b/a/c/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OneTrustDataDownloadListener;Landroid/content/SharedPreferences;)Z
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OneTrustDataDownloadListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/content/SharedPreferences;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OT_DOWNLOAD_ONE_TRUST_DATA_METHOD_CALLED"

    const/4 v2, 0x1

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez p2, :cond_0

    const-string v0, "DownloadOneTrustData"

    const-string v1, "oneTrustDataDownloadListener not set"

    .line 4
    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    invoke-static {}, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->getInstance()Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->setOtPrefetchListener(Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OneTrustDataDownloadListener;)Z

    .line 7
    new-instance p2, La/b/a/a/d;

    invoke-direct {p2}, La/b/a/a/d;-><init>()V

    invoke-virtual {p2, p1}, La/b/a/a/d;->b(Landroid/content/Context;)Z

    move-result p1

    const-string p2, "OT_FILE_DOWNLOADED_STATUS"

    const-wide/16 v0, -0x1

    .line 9
    invoke-interface {p3, p2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    const/4 v0, -0x1

    const-wide/16 v3, 0x0

    if-nez p1, :cond_2

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File download status = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DownloadOneTrustData"

    invoke-static {v1, p1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    cmp-long v1, p2, v3

    if-lez v1, :cond_1

    .line 13
    new-instance p2, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;

    const-string p3, "Download Status: No network. Cache Exists."

    invoke-direct {p2, v2, p3}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;-><init>(ILjava/lang/String;)V

    .line 15
    invoke-static {}, La/b/a/k;->a()La/b/a/k;

    move-result-object p3

    new-instance v0, Lcom/onetrust/otpublisherssdk/DownloadStatus;

    invoke-direct {v0, p2, p1}, Lcom/onetrust/otpublisherssdk/DownloadStatus;-><init>(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;I)V

    const-string v1, "setDownloadStatus :  "

    .line 16
    invoke-virtual {p3, v1, v0}, La/b/a/k;->a(Ljava/lang/String;Lcom/onetrust/otpublisherssdk/DownloadStatus;)V

    .line 17
    iput-object v0, p3, La/b/a/k;->b:Lcom/onetrust/otpublisherssdk/DownloadStatus;

    const-string p3, "DownloadOneTrustData"

    const-string v0, "Download Status: No network. Cache Exists."

    .line 18
    invoke-static {p3, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {}, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->getInstance()Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->sendCallback(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;)V

    goto :goto_0

    :cond_1
    const-string p2, "DownloadOneTrustData"

    const-string p3, "Download Status: No network. No Cached Data found."

    .line 21
    invoke-static {p2, p3}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance p2, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;

    const-string p3, "Download Status: No network. No Cached Data found."

    invoke-direct {p2, v0, p3}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;-><init>(ILjava/lang/String;)V

    .line 24
    invoke-static {}, La/b/a/k;->a()La/b/a/k;

    move-result-object p3

    new-instance v0, Lcom/onetrust/otpublisherssdk/DownloadStatus;

    invoke-direct {v0, p2, p1}, Lcom/onetrust/otpublisherssdk/DownloadStatus;-><init>(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;I)V

    const-string v1, "setDownloadStatus :  "

    .line 25
    invoke-virtual {p3, v1, v0}, La/b/a/k;->a(Ljava/lang/String;Lcom/onetrust/otpublisherssdk/DownloadStatus;)V

    .line 26
    iput-object v0, p3, La/b/a/k;->b:Lcom/onetrust/otpublisherssdk/DownloadStatus;

    .line 27
    invoke-static {}, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->getInstance()Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->sendCallback(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;)V

    :goto_0
    return p1

    :cond_2
    cmp-long p1, p2, v3

    if-lez p1, :cond_3

    const/4 v0, 0x1

    .line 35
    :cond_3
    new-instance p1, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;

    const-string p2, "Download Status: Network available. Download started."

    invoke-direct {p1, v0, p2}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;-><init>(ILjava/lang/String;)V

    .line 37
    invoke-static {}, La/b/a/k;->a()La/b/a/k;

    move-result-object p2

    new-instance p3, Lcom/onetrust/otpublisherssdk/DownloadStatus;

    invoke-direct {p3, p1, v2}, Lcom/onetrust/otpublisherssdk/DownloadStatus;-><init>(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;I)V

    const-string p1, "setDownloadStatus :  "

    .line 38
    invoke-virtual {p2, p1, p3}, La/b/a/k;->a(Ljava/lang/String;Lcom/onetrust/otpublisherssdk/DownloadStatus;)V

    .line 39
    iput-object p3, p2, La/b/a/k;->b:Lcom/onetrust/otpublisherssdk/DownloadStatus;

    return v2
.end method
