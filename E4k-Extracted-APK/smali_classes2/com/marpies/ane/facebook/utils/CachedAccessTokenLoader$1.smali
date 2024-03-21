.class final Lcom/marpies/ane/facebook/utils/CachedAccessTokenLoader$1;
.super Ljava/lang/Object;
.source "CachedAccessTokenLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marpies/ane/facebook/utils/CachedAccessTokenLoader;->load(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 48
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 51
    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v1

    .line 52
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    const-string v0, "cachedAccessTokenLoaded"

    .line 55
    invoke-static {}, Lcom/marpies/ane/facebook/utils/CachedAccessTokenLoader;->access$000()I

    move-result v1

    const-string v2, "found"

    const-string v3, "true"

    invoke-static {v1, v2, v3}, Lcom/marpies/ane/facebook/utils/StringUtils;->getSingleValueJSONString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 58
    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/CachedAccessTokenLoader;->access$100(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "cachedAccessTokenLoaded"

    .line 64
    invoke-static {}, Lcom/marpies/ane/facebook/utils/CachedAccessTokenLoader;->access$000()I

    move-result v1

    const-string v2, "found"

    const-string v3, "false"

    invoke-static {v1, v2, v3}, Lcom/marpies/ane/facebook/utils/StringUtils;->getSingleValueJSONString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v0, v1}, Lcom/marpies/ane/facebook/utils/AIR;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 70
    invoke-static {v0}, Lcom/marpies/ane/facebook/utils/CachedAccessTokenLoader;->access$100(Z)V

    :goto_0
    return-void
.end method
