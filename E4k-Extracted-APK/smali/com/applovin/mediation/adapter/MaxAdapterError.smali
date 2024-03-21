.class public Lcom/applovin/mediation/adapter/MaxAdapterError;
.super Lcom/applovin/impl/mediation/MaxErrorImpl;


# static fields
.field public static final AD_DISPLAY_FAILED:Lcom/applovin/mediation/adapter/MaxAdapterError;

.field public static final AD_EXPIRED:Lcom/applovin/mediation/adapter/MaxAdapterError;

.field public static final AD_FREQUENCY_CAPPED:Lcom/applovin/mediation/adapter/MaxAdapterError;

.field public static final AD_NOT_READY:Lcom/applovin/mediation/adapter/MaxAdapterError;

.field public static final BAD_REQUEST:Lcom/applovin/mediation/adapter/MaxAdapterError;

.field public static final ERROR_CODE_AD_DISPLAY_FAILED:I = -0x106d

.field public static final ERROR_CODE_AD_EXPIRED:I = -0x145d

.field public static final ERROR_CODE_AD_FREQUENCY_CAPPED:I = -0x145e

.field public static final ERROR_CODE_AD_NOT_READY:I = -0x1455

.field public static final ERROR_CODE_BAD_REQUEST:I = -0x1453

.field public static final ERROR_CODE_INTERNAL_ERROR:I = -0x1459

.field public static final ERROR_CODE_INVALID_CONFIGURATION:I = -0x1452

.field public static final ERROR_CODE_INVALID_LOAD_STATE:I = -0x1451

.field public static final ERROR_CODE_MISSING_ACTIVITY:I = -0x15e1

.field public static final ERROR_CODE_MISSING_REQUIRED_NATIVE_AD_ASSETS:I = -0x1518

.field public static final ERROR_CODE_NOT_INITIALIZED:I = -0x1454

.field public static final ERROR_CODE_NO_CONNECTION:I = -0x1457

.field public static final ERROR_CODE_NO_FILL:I = 0xcc

.field public static final ERROR_CODE_REWARD_ERROR:I = -0x14b6

.field public static final ERROR_CODE_SERVER_ERROR:I = -0x1458

.field public static final ERROR_CODE_SIGNAL_COLLECTION_NOT_SUPPORTED:I = -0x145b

.field public static final ERROR_CODE_SIGNAL_COLLECTION_TIMEOUT:I = -0x145a

.field public static final ERROR_CODE_TIMEOUT:I = -0x1456

.field public static final ERROR_CODE_UNSPECIFIED:I = -0x1450

.field public static final ERROR_CODE_WEBVIEW_ERROR:I = -0x145c

.field public static final INTERNAL_ERROR:Lcom/applovin/mediation/adapter/MaxAdapterError;

.field public static final INVALID_CONFIGURATION:Lcom/applovin/mediation/adapter/MaxAdapterError;

.field public static final INVALID_LOAD_STATE:Lcom/applovin/mediation/adapter/MaxAdapterError;

.field public static final MISSING_ACTIVITY:Lcom/applovin/mediation/adapter/MaxAdapterError;

.field public static final MISSING_REQUIRED_NATIVE_AD_ASSETS:Lcom/applovin/mediation/adapter/MaxAdapterError;

.field public static final NOT_INITIALIZED:Lcom/applovin/mediation/adapter/MaxAdapterError;

.field public static final NO_CONNECTION:Lcom/applovin/mediation/adapter/MaxAdapterError;

.field public static final NO_FILL:Lcom/applovin/mediation/adapter/MaxAdapterError;

.field public static final REWARD_ERROR:Lcom/applovin/mediation/adapter/MaxAdapterError;

.field public static final SERVER_ERROR:Lcom/applovin/mediation/adapter/MaxAdapterError;

.field public static final SIGNAL_COLLECTION_NOT_SUPPORTED:Lcom/applovin/mediation/adapter/MaxAdapterError;

.field public static final SIGNAL_COLLECTION_TIMEOUT:Lcom/applovin/mediation/adapter/MaxAdapterError;

.field public static final TIMEOUT:Lcom/applovin/mediation/adapter/MaxAdapterError;

.field public static final UNSPECIFIED:Lcom/applovin/mediation/adapter/MaxAdapterError;

.field public static final WEBVIEW_ERROR:Lcom/applovin/mediation/adapter/MaxAdapterError;


# instance fields
.field private final thirdPartySdkErrorCode:I

