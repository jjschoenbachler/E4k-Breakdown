.class public Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static instance:Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;


# instance fields
.field public LOG_TAG:Ljava/lang/String;

.field public oneTrustDataDownloadListenerHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OneTrustDataDownloadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OTPfListenerSetter"

    .line 2
    iput-object v0, p0, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->LOG_TAG:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->oneTrustDataDownloadListenerHashSet:Ljava/util/HashSet;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->instance:Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;

    invoke-direct {v1}, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;-><init>()V

    sput-object v1, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->instance:Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;

    .line 4
    :cond_0
    sget-object v1, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->instance:Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 0
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public clearOtPrefetchListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "clearOtPrefetchListener."

    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->oneTrustDataDownloadListenerHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public removeOtPrefetchListener(Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OneTrustDataDownloadListener;)Z
    .locals 4
    .param p1    # Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OneTrustDataDownloadListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->LOG_TAG:Ljava/lang/String;

    const-string v0, "PrefetchListener remove with null called."

    invoke-static {p1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->oneTrustDataDownloadListenerHashSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove PrefetchListener, value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " removed? = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public sendCallback(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->oneTrustDataDownloadListenerHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending oneTrustDataDownload callback. oneTrustDataDownloadListener size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->oneTrustDataDownloadListenerHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OneTrustDataDownloadListener;

    .line 7
    invoke-interface {v1, p1}, Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OneTrustDataDownloadListener;->onDownloadComplete(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->getInstance()Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->clearOtPrefetchListener()V

    goto :goto_1

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Empty callback set. No oneTrustDataDownload callback."

    invoke-static {p1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setOtPrefetchListener(Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OneTrustDataDownloadListener;)Z
    .locals 3
    .param p1    # Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OneTrustDataDownloadListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->LOG_TAG:Ljava/lang/String;

    const-string v0, "PrefetchListener set with null called."

    invoke-static {p1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add PrefetchListener, value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->oneTrustDataDownloadListenerHashSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
