.class public interface abstract Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCustomClickListener"
.end annotation


# virtual methods
.method public abstract onCustomClick(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;Ljava/lang/String;)V
    .param p1    # Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
.end method