.field private final thirdPartySdkErrorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/applovin/mediation/adapter/MaxAdapterError;

    const-string v1, "No Fill"

    const/16 v2, 0xcc

    invoke-direct {v0, v2, v1}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->NO_FILL:Lcom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lcom/applovin/mediation/adapter/MaxAdapterError;

    const-string v1, "Unspecified Error"

    const/16 v2, -0x1450

    invoke-direct {v0, v2, v1}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->UNSPECIFIED:Lcom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lcom/applovin/mediation/adapter/MaxAdapterError;

    const-string v1, "Invalid Load State"

    const/16 v2, -0x1451

    invoke-direct {v0, v2, v1}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->INVALID_LOAD_STATE:Lcom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lcom/applovin/mediation/adapter/MaxAdapterError;

    const-string v1, "Invalid Configuration"

    const/16 v2, -0x1452

    invoke-direct {v0, v2, v1}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->INVALID_CONFIGURATION:Lcom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lcom/applovin/mediation/adapter/MaxAdapterError;

    const-string v1, "Bad Request"

    const/16 v2, -0x1453

    invoke-direct {v0, v2, v1}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->BAD_REQUEST:Lcom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lcom/applovin/mediation/adapter/MaxAdapterError;

    const-string v1, "Not Initialized"

    const/16 v2, -0x1454

    invoke-direct {v0, v2, v1}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->NOT_INITIALIZED:Lcom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lcom/applovin/mediation/adapter/MaxAdapterError;

    const-string v1, "Ad Not Ready"

    const/16 v2, -0x1455

    invoke-direct {v0, v2, v1}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->AD_NOT_READY:Lcom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lcom/applovin/mediation/adapter/MaxAdapterError;

    const-string v1, "Request Timed Out"

    const/16 v2, -0x1456

    invoke-direct {v0, v2, v1}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->TIMEOUT:Lcom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lcom/applovin/mediation/adapter/MaxAdapterError;

    const-string v1, "No Connection"

    const/16 v2, -0x1457

    invoke-direct {v0, v2, v1}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->NO_CONNECTION:Lcom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lcom/applovin/mediation/adapter/MaxAdapterError;

    const-string v1, "Server Error"

    const/16 v2, -0x1458

    invoke-direct {v0, v2, v1}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->SERVER_ERROR:Lcom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lcom/applovin/mediation/adapter/MaxAdapterError;

    const-string v1, "Internal Error"

    const/16 v2, -0x1459

    invoke-direct {v0, v2, v1}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->INTERNAL_ERROR:Lcom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lcom/applovin/mediation/adapter/MaxAdapterError;

    const-string v1, "Signal Collection Timed Out"

    const/16 v2, -0x145a

    invoke-direct {v0, v2, v1}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->SIGNAL_COLLECTION_TIMEOUT:Lcom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lcom/applovin/mediation/adapter/MaxAdapterError;

    const-string v1, "Signal Collection Not Supported"

    const/16 v2, -0x145b

    invoke-direct {v0, v2, v1}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->SIGNAL_COLLECTION_NOT_SUPPORTED:Lcom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lcom/applovin/mediation/adapter/MaxAdapterError;

    const-string v1, "WebView Error"

    const/16 v2, -0x145c

    invoke-direct {v0, v2, v1}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->WEBVIEW_ERROR:Lcom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lcom/applovin/mediation/adapter/MaxAdapterError;

    const-string v1, "Ad Expired"

    const/16 v2, -0x145d

    invoke-direct {v0, v2, v1}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->AD_EXPIRED:Lcom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lcom/applovin/mediation/adapter/MaxAdapterError;

    const-string v1, "Ad Frequency Capped"

    const/16 v2, -0x145e

    invoke-direct {v0, v2, v1}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->AD_FREQUENCY_CAPPED:Lcom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lcom/applovin/mediation/adapter/MaxAdapterError;

    const-string v1, "Reward Error"

    const/16 v2, -0x14b6

    invoke-direct {v0, v2, v1}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->REWARD_ERROR:Lcom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lcom/applovin/mediation/adapter/MaxAdapterError;

    const-string v1, "Missing Native Ad Assets"

    const/16 v2, -0x1518

    invoke-direct {v0, v2, v1}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->MISSING_REQUIRED_NATIVE_AD_ASSETS:Lcom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lcom/applovin/mediation/adapter/MaxAdapterError;

    const-string v1, "Missing Activity"

    const/16 v2, -0x15e1

    invoke-direct {v0, v2, v1}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->MISSING_ACTIVITY:Lcom/applovin/mediation/adapter/MaxAdapterError;

    new-instance v0, Lcom/applovin/mediation/adapter/MaxAdapterError;

    const-string v1, "Ad Display Failed"

    const/16 v2, -0x106d

    invoke-direct {v0, v2, v1}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->AD_DISPLAY_FAILED:Lcom/applovin/mediation/adapter/MaxAdapterError;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const-string v0, ""

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    iput p3, p0, Lcom/applovin/mediation/adapter/MaxAdapterError;->thirdPartySdkErrorCode:I

    invoke-static {p4}, Lcom/applovin/impl/sdk/utils/StringUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/mediation/adapter/MaxAdapterError;->thirdPartySdkErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/mediation/adapter/MaxAdapterError;ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lcom/applovin/mediation/adapter/MaxAdapterError;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/applovin/mediation/adapter/MaxAdapterError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getThirdPartySdkErrorCode()I
    .locals 1

    iget v0, p0, Lcom/applovin/mediation/adapter/MaxAdapterError;->thirdPartySdkErrorCode:I

    return v0
.end method

.method public getThirdPartySdkErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/mediation/adapter/MaxAdapterError;->thirdPartySdkErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaxAdapterError{errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/mediation/adapter/MaxAdapterError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorMessage=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/mediation/adapter/MaxAdapterError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", thirdPartySdkErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/mediation/adapter/MaxAdapterError;->thirdPartySdkErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", thirdPartySdkErrorMessage=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/mediation/adapter/MaxAdapterError;->thirdPartySdkErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
