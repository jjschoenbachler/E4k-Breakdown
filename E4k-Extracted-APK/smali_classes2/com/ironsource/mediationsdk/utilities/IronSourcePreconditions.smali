.class public final Lcom/ironsource/mediationsdk/utilities/IronSourcePreconditions;
.super Ljava/lang/Object;
.source "IronSourcePreconditions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/ironsource/mediationsdk/utilities/IronSourcePreconditions;",
        "",
        "()V",
        "checkNotNull",
        "",
        "reference",
        "errorMessage",
        "",
        "shouldThrowException",
        "mediationsdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ironsource/mediationsdk/utilities/IronSourcePreconditions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/ironsource/mediationsdk/utilities/IronSourcePreconditions;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/utilities/IronSourcePreconditions;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/utilities/IronSourcePreconditions;->INSTANCE:Lcom/ironsource/mediationsdk/utilities/IronSourcePreconditions;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkNotNull(Ljava/lang/Object;)Z
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v2, v0}, Lcom/ironsource/mediationsdk/utilities/IronSourcePreconditions;->checkNotNull$default(Ljava/lang/Object;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/ironsource/mediationsdk/utilities/IronSourcePreconditions;->checkNotNull$default(Ljava/lang/Object;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final checkNotNull(Ljava/lang/Object;Ljava/lang/String;Z)Z
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "errorMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 29
    :cond_0
    sget-object p0, Lcom/ironsource/mediationsdk/utilities/IronSourcePreconditions;->INSTANCE:Lcom/ironsource/mediationsdk/utilities/IronSourcePreconditions;

    if-eq p2, v0, :cond_2

    if-nez p2, :cond_1

    .line 33
    sget-object p0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 34
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 31
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public static synthetic checkNotNull$default(Ljava/lang/Object;Ljava/lang/String;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const-string p1, "reference is null"

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 26
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/ironsource/mediationsdk/utilities/IronSourcePreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
