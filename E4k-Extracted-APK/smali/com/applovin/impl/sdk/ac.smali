.class public Lcom/applovin/impl/sdk/ac;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/webkit/WebView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static volatile b:Ljava/lang/String;


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/ac;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/applovin/impl/sdk/ac;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Lcom/applovin/impl/sdk/n;)V
    .locals 0

    return-void
.end method

.method static synthetic b()Landroid/webkit/WebView;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/ac;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static b(Lcom/applovin/impl/sdk/n;)V
    .locals 4

    sget-object v0, Lcom/applovin/impl/sdk/ac;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, ""

    sput-object v0, Lcom/applovin/impl/sdk/ac;->b:Ljava/lang/String;

    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/n;->S()Lcom/applovin/impl/sdk/e/o;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/e/z;

    const/4 v2, 0x1

    new-instance v3, Lcom/applovin/impl/sdk/ac$1;

    invoke-direct {v3, p0}, Lcom/applovin/impl/sdk/ac$1;-><init>(Lcom/applovin/impl/sdk/n;)V

    invoke-direct {v1, p0, v2, v3}, Lcom/applovin/impl/sdk/e/z;-><init>(Lcom/applovin/impl/sdk/n;ZLjava/lang/Runnable;)V

    sget-object p0, Lcom/applovin/impl/sdk/e/o$a;->c:Lcom/applovin/impl/sdk/e/o$a;

    invoke-virtual {v0, v1, p0}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/applovin/impl/sdk/ac$2;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/ac$2;-><init>(Lcom/applovin/impl/sdk/n;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
