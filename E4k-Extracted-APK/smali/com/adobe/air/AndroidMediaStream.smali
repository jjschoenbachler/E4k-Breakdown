.class public Lcom/adobe/air/AndroidMediaStream;
.super Ljava/lang/Object;
.source "AndroidMediaStream.java"


# static fields
.field private static final ERROR:I = -0x2


# instance fields
.field private mBufferSize:I

.field private mBufferedStream:Ljava/io/BufferedInputStream;

.field private mContentURI:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/adobe/air/AndroidMediaStream;->mBufferedStream:Ljava/io/BufferedInputStream;

    const/4 v1, 0x0

    .line 38
    iput v1, p0, Lcom/adobe/air/AndroidMediaStream;->mBufferSize:I

    .line 40
    iput-object v0, p0, Lcom/adobe/air/AndroidMediaStream;->mContentURI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public Close()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/adobe/air/AndroidMediaStream;->mBufferedStream:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidMediaStream;->mBufferedStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/adobe/air/AndroidMediaStream;->mBufferedStream:Ljava/io/BufferedInputStream;

    :cond_0
    return-void
.end method

.method public Read([BI)I
    .locals 2

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidMediaStream;->mBufferedStream:Ljava/io/BufferedInputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x2

    return p1
.end method

.method public loadContentURI(Ljava/lang/String;)Z
    .locals 2

    .line 49
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/AndroidMediaStream;->mContentURI:Landroid/net/Uri;

    .line 50
    iget-object p1, p0, Lcom/adobe/air/AndroidMediaStream;->mBufferedStream:Ljava/io/BufferedInputStream;

    if-nez p1, :cond_0

    .line 51
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    const/4 v0, 0x0

    .line 53
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcom/adobe/air/AndroidMediaStream;->mContentURI:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 55
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/adobe/air/AndroidMediaStream;->mBufferedStream:Ljava/io/BufferedInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v0

    :catch_1
    return v0

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
