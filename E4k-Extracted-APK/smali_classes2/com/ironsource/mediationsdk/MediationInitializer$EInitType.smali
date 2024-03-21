.class public Lcom/ironsource/mediationsdk/MediationInitializer$EInitType;
.super Ljava/lang/Object;
.source "MediationInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/MediationInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EInitType"
.end annotation


# static fields
.field public static INIT_TYPE_FROM_CACHE:I = 0x2

.field public static INIT_TYPE_FROM_SERVER:I = 0x1

.field public static INIT_TYPE_INIT_IN_PROGRESS:I = 0x3

.field public static INIT_TYPE_NOT_INIT:I = 0x4

.field public static INIT_TYPE_UNKNOWN:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
