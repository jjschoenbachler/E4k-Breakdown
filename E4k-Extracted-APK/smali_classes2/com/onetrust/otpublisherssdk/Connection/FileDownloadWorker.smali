.class public Lcom/onetrust/otpublisherssdk/Connection/FileDownloadWorker;
.super Landroidx/work/Worker;
.source ""


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkerParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    iput-object p1, p0, Lcom/onetrust/otpublisherssdk/Connection/FileDownloadWorker;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;I)V
    .locals 2
    .param p1    # Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, La/b/a/k;->a()La/b/a/k;

    move-result-object v0

    new-instance v1, Lcom/onetrust/otpublisherssdk/DownloadStatus;

    invoke-direct {v1, p1, p2}, Lcom/onetrust/otpublisherssdk/DownloadStatus;-><init>(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;I)V

    const-string p2, "setDownloadStatus :  "

    .line 2
    invoke-virtual {v0, p2, v1}, La/b/a/k;->a(Ljava/lang/String;Lcom/onetrust/otpublisherssdk/DownloadStatus;)V

    .line 3
    iput-object v1, v0, La/b/a/k;->b:Lcom/onetrust/otpublisherssdk/DownloadStatus;

    .line 4
    invoke-static {}, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->getInstance()Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/onetrust/otpublisherssdk/OneTrustDataDownloadListenerSetter;->sendCallback(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;)V

    return-void
.end method

