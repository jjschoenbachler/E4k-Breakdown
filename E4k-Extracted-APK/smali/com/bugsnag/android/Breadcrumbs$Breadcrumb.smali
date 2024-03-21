.class final Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;
.super Ljava/lang/Object;
.source "Breadcrumbs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bugsnag/android/Breadcrumbs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Breadcrumb"
.end annotation


# instance fields
.field private message:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/bugsnag/android/DateUtils;->toISO8601(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;->timestamp:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8c

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;->message:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;->timestamp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/bugsnag/android/Breadcrumbs$Breadcrumb;->message:Ljava/lang/String;

    return-object p0
.end method
