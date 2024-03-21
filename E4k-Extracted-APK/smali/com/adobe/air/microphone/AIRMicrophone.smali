.class public Lcom/adobe/air/microphone/AIRMicrophone;
.super Ljava/lang/Object;
.source "AIRMicrophone.java"


# static fields
.field public static m_isEnhanced:Z


# instance fields
.field private m_airRecorder:Lcom/adobe/air/microphone/AIRMicrophoneRecorder;

.field private m_audioFormat:I

.field private m_audioSource:I

.field private m_bufferSize:I

.field private m_channelConfiguration:I

.field private m_sampleRate:I

.field private m_thread:Ljava/lang/Thread;

.field private m_useEnhancedMic:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_audioSource:I

    .line 71
    iput v0, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_sampleRate:I

    .line 72
    iput v0, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_channelConfiguration:I

    .line 73
    iput v0, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_audioFormat:I

    .line 74
    iput v0, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_bufferSize:I

    .line 75
    iput-boolean v0, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_useEnhancedMic:Z

    return-void
.end method


# virtual methods
.method public Close()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_airRecorder:Lcom/adobe/air/microphone/AIRMicrophoneRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->setRecording(Z)V

    return-void
.end method

.method public GetNextBuffer()[B
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_airRecorder:Lcom/adobe/air/microphone/AIRMicrophoneRecorder;

    invoke-virtual {v0}, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->getBuffer()[B

    move-result-object v0

    return-object v0
.end method

.method public Open(IIII)Z
    .locals 9

    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_audioSource:I

    .line 16
    iput p1, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_sampleRate:I

    const/4 p1, 0x2

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne p3, v3, :cond_0

    const/4 p3, 0x3

    .line 20
    iput p3, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_audioFormat:I

    goto :goto_0

    :cond_0
    if-ne p3, v1, :cond_4

    .line 22
    iput p1, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_audioFormat:I

    :goto_0
    if-ne p2, v0, :cond_1

    .line 30
    iput v1, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_channelConfiguration:I

    goto :goto_1

    :cond_1
    if-ne p2, p1, :cond_3

    const/16 p1, 0xc

    .line 32
    iput p1, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_channelConfiguration:I

    .line 38
    :goto_1
    iput p4, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_bufferSize:I

    .line 41
    new-instance p1, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;

    iget v4, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_audioSource:I

    iget v5, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_sampleRate:I

    iget v6, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_channelConfiguration:I

    iget v7, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_audioFormat:I

    iget v8, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_bufferSize:I

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;-><init>(IIIII)V

    iput-object p1, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_airRecorder:Lcom/adobe/air/microphone/AIRMicrophoneRecorder;

    .line 42
    iget-object p1, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_airRecorder:Lcom/adobe/air/microphone/AIRMicrophoneRecorder;

    iget-boolean p2, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_useEnhancedMic:Z

    invoke-virtual {p1, p2}, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->setIsEnhanced(Z)V

    .line 43
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_airRecorder:Lcom/adobe/air/microphone/AIRMicrophoneRecorder;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_thread:Ljava/lang/Thread;

    .line 44
    iget-object p1, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 45
    iget-object p1, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_airRecorder:Lcom/adobe/air/microphone/AIRMicrophoneRecorder;

    invoke-virtual {p1}, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->Open()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v0, :cond_2

    .line 46
    iget-object p1, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_airRecorder:Lcom/adobe/air/microphone/AIRMicrophoneRecorder;

    invoke-virtual {p1, v0}, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->setRecording(Z)V

    return v0

    :cond_2
    return v2

    :cond_3
    return v2

    :cond_4
    return v2
.end method

.method public setEnhanced(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/adobe/air/microphone/AIRMicrophone;->m_useEnhancedMic:Z

    .line 65
    sput-boolean p1, Lcom/adobe/air/microphone/AIRMicrophone;->m_isEnhanced:Z

    return-void
.end method
