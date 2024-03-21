.class Lcom/goodgamestudios/extension/functions/InitOneTrustWebViewFunction$1;
.super Ljava/lang/Object;
.source "InitOneTrustWebViewFunction.java"

# interfaces
.implements Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OneTrustDataDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodgamestudios/extension/functions/InitOneTrustWebViewFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodgamestudios/extension/functions/InitOneTrustWebViewFunction;

.field final synthetic val$ctx:Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;


# direct methods
.method constructor <init>(Lcom/goodgamestudios/extension/functions/InitOneTrustWebViewFunction;Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/goodgamestudios/extension/functions/InitOneTrustWebViewFunction$1;->this$0:Lcom/goodgamestudios/extension/functions/InitOneTrustWebViewFunction;

    iput-object p2, p0, Lcom/goodgamestudios/extension/functions/InitOneTrustWebViewFunction$1;->val$ctx:Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;)V
    .locals 3

    .line 40
    sget-object v0, Lcom/goodgamestudios/extension/GoodGameStudiosExtension;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download complete status. status - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;->getDownloadCompleteStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p1}, Lcom/onetrust/otpublisherssdk/DownloadCompleteStatus;->getDownloadCompleteStatus()I

    move-result p1

    if-lez p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/goodgamestudios/extension/functions/InitOneTrustWebViewFunction$1;->val$ctx:Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;->setOneTrustWebViewInitialized(Z)V

    .line 43
    iget-object p1, p0, Lcom/goodgamestudios/extension/functions/InitOneTrustWebViewFunction$1;->val$ctx:Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;

    const-string v0, "ONE_TRUST_INIT_SUCCESS"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/goodgamestudios/extension/functions/InitOneTrustWebViewFunction$1;->val$ctx:Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;

    const-string v0, "ONE_TRUST_INIT_FAIL"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
