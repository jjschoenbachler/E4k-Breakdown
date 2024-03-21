.class public interface abstract Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;
.super Ljava/lang/Object;
.source "AdapterAdListener.java"


# virtual methods
.method public abstract onAdClicked()V
.end method

.method public abstract onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V
    .param p1    # Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onAdLoadSuccess()V
.end method
