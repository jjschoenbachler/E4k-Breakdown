.class public interface abstract annotation Lcom/android/billingclient/api/BillingClient$FeatureType;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@5.2.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "FeatureType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final IN_APP_MESSAGING:Ljava/lang/String; = "bbb"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzf;
    .end annotation
.end field

.field public static final PRICE_CHANGE_CONFIRMATION:Ljava/lang/String; = "priceChangeConfirmation"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final PRODUCT_DETAILS:Ljava/lang/String; = "fff"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzj;
    .end annotation
.end field

.field public static final SUBSCRIPTIONS:Ljava/lang/String; = "subscriptions"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final SUBSCRIPTIONS_UPDATE:Ljava/lang/String; = "subscriptionsUpdate"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field
