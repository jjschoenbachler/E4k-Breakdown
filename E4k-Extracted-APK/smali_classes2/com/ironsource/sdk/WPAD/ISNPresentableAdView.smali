.class public interface abstract Lcom/ironsource/sdk/WPAD/ISNPresentableAdView;
.super Ljava/lang/Object;
.source "ISNPresentableAdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/WPAD/ISNPresentableAdView$IErrorReportDelegate;
    }
.end annotation


# virtual methods
.method public abstract getPresentingView()Landroid/webkit/WebView;
.end method

.method public abstract loadWithUrl(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract performCleanup(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract performWebViewAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendHandleGetViewVisibility(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendMessageToAd(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
