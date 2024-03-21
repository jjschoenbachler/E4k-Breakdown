.class final Lcom/ironsource/sdk/k/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/k/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/ironsource/sdk/k/b$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/sdk/k/b$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/sdk/k/b$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/k/b$a;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/ironsource/sdk/k/b$a;->d:J

    iput-object p6, p0, Lcom/ironsource/sdk/k/b$a;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;I)Lcom/ironsource/sdk/k/b$b;
    .locals 8

    new-instance v0, Lcom/ironsource/sdk/k/b$b;

    invoke-direct {v0}, Lcom/ironsource/sdk/k/b$b;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, v0, Lcom/ironsource/sdk/k/b$b;->a:Ljava/lang/String;

    const/16 p1, 0x3ef

    iput p1, v0, Lcom/ironsource/sdk/k/b$b;->b:I

    return-object v0

    :cond_0
    const/16 v1, 0x3fb

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->toURI()Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    const-string v5, "GET"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v5, 0x1388

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_19
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v3, 0xc8

    if-lt v5, v3, :cond_2

    const/16 v3, 0x190

    if-lt v5, v3, :cond_1

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_19
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {p2}, Lcom/ironsource/sdk/k/b$a;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/ironsource/sdk/k/b$b;->c:[B
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_11

    :catch_0
    move-exception v2

    move-object v3, p2

    move-object p2, v2

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-object v2, p2

    goto/16 :goto_16

    :catch_3
    move-object v2, p2

    goto/16 :goto_1a

    :catch_4
    move-object v2, p2

    goto/16 :goto_1e

    :catch_5
    move-object v2, p2

    goto/16 :goto_22

    :cond_2
    :goto_0
    :try_start_4
    const-string v3, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " RESPONSE CODE: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ATTEMPT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 v5, 0x3f3

    move-object p2, v2

    :goto_1
    if-eqz p2, :cond_3

    :try_start_5
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catch_6
    move-exception p2

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_4

    :goto_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_4
    iput-object p1, v0, Lcom/ironsource/sdk/k/b$b;->a:Ljava/lang/String;

    iput v5, v0, Lcom/ironsource/sdk/k/b$b;->b:I

    goto/16 :goto_27

    :catchall_1
    move-exception v1

    goto/16 :goto_12

    :catch_7
    move-exception v1

    move-object p2, v2

    :goto_5
    move-object v2, v4

    goto :goto_d

    :catchall_2
    move-exception v1

    goto :goto_7

    :catch_8
    move-exception p2

    move-object v3, v2

    :goto_6
    move-object v2, v4

    goto :goto_8

    :catch_9
    move-exception v1

    move-object p2, v2

    move-object v2, v4

    goto :goto_c

    :catchall_3
    move-exception v1

    move-object v4, v2

    :goto_7
    const/4 v5, 0x0

    goto/16 :goto_12

    :catch_a
    move-exception p2

    move-object v3, v2

    :goto_8
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "DownloadManager"

    invoke-virtual {p2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_5
    if-eqz v3, :cond_6

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_9

    :catch_b
    move-exception p2

    goto :goto_a

    :cond_6
    :goto_9
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_b

    goto :goto_b

    :goto_a
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_b
    iput-object p1, v0, Lcom/ironsource/sdk/k/b$b;->a:Ljava/lang/String;

    iput v1, v0, Lcom/ironsource/sdk/k/b$b;->b:I

    goto/16 :goto_27

    :catchall_4
    move-exception p2

    move-object v1, p2

    move-object v4, v2

    move-object v2, v3

    const/16 v5, 0x3fb

    goto :goto_12

    :catch_c
    move-exception v1

    move-object p2, v2

    :goto_c
    const/4 v5, 0x0

    :goto_d
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "DownloadManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :cond_8
    if-eqz p2, :cond_9

    :try_start_9
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    goto :goto_e

    :catch_d
    move-exception p2

    goto :goto_f

    :cond_9
    :goto_e
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_d

    goto :goto_10

    :goto_f
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_10
    iput-object p1, v0, Lcom/ironsource/sdk/k/b$b;->a:Ljava/lang/String;

    const/16 p1, 0x3f1

    goto/16 :goto_26

    :catchall_5
    move-exception v1

    move-object v4, v2

    :goto_11
    move-object v2, p2

    :goto_12
    if-eqz v2, :cond_b

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_13

    :catch_e
    move-exception p2

    goto :goto_14

    :cond_b
    :goto_13
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_e

    goto :goto_15

    :goto_14
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_15
    iput-object p1, v0, Lcom/ironsource/sdk/k/b$b;->a:Ljava/lang/String;

    iput v5, v0, Lcom/ironsource/sdk/k/b$b;->b:I

    throw v1

    :catch_f
    move-object v4, v2

    :catch_10
    :goto_16
    if-eqz v2, :cond_d

    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_17

    :catch_11
    move-exception p2

    goto :goto_18

    :cond_d
    :goto_17
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_11

    goto :goto_19

    :goto_18
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_19
    iput-object p1, v0, Lcom/ironsource/sdk/k/b$b;->a:Ljava/lang/String;

    const/16 p1, 0x3fa

    goto :goto_26

    :catch_12
    move-object v4, v2

    :catch_13
    :goto_1a
    if-eqz v2, :cond_f

    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_1b

    :catch_14
    move-exception p2

    goto :goto_1c

    :cond_f
    :goto_1b
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_14

    goto :goto_1d

    :goto_1c
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_10
    :goto_1d
    iput-object p1, v0, Lcom/ironsource/sdk/k/b$b;->a:Ljava/lang/String;

    const/16 p1, 0x3f0

    goto :goto_26

    :catch_15
    move-object v4, v2

    :catch_16
    :goto_1e
    if-eqz v2, :cond_11

    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_1f

    :catch_17
    move-exception p2

    goto :goto_20

    :cond_11
    :goto_1f
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_17

    goto :goto_21

    :goto_20
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_12
    :goto_21
    iput-object p1, v0, Lcom/ironsource/sdk/k/b$b;->a:Ljava/lang/String;

    const/16 p1, 0x3f2

    goto :goto_26

    :catch_18
    move-object v4, v2

    :catch_19
    :goto_22
    if-eqz v2, :cond_13

    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_23

    :catch_1a
    move-exception p2

    goto :goto_24

    :cond_13
    :goto_23
    if-eqz v4, :cond_14

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1a

    goto :goto_25

    :goto_24
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_14
    :goto_25
    iput-object p1, v0, Lcom/ironsource/sdk/k/b$b;->a:Ljava/lang/String;

    const/16 p1, 0x3ec

    :goto_26
    iput p1, v0, Lcom/ironsource/sdk/k/b$b;->b:I

    :goto_27
    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/ironsource/sdk/k/b$b;
    .locals 8

    iget-wide v0, p0, Lcom/ironsource/sdk/k/b$a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/ironsource/sdk/k/b$a;->d:J

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    int-to-long v2, v0

    iget-wide v4, p0, Lcom/ironsource/sdk/k/b$a;->d:J

    const/16 v6, 0x3f1

    cmp-long v7, v2, v4

    if-gez v7, :cond_2

    iget-object v1, p0, Lcom/ironsource/sdk/k/b$a;->a:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/ironsource/sdk/k/b$a;->a(Ljava/lang/String;I)Lcom/ironsource/sdk/k/b$b;

    move-result-object v1

    iget v2, v1, Lcom/ironsource/sdk/k/b$b;->b:I

    const/16 v3, 0x3f0

    if-eq v2, v3, :cond_1

    if-ne v2, v6, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_6

    iget-object v0, v1, Lcom/ironsource/sdk/k/b$b;->c:[B

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/sdk/k/b$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/sdk/k/b$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/sdk/k/b$a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "tmp_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/sdk/k/b$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, v1, Lcom/ironsource/sdk/k/b$b;->c:[B

    invoke-static {v3, v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->saveFile([BLjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    const/16 v0, 0x3ee

    iput v0, v1, Lcom/ironsource/sdk/k/b$b;->b:I

    goto :goto_2

    :cond_3
    invoke-static {v2, v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x3fc

    iput v0, v1, Lcom/ironsource/sdk/k/b$b;->b:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "DownloadManager"

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/16 v0, 0x3fb

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "DownloadManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iput v6, v1, Lcom/ironsource/sdk/k/b$b;->b:I

    goto :goto_2

    :catch_2
    const/16 v0, 0x3fa

    :goto_1
    iput v0, v1, Lcom/ironsource/sdk/k/b$b;->b:I

    :cond_6
    :goto_2
    return-object v1
.end method

.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/ironsource/sdk/k/b$a;->a()Lcom/ironsource/sdk/k/b$b;

    move-result-object v0

    return-object v0
.end method
