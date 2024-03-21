.class Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/precache/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileWorkerThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/ironsource/sdk/precache/DownloadManager$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private mConnectionRetries:J

.field private mDirectory:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mTmpFilesDirectory:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mUrl:Ljava/lang/String;

    .line 243
    iput-object p2, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mDirectory:Ljava/lang/String;

    .line 244
    iput-object p3, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mFileName:Ljava/lang/String;

    .line 245
    iput-wide p4, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    .line 246
    iput-object p6, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mTmpFilesDirectory:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Lcom/ironsource/sdk/precache/DownloadManager$Result;
    .locals 8

    .line 266
    iget-wide v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x1

    .line 268
    iput-wide v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    int-to-long v2, v0

    .line 272
    iget-wide v4, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    const/16 v6, 0x3f1

    cmp-long v7, v2, v4

    if-gez v7, :cond_2

    .line 274
    iget-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->downloadContent(Ljava/lang/String;I)Lcom/ironsource/sdk/precache/DownloadManager$Result;

    move-result-object v1

    .line 275
    iget v2, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    const/16 v3, 0x3f0

    if-eq v2, v3, :cond_1

    if-eq v2, v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_6

    .line 283
    iget-object v0, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->body:[B

    if-eqz v0, :cond_6

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mDirectory:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mTmpFilesDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "tmp_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 288
    :try_start_0
    iget-object v3, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->body:[B

    invoke-virtual {p0, v3, v2}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->saveFile([BLjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    const/16 v0, 0x3ee

    .line 290
    iput v0, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto :goto_2

    .line 291
    :cond_3
    invoke-virtual {p0, v2, v0}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x3fc

    .line 292
    iput v0, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "DownloadManager"

    .line 303
    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/16 v0, 0x3fb

    .line 305
    iput v0, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto :goto_2

    :catch_1
    move-exception v0

    .line 297
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "DownloadManager"

    .line 298
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_5
    iput v6, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto :goto_2

    :catch_2
    const/16 v0, 0x3fa

    .line 295
    iput v0, v1, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    :cond_6
    :goto_2
    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->call()Lcom/ironsource/sdk/precache/DownloadManager$Result;

    move-result-object v0

    return-object v0
.end method

.method downloadContent(Ljava/lang/String;I)Lcom/ironsource/sdk/precache/DownloadManager$Result;
    .locals 8

    .line 315
    new-instance v0, Lcom/ironsource/sdk/precache/DownloadManager$Result;

    invoke-direct {v0}, Lcom/ironsource/sdk/precache/DownloadManager$Result;-><init>()V

    .line 321
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    iput-object p1, v0, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    const/16 p1, 0x3ef

    .line 323
    iput p1, v0, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 329
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 335
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    const-string v4, "GET"

    .line 336
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v4, 0x1388

    .line 338
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 339
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 341
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 342
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_19
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v2, 0xc8

    if-lt v4, v2, :cond_2

    const/16 v2, 0x190

    if-lt v4, v2, :cond_1

    goto :goto_0

    .line 352
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_19
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 353
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/ironsource/sdk/precache/DownloadManager$Result;->body:[B
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

    move-object v7, v1

    move-object v1, p2

    move-object p2, v7

    goto/16 :goto_d

    :catch_0
    move-exception v1

    move-object v2, p2

    move-object p2, v1

    goto/16 :goto_5

    :catch_1
    move-exception v1

    move v2, v4

    move-object v7, v1

    move-object v1, p2

    move-object p2, v7

    goto/16 :goto_b

    :catch_2
    move-object v1, p2

    goto/16 :goto_11

    :catch_3
    move-object v1, p2

    goto/16 :goto_13

    :catch_4
    move-object v1, p2

    goto/16 :goto_15

    :catch_5
    move-object v1, p2

    goto/16 :goto_17

    :cond_2
    :goto_0
    :try_start_4
    const-string v2, "DownloadManager"

    .line 346
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " RESPONSE CODE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ATTEMPT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 v4, 0x3f3

    move-object p2, v1

    :goto_1
    if-eqz p2, :cond_3

    .line 377
    :try_start_5
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catch_6
    move-exception p2

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 380
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_4

    .line 383
    :goto_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 387
    :cond_4
    :goto_4
    iput-object p1, v0, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 388
    iput v4, v0, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto/16 :goto_1b

    :catchall_1
    move-exception p2

    goto/16 :goto_d

    :catch_7
    move-exception p2

    move v2, v4

    goto :goto_b

    :catchall_2
    move-exception p2

    goto :goto_6

    :catch_8
    move-exception p2

    move-object v2, v1

    :goto_5
    move-object v1, v3

    goto :goto_7

    :catch_9
    move-exception p2

    goto :goto_b

    :catchall_3
    move-exception p2

    move-object v3, v1

    :goto_6
    const/4 v4, 0x0

    goto :goto_d

    :catch_a
    move-exception p2

    move-object v2, v1

    :goto_7
    const/16 v3, 0x3fb

    .line 370
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "DownloadManager"

    .line 371
    invoke-virtual {p2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_5
    if-eqz v2, :cond_6

    .line 377
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_8

    :catch_b
    move-exception p2

    goto :goto_9

    :cond_6
    :goto_8
    if-eqz v1, :cond_7

    .line 380
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_b

    goto :goto_a

    .line 383
    :goto_9
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 387
    :cond_7
    :goto_a
    iput-object p1, v0, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 388
    iput v3, v0, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto/16 :goto_1b

    :catchall_4
    move-exception p2

    move-object v3, v1

    move-object v1, v2

    const/16 v4, 0x3fb

    goto :goto_d

    :catch_c
    move-exception p2

    move-object v3, v1

    .line 364
    :goto_b
    :try_start_8
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "DownloadManager"

    .line 365
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :cond_8
    const/16 p2, 0x3f1

    if-eqz v1, :cond_9

    .line 377
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_c

    :catch_d
    move-exception v1

    goto/16 :goto_19

    :cond_9
    :goto_c
    if-eqz v3, :cond_10

    .line 380
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_d

    goto/16 :goto_1a

    :catchall_5
    move-exception p2

    move v4, v2

    :goto_d
    if-eqz v1, :cond_a

    .line 377
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_e

    :catch_e
    move-exception v1

    goto :goto_f

    :cond_a
    :goto_e
    if-eqz v3, :cond_b

    .line 380
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_e

    goto :goto_10

    .line 383
    :goto_f
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 387
    :cond_b
    :goto_10
    iput-object p1, v0, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 388
    iput v4, v0, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    .line 389
    throw p2

    :catch_f
    move-object v3, v1

    :catch_10
    :goto_11
    const/16 p2, 0x3fa

    if-eqz v1, :cond_c

    .line 377
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_12

    :catch_11
    move-exception v1

    goto :goto_19

    :cond_c
    :goto_12
    if-eqz v3, :cond_10

    .line 380
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_11

    goto :goto_1a

    :catch_12
    move-object v3, v1

    :catch_13
    :goto_13
    const/16 p2, 0x3f0

    if-eqz v1, :cond_d

    .line 377
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_14

    :catch_14
    move-exception v1

    goto :goto_19

    :cond_d
    :goto_14
    if-eqz v3, :cond_10

    .line 380
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_14

    goto :goto_1a

    :catch_15
    move-object v3, v1

    :catch_16
    :goto_15
    const/16 p2, 0x3f2

    if-eqz v1, :cond_e

    .line 377
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_16

    :catch_17
    move-exception v1

    goto :goto_19

    :cond_e
    :goto_16
    if-eqz v3, :cond_10

    .line 380
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_17

    goto :goto_1a

    :catch_18
    move-object v3, v1

    :catch_19
    :goto_17
    const/16 p2, 0x3ec

    if-eqz v1, :cond_f

    .line 377
    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_18

    :catch_1a
    move-exception v1

    goto :goto_19

    :cond_f
    :goto_18
    if-eqz v3, :cond_10

    .line 380
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1a

    goto :goto_1a

    .line 383
    :goto_19
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 387
    :cond_10
    :goto_1a
    iput-object p1, v0, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 388
    iput p2, v0, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    :goto_1b
    return-object v0
.end method

.method getBytes(Ljava/io/InputStream;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-static {p1}, Lcom/ironsource/sdk/precache/DownloadManager;->access$000(Ljava/io/InputStream;)[B

    move-result-object p1

    return-object p1
.end method

.method renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 254
    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method saveFile([BLjava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->saveFile([BLjava/lang/String;)I

    move-result p1

    return p1
.end method
