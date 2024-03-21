.class final Lcom/ironsource/mediationsdk/server/HttpFunctions$1;
.super Ljava/lang/Object;
.source "HttpFunctions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/server/HttpFunctions;->sendPostRequestWithAutho(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/server/HttpFunctionsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$json:Ljava/lang/String;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/server/HttpFunctionsListener;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/server/HttpFunctionsListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/ironsource/mediationsdk/server/HttpFunctions$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/server/HttpFunctions$1;->val$userName:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/mediationsdk/server/HttpFunctions$1;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/mediationsdk/server/HttpFunctions$1;->val$json:Ljava/lang/String;

    iput-object p5, p0, Lcom/ironsource/mediationsdk/server/HttpFunctions$1;->val$listener:Lcom/ironsource/mediationsdk/server/HttpFunctionsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 97
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/server/HttpFunctions$1;->val$url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 99
    iget-object v3, p0, Lcom/ironsource/mediationsdk/server/HttpFunctions$1;->val$userName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ironsource/mediationsdk/server/HttpFunctions$1;->val$password:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/ironsource/mediationsdk/server/HttpFunctions$1;->val$userName:Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/server/HttpFunctions$1;->val$password:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBase64Auth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Authorization"

    .line 101
    invoke-virtual {v1, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0x3a98

    .line 105
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 106
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v3, "POST"

    .line 107
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 108
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 109
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 111
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :try_start_2
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string v6, "UTF-8"

    invoke-direct {v5, v4, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 115
    iget-object v5, p0, Lcom/ironsource/mediationsdk/server/HttpFunctions$1;->val$json:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 117
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 119
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v5, 0xc8

    if-ne v1, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    .line 122
    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid response code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sending request"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 124
    :cond_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/server/HttpFunctions$1;->val$listener:Lcom/ironsource/mediationsdk/server/HttpFunctionsListener;

    invoke-interface {v1, v3}, Lcom/ironsource/mediationsdk/server/HttpFunctionsListener;->onResponse(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v4, :cond_3

    .line 132
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v1

    goto :goto_5

    :catch_2
    move-exception v3

    move-object v4, v1

    move-object v1, v3

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v4, v2

    goto :goto_5

    :catch_3
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    move-object v2, v4

    .line 126
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception while sending request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/ironsource/mediationsdk/server/HttpFunctions$1;->val$listener:Lcom/ironsource/mediationsdk/server/HttpFunctionsListener;

    invoke-interface {v1, v0}, Lcom/ironsource/mediationsdk/server/HttpFunctionsListener;->onResponse(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v4, :cond_4

    .line 132
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    .line 137
    :goto_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    return-void

    :catchall_2
    move-exception v0

    :goto_5
    if-eqz v4, :cond_6

    .line 132
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception v1

    .line 134
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_6
    if-eqz v2, :cond_7

    .line 137
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 138
    :cond_7
    throw v0
.end method
