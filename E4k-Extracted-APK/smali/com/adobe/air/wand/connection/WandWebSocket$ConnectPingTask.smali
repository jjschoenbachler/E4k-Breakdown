.class Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;
.super Landroid/os/AsyncTask;
.source "WandWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/wand/connection/WandWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectPingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/wand/connection/WandWebSocket;


# direct methods
.method private constructor <init>(Lcom/adobe/air/wand/connection/WandWebSocket;)V
    .locals 0

    .line 846
    iput-object p1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;->this$0:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/air/wand/connection/WandWebSocket;Lcom/adobe/air/wand/connection/WandWebSocket$1;)V
    .locals 0

    .line 846
    invoke-direct {p0, p1}, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;-><init>(Lcom/adobe/air/wand/connection/WandWebSocket;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    .line 850
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 853
    :cond_0
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    const/4 v3, 0x0

    aget-object p1, p1, v3

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 854
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 855
    invoke-interface {p1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :catch_0
    const-wide/16 v0, -0x1

    .line 859
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 850
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 846
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 846
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 846
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/adobe/air/wand/connection/WandWebSocket$ConnectPingTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
