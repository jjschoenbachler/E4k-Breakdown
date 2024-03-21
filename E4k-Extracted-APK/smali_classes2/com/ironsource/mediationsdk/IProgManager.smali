.class public interface abstract Lcom/ironsource/mediationsdk/IProgManager;
.super Ljava/lang/Object;
.source "IProgManager.java"


# virtual methods
.method public abstract addImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V
    .param p1    # Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract removeAllImpressionDataListeners()V
.end method

.method public abstract removeImpressionDataListener(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V
    .param p1    # Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V
.end method
