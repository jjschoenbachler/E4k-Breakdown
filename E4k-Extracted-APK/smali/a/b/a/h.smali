.class public La/b/a/h;
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
.field public final synthetic a:La/b/a/p/h;

.field public final synthetic b:Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;


# direct methods
.method public constructor <init>(Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;La/b/a/p/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/a/h;->b:Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;

    iput-object p2, p0, La/b/a/h;->a:La/b/a/p/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, La/b/a/h;->a:La/b/a/p/h;

    instance-of v1, v0, La/b/a/p/b;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, La/b/a/h;->b:Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;

    invoke-virtual {v1, p1, v0, v1}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Ljava/lang/String;La/b/a/p/h;Landroid/content/Context;)V

    goto :goto_0

    .line 5
    :cond_0
    check-cast v0, La/b/a/p/b;

    invoke-virtual {v0}, La/b/a/p/b;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, La/b/a/h;->a:La/b/a/p/h;

    invoke-interface {v0, p1}, La/b/a/p/h;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, La/b/a/h;->b:Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;

    invoke-virtual {v0, v0, p1}, Lcom/onetrust/otpublisherssdk/OTPublishersSDKActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