.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 15
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "FDWorker"

    const-string v1, "do file download work"

    .line 1
    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Landroidx/work/Worker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    const-string v1, "ot_work_manager_base_url"

    invoke-virtual {v0, v1}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroidx/work/Worker;->getInputData()Landroidx/work/Data;

    move-result-object v1

    const-string v2, "ot_work_manager_file_end_point"

    invoke-virtual {v1, v2}, Landroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, La/b/a/a/c;

    iget-object v3, p0, Lcom/onetrust/otpublisherssdk/Connection/FileDownloadWorker;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, La/b/a/a/c;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-virtual {v2, v0}, La/b/a/a/c;->a(Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v0

    .line 8
    const-class v4, La/b/a/a/e;

    invoke-virtual {v0, v4}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b/a/a/e;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 10
    :try_start_0
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_5

    .line 12
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "NetworkCall"

    .line 13
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DownloadURl = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_2

    .line 14
    invoke-static {v8}, La/b/a/c/m;->d(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".png"

    .line 18
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, ".jpeg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, ".jpg"

    .line 19
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, ".gif"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v9, :cond_2

    :cond_1
    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_3

    const-string v9, "NetworkCall"

    .line 20
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Download image, Url = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {v2, v3, v0, v8}, La/b/a/a/c;->b(Ljava/util/Map;La/b/a/a/e;Ljava/lang/String;)Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_3
    const-string v9, "NetworkCall"

    .line 25
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Download non image file, Url = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {v2, v3, v0, v8}, La/b/a/a/c;->a(Ljava/util/Map;La/b/a/a/e;Ljava/lang/String;)Z

    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v8, :cond_4

    :goto_3
    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "error while evaluating URLArray"

    .line 32
    invoke-static {v1}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkCall"

    invoke-static {v1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move-object v3, v4

    :cond_5
    if-eqz v3, :cond_17

    const-string v0, "FDWorker"

    const-string v1, "Download fiels success, file copies started."

    .line 33
    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v2, "Copy file - "

    .line 36
    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FDWorker"

    invoke-static {v3, v2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v2, p0, Lcom/onetrust/otpublisherssdk/Connection/FileDownloadWorker;->a:Landroid/content/Context;

    const-string v3, "com.onetrust.otpublisherssdk.Internal.preference"

    .line 38
    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 40
    :try_start_4
    new-instance v7, Ljava/net/URI;

    invoke-direct {v7, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v7}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 42
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 44
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "/"

    const-string v10, "//"

    .line 45
    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 46
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    const-string v2, ".json"

    .line 50
    invoke-virtual {v8, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, ".json"

    const-string v7, ".js"

    .line 51
    invoke-virtual {v8, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    :cond_7
    const-string v2, "location"

    .line 54
    invoke-virtual {v8, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".js"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_1

    const-string v2, "offlineDPath"

    .line 56
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "location url: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_8
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "//"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    :catch_1
    move-exception v2

    const-string v3, "Getting dest file pathe failed = "

    .line 61
    invoke-static {v3}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "offlineDPath"

    invoke-static {v3, v2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 62
    :goto_5
    new-instance v3, Ljava/io/File;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_15

    .line 63
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_16

    .line 66
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Copy file to- "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "offlineDPath"

    invoke-static {v7, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :try_start_6
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 73
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v13
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 74
    :try_start_8
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 75
    :try_start_9
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v2, :cond_a

    if-eqz v13, :cond_a

    const-wide/16 v9, 0x0

    .line 77
    :try_start_a
    invoke-virtual {v13}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v11

    move-object v7, v2

    move-object v8, v13

    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :cond_a
    if-eqz v13, :cond_b

    .line 84
    :try_start_b
    invoke-virtual {v13}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_6

    :catch_2
    move-exception v3

    const-string v7, "Error on closing FileOutputStream message = "

    .line 86
    invoke-static {v7}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "offlineDPath"

    invoke-static {v3, v7, v8}, La/a/a/a/a;->a(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 91
    :cond_b
    :goto_6
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_7

    :catch_3
    move-exception v1

    const-string v3, "Error on closing FileInputStream message = "

    .line 93
    invoke-static {v3}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "offlineDPath"

    invoke-static {v1, v3, v7}, La/a/a/a/a;->a(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_7
    if-eqz v2, :cond_c

    .line 98
    :try_start_d
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_8

    :catch_4
    move-exception v1

    const-string v2, "Error on closing FileOutputStream message = "

    .line 100
    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "offlineDPath"

    invoke-static {v1, v2, v3}, La/a/a/a/a;->a(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 105
    :cond_c
    :goto_8
    :try_start_e
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_10

    :catch_5
    move-exception v1

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_a

    :catch_6
    move-object v2, v4

    goto :goto_b

    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v13, v4

    :goto_9
    move-object v2, v4

    move-object v14, v2

    :goto_a
    move-object v4, v13

    goto/16 :goto_11

    :catch_7
    move-object v13, v4

    :catch_8
    move-object v2, v4

    move-object v14, v2

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v1, v4

    move-object v2, v1

    move-object v14, v2

    goto/16 :goto_11

    :catch_9
    move-object v1, v4

    move-object v2, v1

    move-object v13, v2

    move-object v14, v13

    :catch_a
    :goto_b
    const-string v7, "offlineDPath"

    .line 106
    :try_start_f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error on copy files. url - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-eqz v13, :cond_d

    .line 110
    :try_start_10
    invoke-virtual {v13}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    goto :goto_c

    :catch_b
    move-exception v3

    const-string v7, "Error on closing FileOutputStream message = "

    .line 112
    invoke-static {v7}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "offlineDPath"

    invoke-static {v3, v7, v8}, La/a/a/a/a;->a(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_d
    :goto_c
    if-eqz v1, :cond_e

    .line 117
    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    goto :goto_d

    :catch_c
    move-exception v1

    const-string v3, "Error on closing FileInputStream message = "

    .line 119
    invoke-static {v3}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "offlineDPath"

    invoke-static {v1, v3, v7}, La/a/a/a/a;->a(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_e
    :goto_d
    if-eqz v2, :cond_f

    .line 124
    :try_start_12
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    goto :goto_e

    :catch_d
    move-exception v1

    const-string v2, "Error on closing FileOutputStream message = "

    .line 126
    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "offlineDPath"

    invoke-static {v1, v2, v3}, La/a/a/a/a;->a(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_f
    :goto_e
    if-eqz v14, :cond_10

    .line 131
    :try_start_13
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5

    goto :goto_10

    :goto_f
    const-string v2, "Error on closing FileInputStream message = "

    .line 133
    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "offlineDPath"

    invoke-static {v1, v2, v3}, La/a/a/a/a;->a(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_10
    :goto_10
    const/4 v1, 0x1

    goto :goto_17

    :catchall_4
    move-exception v0

    goto :goto_a

    :goto_11
    if-eqz v4, :cond_11

    .line 134
    :try_start_14
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_e

    goto :goto_12

    :catch_e
    move-exception v3

    const-string v4, "Error on closing FileOutputStream message = "

    .line 136
    invoke-static {v4}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "offlineDPath"

    invoke-static {v3, v4, v5}, La/a/a/a/a;->a(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_11
    :goto_12
    if-eqz v1, :cond_12

    .line 141
    :try_start_15
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_f

    goto :goto_13

    :catch_f
    move-exception v1

    const-string v3, "Error on closing FileInputStream message = "

    .line 143
    invoke-static {v3}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "offlineDPath"

    invoke-static {v1, v3, v4}, La/a/a/a/a;->a(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_12
    :goto_13
    if-eqz v2, :cond_13

    .line 148
    :try_start_16
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_10

    goto :goto_14

    :catch_10
    move-exception v1

    const-string v2, "Error on closing FileOutputStream message = "

    .line 150
    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "offlineDPath"

    invoke-static {v1, v2, v3}, La/a/a/a/a;->a(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_13
    :goto_14
    if-eqz v14, :cond_14

    .line 155
    :try_start_17
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_11

    goto :goto_15

    :catch_11
    move-exception v1

    const-string v2, "Error on closing FileInputStream message = "

    .line 157
    invoke-static {v2}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "offlineDPath"

    invoke-static {v1, v2, v3}, La/a/a/a/a;->a(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 160
    :cond_14
    :goto_15
    throw v0

    :cond_15
    :goto_16
    const/4 v1, 0x0

    :goto_17
    if-nez v1, :cond_6

    const/4 v0, 0x0

    goto :goto_18

    :cond_16
    const/4 v0, 0x1

    .line 161
    :goto_18
    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/Connection/FileDownloadWorker;->a:Landroid/content/Context;

    const-string v2, "com.onetrust.otpublisherssdk.Internal.preference"

    .line 162
    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 163
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v0, :cond_17

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resetting last downloaded timestamp. timestamp = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "FDWorker"

    invoke-static {v4, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LAST_DOWNLOADED_TIMESTAMP"

    .line 168
    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "OT_FILE_DOWNLOADED_STATUS"

    const-wide/16 v2, 0x1

    .line 169
    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    .line 170
    :goto_19
    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/Connection/FileDownloadWorker;->a:Landroid/content/Context;

    const-string v2, "com.onetrust.otpublisherssdk.Internal.preference"

    .line 171
    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v0, :cond_1a

    const-string v0, "SHOULD_SHOW_BANNER"

    .line 172
    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Evaluated show banner value - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FDWorker"

    invoke-static {v4, v3}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_18

    const-string v0, "FDWorker"

    const-string v2, "Set App should show banner true."

    .line 175
    invoke-static {v0, v2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "APP_SHOULD_SHOW_BANNER"

    .line 177
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1a

    :cond_18
    const-string v0, "FDWorker"

    const-string v3, "Set App should show banner false."

    .line 179
    invoke-static {v0, v3}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "APP_SHOULD_SHOW_BANNER"

    .line 181
    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "OT_BANNER_SHOWN_TO_USER"

    .line 182
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_19

    const-string v0, "FDWorker"

    const-string v2, "Set is banner shown to false."

    .line 184
    invoke-static {v0, v2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OT_BANNER_SHOWN_TO_USER"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_19
    :goto_1a
    const-string v0, "FDWorker"

    const-string v1, "Download Status: Download Successful."

    .line 189
    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;

    const-string v1, "Download Status: Download Successful."

    invoke-direct {v0, v5, v1}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x4

    .line 192
    invoke-virtual {p0, v0, v1}, Lcom/onetrust/otpublisherssdk/Connection/FileDownloadWorker;->a(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;I)V

    goto :goto_1b

    :cond_1a
    const-string v0, "OT_FILE_DOWNLOADED_STATUS"

    const-wide/16 v3, -0x1

    .line 196
    invoke-interface {v1, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File download status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FDWorker"

    invoke-static {v4, v3}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x0

    const/4 v6, 0x3

    cmp-long v7, v0, v3

    if-lez v7, :cond_1b

    const-string v0, "FDWorker"

    const-string v1, "Download Status: Download Interrupted. Cache Exists."

    .line 199
    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v0, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;

    const-string v1, "Download Status: Download Interrupted. Cache Exists."

    invoke-direct {v0, v5, v1}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, v6}, Lcom/onetrust/otpublisherssdk/Connection/FileDownloadWorker;->a(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;I)V

    goto :goto_1b

    :cond_1b
    const-string v0, "FDWorker"

    const-string v1, "Download Status: Download Interrupted. Cache doesn\'t Exist"

    .line 204
    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v0, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;

    const-string v1, "Download Status: Download Interrupted. Cache doesn\'t Exist"

    invoke-direct {v0, v2, v1}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, v6}, Lcom/onetrust/otpublisherssdk/Connection/FileDownloadWorker;->a(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;I)V

    .line 206
    :goto_1b
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method
