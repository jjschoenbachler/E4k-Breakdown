.class public Lcom/adobe/air/AJAudioTrack;
.super Landroid/media/AudioTrack;
.source "AJAudioTrack.java"


# static fields
.field private static sStreamType:I = 0x3


# instance fields
.field private mBuf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 7

    .line 70
    sget v1, Lcom/adobe/air/AJAudioTrack;->sStreamType:I

    const/4 v6, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p3

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 73
    new-array p1, p4, [B

    iput-object p1, p0, Lcom/adobe/air/AJAudioTrack;->mBuf:[B

    return-void
.end method

.method public static CreateTrack(IIII)Lcom/adobe/air/AJAudioTrack;
    .locals 4

    .line 33
    sget-boolean v0, Lcom/adobe/air/microphone/AIRMicrophone;->m_isEnhanced:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 35
    sput v0, Lcom/adobe/air/AJAudioTrack;->sStreamType:I

    :cond_0
    const/4 v0, 0x0

    .line 41
    :try_start_0
    invoke-static {p2}, Lcom/adobe/air/AJAudioTrack;->ToAndroidChannelCount(I)I

    move-result v2

    invoke-static {p1}, Lcom/adobe/air/AJAudioTrack;->ToAndroidFormat(I)I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v2

    if-ge p3, v2, :cond_1

    move p3, v2

    .line 46
    :cond_1
    new-instance v2, Lcom/adobe/air/AJAudioTrack;

    invoke-static {p1}, Lcom/adobe/air/AJAudioTrack;->ToAndroidFormat(I)I

    move-result p1

    invoke-static {p2}, Lcom/adobe/air/AJAudioTrack;->ToAndroidChannelCount(I)I

    move-result p2

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/adobe/air/AJAudioTrack;-><init>(IIII)V

    .line 51
    invoke-virtual {v2}, Lcom/adobe/air/AJAudioTrack;->getState()I

    move-result p0

    if-eq p0, v1, :cond_2

    .line 54
    invoke-virtual {v2}, Lcom/adobe/air/AJAudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :catch_0
    :goto_0
    return-object v0
.end method

.method public static SetStreamType(I)V
    .locals 0

    .line 78
    sput p0, Lcom/adobe/air/AJAudioTrack;->sStreamType:I

    return-void
.end method

.method public static ToAndroidChannelCount(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/16 p0, 0xc

    return p0
.end method

.method public static ToAndroidFormat(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method


# virtual methods
.method public GetBuffer()[B
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/adobe/air/AJAudioTrack;->mBuf:[B

    return-object v0
.end method

.method public playing()Z
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/adobe/air/AJAudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public stopped()Z
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/adobe/air/AJAudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
