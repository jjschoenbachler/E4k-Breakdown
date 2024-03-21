.class public La/b/a/k;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static c:La/b/a/k;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/onetrust/otpublisherssdk/DownloadStatus;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OTDataDownloadStage"

    .line 2
    iput-object v0, p0, La/b/a/k;->a:Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/onetrust/otpublisherssdk/DownloadStatus;

    new-instance v1, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;

    const-string v2, "Download Status: UNDEFINED"

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1, v3}, Lcom/onetrust/otpublisherssdk/DownloadStatus;-><init>(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;I)V

    iput-object v0, p0, La/b/a/k;->b:Lcom/onetrust/otpublisherssdk/DownloadStatus;

    return-void
.end method

.method public static declared-synchronized a()La/b/a/k;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, La/b/a/k;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, La/b/a/k;->c:La/b/a/k;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, La/b/a/k;

    invoke-direct {v1}, La/b/a/k;-><init>()V

    sput-object v1, La/b/a/k;->c:La/b/a/k;

    .line 4
    :cond_0
    sget-object v1, La/b/a/k;->c:La/b/a/k;
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
.method public final a(Ljava/lang/String;Lcom/onetrust/otpublisherssdk/DownloadStatus;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 5
    iget-object v0, p0, La/b/a/k;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " methdod = + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " DownloadStatus = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onetrust/otpublisherssdk/DownloadStatus;->getDownloadStatus()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Download complete Status = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p2}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;->getDownloadCompleteStatus()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " message = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p2}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {v0, p1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, La/b/a/k;->a:Ljava/lang/String;

    const-string p2, "getDownloadStatus = downloadStatus is null"

    invoke-static {p1, p2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
