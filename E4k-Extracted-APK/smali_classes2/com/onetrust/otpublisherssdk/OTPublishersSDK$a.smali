.class public Lcom/onetrust/otpublisherssdk/OTPublishersSDK$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->initializeOneTrustPublishersSDK(Ljava/lang/String;Ljava/lang/String;Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OTActionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OTActionListener;

.field public final synthetic d:Lcom/onetrust/otpublisherssdk/OTPublishersSDK;


# direct methods
.method public constructor <init>(Lcom/onetrust/otpublisherssdk/OTPublishersSDK;Ljava/lang/String;Ljava/lang/String;Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OTActionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK$a;->d:Lcom/onetrust/otpublisherssdk/OTPublishersSDK;

    iput-object p2, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK$a;->c:Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OTActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK$a;->d:Lcom/onetrust/otpublisherssdk/OTPublishersSDK;

    .line 2
    iget-object v0, v0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->b:Ljava/lang/String;

    const-string v1, "evaluating Webview in backGround started"

    .line 3
    invoke-static {v0, v1}, Lcom/onetrust/otpublisherssdk/Logger/OTLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK$a;->d:Lcom/onetrust/otpublisherssdk/OTPublishersSDK;

    .line 5
    iget-object v0, v0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK;->e:La/b/a/f;

    .line 6
    iget-object v1, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/onetrust/otpublisherssdk/OTPublishersSDK$a;->c:Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OTActionListener;

    invoke-virtual {v0, v1, v2, v3}, La/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/onetrust/otpublisherssdk/OTPublishersSDK$OTActionListener;)V

    return-void
.end method
