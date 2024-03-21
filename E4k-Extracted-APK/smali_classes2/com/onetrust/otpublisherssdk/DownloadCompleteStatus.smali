.class public Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public message:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;->status:I

    .line 3
    iput-object p2, p0, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDownloadCompleteStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;->status:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;->message:Ljava/lang/String;

    return-object v0
.end method
