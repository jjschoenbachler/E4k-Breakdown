.class public Lcom/onetrust/otpublisherssdk/DownloadStatus;
.super Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;
.source ""


# instance fields
.field public downloadStatus:I


# direct methods
.method public constructor <init>(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;I)V
    .locals 1
    .param p1    # Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;->getDownloadCompleteStatus()I

    move-result v0

    invoke-virtual {p1}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;-><init>(ILjava/lang/String;)V

    .line 2
    iput p2, p0, Lcom/onetrust/otpublisherssdk/DownloadStatus;->downloadStatus:I

    return-void
.end method


# virtual methods
.method public getDownloadStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/onetrust/otpublisherssdk/DownloadStatus;->downloadStatus:I

    return v0
.end method
