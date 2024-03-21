.class public Lcom/ironsource/sdk/WPAD/ISNAdViewJSInterface;
.super Ljava/lang/Object;
.source "ISNAdViewJSInterface.java"


# instance fields
.field private mAdViewPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewJSInterface;->mAdViewPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    return-void
.end method


# virtual methods
.method public receiveMessageFromExternal(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/ironsource/sdk/WPAD/ISNAdViewJSInterface;->mAdViewPresenter:Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/WPAD/ISNAdViewWebPresenter;->handleMessageFromAd(Ljava/lang/String;)V

    return-void
.end method
