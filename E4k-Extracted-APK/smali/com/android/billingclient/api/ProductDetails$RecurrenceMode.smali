.class public interface abstract annotation Lcom/android/billingclient/api/ProductDetails$RecurrenceMode;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@5.2.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Lcom/android/billingclient/api/zzj;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/ProductDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "RecurrenceMode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final FINITE_RECURRING:I = 0x2
    .annotation build Lcom/android/billingclient/api/zzj;
    .end annotation
.end field

.field public static final INFINITE_RECURRING:I = 0x1
    .annotation build Lcom/android/billingclient/api/zzj;
    .end annotation
.end field

.field public static final NON_RECURRING:I = 0x3
    .annotation build Lcom/android/billingclient/api/zzj;
    .end annotation
.end field
