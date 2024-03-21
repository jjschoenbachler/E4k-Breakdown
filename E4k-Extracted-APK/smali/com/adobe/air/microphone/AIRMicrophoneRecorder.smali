.class public Lcom/adobe/air/microphone/AIRMicrophoneRecorder;
.super Ljava/lang/Object;
.source "AIRMicrophoneRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final BLACKLIST:[Ljava/lang/String;


# instance fields
.field private echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

.field private hardwareAEC:Z

.field private mBuffer_toWrite:Ljava/nio/ByteBuffer;

.field public volatile mKeepAlive:Z

.field private mMicBuffer:[B

.field private m_audioFormat:I

.field private m_audioSource:I

.field private m_bufferSize:I

.field private m_channelConfiguration:I

.field public m_delay:S

.field public m_isEnhancedMicrophone:Z

.field private volatile m_isPaused:Z

.field private volatile m_isRecording:Z

.field private m_recorder:Landroid/media/AudioRecord;

.field private m_sampleRate:I

.field private final mutex:Ljava/lang/Object;

.field private noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

.field private t_analyze:J

.field private t_capture:J

.field private t_process:J

.field private t_render:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Nexus 9"

    const-string v1, "Nexus 10"

    const-string v2, "ONE A2005"

    const-string v3, "D6503"

    .line 289
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->BLACKLIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 302
    iput v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_audioSource:I

    .line 303
    iput v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_sampleRate:I

    .line 304
    iput v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_channelConfiguration:I

    .line 305
    iput v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_audioFormat:I

    .line 306
    iput v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    const/4 v1, 0x0

    .line 310
    iput-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 311
    iput-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    .line 312
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mutex:Ljava/lang/Object;

    .line 313
    iput-boolean v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_isEnhancedMicrophone:Z

    const/4 v1, 0x1

    .line 314
    iput-boolean v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mKeepAlive:Z

    const-wide/16 v1, 0x0

    .line 316
    iput-wide v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->t_render:J

    iput-wide v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->t_analyze:J

    iput-wide v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->t_process:J

    iput-wide v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->t_capture:J

    .line 317
    iput-short v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_delay:S

    .line 318
    iput-boolean v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->hardwareAEC:Z

    .line 34
    iput p1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_audioSource:I

    .line 35
    iput p2, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_sampleRate:I

    .line 36
    iput p3, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_channelConfiguration:I

    .line 37
    iput p4, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_audioFormat:I

    .line 38
    iput p5, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    .line 39
    iget p1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mMicBuffer:[B

    return-void
.end method

.method public static deviceIsBlackListed()Z
    .locals 2

    .line 297
    sget-object v0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->BLACKLIST:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 298
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private doAECM()Z
    .locals 15

    const/4 v0, 0x0

    .line 212
    :try_start_0
    new-instance v7, Lcom/adobe/air/microphone/MobileAEC;

    const/4 v1, 0x0

    invoke-direct {v7, v1}, Lcom/adobe/air/microphone/MobileAEC;-><init>(Lcom/adobe/air/microphone/MobileAEC$SamplingFrequency;)V

    .line 213
    sget-object v1, Lcom/adobe/air/microphone/MobileAEC$AggressiveMode;->MOST_AGGRESSIVE:Lcom/adobe/air/microphone/MobileAEC$AggressiveMode;

    invoke-virtual {v7, v1}, Lcom/adobe/air/microphone/MobileAEC;->setAecmMode(Lcom/adobe/air/microphone/MobileAEC$AggressiveMode;)Lcom/adobe/air/microphone/MobileAEC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/air/microphone/MobileAEC;->prepare()Lcom/adobe/air/microphone/MobileAEC;

    .line 216
    new-instance v8, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mMicBuffer:[B

    invoke-direct {v8, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 217
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mBuffer_toWrite:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-direct {v9, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v10, 0x140

    .line 222
    new-array v11, v10, [B

    .line 224
    :goto_0
    array-length v1, v11

    invoke-virtual {v8, v11, v0, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/16 v1, 0xa0

    .line 226
    new-array v2, v1, [S

    .line 227
    new-array v12, v1, [S

    .line 228
    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 229
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->t_analyze:J

    .line 235
    invoke-virtual {v7, v2, v1}, Lcom/adobe/air/microphone/MobileAEC;->farendBuffer([SI)Lcom/adobe/air/microphone/MobileAEC;

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->t_process:J

    .line 242
    iget-wide v3, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->t_render:J

    iget-wide v5, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->t_analyze:J

    const/4 v1, 0x0

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->t_process:J

    iget-wide v13, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->t_capture:J

    const/4 v1, 0x0

    sub-long/2addr v5, v13

    add-long/2addr v3, v5

    long-to-int v1, v3

    int-to-short v1, v1

    iput-short v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_delay:S

    const/16 v1, 0xc8

    .line 243
    iput-short v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_delay:S

    const/4 v3, 0x0

    const/16 v5, 0xa0

    .line 245
    iget-short v6, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_delay:S

    move-object v1, v7

    move-object v4, v12

    invoke-virtual/range {v1 .. v6}, Lcom/adobe/air/microphone/MobileAEC;->echoCancellation([S[S[SSS)V

    .line 249
    new-array v1, v10, [B

    .line 250
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 251
    array-length v2, v1

    invoke-virtual {v9, v1, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mBuffer_toWrite:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 258
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mBuffer_toWrite:Ljava/nio/ByteBuffer;

    .line 259
    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mBuffer_toWrite:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 261
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 262
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V

    .line 263
    invoke-virtual {v7}, Lcom/adobe/air/microphone/MobileAEC;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 266
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v0
.end method

.method public static getBlackListedModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 286
    sget-object v0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->BLACKLIST:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public Open()Ljava/lang/Boolean;
    .locals 8

    .line 110
    iget v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_sampleRate:I

    iget v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_channelConfiguration:I

    iget v2, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_audioFormat:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    .line 112
    iget-boolean v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_isEnhancedMicrophone:Z

    if-eqz v1, :cond_1

    .line 119
    iget v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    if-le v1, v0, :cond_0

    .line 120
    iget v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 124
    :goto_0
    iget v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mBuffer_toWrite:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 128
    :cond_1
    iget v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    if-le v1, v0, :cond_2

    .line 129
    iget v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    :goto_1
    move v6, v0

    goto :goto_2

    :cond_2
    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    :goto_2
    const/4 v0, 0x0

    .line 138
    :try_start_0
    iget-boolean v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_isEnhancedMicrophone:Z

    if-eqz v1, :cond_3

    .line 139
    new-instance v7, Landroid/media/AudioRecord;

    const/4 v2, 0x7

    iget v3, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_sampleRate:I

    iget v4, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_channelConfiguration:I

    iget v5, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_audioFormat:I

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v7, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    goto :goto_3

    .line 142
    :cond_3
    new-instance v7, Landroid/media/AudioRecord;

    iget v2, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_audioSource:I

    iget v3, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_sampleRate:I

    iget v4, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_channelConfiguration:I

    iget v5, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_audioFormat:I

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v7, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_3
    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    if-eqz v1, :cond_4

    .line 152
    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 154
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 158
    :cond_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    .line 148
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 149
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getBuffer()[B
    .locals 4

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->t_capture:J

    .line 169
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mMicBuffer:[B

    iget v2, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    const/4 v1, -0x3

    .line 180
    iget-boolean v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_isEnhancedMicrophone:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->hardwareAEC:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->deviceIsBlackListed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->t_render:J

    .line 182
    invoke-direct {p0}, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->doAECM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mBuffer_toWrite:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_bufferSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mMicBuffer:[B

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mMicBuffer:[B

    return-object v0
.end method

.method public isRecording()Z
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    iget-boolean v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_isRecording:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 277
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 5

    .line 44
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->isRecording()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 47
    :try_start_1
    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 49
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Wait interrupted"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 52
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v0, -0x13

    .line 54
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 55
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_4

    .line 60
    :try_start_3
    iget-boolean v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_isEnhancedMicrophone:Z

    if-eqz v0, :cond_3

    .line 66
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 68
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 76
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v0

    .line 77
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    iput-boolean v2, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->hardwareAEC:Z

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 80
    iput-boolean v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->hardwareAEC:Z

    .line 81
    :goto_1
    iget-boolean v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->hardwareAEC:Z

    if-eqz v1, :cond_3

    .line 82
    invoke-static {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 83
    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v1, v2}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    :cond_2
    const-string v1, "AJAudioRecord"

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IS Hardware NoiseSuppressor enabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {v0}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    .line 89
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v0, v2}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_4
    return-void

    :catchall_0
    move-exception v1

    .line 52
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :goto_2
    nop

    goto :goto_2
.end method

.method public setIsEnhanced(Z)V
    .locals 0

    .line 281
    iput-boolean p1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_isEnhancedMicrophone:Z

    return-void
.end method

.method public setRecording(Z)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    iput-boolean p1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_isRecording:Z

    .line 197
    iget-boolean p1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_isRecording:Z

    if-eqz p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->mutex:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    goto :goto_0

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 201
    iget-object p1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->stop()V

    .line 203
    :cond_1
    iget-object p1, p0, Lcom/adobe/air/microphone/AIRMicrophoneRecorder;->m_recorder:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->release()V

    .line 205
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
