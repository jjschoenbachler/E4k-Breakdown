.class Lcom/unity3d/services/core/request/metrics/MetricSender$1;
.super Ljava/lang/Object;
.source "MetricSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/request/metrics/MetricSender;->sendMetrics(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/services/core/request/metrics/MetricSender;

.field final synthetic val$metrics:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/unity3d/services/core/request/metrics/MetricSender;Ljava/util/List;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/unity3d/services/core/request/metrics/MetricSender$1;->this$0:Lcom/unity3d/services/core/request/metrics/MetricSender;

    iput-object p2, p0, Lcom/unity3d/services/core/request/metrics/MetricSender$1;->val$metrics:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 80
    :try_start_0
    new-instance v0, Lcom/unity3d/services/core/request/metrics/MetricsContainer;

    iget-object v1, p0, Lcom/unity3d/services/core/request/metrics/MetricSender$1;->this$0:Lcom/unity3d/services/core/request/metrics/MetricSender;

    invoke-static {v1}, Lcom/unity3d/services/core/request/metrics/MetricSender;->access$000(Lcom/unity3d/services/core/request/metrics/MetricSender;)Lcom/unity3d/services/core/request/metrics/MetricCommonTags;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/services/core/request/metrics/MetricSender$1;->val$metrics:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/request/metrics/MetricsContainer;-><init>(Lcom/unity3d/services/core/request/metrics/MetricCommonTags;Ljava/util/List;)V

    .line 81
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/unity3d/services/core/request/metrics/MetricsContainer;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/unity3d/services/core/request/WebRequest;

    iget-object v2, p0, Lcom/unity3d/services/core/request/metrics/MetricSender$1;->this$0:Lcom/unity3d/services/core/request/metrics/MetricSender;

    invoke-static {v2}, Lcom/unity3d/services/core/request/metrics/MetricSender;->access$100(Lcom/unity3d/services/core/request/metrics/MetricSender;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/unity3d/services/core/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    invoke-virtual {v1, v0}, Lcom/unity3d/services/core/request/WebRequest;->setBody(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1}, Lcom/unity3d/services/core/request/WebRequest;->makeRequest()Ljava/lang/String;

    .line 87
    invoke-virtual {v1}, Lcom/unity3d/services/core/request/WebRequest;->getResponseCode()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Metric "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/services/core/request/metrics/MetricSender$1;->val$metrics:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " sent to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/services/core/request/metrics/MetricSender$1;->this$0:Lcom/unity3d/services/core/request/metrics/MetricSender;

    invoke-static {v1}, Lcom/unity3d/services/core/request/metrics/MetricSender;->access$100(Lcom/unity3d/services/core/request/metrics/MetricSender;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 91
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metric "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unity3d/services/core/request/metrics/MetricSender$1;->val$metrics:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " failed to send with response code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/unity3d/services/core/request/WebRequest;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metric "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unity3d/services/core/request/metrics/MetricSender$1;->val$metrics:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " failed to send from exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
