.class public La/b/a/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;


# direct methods
.method public constructor <init>(Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/a/g;->a:Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url array : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OTPublishersSDKActivity"

    invoke-static {v1, v0}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p1}, La/b/a/c/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, La/b/a/g;->a:Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;

    .line 7
    iget-object p1, p1, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->m:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "OTPublishersSDKActivity"

    .line 9
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "complete url array : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p1, p0, La/b/a/g;->a:Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;

    invoke-static {p1}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "URL_ARRAY_TO_DOWNLOAD"

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "OTPublishersSDKActivity"

    .line 11
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Previous url array : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v1, p0, La/b/a/g;->a:Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;

    invoke-static {v1}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "URL_ARRAY_TO_DOWNLOAD"

    .line 13
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    iget-object v0, p0, La/b/a/g;->a:Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;

    .line 17
    invoke-static {v0, p1}, La/b/a/c/m;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 19
    iget-object p1, p0, La/b/a/g;->a:Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;

    .line 20
    iget v1, p1, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->o:I

    if-ne v1, v0, :cond_1

    const-string v0, "OTPublishersSDKActivity"

    const-string v1, "Download Status: Cache lifetime not expired."

    .line 21
    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;

    const/4 v1, 0x1

    const-string v2, "Download Status: Cache lifetime not expired."

    invoke-direct {v0, v1, v2}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;I)V

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, La/b/a/k;->a()La/b/a/k;

    move-result-object p1

    new-instance v1, Lcom/onetrust/otpublisherssdk/DownloadStatus;

    new-instance v2, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;

    const/4 v3, -0x1

    const-string v4, "Download Status: Download in progress."

    invoke-direct {v2, v3, v4}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/onetrust/otpublisherssdk/DownloadStatus;-><init>(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;I)V

    const-string v0, "setDownloadStatus :  "

    .line 24
    invoke-virtual {p1, v0, v1}, La/b/a/k;->a(Ljava/lang/String;Lcom/onetrust/otpublisherssdk/DownloadStatus;)V

    .line 25
    iput-object v1, p1, La/b/a/k;->b:Lcom/onetrust/otpublisherssdk/DownloadStatus;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "error while parsing url array with error ="

    .line 26
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OTPublishersSDKActivity"

    .line 28
    invoke-static {v0, p1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
