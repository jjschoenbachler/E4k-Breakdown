.class Lcom/goodgamestudios/extension/functions/GetNowggAuthTokenFunction$1;
.super Ljava/lang/Object;
.source "GetNowggAuthTokenFunction.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodgamestudios/extension/functions/GetNowggAuthTokenFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodgamestudios/extension/functions/GetNowggAuthTokenFunction;

.field final synthetic val$ctx:Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;


# direct methods
.method constructor <init>(Lcom/goodgamestudios/extension/functions/GetNowggAuthTokenFunction;Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/goodgamestudios/extension/functions/GetNowggAuthTokenFunction$1;->this$0:Lcom/goodgamestudios/extension/functions/GetNowggAuthTokenFunction;

    iput-object p2, p0, Lcom/goodgamestudios/extension/functions/GetNowggAuthTokenFunction$1;->val$ctx:Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2

    .line 53
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "booleanResult"

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "authorization_code"

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/goodgamestudios/extension/functions/GetNowggAuthTokenFunction$1;->val$ctx:Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;

    const-string v1, "NOWGG_AUTH_TOKEN_GENERATED"

    invoke-virtual {v0, v1, p1}, Lcom/goodgamestudios/extension/GoodGameStudiosExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 60
    invoke-virtual {p1}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
