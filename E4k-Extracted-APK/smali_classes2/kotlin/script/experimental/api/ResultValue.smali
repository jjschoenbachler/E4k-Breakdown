.class public abstract Lkotlin/script/experimental/api/ResultValue;
.super Ljava/lang/Object;
.source "scriptEvaluation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/script/experimental/api/ResultValue$Value;,
        Lkotlin/script/experimental/api/ResultValue$Unit;,
        Lkotlin/script/experimental/api/ResultValue$Error;,
        Lkotlin/script/experimental/api/ResultValue$NotEvaluated;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0004\n\u000b\u000c\rB#\u0008\u0002\u0012\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0005R\u0017\u0010\u0002\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u0082\u0001\u0004\u000e\u000f\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlin/script/experimental/api/ResultValue;",
        "",
        "scriptClass",
        "Lkotlin/reflect/KClass;",
        "scriptInstance",
        "(Lkotlin/reflect/KClass;Ljava/lang/Object;)V",
        "getScriptClass",
        "()Lkotlin/reflect/KClass;",
        "getScriptInstance",
        "()Ljava/lang/Object;",
        "Error",
        "NotEvaluated",
        "Unit",
        "Value",
        "Lkotlin/script/experimental/api/ResultValue$Value;",
        "Lkotlin/script/experimental/api/ResultValue$Unit;",
        "Lkotlin/script/experimental/api/ResultValue$Error;",
        "Lkotlin/script/experimental/api/ResultValue$NotEvaluated;",
        "kotlin-scripting-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final scriptClass:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final scriptInstance:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lkotlin/reflect/KClass;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/script/experimental/api/ResultValue;->scriptClass:Lkotlin/reflect/KClass;

    iput-object p2, p0, Lkotlin/script/experimental/api/ResultValue;->scriptInstance:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/KClass;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 137
    :cond_1
    invoke-direct {p0, p1, p2}, Lkotlin/script/experimental/api/ResultValue;-><init>(Lkotlin/reflect/KClass;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/KClass;Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlin/script/experimental/api/ResultValue;-><init>(Lkotlin/reflect/KClass;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getScriptClass()Lkotlin/reflect/KClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KClass<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 137
    iget-object v0, p0, Lkotlin/script/experimental/api/ResultValue;->scriptClass:Lkotlin/reflect/KClass;

    return-object v0
.end method

.method public final getScriptInstance()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 137
    iget-object v0, p0, Lkotlin/script/experimental/api/ResultValue;->scriptInstance:Ljava/lang/Object;

    return-object v0
.end method
